.class public final Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "SessionsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1741
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$6400(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1736
    invoke-direct {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;->buildParsed()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6500()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;
    .locals 1

    .prologue
    .line 1736
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;->create()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1787
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1788
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;

    invoke-static {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1791
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;->buildPartial()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;
    .locals 3

    .prologue
    .line 1744
    new-instance v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;-><init>()V

    .line 1745
    .local v0, "builder":Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;
    new-instance v1, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;-><init>(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;

    .line 1746
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1736
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;->build()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1736
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;->build()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;
    .locals 1

    .prologue
    .line 1779
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1780
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;

    invoke-static {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 1782
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;->buildPartial()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1736
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;->buildPartial()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1736
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;->buildPartial()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;
    .locals 3

    .prologue
    .line 1795
    iget-object v1, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;

    if-nez v1, :cond_0

    .line 1796
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1799
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;

    .line 1800
    .local v0, "returnMe":Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;

    .line 1801
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1736
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;->clear()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1736
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;->clear()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1736
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;->clear()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;
    .locals 2

    .prologue
    .line 1754
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;

    if-nez v0, :cond_0

    .line 1755
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1758
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;-><init>(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;

    .line 1759
    return-object p0
.end method

.method public clearCaptchaInfo()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;
    .locals 2

    .prologue
    .line 1934
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->hasCaptchaInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->access$7502(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;Z)Z

    .line 1935
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;

    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;->getDefaultInstance()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->captchaInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->access$7602(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

    .line 1936
    return-object p0
.end method

.method public clearData()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;
    .locals 2

    .prologue
    .line 1897
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->hasData:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->access$7302(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;Z)Z

    .line 1898
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;

    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->getDefaultInstance()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->data_:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->access$7402(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;

    .line 1899
    return-object p0
.end method

.method public clearError()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;
    .locals 2

    .prologue
    .line 1839
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->hasError:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->access$6902(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;Z)Z

    .line 1840
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;

    sget-object v1, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;->WRONG_PASSWORD:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->error_:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->access$7002(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;

    .line 1841
    return-object p0
.end method

.method public clearM()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;
    .locals 2

    .prologue
    .line 1860
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->hasM:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->access$7102(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;Z)Z

    .line 1861
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;

    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->getDefaultInstance()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->getM()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->m_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->access$7202(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;Ljava/lang/String;)Ljava/lang/String;

    .line 1862
    return-object p0
.end method

.method public clearVersion()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1818
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->hasVersion:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->access$6702(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;Z)Z

    .line 1819
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->version_:I
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->access$6802(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;I)I

    .line 1820
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1736
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;->clone()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1736
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;->clone()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1736
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;->clone()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1736
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;->clone()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1736
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;->clone()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;
    .locals 2

    .prologue
    .line 1763
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;->create()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;

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
    .line 1736
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;->clone()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCaptchaInfo()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;
    .locals 1

    .prologue
    .line 1907
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->getCaptchaInfo()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

    move-result-object v0

    return-object v0
.end method

.method public getData()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;
    .locals 1

    .prologue
    .line 1870
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->getData()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1736
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1736
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;
    .locals 1

    .prologue
    .line 1772
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->getDefaultInstance()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1768
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getError()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;
    .locals 1

    .prologue
    .line 1828
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->getError()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;

    move-result-object v0

    return-object v0
.end method

.method public getM()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1849
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->getM()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 1810
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->getVersion()I

    move-result v0

    return v0
.end method

.method public hasCaptchaInfo()Z
    .locals 1

    .prologue
    .line 1904
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->hasCaptchaInfo()Z

    move-result v0

    return v0
.end method

.method public hasData()Z
    .locals 1

    .prologue
    .line 1867
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->hasData()Z

    move-result v0

    return v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 1825
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->hasError()Z

    move-result v0

    return v0
.end method

.method public hasM()Z
    .locals 1

    .prologue
    .line 1846
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->hasM()Z

    move-result v0

    return v0
.end method

.method public hasVersion()Z
    .locals 1

    .prologue
    .line 1807
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->hasVersion()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 1736
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;->internalGetResult()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;
    .locals 1

    .prologue
    .line 1750
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 1776
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeCaptchaInfo(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

    .prologue
    .line 1923
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->hasCaptchaInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;

    # getter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->captchaInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->access$7600(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;->getDefaultInstance()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1925
    iget-object v1, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;

    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;

    # getter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->captchaInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->access$7600(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;->newBuilder(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo$Builder;->buildPartial()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->captchaInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->access$7602(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

    .line 1930
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->hasCaptchaInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->access$7502(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;Z)Z

    .line 1931
    return-object p0

    .line 1928
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->captchaInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->access$7602(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

    goto :goto_0
.end method

.method public mergeData(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;

    .prologue
    .line 1886
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->hasData()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;

    # getter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->data_:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;
    invoke-static {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->access$7400(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->getDefaultInstance()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1888
    iget-object v1, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;

    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;

    # getter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->data_:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;
    invoke-static {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->access$7400(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->newBuilder(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;->buildPartial()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->data_:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->access$7402(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;

    .line 1893
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->hasData:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->access$7302(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;Z)Z

    .line 1894
    return-object p0

    .line 1891
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->data_:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->access$7402(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;

    goto :goto_0
.end method

.method public setCaptchaInfo(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo$Builder;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo$Builder;

    .prologue
    .line 1918
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->hasCaptchaInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->access$7502(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;Z)Z

    .line 1919
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;

    invoke-virtual {p1}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo$Builder;->build()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->captchaInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->access$7602(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

    .line 1920
    return-object p0
.end method

.method public setCaptchaInfo(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

    .prologue
    .line 1910
    if-nez p1, :cond_0

    .line 1911
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1913
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->hasCaptchaInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->access$7502(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;Z)Z

    .line 1914
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->captchaInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->access$7602(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

    .line 1915
    return-object p0
.end method

.method public setData(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;

    .prologue
    .line 1881
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->hasData:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->access$7302(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;Z)Z

    .line 1882
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;

    invoke-virtual {p1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data$Builder;->build()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->data_:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->access$7402(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;

    .line 1883
    return-object p0
.end method

.method public setData(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;

    .prologue
    .line 1873
    if-nez p1, :cond_0

    .line 1874
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1876
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->hasData:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->access$7302(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;Z)Z

    .line 1877
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->data_:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->access$7402(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;

    .line 1878
    return-object p0
.end method

.method public setError(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;

    .prologue
    .line 1831
    if-nez p1, :cond_0

    .line 1832
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1834
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->hasError:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->access$6902(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;Z)Z

    .line 1835
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->error_:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->access$7002(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;

    .line 1836
    return-object p0
.end method

.method public setM(Ljava/lang/String;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1852
    if-nez p1, :cond_0

    .line 1853
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1855
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->hasM:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->access$7102(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;Z)Z

    .line 1856
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->m_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->access$7202(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;Ljava/lang/String;)Ljava/lang/String;

    .line 1857
    return-object p0
.end method

.method public setVersion(I)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 1813
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->hasVersion:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->access$6702(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;Z)Z

    .line 1814
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->version_:I
    invoke-static {v0, p1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->access$6802(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;I)I

    .line 1815
    return-object p0
.end method
