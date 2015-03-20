.class public final Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "CloudsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1837
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$5400(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1832
    invoke-direct {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;->buildParsed()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5500()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;
    .locals 1

    .prologue
    .line 1832
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;->create()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1883
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1884
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;

    invoke-static {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1887
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;->buildPartial()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;
    .locals 3

    .prologue
    .line 1840
    new-instance v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;-><init>()V

    .line 1841
    .local v0, "builder":Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;
    new-instance v1, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;-><init>(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;

    .line 1842
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1832
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;->build()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1832
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;->build()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;
    .locals 1

    .prologue
    .line 1875
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1876
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;

    invoke-static {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 1878
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;->buildPartial()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1832
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;->buildPartial()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1832
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;->buildPartial()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;
    .locals 3

    .prologue
    .line 1891
    iget-object v1, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;

    if-nez v1, :cond_0

    .line 1892
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1895
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;

    .line 1896
    .local v0, "returnMe":Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;

    .line 1897
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1832
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;->clear()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1832
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;->clear()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1832
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;->clear()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;
    .locals 2

    .prologue
    .line 1850
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;

    if-nez v0, :cond_0

    .line 1851
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1854
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;-><init>(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;

    .line 1855
    return-object p0
.end method

.method public clearClearPort()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1992
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;->hasClearPort:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;->access$6502(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;Z)Z

    .line 1993
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;->clearPort_:I
    invoke-static {v0, v1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;->access$6602(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;I)I

    .line 1994
    return-object p0
.end method

.method public clearHostname()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;
    .locals 2

    .prologue
    .line 1956
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;->hasHostname:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;->access$6102(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;Z)Z

    .line 1957
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;

    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;->getDefaultInstance()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;->getHostname()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;->hostname_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;->access$6202(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 1958
    return-object p0
.end method

.method public clearNetworkid()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1914
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;->hasNetworkid:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;->access$5702(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;Z)Z

    .line 1915
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;->networkid_:I
    invoke-static {v0, v1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;->access$5802(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;I)I

    .line 1916
    return-object p0
.end method

.method public clearSecurePort()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1974
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;->hasSecurePort:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;->access$6302(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;Z)Z

    .line 1975
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;->securePort_:I
    invoke-static {v0, v1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;->access$6402(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;I)I

    .line 1976
    return-object p0
.end method

.method public clearType()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;
    .locals 2

    .prologue
    .line 1935
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;->hasType:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;->access$5902(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;Z)Z

    .line 1936
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;

    sget-object v1, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Type;->PUBLIC:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Type;

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;->type_:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Type;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;->access$6002(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Type;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Type;

    .line 1937
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1832
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;->clone()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1832
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;->clone()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1832
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;->clone()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1832
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;->clone()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1832
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;->clone()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;
    .locals 2

    .prologue
    .line 1859
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;->create()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;

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
    .line 1832
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;->clone()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getClearPort()I
    .locals 1

    .prologue
    .line 1984
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;->getClearPort()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1832
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1832
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;
    .locals 1

    .prologue
    .line 1868
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;->getDefaultInstance()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1864
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getHostname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1945
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;->getHostname()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkid()I
    .locals 1

    .prologue
    .line 1906
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;->getNetworkid()I

    move-result v0

    return v0
.end method

.method public getSecurePort()I
    .locals 1

    .prologue
    .line 1966
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;->getSecurePort()I

    move-result v0

    return v0
.end method

.method public getType()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Type;
    .locals 1

    .prologue
    .line 1924
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;->getType()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Type;

    move-result-object v0

    return-object v0
.end method

.method public hasClearPort()Z
    .locals 1

    .prologue
    .line 1981
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;->hasClearPort()Z

    move-result v0

    return v0
.end method

.method public hasHostname()Z
    .locals 1

    .prologue
    .line 1942
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;->hasHostname()Z

    move-result v0

    return v0
.end method

.method public hasNetworkid()Z
    .locals 1

    .prologue
    .line 1903
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;->hasNetworkid()Z

    move-result v0

    return v0
.end method

.method public hasSecurePort()Z
    .locals 1

    .prologue
    .line 1963
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;->hasSecurePort()Z

    move-result v0

    return v0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 1921
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;->hasType()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 1832
    invoke-virtual {p0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;->internalGetResult()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;
    .locals 1

    .prologue
    .line 1846
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 1872
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public setClearPort(I)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 1987
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;->hasClearPort:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;->access$6502(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;Z)Z

    .line 1988
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;->clearPort_:I
    invoke-static {v0, p1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;->access$6602(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;I)I

    .line 1989
    return-object p0
.end method

.method public setHostname(Ljava/lang/String;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1948
    if-nez p1, :cond_0

    .line 1949
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1951
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;->hasHostname:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;->access$6102(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;Z)Z

    .line 1952
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;->hostname_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;->access$6202(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 1953
    return-object p0
.end method

.method public setNetworkid(I)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 1909
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;->hasNetworkid:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;->access$5702(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;Z)Z

    .line 1910
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;->networkid_:I
    invoke-static {v0, p1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;->access$5802(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;I)I

    .line 1911
    return-object p0
.end method

.method public setSecurePort(I)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 1969
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;->hasSecurePort:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;->access$6302(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;Z)Z

    .line 1970
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;->securePort_:I
    invoke-static {v0, p1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;->access$6402(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;I)I

    .line 1971
    return-object p0
.end method

.method public setType(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Type;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Type;

    .prologue
    .line 1927
    if-nez p1, :cond_0

    .line 1928
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1930
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;->hasType:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;->access$5902(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;Z)Z

    .line 1931
    iget-object v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Builder;->result:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;

    # setter for: Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;->type_:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Type;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;->access$6002(Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Type;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo$Type;

    .line 1932
    return-object p0
.end method
