.class public final Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "SessionsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 914
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$3200(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 909
    invoke-direct {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->buildParsed()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3300()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;
    .locals 1

    .prologue
    .line 909
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->create()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 960
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 961
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    invoke-static {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 964
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->buildPartial()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;
    .locals 3

    .prologue
    .line 917
    new-instance v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;-><init>()V

    .line 918
    .local v0, "builder":Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;
    new-instance v1, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;-><init>(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    .line 919
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 909
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->build()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 909
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->build()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;
    .locals 1

    .prologue
    .line 952
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 953
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    invoke-static {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 955
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->buildPartial()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 909
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->buildPartial()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 909
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->buildPartial()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;
    .locals 3

    .prologue
    .line 968
    iget-object v1, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    if-nez v1, :cond_0

    .line 969
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 972
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    .line 973
    .local v0, "returnMe":Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    .line 974
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 909
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->clear()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 909
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->clear()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 909
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->clear()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;
    .locals 2

    .prologue
    .line 927
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    if-nez v0, :cond_0

    .line 928
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 931
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;-><init>(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    .line 932
    return-object p0
.end method

.method public clearCaptchaInfo()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;
    .locals 2

    .prologue
    .line 1159
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->hasCaptchaInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->access$4702(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;Z)Z

    .line 1160
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;->getDefaultInstance()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->captchaInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->access$4802(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;

    .line 1161
    return-object p0
.end method

.method public clearConfigId()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;
    .locals 2

    .prologue
    .line 1180
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->hasConfigId:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->access$4902(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;Z)Z

    .line 1181
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->getDefaultInstance()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->getConfigId()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->configId_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->access$5002(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;Ljava/lang/String;)Ljava/lang/String;

    .line 1182
    return-object p0
.end method

.method public clearContext()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;
    .locals 3

    .prologue
    .line 1067
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->hasContext:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->access$4102(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;Z)Z

    .line 1068
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    const-wide/16 v1, 0x0

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->context_:J
    invoke-static {v0, v1, v2}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->access$4202(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;J)J

    .line 1069
    return-object p0
.end method

.method public clearDeviceInfo()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;
    .locals 2

    .prologue
    .line 1049
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->hasDeviceInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->access$3902(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;Z)Z

    .line 1050
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;->getDefaultInstance()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->access$4002(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    .line 1051
    return-object p0
.end method

.method public clearM()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;
    .locals 2

    .prologue
    .line 1012
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->hasM:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->access$3702(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;Z)Z

    .line 1013
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->getDefaultInstance()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->getM()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->m_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->access$3802(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;Ljava/lang/String;)Ljava/lang/String;

    .line 1014
    return-object p0
.end method

.method public clearSessionInfo()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;
    .locals 2

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->hasSessionInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->access$4502(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;Z)Z

    .line 1123
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;->getDefaultInstance()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->sessionInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->access$4602(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;

    .line 1124
    return-object p0
.end method

.method public clearUserLogin()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1085
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->hasUserLogin:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->access$4302(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;Z)Z

    .line 1086
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->userLogin_:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->access$4402(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;Z)Z

    .line 1087
    return-object p0
.end method

.method public clearVersion()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 991
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->hasVersion:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->access$3502(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;Z)Z

    .line 992
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->version_:I
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->access$3602(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;I)I

    .line 993
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 909
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->clone()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 909
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->clone()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 909
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->clone()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 909
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->clone()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 909
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->clone()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;
    .locals 2

    .prologue
    .line 936
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->create()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;

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
    .line 909
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->clone()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCaptchaInfo()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;
    .locals 1

    .prologue
    .line 1132
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->getCaptchaInfo()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;

    move-result-object v0

    return-object v0
.end method

.method public getConfigId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1169
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->getConfigId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContext()J
    .locals 2

    .prologue
    .line 1059
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->getContext()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 909
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 909
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;
    .locals 1

    .prologue
    .line 945
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->getDefaultInstance()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 941
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceInfo()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;
    .locals 1

    .prologue
    .line 1022
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->getDeviceInfo()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getM()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->getM()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSessionInfo()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;
    .locals 1

    .prologue
    .line 1095
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->getSessionInfo()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;

    move-result-object v0

    return-object v0
.end method

.method public getUserLogin()Z
    .locals 1

    .prologue
    .line 1077
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->getUserLogin()Z

    move-result v0

    return v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 983
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->getVersion()I

    move-result v0

    return v0
.end method

.method public hasCaptchaInfo()Z
    .locals 1

    .prologue
    .line 1129
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->hasCaptchaInfo()Z

    move-result v0

    return v0
.end method

.method public hasConfigId()Z
    .locals 1

    .prologue
    .line 1166
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->hasConfigId()Z

    move-result v0

    return v0
.end method

.method public hasContext()Z
    .locals 1

    .prologue
    .line 1056
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->hasContext()Z

    move-result v0

    return v0
.end method

.method public hasDeviceInfo()Z
    .locals 1

    .prologue
    .line 1019
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->hasDeviceInfo()Z

    move-result v0

    return v0
.end method

.method public hasM()Z
    .locals 1

    .prologue
    .line 998
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->hasM()Z

    move-result v0

    return v0
.end method

.method public hasSessionInfo()Z
    .locals 1

    .prologue
    .line 1092
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->hasSessionInfo()Z

    move-result v0

    return v0
.end method

.method public hasUserLogin()Z
    .locals 1

    .prologue
    .line 1074
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->hasUserLogin()Z

    move-result v0

    return v0
.end method

.method public hasVersion()Z
    .locals 1

    .prologue
    .line 980
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->hasVersion()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 909
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->internalGetResult()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;
    .locals 1

    .prologue
    .line 923
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 949
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeCaptchaInfo(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;

    .prologue
    .line 1148
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->hasCaptchaInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    # getter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->captchaInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->access$4800(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;->getDefaultInstance()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1150
    iget-object v1, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    # getter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->captchaInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->access$4800(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;->newBuilder(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo$Builder;->buildPartial()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->captchaInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->access$4802(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;

    .line 1155
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->hasCaptchaInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->access$4702(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;Z)Z

    .line 1156
    return-object p0

    .line 1153
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->captchaInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->access$4802(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;

    goto :goto_0
.end method

.method public mergeDeviceInfo(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    .prologue
    .line 1038
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->hasDeviceInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    # getter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->access$4000(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;->getDefaultInstance()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1040
    iget-object v1, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    # getter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->access$4000(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;->newBuilder(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;->buildPartial()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->access$4002(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    .line 1045
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->hasDeviceInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->access$3902(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;Z)Z

    .line 1046
    return-object p0

    .line 1043
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->access$4002(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    goto :goto_0
.end method

.method public mergeSessionInfo(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;

    .prologue
    .line 1111
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    invoke-virtual {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->hasSessionInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    # getter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->sessionInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->access$4600(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;->getDefaultInstance()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1113
    iget-object v1, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    # getter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->sessionInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->access$4600(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;->newBuilder(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo$Builder;->buildPartial()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->sessionInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->access$4602(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;

    .line 1118
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->hasSessionInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->access$4502(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;Z)Z

    .line 1119
    return-object p0

    .line 1116
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->sessionInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->access$4602(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;

    goto :goto_0
.end method

.method public setCaptchaInfo(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo$Builder;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo$Builder;

    .prologue
    .line 1143
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->hasCaptchaInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->access$4702(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;Z)Z

    .line 1144
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    invoke-virtual {p1}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo$Builder;->build()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->captchaInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->access$4802(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;

    .line 1145
    return-object p0
.end method

.method public setCaptchaInfo(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;

    .prologue
    .line 1135
    if-nez p1, :cond_0

    .line 1136
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1138
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->hasCaptchaInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->access$4702(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;Z)Z

    .line 1139
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->captchaInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->access$4802(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;

    .line 1140
    return-object p0
.end method

.method public setConfigId(Ljava/lang/String;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1172
    if-nez p1, :cond_0

    .line 1173
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1175
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->hasConfigId:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->access$4902(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;Z)Z

    .line 1176
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->configId_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->access$5002(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;Ljava/lang/String;)Ljava/lang/String;

    .line 1177
    return-object p0
.end method

.method public setContext(J)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;
    .locals 2
    .param p1, "value"    # J

    .prologue
    .line 1062
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->hasContext:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->access$4102(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;Z)Z

    .line 1063
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->context_:J
    invoke-static {v0, p1, p2}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->access$4202(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;J)J

    .line 1064
    return-object p0
.end method

.method public setDeviceInfo(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;

    .prologue
    .line 1033
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->hasDeviceInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->access$3902(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;Z)Z

    .line 1034
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    invoke-virtual {p1}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo$Builder;->build()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->access$4002(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    .line 1035
    return-object p0
.end method

.method public setDeviceInfo(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    .prologue
    .line 1025
    if-nez p1, :cond_0

    .line 1026
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1028
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->hasDeviceInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->access$3902(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;Z)Z

    .line 1029
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->access$4002(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    .line 1030
    return-object p0
.end method

.method public setM(Ljava/lang/String;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1004
    if-nez p1, :cond_0

    .line 1005
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1007
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->hasM:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->access$3702(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;Z)Z

    .line 1008
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->m_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->access$3802(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;Ljava/lang/String;)Ljava/lang/String;

    .line 1009
    return-object p0
.end method

.method public setSessionInfo(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo$Builder;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo$Builder;

    .prologue
    .line 1106
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->hasSessionInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->access$4502(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;Z)Z

    .line 1107
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    invoke-virtual {p1}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo$Builder;->build()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->sessionInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->access$4602(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;

    .line 1108
    return-object p0
.end method

.method public setSessionInfo(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;

    .prologue
    .line 1098
    if-nez p1, :cond_0

    .line 1099
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1101
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->hasSessionInfo:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->access$4502(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;Z)Z

    .line 1102
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->sessionInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->access$4602(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;

    .line 1103
    return-object p0
.end method

.method public setUserLogin(Z)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 1080
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->hasUserLogin:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->access$4302(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;Z)Z

    .line 1081
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->userLogin_:Z
    invoke-static {v0, p1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->access$4402(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;Z)Z

    .line 1082
    return-object p0
.end method

.method public setVersion(I)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 986
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->hasVersion:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->access$3502(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;Z)Z

    .line 987
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->result:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    # setter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->version_:I
    invoke-static {v0, p1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->access$3602(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;I)I

    .line 988
    return-object p0
.end method
