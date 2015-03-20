.class public final Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "MotoAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 5757
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$19900(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5752
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$20000()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;
    .locals 1

    .prologue
    .line 5752
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5803
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5804
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 5807
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;
    .locals 3

    .prologue
    .line 5760
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;-><init>()V

    .line 5761
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;
    new-instance v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;-><init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    .line 5762
    return-object v0
.end method


# virtual methods
.method public addAllRestoreDataTypes(Ljava/lang/Iterable;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;",
            ">;)",
            "Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;"
        }
    .end annotation

    .prologue
    .line 5991
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;>;"
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->restoreDataTypes_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->access$20200(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5992
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->restoreDataTypes_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->access$20202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;Ljava/util/List;)Ljava/util/List;

    .line 5994
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->restoreDataTypes_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->access$20200(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 5995
    return-object p0
.end method

.method public addRestoreDataTypes(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;

    .prologue
    .line 5980
    if-nez p1, :cond_0

    .line 5981
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5983
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->restoreDataTypes_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->access$20200(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5984
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->restoreDataTypes_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->access$20202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;Ljava/util/List;)Ljava/util/List;

    .line 5986
    :cond_1
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->restoreDataTypes_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->access$20200(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5987
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 5752
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5752
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;
    .locals 1

    .prologue
    .line 5795
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5796
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 5798
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 5752
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5752
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;
    .locals 3

    .prologue
    .line 5811
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    if-nez v1, :cond_0

    .line 5812
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5815
    :cond_0
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->restoreDataTypes_:Ljava/util/List;
    invoke-static {v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->access$20200(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_1

    .line 5816
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    iget-object v2, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->restoreDataTypes_:Ljava/util/List;
    invoke-static {v2}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->access$20200(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->restoreDataTypes_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->access$20202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;Ljava/util/List;)Ljava/util/List;

    .line 5819
    :cond_1
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    .line 5820
    .local v0, "returnMe":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    .line 5821
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 5752
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 5752
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 5752
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;
    .locals 2

    .prologue
    .line 5770
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    if-nez v0, :cond_0

    .line 5771
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5774
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;-><init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    .line 5775
    return-object p0
.end method

.method public clearAppInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;
    .locals 2

    .prologue
    .line 5899
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->hasAppInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->access$20702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;Z)Z

    .line 5900
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->access$20802(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .line 5901
    return-object p0
.end method

.method public clearAuthToken()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;
    .locals 2

    .prologue
    .line 5862
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->hasAuthToken:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->access$20502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;Z)Z

    .line 5863
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->getAuthToken()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->authToken_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->access$20602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 5864
    return-object p0
.end method

.method public clearDeviceInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;
    .locals 2

    .prologue
    .line 5936
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->hasDeviceInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->access$20902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;Z)Z

    .line 5937
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->deviceInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->access$21002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    .line 5938
    return-object p0
.end method

.method public clearLevel()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;
    .locals 2

    .prologue
    .line 5957
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->hasLevel:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->access$21102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;Z)Z

    .line 5958
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    sget-object v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;->ALL:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->level_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->access$21202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;

    .line 5959
    return-object p0
.end method

.method public clearMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;
    .locals 2

    .prologue
    .line 6034
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->access$21302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;Z)Z

    .line 6035
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->access$21402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 6036
    return-object p0
.end method

.method public clearRestoreDataTypes()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;
    .locals 2

    .prologue
    .line 5998
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->restoreDataTypes_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->access$20202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;Ljava/util/List;)Ljava/util/List;

    .line 5999
    return-object p0
.end method

.method public clearUserId()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;
    .locals 2

    .prologue
    .line 5841
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->hasUserId:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->access$20302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;Z)Z

    .line 5842
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->getUserId()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->userId_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->access$20402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 5843
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 5752
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 5752
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 5752
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 5752
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 5752
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;
    .locals 2

    .prologue
    .line 5779
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;

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
    .line 5752
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAppInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    .locals 1

    .prologue
    .line 5872
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->getAppInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v0

    return-object v0
.end method

.method public getAuthToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5851
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->getAuthToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 5752
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5752
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;
    .locals 1

    .prologue
    .line 5788
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5784
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    .locals 1

    .prologue
    .line 5909
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->getDeviceInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getLevel()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;
    .locals 1

    .prologue
    .line 5946
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->getLevel()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;

    move-result-object v0

    return-object v0
.end method

.method public getMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 1

    .prologue
    .line 6007
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->getMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    return-object v0
.end method

.method public getRestoreDataTypes(I)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 5970
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    invoke-virtual {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->getRestoreDataTypes(I)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;

    move-result-object v0

    return-object v0
.end method

.method public getRestoreDataTypesCount()I
    .locals 1

    .prologue
    .line 5967
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->getRestoreDataTypesCount()I

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
    .line 5964
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->restoreDataTypes_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->access$20200(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5830
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasAppInfo()Z
    .locals 1

    .prologue
    .line 5869
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->hasAppInfo()Z

    move-result v0

    return v0
.end method

.method public hasAuthToken()Z
    .locals 1

    .prologue
    .line 5848
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->hasAuthToken()Z

    move-result v0

    return v0
.end method

.method public hasDeviceInfo()Z
    .locals 1

    .prologue
    .line 5906
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->hasDeviceInfo()Z

    move-result v0

    return v0
.end method

.method public hasLevel()Z
    .locals 1

    .prologue
    .line 5943
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->hasLevel()Z

    move-result v0

    return v0
.end method

.method public hasMessageInfo()Z
    .locals 1

    .prologue
    .line 6004
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->hasMessageInfo()Z

    move-result v0

    return v0
.end method

.method public hasUserId()Z
    .locals 1

    .prologue
    .line 5827
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->hasUserId()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 5752
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->internalGetResult()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;
    .locals 1

    .prologue
    .line 5766
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 5792
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeAppInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .prologue
    .line 5888
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->hasAppInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->access$20800(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 5890
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->access$20800(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->access$20802(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .line 5895
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->hasAppInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->access$20702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;Z)Z

    .line 5896
    return-object p0

    .line 5893
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->access$20802(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    goto :goto_0
.end method

.method public mergeDeviceInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    .prologue
    .line 5925
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->hasDeviceInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->deviceInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->access$21000(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 5927
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->deviceInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->access$21000(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->deviceInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->access$21002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    .line 5932
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->hasDeviceInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->access$20902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;Z)Z

    .line 5933
    return-object p0

    .line 5930
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->deviceInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->access$21002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    goto :goto_0
.end method

.method public mergeMessageInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .prologue
    .line 6023
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->hasMessageInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->access$21400(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 6025
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->access$21400(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->access$21402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 6030
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->access$21302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;Z)Z

    .line 6031
    return-object p0

    .line 6028
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->access$21402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    goto :goto_0
.end method

.method public setAppInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;

    .prologue
    .line 5883
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->hasAppInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->access$20702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;Z)Z

    .line 5884
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    invoke-virtual {p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->access$20802(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .line 5885
    return-object p0
.end method

.method public setAppInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .prologue
    .line 5875
    if-nez p1, :cond_0

    .line 5876
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5878
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->hasAppInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->access$20702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;Z)Z

    .line 5879
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->access$20802(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .line 5880
    return-object p0
.end method

.method public setAuthToken(Ljava/lang/String;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 5854
    if-nez p1, :cond_0

    .line 5855
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5857
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->hasAuthToken:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->access$20502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;Z)Z

    .line 5858
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->authToken_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->access$20602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 5859
    return-object p0
.end method

.method public setDeviceInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;

    .prologue
    .line 5920
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->hasDeviceInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->access$20902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;Z)Z

    .line 5921
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    invoke-virtual {p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->deviceInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->access$21002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    .line 5922
    return-object p0
.end method

.method public setDeviceInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    .prologue
    .line 5912
    if-nez p1, :cond_0

    .line 5913
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5915
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->hasDeviceInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->access$20902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;Z)Z

    .line 5916
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->deviceInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->access$21002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    .line 5917
    return-object p0
.end method

.method public setLevel(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;

    .prologue
    .line 5949
    if-nez p1, :cond_0

    .line 5950
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5952
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->hasLevel:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->access$21102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;Z)Z

    .line 5953
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->level_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->access$21202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;

    .line 5954
    return-object p0
.end method

.method public setMessageInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    .prologue
    .line 6018
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->access$21302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;Z)Z

    .line 6019
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    invoke-virtual {p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->access$21402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 6020
    return-object p0
.end method

.method public setMessageInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .prologue
    .line 6010
    if-nez p1, :cond_0

    .line 6011
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6013
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->access$21302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;Z)Z

    .line 6014
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->access$21402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 6015
    return-object p0
.end method

.method public setRestoreDataTypes(ILcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;

    .prologue
    .line 5973
    if-nez p2, :cond_0

    .line 5974
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5976
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->restoreDataTypes_:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->access$20200(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5977
    return-object p0
.end method

.method public setUserId(Ljava/lang/String;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 5833
    if-nez p1, :cond_0

    .line 5834
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5836
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->hasUserId:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->access$20302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;Z)Z

    .line 5837
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->userId_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;->access$20402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreAccountRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 5838
    return-object p0
.end method
