.class public final Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "ProvisioningProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2837
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$11100(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo$Builder;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2832
    invoke-direct {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo$Builder;->buildParsed()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$11200()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo$Builder;
    .locals 1

    .prologue
    .line 2832
    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo$Builder;->create()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2883
    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2884
    iget-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;

    invoke-static {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 2887
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo$Builder;->buildPartial()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo$Builder;
    .locals 3

    .prologue
    .line 2840
    new-instance v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo$Builder;-><init>()V

    .line 2841
    .local v0, "builder":Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo$Builder;
    new-instance v1, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;-><init>(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;

    .line 2842
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2832
    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo$Builder;->build()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2832
    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo$Builder;->build()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;
    .locals 1

    .prologue
    .line 2875
    iget-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2876
    iget-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;

    invoke-static {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 2878
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo$Builder;->buildPartial()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2832
    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo$Builder;->buildPartial()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2832
    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo$Builder;->buildPartial()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;
    .locals 3

    .prologue
    .line 2891
    iget-object v1, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;

    if-nez v1, :cond_0

    .line 2892
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2895
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;

    .line 2896
    .local v0, "returnMe":Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;

    .line 2897
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 2832
    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo$Builder;->clear()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2832
    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo$Builder;->clear()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2832
    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo$Builder;->clear()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo$Builder;
    .locals 2

    .prologue
    .line 2850
    iget-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;

    if-nez v0, :cond_0

    .line 2851
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2854
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;-><init>(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;

    .line 2855
    return-object p0
.end method

.method public clearText()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo$Builder;
    .locals 2

    .prologue
    .line 2938
    iget-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;->hasText:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;->access$11602(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;Z)Z

    .line 2939
    iget-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;

    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;->getDefaultInstance()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;->getText()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;->text_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;->access$11702(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 2940
    return-object p0
.end method

.method public clearToken()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo$Builder;
    .locals 2

    .prologue
    .line 2917
    iget-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;->hasToken:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;->access$11402(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;Z)Z

    .line 2918
    iget-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;

    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;->getDefaultInstance()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;->getToken()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;->token_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;->access$11502(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 2919
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 2832
    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo$Builder;->clone()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 2832
    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo$Builder;->clone()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 2832
    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo$Builder;->clone()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2832
    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo$Builder;->clone()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2832
    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo$Builder;->clone()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo$Builder;
    .locals 2

    .prologue
    .line 2859
    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo$Builder;->create()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo$Builder;

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
    .line 2832
    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo$Builder;->clone()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2832
    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2832
    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;
    .locals 1

    .prologue
    .line 2868
    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;->getDefaultInstance()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 2864
    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2927
    iget-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2906
    iget-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;->getToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasText()Z
    .locals 1

    .prologue
    .line 2924
    iget-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;->hasText()Z

    move-result v0

    return v0
.end method

.method public hasToken()Z
    .locals 1

    .prologue
    .line 2903
    iget-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;->hasToken()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 2832
    invoke-virtual {p0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo$Builder;->internalGetResult()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;
    .locals 1

    .prologue
    .line 2846
    iget-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 2872
    iget-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public setText(Ljava/lang/String;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2930
    if-nez p1, :cond_0

    .line 2931
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2933
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;->hasText:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;->access$11602(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;Z)Z

    .line 2934
    iget-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;

    # setter for: Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;->text_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;->access$11702(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 2935
    return-object p0
.end method

.method public setToken(Ljava/lang/String;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2909
    if-nez p1, :cond_0

    .line 2910
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2912
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;->hasToken:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;->access$11402(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;Z)Z

    .line 2913
    iget-object v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo$Builder;->result:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;

    # setter for: Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;->token_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;->access$11502(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 2914
    return-object p0
.end method
