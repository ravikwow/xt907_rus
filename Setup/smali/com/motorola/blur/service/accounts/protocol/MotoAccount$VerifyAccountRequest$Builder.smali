.class public final Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "MotoAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1648
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$5000(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1643
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5100()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;
    .locals 1

    .prologue
    .line 1643
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1694
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1695
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1698
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;
    .locals 3

    .prologue
    .line 1651
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;-><init>()V

    .line 1652
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;
    new-instance v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;-><init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    .line 1653
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1643
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1643
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;
    .locals 1

    .prologue
    .line 1686
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1687
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 1689
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1643
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1643
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;
    .locals 3

    .prologue
    .line 1702
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    if-nez v1, :cond_0

    .line 1703
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1706
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    .line 1707
    .local v0, "returnMe":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    .line 1708
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1643
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1643
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1643
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;
    .locals 2

    .prologue
    .line 1661
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    if-nez v0, :cond_0

    .line 1662
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1665
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;-><init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    .line 1666
    return-object p0
.end method

.method public clearAppInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;
    .locals 2

    .prologue
    .line 1781
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->hasAppInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->access$5502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;Z)Z

    .line 1782
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->access$5602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .line 1783
    return-object p0
.end method

.method public clearDeviceInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;
    .locals 2

    .prologue
    .line 1855
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->hasDeviceInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->access$5902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;Z)Z

    .line 1856
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->deviceInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->access$6002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    .line 1857
    return-object p0
.end method

.method public clearMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;
    .locals 2

    .prologue
    .line 1818
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->access$5702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;Z)Z

    .line 1819
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->access$5802(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 1820
    return-object p0
.end method

.method public clearPin()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;
    .locals 2

    .prologue
    .line 1913
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->hasPin:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->access$6302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;Z)Z

    .line 1914
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->getPin()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->pin_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->access$6402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 1915
    return-object p0
.end method

.method public clearSession()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;
    .locals 2

    .prologue
    .line 1892
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->hasSession:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->access$6102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;Z)Z

    .line 1893
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->session_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->access$6202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    .line 1894
    return-object p0
.end method

.method public clearUserInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;
    .locals 2

    .prologue
    .line 1744
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->hasUserInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->access$5302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;Z)Z

    .line 1745
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->access$5402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .line 1746
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1643
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1643
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1643
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1643
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1643
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;
    .locals 2

    .prologue
    .line 1670
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;

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
    .line 1643
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAppInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    .locals 1

    .prologue
    .line 1754
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->getAppInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1643
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1643
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;
    .locals 1

    .prologue
    .line 1679
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1675
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    .locals 1

    .prologue
    .line 1828
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->getDeviceInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 1

    .prologue
    .line 1791
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->getMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    return-object v0
.end method

.method public getPin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1902
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->getPin()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSession()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;
    .locals 1

    .prologue
    .line 1865
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->getSession()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    move-result-object v0

    return-object v0
.end method

.method public getUserInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    .locals 1

    .prologue
    .line 1717
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->getUserInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public hasAppInfo()Z
    .locals 1

    .prologue
    .line 1751
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->hasAppInfo()Z

    move-result v0

    return v0
.end method

.method public hasDeviceInfo()Z
    .locals 1

    .prologue
    .line 1825
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->hasDeviceInfo()Z

    move-result v0

    return v0
.end method

.method public hasMessageInfo()Z
    .locals 1

    .prologue
    .line 1788
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->hasMessageInfo()Z

    move-result v0

    return v0
.end method

.method public hasPin()Z
    .locals 1

    .prologue
    .line 1899
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->hasPin()Z

    move-result v0

    return v0
.end method

.method public hasSession()Z
    .locals 1

    .prologue
    .line 1862
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->hasSession()Z

    move-result v0

    return v0
.end method

.method public hasUserInfo()Z
    .locals 1

    .prologue
    .line 1714
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->hasUserInfo()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 1643
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->internalGetResult()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;
    .locals 1

    .prologue
    .line 1657
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 1683
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeAppInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .prologue
    .line 1770
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->hasAppInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->access$5600(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1772
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->access$5600(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->access$5602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .line 1777
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->hasAppInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->access$5502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;Z)Z

    .line 1778
    return-object p0

    .line 1775
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->access$5602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    goto :goto_0
.end method

.method public mergeDeviceInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    .prologue
    .line 1844
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->hasDeviceInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->deviceInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->access$6000(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1846
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->deviceInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->access$6000(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->deviceInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->access$6002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    .line 1851
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->hasDeviceInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->access$5902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;Z)Z

    .line 1852
    return-object p0

    .line 1849
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->deviceInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->access$6002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    goto :goto_0
.end method

.method public mergeMessageInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .prologue
    .line 1807
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->hasMessageInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->access$5800(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1809
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->access$5800(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->access$5802(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 1814
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->access$5702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;Z)Z

    .line 1815
    return-object p0

    .line 1812
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->access$5802(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    goto :goto_0
.end method

.method public mergeSession(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    .prologue
    .line 1881
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->hasSession()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->session_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->access$6200(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1883
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->session_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->access$6200(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->session_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->access$6202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    .line 1888
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->hasSession:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->access$6102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;Z)Z

    .line 1889
    return-object p0

    .line 1886
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->session_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->access$6202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    goto :goto_0
.end method

.method public mergeUserInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .prologue
    .line 1733
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->hasUserInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->access$5400(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1735
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->access$5400(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->access$5402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .line 1740
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->hasUserInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->access$5302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;Z)Z

    .line 1741
    return-object p0

    .line 1738
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->access$5402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    goto :goto_0
.end method

.method public setAppInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;

    .prologue
    .line 1765
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->hasAppInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->access$5502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;Z)Z

    .line 1766
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    invoke-virtual {p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->access$5602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .line 1767
    return-object p0
.end method

.method public setAppInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .prologue
    .line 1757
    if-nez p1, :cond_0

    .line 1758
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1760
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->hasAppInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->access$5502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;Z)Z

    .line 1761
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->access$5602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .line 1762
    return-object p0
.end method

.method public setDeviceInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;

    .prologue
    .line 1839
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->hasDeviceInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->access$5902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;Z)Z

    .line 1840
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    invoke-virtual {p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->deviceInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->access$6002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    .line 1841
    return-object p0
.end method

.method public setDeviceInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    .prologue
    .line 1831
    if-nez p1, :cond_0

    .line 1832
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1834
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->hasDeviceInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->access$5902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;Z)Z

    .line 1835
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->deviceInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->access$6002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$DeviceInfo;

    .line 1836
    return-object p0
.end method

.method public setMessageInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    .prologue
    .line 1802
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->access$5702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;Z)Z

    .line 1803
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    invoke-virtual {p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->access$5802(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 1804
    return-object p0
.end method

.method public setMessageInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .prologue
    .line 1794
    if-nez p1, :cond_0

    .line 1795
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1797
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->access$5702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;Z)Z

    .line 1798
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->access$5802(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 1799
    return-object p0
.end method

.method public setPin(Ljava/lang/String;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1905
    if-nez p1, :cond_0

    .line 1906
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1908
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->hasPin:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->access$6302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;Z)Z

    .line 1909
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->pin_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->access$6402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 1910
    return-object p0
.end method

.method public setSession(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;

    .prologue
    .line 1876
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->hasSession:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->access$6102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;Z)Z

    .line 1877
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    invoke-virtual {p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->session_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->access$6202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    .line 1878
    return-object p0
.end method

.method public setSession(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    .prologue
    .line 1868
    if-nez p1, :cond_0

    .line 1869
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1871
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->hasSession:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->access$6102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;Z)Z

    .line 1872
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->session_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->access$6202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$SessionData;

    .line 1873
    return-object p0
.end method

.method public setUserInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;

    .prologue
    .line 1728
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->hasUserInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->access$5302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;Z)Z

    .line 1729
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    invoke-virtual {p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->access$5402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .line 1730
    return-object p0
.end method

.method public setUserInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .prologue
    .line 1720
    if-nez p1, :cond_0

    .line 1721
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1723
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->hasUserInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->access$5302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;Z)Z

    .line 1724
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->userInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;->access$5402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$VerifyAccountRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .line 1725
    return-object p0
.end method
