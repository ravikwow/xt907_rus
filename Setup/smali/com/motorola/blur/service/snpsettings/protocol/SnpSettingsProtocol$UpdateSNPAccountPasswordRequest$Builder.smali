.class public final Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "SnpSettingsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 775
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$3000(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 770
    invoke-direct {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;->buildParsed()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3100()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;
    .locals 1

    .prologue
    .line 770
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;->create()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 821
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 822
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;

    invoke-static {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 825
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;->buildPartial()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;
    .locals 3

    .prologue
    .line 778
    new-instance v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;-><init>()V

    .line 779
    .local v0, "builder":Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;
    new-instance v1, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;-><init>(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;

    .line 780
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 770
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;->build()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 770
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;->build()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;
    .locals 1

    .prologue
    .line 813
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 814
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;

    invoke-static {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 816
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;->buildPartial()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 770
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;->buildPartial()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 770
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;->buildPartial()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;
    .locals 3

    .prologue
    .line 829
    iget-object v1, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;

    if-nez v1, :cond_0

    .line 830
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 833
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;

    .line 834
    .local v0, "returnMe":Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;

    .line 835
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 770
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;->clear()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 770
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;->clear()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 770
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;->clear()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;
    .locals 2

    .prologue
    .line 788
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;

    if-nez v0, :cond_0

    .line 789
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 792
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;-><init>(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;

    .line 793
    return-object p0
.end method

.method public clearCaptchaText()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;
    .locals 2

    .prologue
    .line 957
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->hasCaptchaText:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->access$4302(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;Z)Z

    .line 958
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;

    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->getDefaultInstance()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->getCaptchaText()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->captchaText_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->access$4402(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 959
    return-object p0
.end method

.method public clearCaptchaToken()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;
    .locals 2

    .prologue
    .line 936
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->hasCaptchaToken:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->access$4102(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;Z)Z

    .line 937
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;

    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->getDefaultInstance()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->getCaptchaToken()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->captchaToken_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->access$4202(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 938
    return-object p0
.end method

.method public clearLogin()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;
    .locals 2

    .prologue
    .line 894
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->hasLogin:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->access$3702(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;Z)Z

    .line 895
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;

    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->getDefaultInstance()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->getLogin()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->login_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->access$3802(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 896
    return-object p0
.end method

.method public clearPassword()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;
    .locals 2

    .prologue
    .line 915
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->hasPassword:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->access$3902(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;Z)Z

    .line 916
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;

    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->getDefaultInstance()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->getPassword()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->password_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->access$4002(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 917
    return-object p0
.end method

.method public clearType()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;
    .locals 2

    .prologue
    .line 873
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->hasType:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->access$3502(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;Z)Z

    .line 874
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;

    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->getDefaultInstance()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->getType()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->type_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->access$3602(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 875
    return-object p0
.end method

.method public clearVersion()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 852
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->hasVersion:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->access$3302(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;Z)Z

    .line 853
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->version_:I
    invoke-static {v0, v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->access$3402(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;I)I

    .line 854
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 770
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;->clone()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 770
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;->clone()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 770
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;->clone()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 770
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;->clone()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 770
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;->clone()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;
    .locals 2

    .prologue
    .line 797
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;->create()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;

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
    .line 770
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;->clone()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCaptchaText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 946
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->getCaptchaText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCaptchaToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 925
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->getCaptchaToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 770
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 770
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;
    .locals 1

    .prologue
    .line 806
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->getDefaultInstance()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 802
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getLogin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 883
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->getLogin()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 904
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->getPassword()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 862
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 844
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->getVersion()I

    move-result v0

    return v0
.end method

.method public hasCaptchaText()Z
    .locals 1

    .prologue
    .line 943
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->hasCaptchaText()Z

    move-result v0

    return v0
.end method

.method public hasCaptchaToken()Z
    .locals 1

    .prologue
    .line 922
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->hasCaptchaToken()Z

    move-result v0

    return v0
.end method

.method public hasLogin()Z
    .locals 1

    .prologue
    .line 880
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->hasLogin()Z

    move-result v0

    return v0
.end method

.method public hasPassword()Z
    .locals 1

    .prologue
    .line 901
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->hasPassword()Z

    move-result v0

    return v0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 859
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->hasType()Z

    move-result v0

    return v0
.end method

.method public hasVersion()Z
    .locals 1

    .prologue
    .line 841
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->hasVersion()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 770
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;->internalGetResult()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;
    .locals 1

    .prologue
    .line 784
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 810
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public setCaptchaText(Ljava/lang/String;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 949
    if-nez p1, :cond_0

    .line 950
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 952
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->hasCaptchaText:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->access$4302(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;Z)Z

    .line 953
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->captchaText_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->access$4402(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 954
    return-object p0
.end method

.method public setCaptchaToken(Ljava/lang/String;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 928
    if-nez p1, :cond_0

    .line 929
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 931
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->hasCaptchaToken:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->access$4102(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;Z)Z

    .line 932
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->captchaToken_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->access$4202(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 933
    return-object p0
.end method

.method public setLogin(Ljava/lang/String;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 886
    if-nez p1, :cond_0

    .line 887
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 889
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->hasLogin:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->access$3702(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;Z)Z

    .line 890
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->login_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->access$3802(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 891
    return-object p0
.end method

.method public setPassword(Ljava/lang/String;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 907
    if-nez p1, :cond_0

    .line 908
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 910
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->hasPassword:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->access$3902(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;Z)Z

    .line 911
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->password_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->access$4002(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 912
    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 865
    if-nez p1, :cond_0

    .line 866
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 868
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->hasType:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->access$3502(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;Z)Z

    .line 869
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->type_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->access$3602(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 870
    return-object p0
.end method

.method public setVersion(I)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 847
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->hasVersion:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->access$3302(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;Z)Z

    .line 848
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->version_:I
    invoke-static {v0, p1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;->access$3402(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;I)I

    .line 849
    return-object p0
.end method
