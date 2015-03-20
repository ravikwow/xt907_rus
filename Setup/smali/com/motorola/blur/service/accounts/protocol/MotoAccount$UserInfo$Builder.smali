.class public final Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "MotoAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 12797
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$44900(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 12792
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$45000()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;
    .locals 1

    .prologue
    .line 12792
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 12843
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 12844
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 12847
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;
    .locals 3

    .prologue
    .line 12800
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;-><init>()V

    .line 12801
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;
    new-instance v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;-><init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V

    iput-object v1, v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .line 12802
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 12792
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 12792
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    .locals 1

    .prologue
    .line 12835
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 12836
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 12838
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 12792
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 12792
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    .locals 3

    .prologue
    .line 12851
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    if-nez v1, :cond_0

    .line 12852
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 12855
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .line 12856
    .local v0, "returnMe":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .line 12857
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 12792
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 12792
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 12792
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;
    .locals 2

    .prologue
    .line 12810
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    if-nez v0, :cond_0

    .line 12811
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12814
    :cond_0
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;-><init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .line 12815
    return-object p0
.end method

.method public clearLogin()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;
    .locals 2

    .prologue
    .line 12877
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->hasLogin:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->access$45202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;Z)Z

    .line 12878
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->getLogin()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->login_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->access$45302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 12879
    return-object p0
.end method

.method public clearPassword()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;
    .locals 2

    .prologue
    .line 12898
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->hasPassword:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->access$45402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;Z)Z

    .line 12899
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->getPassword()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->password_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->access$45502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 12900
    return-object p0
.end method

.method public clearPasswordType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;
    .locals 2

    .prologue
    .line 12977
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->hasPasswordType:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->access$46002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;Z)Z

    .line 12978
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    sget-object v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$PasswordEncodingType;->CLEAR:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$PasswordEncodingType;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->passwordType_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$PasswordEncodingType;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->access$46102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$PasswordEncodingType;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$PasswordEncodingType;

    .line 12979
    return-object p0
.end method

.method public clearProfile()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;
    .locals 2

    .prologue
    .line 12956
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->hasProfile:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->access$45802(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;Z)Z

    .line 12957
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->profile_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->access$45902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;

    .line 12958
    return-object p0
.end method

.method public clearProviderType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;
    .locals 2

    .prologue
    .line 12998
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->hasProviderType:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->access$46202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;Z)Z

    .line 12999
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    sget-object v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$ProviderType;->MOTOID:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$ProviderType;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->providerType_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$ProviderType;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->access$46302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$ProviderType;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$ProviderType;

    .line 13000
    return-object p0
.end method

.method public clearToken()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;
    .locals 2

    .prologue
    .line 12919
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->hasToken:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->access$45602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;Z)Z

    .line 12920
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->getToken()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->token_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->access$45702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 12921
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 12792
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 12792
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 12792
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 12792
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 12792
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;
    .locals 2

    .prologue
    .line 12819
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;

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
    .line 12792
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->clone()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 12792
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 12792
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    .locals 1

    .prologue
    .line 12828
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 12824
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getLogin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12866
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->getLogin()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12887
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->getPassword()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPasswordType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$PasswordEncodingType;
    .locals 1

    .prologue
    .line 12966
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->getPasswordType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$PasswordEncodingType;

    move-result-object v0

    return-object v0
.end method

.method public getProfile()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;
    .locals 1

    .prologue
    .line 12929
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->getProfile()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;

    move-result-object v0

    return-object v0
.end method

.method public getProviderType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$ProviderType;
    .locals 1

    .prologue
    .line 12987
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->getProviderType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$ProviderType;

    move-result-object v0

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12908
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->getToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasLogin()Z
    .locals 1

    .prologue
    .line 12863
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->hasLogin()Z

    move-result v0

    return v0
.end method

.method public hasPassword()Z
    .locals 1

    .prologue
    .line 12884
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->hasPassword()Z

    move-result v0

    return v0
.end method

.method public hasPasswordType()Z
    .locals 1

    .prologue
    .line 12963
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->hasPasswordType()Z

    move-result v0

    return v0
.end method

.method public hasProfile()Z
    .locals 1

    .prologue
    .line 12926
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->hasProfile()Z

    move-result v0

    return v0
.end method

.method public hasProviderType()Z
    .locals 1

    .prologue
    .line 12984
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->hasProviderType()Z

    move-result v0

    return v0
.end method

.method public hasToken()Z
    .locals 1

    .prologue
    .line 12905
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->hasToken()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 12792
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->internalGetResult()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    .locals 1

    .prologue
    .line 12806
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 12832
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeProfile(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;

    .prologue
    .line 12945
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->hasProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->profile_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->access$45900(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 12947
    iget-object v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->profile_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->access$45900(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;

    invoke-virtual {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;->buildPartial()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;

    move-result-object v0

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->profile_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;
    invoke-static {v1, v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->access$45902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;

    .line 12952
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->hasProfile:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->access$45802(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;Z)Z

    .line 12953
    return-object p0

    .line 12950
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->profile_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->access$45902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;

    goto :goto_0
.end method

.method public setLogin(Ljava/lang/String;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 12869
    if-nez p1, :cond_0

    .line 12870
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12872
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->hasLogin:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->access$45202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;Z)Z

    .line 12873
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->login_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->access$45302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 12874
    return-object p0
.end method

.method public setPassword(Ljava/lang/String;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 12890
    if-nez p1, :cond_0

    .line 12891
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12893
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->hasPassword:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->access$45402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;Z)Z

    .line 12894
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->password_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->access$45502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 12895
    return-object p0
.end method

.method public setPasswordType(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$PasswordEncodingType;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$PasswordEncodingType;

    .prologue
    .line 12969
    if-nez p1, :cond_0

    .line 12970
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12972
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->hasPasswordType:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->access$46002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;Z)Z

    .line 12973
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->passwordType_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$PasswordEncodingType;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->access$46102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$PasswordEncodingType;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$PasswordEncodingType;

    .line 12974
    return-object p0
.end method

.method public setProfile(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;

    .prologue
    .line 12940
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->hasProfile:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->access$45802(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;Z)Z

    .line 12941
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    invoke-virtual {p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$Builder;->build()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;

    move-result-object v1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->profile_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->access$45902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;

    .line 12942
    return-object p0
.end method

.method public setProfile(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;

    .prologue
    .line 12932
    if-nez p1, :cond_0

    .line 12933
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12935
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->hasProfile:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->access$45802(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;Z)Z

    .line 12936
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->profile_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->access$45902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;

    .line 12937
    return-object p0
.end method

.method public setProviderType(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$ProviderType;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;
    .locals 2
    .param p1, "value"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$ProviderType;

    .prologue
    .line 12990
    if-nez p1, :cond_0

    .line 12991
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12993
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->hasProviderType:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->access$46202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;Z)Z

    .line 12994
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->providerType_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$ProviderType;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->access$46302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$ProviderType;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$ProviderType;

    .line 12995
    return-object p0
.end method

.method public setToken(Ljava/lang/String;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 12911
    if-nez p1, :cond_0

    .line 12912
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 12914
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->hasToken:Z
    invoke-static {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->access$45602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;Z)Z

    .line 12915
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->result:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    # setter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->token_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->access$45702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 12916
    return-object p0
.end method
