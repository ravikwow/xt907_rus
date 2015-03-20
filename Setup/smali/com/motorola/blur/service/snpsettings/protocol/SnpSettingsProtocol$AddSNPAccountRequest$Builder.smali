.class public final Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "SnpSettingsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 156
    invoke-direct {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;->buildParsed()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;
    .locals 1

    .prologue
    .line 156
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;->create()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;

    invoke-static {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 211
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;->buildPartial()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;
    .locals 3

    .prologue
    .line 164
    new-instance v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;-><init>()V

    .line 165
    .local v0, "builder":Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;
    new-instance v1, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;-><init>(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;

    .line 166
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;->build()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;->build()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;

    invoke-static {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 202
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;->buildPartial()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;->buildPartial()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;->buildPartial()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;
    .locals 3

    .prologue
    .line 215
    iget-object v1, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;

    if-nez v1, :cond_0

    .line 216
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;

    .line 220
    .local v0, "returnMe":Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;

    .line 221
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;->clear()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;->clear()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;->clear()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;

    if-nez v0, :cond_0

    .line 175
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;-><init>(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;

    .line 179
    return-object p0
.end method

.method public clearCaptchaText()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;
    .locals 2

    .prologue
    .line 343
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;->hasCaptchaText:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;->access$1502(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;Z)Z

    .line 344
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;

    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;->getDefaultInstance()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;->getCaptchaText()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;->captchaText_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;->access$1602(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 345
    return-object p0
.end method

.method public clearCaptchaToken()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;
    .locals 2

    .prologue
    .line 322
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;->hasCaptchaToken:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;->access$1302(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;Z)Z

    .line 323
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;

    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;->getDefaultInstance()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;->getCaptchaToken()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;->captchaToken_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;->access$1402(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 324
    return-object p0
.end method

.method public clearLogin()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;
    .locals 2

    .prologue
    .line 280
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;->hasLogin:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;->access$902(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;Z)Z

    .line 281
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;

    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;->getDefaultInstance()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;->getLogin()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;->login_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;->access$1002(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 282
    return-object p0
.end method

.method public clearPassword()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;
    .locals 2

    .prologue
    .line 301
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;->hasPassword:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;->access$1102(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;Z)Z

    .line 302
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;

    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;->getDefaultInstance()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;->getPassword()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;->password_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;->access$1202(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 303
    return-object p0
.end method

.method public clearType()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;
    .locals 2

    .prologue
    .line 259
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;->hasType:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;->access$702(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;Z)Z

    .line 260
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;

    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;->getDefaultInstance()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;->getType()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;->type_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;->access$802(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 261
    return-object p0
.end method

.method public clearVersion()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 238
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;->hasVersion:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;->access$502(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;Z)Z

    .line 239
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;->version_:I
    invoke-static {v0, v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;->access$602(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;I)I

    .line 240
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;->clone()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;->clone()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;->clone()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;->clone()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;->clone()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;
    .locals 2

    .prologue
    .line 183
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;->create()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;

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
    .line 156
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;->clone()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCaptchaText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;->getCaptchaText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCaptchaToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;->getCaptchaToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;
    .locals 1

    .prologue
    .line 192
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;->getDefaultInstance()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 188
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getLogin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;->getLogin()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;->getPassword()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;->getVersion()I

    move-result v0

    return v0
.end method

.method public hasCaptchaText()Z
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;->hasCaptchaText()Z

    move-result v0

    return v0
.end method

.method public hasCaptchaToken()Z
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;->hasCaptchaToken()Z

    move-result v0

    return v0
.end method

.method public hasLogin()Z
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;->hasLogin()Z

    move-result v0

    return v0
.end method

.method public hasPassword()Z
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;->hasPassword()Z

    move-result v0

    return v0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;->hasType()Z

    move-result v0

    return v0
.end method

.method public hasVersion()Z
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;

    invoke-virtual {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;->hasVersion()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;->internalGetResult()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public setCaptchaText(Ljava/lang/String;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 335
    if-nez p1, :cond_0

    .line 336
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;->hasCaptchaText:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;->access$1502(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;Z)Z

    .line 339
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;->captchaText_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;->access$1602(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 340
    return-object p0
.end method

.method public setCaptchaToken(Ljava/lang/String;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 314
    if-nez p1, :cond_0

    .line 315
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;->hasCaptchaToken:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;->access$1302(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;Z)Z

    .line 318
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;->captchaToken_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;->access$1402(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 319
    return-object p0
.end method

.method public setLogin(Ljava/lang/String;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 272
    if-nez p1, :cond_0

    .line 273
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;->hasLogin:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;->access$902(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;Z)Z

    .line 276
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;->login_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;->access$1002(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 277
    return-object p0
.end method

.method public setPassword(Ljava/lang/String;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 293
    if-nez p1, :cond_0

    .line 294
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;->hasPassword:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;->access$1102(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;Z)Z

    .line 297
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;->password_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;->access$1202(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 298
    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 251
    if-nez p1, :cond_0

    .line 252
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;->hasType:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;->access$702(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;Z)Z

    .line 255
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;->type_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;->access$802(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 256
    return-object p0
.end method

.method public setVersion(I)Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 233
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;->hasVersion:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;->access$502(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;Z)Z

    .line 234
    iget-object v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest$Builder;->result:Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;

    # setter for: Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;->version_:I
    invoke-static {v0, p1}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;->access$602(Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;I)I

    .line 235
    return-object p0
.end method
