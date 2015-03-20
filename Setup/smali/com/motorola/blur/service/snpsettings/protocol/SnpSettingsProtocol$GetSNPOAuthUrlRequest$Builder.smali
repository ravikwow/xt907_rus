.class public final Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "SnpSettingsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1820
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$7700(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1815
    invoke-direct {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;->buildParsed()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7800()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;
    .locals 1

    .prologue
    .line 1815
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;->create()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1866
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1867
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;

    invoke-static {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1870
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;->buildPartial()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;
    .locals 3

    .prologue
    .line 1823
    new-instance v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;-><init>()V

    .line 1824
    .local v0, "builder":Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;
    new-instance v1, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;-><init>(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;

    .line 1825
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1815
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;->build()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1815
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;->build()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;
    .locals 1

    .prologue
    .line 1858
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1859
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;

    invoke-static {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 1861
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;->buildPartial()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1815
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;->buildPartial()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1815
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;->buildPartial()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;
    .locals 3

    .prologue
    .line 1874
    iget-object v1, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;

    if-nez v1, :cond_0

    .line 1875
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1878
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;

    .line 1879
    .local v0, "returnMe":Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;

    .line 1880
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1815
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;->clear()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1815
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;->clear()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1815
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;->clear()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;
    .locals 2

    .prologue
    .line 1833
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;

    if-nez v0, :cond_0

    .line 1834
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1837
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;-><init>(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;

    .line 1838
    return-object p0
.end method

.method public clearType()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;
    .locals 2

    .prologue
    .line 1900
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;->hasType:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;->access$8002(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;Z)Z

    .line 1901
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;

    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;->getDefaultInstance()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;->getType()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;->type_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;->access$8102(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 1902
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1815
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;->clone()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1815
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;->clone()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1815
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;->clone()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1815
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;->clone()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1815
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;->clone()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;
    .locals 2

    .prologue
    .line 1842
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;->create()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;

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
    .line 1815
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;->clone()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1815
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1815
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;
    .locals 1

    .prologue
    .line 1851
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;->getDefaultInstance()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1847
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1889
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 1886
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;->hasType()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 1815
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;->internalGetResult()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;
    .locals 1

    .prologue
    .line 1829
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 1855
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public setType(Ljava/lang/String;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1892
    if-nez p1, :cond_0

    .line 1893
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1895
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;->hasType:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;->access$8002(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;Z)Z

    .line 1896
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;->type_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;->access$8102(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 1897
    return-object p0
.end method
