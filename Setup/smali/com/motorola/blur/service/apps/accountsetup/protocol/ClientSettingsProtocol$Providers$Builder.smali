.class public final Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "ClientSettingsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 997
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$2500(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 992
    invoke-direct {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->buildParsed()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;
    .locals 1

    .prologue
    .line 992
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->create()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1043
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1044
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1047
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->buildPartial()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;
    .locals 3

    .prologue
    .line 1000
    new-instance v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;-><init>()V

    .line 1001
    .local v0, "builder":Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;
    new-instance v1, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;-><init>(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    .line 1002
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 992
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->build()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 992
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->build()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;
    .locals 1

    .prologue
    .line 1035
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1036
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    invoke-static {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 1038
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->buildPartial()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 992
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->buildPartial()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 992
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->buildPartial()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;
    .locals 3

    .prologue
    .line 1051
    iget-object v1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    if-nez v1, :cond_0

    .line 1052
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1055
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    .line 1056
    .local v0, "returnMe":Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    .line 1057
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 992
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->clear()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 992
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->clear()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 992
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->clear()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;
    .locals 2

    .prologue
    .line 1010
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    if-nez v0, :cond_0

    .line 1011
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1014
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;-><init>(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    .line 1015
    return-object p0
.end method

.method public clearFallbackUrl()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;
    .locals 2

    .prologue
    .line 1257
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->hasFallbackUrl:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->access$4602(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;Z)Z

    .line 1258
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->getDefaultInstance()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->getFallbackUrl()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->fallbackUrl_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->access$4702(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;Ljava/lang/String;)Ljava/lang/String;

    .line 1259
    return-object p0
.end method

.method public clearId()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1116
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->hasId:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->access$3202(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;Z)Z

    .line 1117
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->Id_:I
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->access$3302(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;I)I

    .line 1118
    return-object p0
.end method

.method public clearLoginLabel()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;
    .locals 2

    .prologue
    .line 1218
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->hasLoginLabel:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->access$4202(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;Z)Z

    .line 1219
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->getDefaultInstance()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->getLoginLabel()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->loginLabel_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->access$4302(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;Ljava/lang/String;)Ljava/lang/String;

    .line 1220
    return-object p0
.end method

.method public clearMultipleAccounts()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1236
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->hasMultipleAccounts:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->access$4402(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;Z)Z

    .line 1237
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->multipleAccounts_:I
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->access$4502(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;I)I

    .line 1238
    return-object p0
.end method

.method public clearPath()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;
    .locals 2

    .prologue
    .line 1179
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->hasPath:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->access$3802(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;Z)Z

    .line 1180
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->getDefaultInstance()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->getPath()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->path_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->access$3902(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;Ljava/lang/String;)Ljava/lang/String;

    .line 1181
    return-object p0
.end method

.method public clearPrettyName()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;
    .locals 2

    .prologue
    .line 1158
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->hasPrettyName:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->access$3602(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;Z)Z

    .line 1159
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->getDefaultInstance()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->getPrettyName()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->prettyName_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->access$3702(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;Ljava/lang/String;)Ljava/lang/String;

    .line 1160
    return-object p0
.end method

.method public clearProvider()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;
    .locals 2

    .prologue
    .line 1137
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->hasProvider:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->access$3402(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;Z)Z

    .line 1138
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->getDefaultInstance()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->getProvider()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->provider_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->access$3502(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;Ljava/lang/String;)Ljava/lang/String;

    .line 1139
    return-object p0
.end method

.method public clearProviderUrl()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;
    .locals 2

    .prologue
    .line 1278
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->hasProviderUrl:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->access$4802(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;Z)Z

    .line 1279
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->getDefaultInstance()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->getProviderUrl()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->providerUrl_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->access$4902(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;Ljava/lang/String;)Ljava/lang/String;

    .line 1280
    return-object p0
.end method

.method public clearPwdStoragePolicy()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1296
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->hasPwdStoragePolicy:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->access$5002(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;Z)Z

    .line 1297
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->pwdStoragePolicy_:I
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->access$5102(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;I)I

    .line 1298
    return-object p0
.end method

.method public clearSyncAnchor()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;
    .locals 2

    .prologue
    .line 1098
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->hasSyncAnchor:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->access$3002(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;Z)Z

    .line 1099
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->getDefaultInstance()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->getSyncAnchor()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->syncAnchor_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->access$3102(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;Ljava/lang/String;)Ljava/lang/String;

    .line 1100
    return-object p0
.end method

.method public clearSyncId()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;
    .locals 2

    .prologue
    .line 1077
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->hasSyncId:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->access$2802(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;Z)Z

    .line 1078
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->getDefaultInstance()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->getSyncId()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->syncId_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->access$2902(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;Ljava/lang/String;)Ljava/lang/String;

    .line 1079
    return-object p0
.end method

.method public clearUiOrder()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1197
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->hasUiOrder:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->access$4002(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;Z)Z

    .line 1198
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->uiOrder_:I
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->access$4102(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;I)I

    .line 1199
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 992
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->clone()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 992
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->clone()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 992
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->clone()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 992
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->clone()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 992
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->clone()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;
    .locals 2

    .prologue
    .line 1019
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->create()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;

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
    .line 992
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->clone()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 992
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 992
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;
    .locals 1

    .prologue
    .line 1028
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->getDefaultInstance()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1024
    invoke-static {}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getFallbackUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1246
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->getFallbackUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 1108
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->getId()I

    move-result v0

    return v0
.end method

.method public getLoginLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1207
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->getLoginLabel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMultipleAccounts()I
    .locals 1

    .prologue
    .line 1228
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->getMultipleAccounts()I

    move-result v0

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1168
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrettyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1147
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->getPrettyName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1126
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->getProvider()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProviderUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1267
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->getProviderUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPwdStoragePolicy()I
    .locals 1

    .prologue
    .line 1288
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->getPwdStoragePolicy()I

    move-result v0

    return v0
.end method

.method public getSyncAnchor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1087
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->getSyncAnchor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSyncId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1066
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->getSyncId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUiOrder()I
    .locals 1

    .prologue
    .line 1189
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->getUiOrder()I

    move-result v0

    return v0
.end method

.method public hasFallbackUrl()Z
    .locals 1

    .prologue
    .line 1243
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->hasFallbackUrl()Z

    move-result v0

    return v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 1105
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->hasId()Z

    move-result v0

    return v0
.end method

.method public hasLoginLabel()Z
    .locals 1

    .prologue
    .line 1204
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->hasLoginLabel()Z

    move-result v0

    return v0
.end method

.method public hasMultipleAccounts()Z
    .locals 1

    .prologue
    .line 1225
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->hasMultipleAccounts()Z

    move-result v0

    return v0
.end method

.method public hasPath()Z
    .locals 1

    .prologue
    .line 1165
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->hasPath()Z

    move-result v0

    return v0
.end method

.method public hasPrettyName()Z
    .locals 1

    .prologue
    .line 1144
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->hasPrettyName()Z

    move-result v0

    return v0
.end method

.method public hasProvider()Z
    .locals 1

    .prologue
    .line 1123
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->hasProvider()Z

    move-result v0

    return v0
.end method

.method public hasProviderUrl()Z
    .locals 1

    .prologue
    .line 1264
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->hasProviderUrl()Z

    move-result v0

    return v0
.end method

.method public hasPwdStoragePolicy()Z
    .locals 1

    .prologue
    .line 1285
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->hasPwdStoragePolicy()Z

    move-result v0

    return v0
.end method

.method public hasSyncAnchor()Z
    .locals 1

    .prologue
    .line 1084
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->hasSyncAnchor()Z

    move-result v0

    return v0
.end method

.method public hasSyncId()Z
    .locals 1

    .prologue
    .line 1063
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->hasSyncId()Z

    move-result v0

    return v0
.end method

.method public hasUiOrder()Z
    .locals 1

    .prologue
    .line 1186
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    invoke-virtual {v0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->hasUiOrder()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 992
    invoke-virtual {p0}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->internalGetResult()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;
    .locals 1

    .prologue
    .line 1006
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 1032
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public setFallbackUrl(Ljava/lang/String;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1249
    if-nez p1, :cond_0

    .line 1250
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1252
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->hasFallbackUrl:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->access$4602(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;Z)Z

    .line 1253
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->fallbackUrl_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->access$4702(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;Ljava/lang/String;)Ljava/lang/String;

    .line 1254
    return-object p0
.end method

.method public setId(I)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 1111
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->hasId:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->access$3202(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;Z)Z

    .line 1112
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->Id_:I
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->access$3302(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;I)I

    .line 1113
    return-object p0
.end method

.method public setLoginLabel(Ljava/lang/String;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1210
    if-nez p1, :cond_0

    .line 1211
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1213
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->hasLoginLabel:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->access$4202(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;Z)Z

    .line 1214
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->loginLabel_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->access$4302(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;Ljava/lang/String;)Ljava/lang/String;

    .line 1215
    return-object p0
.end method

.method public setMultipleAccounts(I)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 1231
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->hasMultipleAccounts:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->access$4402(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;Z)Z

    .line 1232
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->multipleAccounts_:I
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->access$4502(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;I)I

    .line 1233
    return-object p0
.end method

.method public setPath(Ljava/lang/String;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1171
    if-nez p1, :cond_0

    .line 1172
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1174
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->hasPath:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->access$3802(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;Z)Z

    .line 1175
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->path_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->access$3902(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;Ljava/lang/String;)Ljava/lang/String;

    .line 1176
    return-object p0
.end method

.method public setPrettyName(Ljava/lang/String;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1150
    if-nez p1, :cond_0

    .line 1151
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1153
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->hasPrettyName:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->access$3602(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;Z)Z

    .line 1154
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->prettyName_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->access$3702(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;Ljava/lang/String;)Ljava/lang/String;

    .line 1155
    return-object p0
.end method

.method public setProvider(Ljava/lang/String;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1129
    if-nez p1, :cond_0

    .line 1130
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1132
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->hasProvider:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->access$3402(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;Z)Z

    .line 1133
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->provider_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->access$3502(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;Ljava/lang/String;)Ljava/lang/String;

    .line 1134
    return-object p0
.end method

.method public setProviderUrl(Ljava/lang/String;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1270
    if-nez p1, :cond_0

    .line 1271
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1273
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->hasProviderUrl:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->access$4802(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;Z)Z

    .line 1274
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->providerUrl_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->access$4902(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;Ljava/lang/String;)Ljava/lang/String;

    .line 1275
    return-object p0
.end method

.method public setPwdStoragePolicy(I)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 1291
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->hasPwdStoragePolicy:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->access$5002(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;Z)Z

    .line 1292
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->pwdStoragePolicy_:I
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->access$5102(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;I)I

    .line 1293
    return-object p0
.end method

.method public setSyncAnchor(Ljava/lang/String;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1090
    if-nez p1, :cond_0

    .line 1091
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1093
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->hasSyncAnchor:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->access$3002(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;Z)Z

    .line 1094
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->syncAnchor_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->access$3102(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;Ljava/lang/String;)Ljava/lang/String;

    .line 1095
    return-object p0
.end method

.method public setSyncId(Ljava/lang/String;)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1069
    if-nez p1, :cond_0

    .line 1070
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1072
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->hasSyncId:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->access$2802(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;Z)Z

    .line 1073
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->syncId_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->access$2902(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;Ljava/lang/String;)Ljava/lang/String;

    .line 1074
    return-object p0
.end method

.method public setUiOrder(I)Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 1192
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->hasUiOrder:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->access$4002(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;Z)Z

    .line 1193
    iget-object v0, p0, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers$Builder;->result:Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;

    # setter for: Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->uiOrder_:I
    invoke-static {v0, p1}, Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;->access$4102(Lcom/motorola/blur/service/apps/accountsetup/protocol/ClientSettingsProtocol$Providers;I)I

    .line 1194
    return-object p0
.end method
