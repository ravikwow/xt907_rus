.class public final Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "ProvisioningProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1624
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$5700(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo$Builder;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1619
    invoke-direct {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo$Builder;->buildParsed()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5800()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo$Builder;
    .locals 1

    .prologue
    .line 1619
    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo$Builder;->create()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1670
    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1671
    iget-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo;

    invoke-static {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1674
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo$Builder;->buildPartial()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo$Builder;
    .locals 3

    .prologue
    .line 1627
    new-instance v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo$Builder;-><init>()V

    .line 1628
    .local v0, "builder":Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo$Builder;
    new-instance v1, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo;-><init>(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo;

    .line 1629
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1619
    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo$Builder;->build()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1619
    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo$Builder;->build()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo;
    .locals 1

    .prologue
    .line 1662
    iget-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1663
    iget-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo;

    invoke-static {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 1665
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo$Builder;->buildPartial()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1619
    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo$Builder;->buildPartial()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1619
    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo$Builder;->buildPartial()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo;
    .locals 3

    .prologue
    .line 1678
    iget-object v1, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo;

    if-nez v1, :cond_0

    .line 1679
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1682
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo;

    .line 1683
    .local v0, "returnMe":Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo;

    .line 1684
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1619
    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo$Builder;->clear()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1619
    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo$Builder;->clear()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1619
    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo$Builder;->clear()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo$Builder;
    .locals 2

    .prologue
    .line 1637
    iget-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo;

    if-nez v0, :cond_0

    .line 1638
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1641
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo;-><init>(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo;

    .line 1642
    return-object p0
.end method

.method public clearSessionAuthToken()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo$Builder;
    .locals 2

    .prologue
    .line 1704
    iget-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo;->hasSessionAuthToken:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo;->access$6002(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo;Z)Z

    .line 1705
    iget-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo;

    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo;->getDefaultInstance()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo;->getSessionAuthToken()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo;->sessionAuthToken_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo;->access$6102(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 1706
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1619
    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo$Builder;->clone()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1619
    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo$Builder;->clone()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1619
    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo$Builder;->clone()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1619
    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo$Builder;->clone()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1619
    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo$Builder;->clone()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo$Builder;
    .locals 2

    .prologue
    .line 1646
    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo$Builder;->create()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo$Builder;

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
    .line 1619
    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo$Builder;->clone()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1619
    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1619
    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo;
    .locals 1

    .prologue
    .line 1655
    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo;->getDefaultInstance()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1651
    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getSessionAuthToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1693
    iget-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo;->getSessionAuthToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasSessionAuthToken()Z
    .locals 1

    .prologue
    .line 1690
    iget-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo;->hasSessionAuthToken()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 1619
    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo$Builder;->internalGetResult()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo;
    .locals 1

    .prologue
    .line 1633
    iget-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 1659
    iget-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public setSessionAuthToken(Ljava/lang/String;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1696
    if-nez p1, :cond_0

    .line 1697
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1699
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo;->hasSessionAuthToken:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo;->access$6002(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo;Z)Z

    .line 1700
    iget-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo;

    # setter for: Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo;->sessionAuthToken_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo;->access$6102(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 1701
    return-object p0
.end method
