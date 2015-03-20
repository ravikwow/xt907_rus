.class public final Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "MotoAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 4965
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$17000(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4960
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$17100()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;
    .locals 1

    .prologue
    .line 4960
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5011
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5012
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 5015
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;
    .locals 3

    .prologue
    .line 4968
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;-><init>()V

    .line 4969
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;
    new-instance v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;-><init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    .line 4970
    return-object v0
.end method


# virtual methods
.method public addAllRestoreDataTypes(Ljava/lang/Iterable;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;",
            ">;)",
            "Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;"
        }
    .end annotation

    .prologue
    .line 5191
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;>;"
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->restoreDataTypes_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->access$17300(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5192
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->restoreDataTypes_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->access$17302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;Ljava/util/List;)Ljava/util/List;

    .line 5194
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->restoreDataTypes_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->access$17300(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 5195
    return-object p0
.end method

.method public addRestoreDataTypes(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;

    .prologue
    .line 5180
    if-nez p1, :cond_0

    .line 5181
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5183
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->restoreDataTypes_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->access$17300(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5184
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->restoreDataTypes_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->access$17302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;Ljava/util/List;)Ljava/util/List;

    .line 5186
    :cond_1
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->restoreDataTypes_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->access$17300(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5187
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 4960
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4960
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;
    .locals 1

    .prologue
    .line 5003
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5004
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 5006
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 4960
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4960
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;
    .locals 3

    .prologue
    .line 5019
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    if-nez v1, :cond_0

    .line 5020
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5023
    :cond_0
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->restoreDataTypes_:Ljava/util/List;
    invoke-static {v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->access$17300(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_1

    .line 5024
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    iget-object v2, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->restoreDataTypes_:Ljava/util/List;
    invoke-static {v2}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->access$17300(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->restoreDataTypes_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->access$17302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;Ljava/util/List;)Ljava/util/List;

    .line 5027
    :cond_1
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    .line 5028
    .local v0, "returnMe":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    .line 5029
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 4960
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 4960
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4960
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;
    .locals 2

    .prologue
    .line 4978
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    if-nez v0, :cond_0

    .line 4979
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4982
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;-><init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    .line 4983
    return-object p0
.end method

.method public clearAccountInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;
    .locals 2

    .prologue
    .line 5271
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->hasAccountInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->access$18402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;Z)Z

    .line 5272
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->accountInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->access$18502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;

    .line 5273
    return-object p0
.end method

.method public clearAppInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;
    .locals 2

    .prologue
    .line 5102
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->hasAppInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->access$17602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;Z)Z

    .line 5103
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->access$17702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .line 5104
    return-object p0
.end method

.method public clearDeviceInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;
    .locals 2

    .prologue
    .line 5139
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->hasDeviceInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->access$17802(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;Z)Z

    .line 5140
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->deviceInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->access$17902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    .line 5141
    return-object p0
.end method

.method public clearMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;
    .locals 2

    .prologue
    .line 5234
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->access$18202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;Z)Z

    .line 5235
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->access$18302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 5236
    return-object p0
.end method

.method public clearRestoreAccount()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5157
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->hasRestoreAccount:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->access$18002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;Z)Z

    .line 5158
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->restoreAccount_:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->access$18102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;Z)Z

    .line 5159
    return-object p0
.end method

.method public clearRestoreDataTypes()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;
    .locals 2

    .prologue
    .line 5198
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->restoreDataTypes_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->access$17302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;Ljava/util/List;)Ljava/util/List;

    .line 5199
    return-object p0
.end method

.method public clearUserInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;
    .locals 2

    .prologue
    .line 5065
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->hasUserInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->access$17402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;Z)Z

    .line 5066
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->access$17502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .line 5067
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 4960
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 4960
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 4960
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 4960
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4960
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;
    .locals 2

    .prologue
    .line 4987
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;

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
    .line 4960
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAccountInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;
    .locals 1

    .prologue
    .line 5244
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->getAccountInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;

    move-result-object v0

    return-object v0
.end method

.method public getAppInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    .locals 1

    .prologue
    .line 5075
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->getAppInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 4960
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4960
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;
    .locals 1

    .prologue
    .line 4996
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 4992
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    .locals 1

    .prologue
    .line 5112
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->getDeviceInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 1

    .prologue
    .line 5207
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->getMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    return-object v0
.end method

.method public getRestoreAccount()Z
    .locals 1

    .prologue
    .line 5149
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->getRestoreAccount()Z

    move-result v0

    return v0
.end method

.method public getRestoreDataTypes(I)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 5170
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    invoke-virtual {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->getRestoreDataTypes(I)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;

    move-result-object v0

    return-object v0
.end method

.method public getRestoreDataTypesCount()I
    .locals 1

    .prologue
    .line 5167
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->getRestoreDataTypesCount()I

    move-result v0

    return v0
.end method

.method public getRestoreDataTypesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5164
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->restoreDataTypes_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->access$17300(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUserInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    .locals 1

    .prologue
    .line 5038
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->getUserInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public hasAccountInfo()Z
    .locals 1

    .prologue
    .line 5241
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->hasAccountInfo()Z

    move-result v0

    return v0
.end method

.method public hasAppInfo()Z
    .locals 1

    .prologue
    .line 5072
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->hasAppInfo()Z

    move-result v0

    return v0
.end method

.method public hasDeviceInfo()Z
    .locals 1

    .prologue
    .line 5109
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->hasDeviceInfo()Z

    move-result v0

    return v0
.end method

.method public hasMessageInfo()Z
    .locals 1

    .prologue
    .line 5204
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->hasMessageInfo()Z

    move-result v0

    return v0
.end method

.method public hasRestoreAccount()Z
    .locals 1

    .prologue
    .line 5146
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->hasRestoreAccount()Z

    move-result v0

    return v0
.end method

.method public hasUserInfo()Z
    .locals 1

    .prologue
    .line 5035
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->hasUserInfo()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 4960
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->internalGetResult()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;
    .locals 1

    .prologue
    .line 4974
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 5000
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeAccountInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;

    .prologue
    .line 5260
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->hasAccountInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->accountInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->access$18500(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 5262
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->accountInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->access$18500(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->accountInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->access$18502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;

    .line 5267
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->hasAccountInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->access$18402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;Z)Z

    .line 5268
    return-object p0

    .line 5265
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->accountInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->access$18502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;

    goto :goto_0
.end method

.method public mergeAppInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .prologue
    .line 5091
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->hasAppInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->access$17700(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 5093
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->access$17700(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->access$17702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .line 5098
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->hasAppInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->access$17602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;Z)Z

    .line 5099
    return-object p0

    .line 5096
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->access$17702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    goto :goto_0
.end method

.method public mergeDeviceInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    .prologue
    .line 5128
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->hasDeviceInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->deviceInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->access$17900(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 5130
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->deviceInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->access$17900(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->deviceInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->access$17902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    .line 5135
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->hasDeviceInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->access$17802(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;Z)Z

    .line 5136
    return-object p0

    .line 5133
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->deviceInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->access$17902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    goto :goto_0
.end method

.method public mergeMessageInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .prologue
    .line 5223
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->hasMessageInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->access$18300(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 5225
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->access$18300(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->access$18302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 5230
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->access$18202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;Z)Z

    .line 5231
    return-object p0

    .line 5228
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->access$18302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    goto :goto_0
.end method

.method public mergeUserInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .prologue
    .line 5054
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->hasUserInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->access$17500(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 5056
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->access$17500(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->access$17502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .line 5061
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->hasUserInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->access$17402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;Z)Z

    .line 5062
    return-object p0

    .line 5059
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->access$17502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    goto :goto_0
.end method

.method public setAccountInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;

    .prologue
    .line 5255
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->hasAccountInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->access$18402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;Z)Z

    .line 5256
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    invoke-virtual {p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->accountInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->access$18502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;

    .line 5257
    return-object p0
.end method

.method public setAccountInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;

    .prologue
    .line 5247
    if-nez p1, :cond_0

    .line 5248
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5250
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->hasAccountInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->access$18402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;Z)Z

    .line 5251
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->accountInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->access$18502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;

    .line 5252
    return-object p0
.end method

.method public setAppInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;

    .prologue
    .line 5086
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->hasAppInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->access$17602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;Z)Z

    .line 5087
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    invoke-virtual {p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->access$17702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .line 5088
    return-object p0
.end method

.method public setAppInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .prologue
    .line 5078
    if-nez p1, :cond_0

    .line 5079
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5081
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->hasAppInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->access$17602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;Z)Z

    .line 5082
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->access$17702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .line 5083
    return-object p0
.end method

.method public setDeviceInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;

    .prologue
    .line 5123
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->hasDeviceInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->access$17802(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;Z)Z

    .line 5124
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    invoke-virtual {p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->deviceInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->access$17902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    .line 5125
    return-object p0
.end method

.method public setDeviceInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    .prologue
    .line 5115
    if-nez p1, :cond_0

    .line 5116
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5118
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->hasDeviceInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->access$17802(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;Z)Z

    .line 5119
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->deviceInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->access$17902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    .line 5120
    return-object p0
.end method

.method public setMessageInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    .prologue
    .line 5218
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->access$18202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;Z)Z

    .line 5219
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    invoke-virtual {p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->access$18302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 5220
    return-object p0
.end method

.method public setMessageInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .prologue
    .line 5210
    if-nez p1, :cond_0

    .line 5211
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5213
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->access$18202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;Z)Z

    .line 5214
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->access$18302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 5215
    return-object p0
.end method

.method public setRestoreAccount(Z)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 5152
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->hasRestoreAccount:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->access$18002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;Z)Z

    .line 5153
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->restoreAccount_:Z
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->access$18102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;Z)Z

    .line 5154
    return-object p0
.end method

.method public setRestoreDataTypes(ILcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;

    .prologue
    .line 5173
    if-nez p2, :cond_0

    .line 5174
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5176
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->restoreDataTypes_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->access$17300(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5177
    return-object p0
.end method

.method public setUserInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;

    .prologue
    .line 5049
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->hasUserInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->access$17402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;Z)Z

    .line 5050
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    invoke-virtual {p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->access$17502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .line 5051
    return-object p0
.end method

.method public setUserInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .prologue
    .line 5041
    if-nez p1, :cond_0

    .line 5042
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5044
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->hasUserInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->access$17402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;Z)Z

    .line 5045
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;->access$17502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountLoginRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .line 5046
    return-object p0
.end method
