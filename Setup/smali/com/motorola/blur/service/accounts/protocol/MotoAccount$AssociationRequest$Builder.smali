.class public final Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "MotoAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11545
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$40300(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 11540
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$40400()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;
    .locals 1

    .prologue
    .line 11540
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 11591
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 11592
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 11595
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;
    .locals 3

    .prologue
    .line 11548
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;-><init>()V

    .line 11549
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;
    new-instance v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;-><init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    .line 11550
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 11540
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 11540
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;
    .locals 1

    .prologue
    .line 11583
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 11584
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 11586
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 11540
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 11540
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;
    .locals 3

    .prologue
    .line 11599
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    if-nez v1, :cond_0

    .line 11600
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 11603
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    .line 11604
    .local v0, "returnMe":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    .line 11605
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 11540
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 11540
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 11540
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;
    .locals 2

    .prologue
    .line 11558
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    if-nez v0, :cond_0

    .line 11559
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11562
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;-><init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    .line 11563
    return-object p0
.end method

.method public clearAction()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;
    .locals 2

    .prologue
    .line 11825
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->hasAction:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->access$42202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;Z)Z

    .line 11826
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    sget-object v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Action;->ADD_ASSOCIATION:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Action;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->action_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Action;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->access$42302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Action;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Action;

    .line 11827
    return-object p0
.end method

.method public clearAppId()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;
    .locals 2

    .prologue
    .line 11709
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->hasAppId:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->access$41402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;Z)Z

    .line 11710
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->getAppId()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->appId_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->access$41502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 11711
    return-object p0
.end method

.method public clearAppInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;
    .locals 2

    .prologue
    .line 11767
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->hasAppInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->access$41802(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;Z)Z

    .line 11768
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->access$41902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .line 11769
    return-object p0
.end method

.method public clearAssociation()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;
    .locals 2

    .prologue
    .line 11804
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->hasAssociation:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->access$42002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;Z)Z

    .line 11805
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->association_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->access$42102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;

    .line 11806
    return-object p0
.end method

.method public clearAuthToken()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;
    .locals 2

    .prologue
    .line 11646
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->hasAuthToken:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->access$40802(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;Z)Z

    .line 11647
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->getAuthToken()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->authToken_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->access$40902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 11648
    return-object p0
.end method

.method public clearDeviceId()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;
    .locals 2

    .prologue
    .line 11688
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->hasDeviceId:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->access$41202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;Z)Z

    .line 11689
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->deviceId_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->access$41302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 11690
    return-object p0
.end method

.method public clearGlobalDeviceId()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;
    .locals 2

    .prologue
    .line 11667
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->hasGlobalDeviceId:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->access$41002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;Z)Z

    .line 11668
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->getGlobalDeviceId()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->globalDeviceId_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->access$41102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 11669
    return-object p0
.end method

.method public clearLogin()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;
    .locals 2

    .prologue
    .line 11730
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->hasLogin:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->access$41602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;Z)Z

    .line 11731
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->getLogin()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->login_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->access$41702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 11732
    return-object p0
.end method

.method public clearMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;
    .locals 2

    .prologue
    .line 11862
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->access$42402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;Z)Z

    .line 11863
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->access$42502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 11864
    return-object p0
.end method

.method public clearUserId()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;
    .locals 2

    .prologue
    .line 11625
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->hasUserId:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->access$40602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;Z)Z

    .line 11626
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->getUserId()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->userId_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->access$40702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 11627
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 11540
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 11540
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 11540
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 11540
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 11540
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;
    .locals 2

    .prologue
    .line 11567
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;

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
    .line 11540
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAction()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Action;
    .locals 1

    .prologue
    .line 11814
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->getAction()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Action;

    move-result-object v0

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11698
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->getAppId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    .locals 1

    .prologue
    .line 11740
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->getAppInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v0

    return-object v0
.end method

.method public getAssociation()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;
    .locals 1

    .prologue
    .line 11777
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->getAssociation()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;

    move-result-object v0

    return-object v0
.end method

.method public getAuthToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11635
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->getAuthToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 11540
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 11540
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;
    .locals 1

    .prologue
    .line 11576
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 11572
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11677
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGlobalDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11656
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->getGlobalDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLogin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11719
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->getLogin()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    .locals 1

    .prologue
    .line 11835
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->getMessageInfo()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11614
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasAction()Z
    .locals 1

    .prologue
    .line 11811
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->hasAction()Z

    move-result v0

    return v0
.end method

.method public hasAppId()Z
    .locals 1

    .prologue
    .line 11695
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->hasAppId()Z

    move-result v0

    return v0
.end method

.method public hasAppInfo()Z
    .locals 1

    .prologue
    .line 11737
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->hasAppInfo()Z

    move-result v0

    return v0
.end method

.method public hasAssociation()Z
    .locals 1

    .prologue
    .line 11774
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->hasAssociation()Z

    move-result v0

    return v0
.end method

.method public hasAuthToken()Z
    .locals 1

    .prologue
    .line 11632
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->hasAuthToken()Z

    move-result v0

    return v0
.end method

.method public hasDeviceId()Z
    .locals 1

    .prologue
    .line 11674
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->hasDeviceId()Z

    move-result v0

    return v0
.end method

.method public hasGlobalDeviceId()Z
    .locals 1

    .prologue
    .line 11653
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->hasGlobalDeviceId()Z

    move-result v0

    return v0
.end method

.method public hasLogin()Z
    .locals 1

    .prologue
    .line 11716
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->hasLogin()Z

    move-result v0

    return v0
.end method

.method public hasMessageInfo()Z
    .locals 1

    .prologue
    .line 11832
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->hasMessageInfo()Z

    move-result v0

    return v0
.end method

.method public hasUserId()Z
    .locals 1

    .prologue
    .line 11611
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->hasUserId()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 11540
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->internalGetResult()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;
    .locals 1

    .prologue
    .line 11554
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 11580
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeAppInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .prologue
    .line 11756
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->hasAppInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->access$41900(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 11758
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->access$41900(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->access$41902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .line 11763
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->hasAppInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->access$41802(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;Z)Z

    .line 11764
    return-object p0

    .line 11761
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->access$41902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    goto :goto_0
.end method

.method public mergeAssociation(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;

    .prologue
    .line 11793
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->hasAssociation()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->association_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->access$42100(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 11795
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->association_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->access$42100(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->association_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->access$42102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;

    .line 11800
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->hasAssociation:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->access$42002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;Z)Z

    .line 11801
    return-object p0

    .line 11798
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->association_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->access$42102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;

    goto :goto_0
.end method

.method public mergeMessageInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .prologue
    .line 11851
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->hasMessageInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->access$42500(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 11853
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->access$42500(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->access$42502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 11858
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->access$42402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;Z)Z

    .line 11859
    return-object p0

    .line 11856
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->access$42502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    goto :goto_0
.end method

.method public setAction(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Action;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Action;

    .prologue
    .line 11817
    if-nez p1, :cond_0

    .line 11818
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11820
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->hasAction:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->access$42202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;Z)Z

    .line 11821
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->action_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Action;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->access$42302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Action;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Action;

    .line 11822
    return-object p0
.end method

.method public setAppId(Ljava/lang/String;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 11701
    if-nez p1, :cond_0

    .line 11702
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11704
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->hasAppId:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->access$41402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;Z)Z

    .line 11705
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->appId_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->access$41502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 11706
    return-object p0
.end method

.method public setAppInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;

    .prologue
    .line 11751
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->hasAppInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->access$41802(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;Z)Z

    .line 11752
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    invoke-virtual {p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->access$41902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .line 11753
    return-object p0
.end method

.method public setAppInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .prologue
    .line 11743
    if-nez p1, :cond_0

    .line 11744
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11746
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->hasAppInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->access$41802(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;Z)Z

    .line 11747
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->appInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->access$41902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AppInfo;

    .line 11748
    return-object p0
.end method

.method public setAssociation(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;

    .prologue
    .line 11788
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->hasAssociation:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->access$42002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;Z)Z

    .line 11789
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    invoke-virtual {p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->association_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->access$42102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;

    .line 11790
    return-object p0
.end method

.method public setAssociation(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;

    .prologue
    .line 11780
    if-nez p1, :cond_0

    .line 11781
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11783
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->hasAssociation:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->access$42002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;Z)Z

    .line 11784
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->association_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->access$42102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Association;

    .line 11785
    return-object p0
.end method

.method public setAuthToken(Ljava/lang/String;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 11638
    if-nez p1, :cond_0

    .line 11639
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11641
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->hasAuthToken:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->access$40802(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;Z)Z

    .line 11642
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->authToken_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->access$40902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 11643
    return-object p0
.end method

.method public setDeviceId(Ljava/lang/String;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 11680
    if-nez p1, :cond_0

    .line 11681
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11683
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->hasDeviceId:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->access$41202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;Z)Z

    .line 11684
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->deviceId_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->access$41302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 11685
    return-object p0
.end method

.method public setGlobalDeviceId(Ljava/lang/String;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 11659
    if-nez p1, :cond_0

    .line 11660
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11662
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->hasGlobalDeviceId:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->access$41002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;Z)Z

    .line 11663
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->globalDeviceId_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->access$41102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 11664
    return-object p0
.end method

.method public setLogin(Ljava/lang/String;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 11722
    if-nez p1, :cond_0

    .line 11723
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11725
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->hasLogin:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->access$41602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;Z)Z

    .line 11726
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->login_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->access$41702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 11727
    return-object p0
.end method

.method public setMessageInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;

    .prologue
    .line 11846
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->access$42402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;Z)Z

    .line 11847
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    invoke-virtual {p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->access$42502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 11848
    return-object p0
.end method

.method public setMessageInfo(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .prologue
    .line 11838
    if-nez p1, :cond_0

    .line 11839
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11841
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->hasMessageInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->access$42402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;Z)Z

    .line 11842
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->messageInfo_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->access$42502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$MessageInfo;

    .line 11843
    return-object p0
.end method

.method public setUserId(Ljava/lang/String;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 11617
    if-nez p1, :cond_0

    .line 11618
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11620
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->hasUserId:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->access$40602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;Z)Z

    .line 11621
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->userId_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->access$40702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 11622
    return-object p0
.end method
