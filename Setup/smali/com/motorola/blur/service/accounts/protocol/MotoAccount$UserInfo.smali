.class public final Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
.super Lcom/google/protobuf/GeneratedMessage;
.source "MotoAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/MotoAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UserInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;,
        Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$PasswordEncodingType;,
        Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$ProviderType;
    }
.end annotation


# static fields
.field public static final LOGIN_FIELD_NUMBER:I = 0x1

.field public static final PASSWORDTYPE_FIELD_NUMBER:I = 0x4

.field public static final PASSWORD_FIELD_NUMBER:I = 0x2

.field public static final PROFILE_FIELD_NUMBER:I = 0x3

.field public static final PROVIDERTYPE_FIELD_NUMBER:I = 0x5

.field public static final TOKEN_FIELD_NUMBER:I = 0x6

.field private static final defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;


# instance fields
.field private hasLogin:Z

.field private hasPassword:Z

.field private hasPasswordType:Z

.field private hasProfile:Z

.field private hasProviderType:Z

.field private hasToken:Z

.field private login_:Ljava/lang/String;

.field private passwordType_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$PasswordEncodingType;

.field private password_:Ljava/lang/String;

.field private profile_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;

.field private providerType_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$ProviderType;

.field private token_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13007
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .line 13008
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internalForceInit()V

    .line 13009
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->initFields()V

    .line 13010
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 12509
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 12674
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->login_:Ljava/lang/String;

    .line 12681
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->password_:Ljava/lang/String;

    .line 12688
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->token_:Ljava/lang/String;

    .line 12510
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->initFields()V

    .line 12511
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$1;

    .prologue
    .line 12506
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    .line 12512
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 12674
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->login_:Ljava/lang/String;

    .line 12681
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->password_:Ljava/lang/String;

    .line 12688
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->token_:Ljava/lang/String;

    .line 12512
    return-void
.end method

.method static synthetic access$45202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    .param p1, "x1"    # Z

    .prologue
    .line 12506
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->hasLogin:Z

    return p1
.end method

.method static synthetic access$45302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 12506
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->login_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$45402(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    .param p1, "x1"    # Z

    .prologue
    .line 12506
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->hasPassword:Z

    return p1
.end method

.method static synthetic access$45502(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 12506
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->password_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$45602(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    .param p1, "x1"    # Z

    .prologue
    .line 12506
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->hasToken:Z

    return p1
.end method

.method static synthetic access$45702(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 12506
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->token_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$45802(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    .param p1, "x1"    # Z

    .prologue
    .line 12506
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->hasProfile:Z

    return p1
.end method

.method static synthetic access$45900(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .prologue
    .line 12506
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->profile_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;

    return-object v0
.end method

.method static synthetic access$45902(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;

    .prologue
    .line 12506
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->profile_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;

    return-object p1
.end method

.method static synthetic access$46002(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    .param p1, "x1"    # Z

    .prologue
    .line 12506
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->hasPasswordType:Z

    return p1
.end method

.method static synthetic access$46102(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$PasswordEncodingType;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$PasswordEncodingType;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$PasswordEncodingType;

    .prologue
    .line 12506
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->passwordType_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$PasswordEncodingType;

    return-object p1
.end method

.method static synthetic access$46202(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    .param p1, "x1"    # Z

    .prologue
    .line 12506
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->hasProviderType:Z

    return p1
.end method

.method static synthetic access$46302(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$ProviderType;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$ProviderType;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    .param p1, "x1"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$ProviderType;

    .prologue
    .line 12506
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->providerType_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$ProviderType;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    .locals 1

    .prologue
    .line 12516
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 12525
    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internal_static_motoaccount_UserInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->access$44700()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 12714
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->profile_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;

    .line 12715
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$PasswordEncodingType;->CLEAR:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$PasswordEncodingType;

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->passwordType_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$PasswordEncodingType;

    .line 12716
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$ProviderType;->MOTOID:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$ProviderType;

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->providerType_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$ProviderType;

    .line 12717
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;
    .locals 1

    .prologue
    .line 12785
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->access$45000()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    .prologue
    .line 12788
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12754
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;

    move-result-object v0

    .line 12755
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 12756
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->access$44900(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v1

    .line 12758
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12765
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;

    move-result-object v0

    .line 12766
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 12767
    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->access$44900(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v1

    .line 12769
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 12721
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->access$44900(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 12727
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->access$44900(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12775
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->access$44900(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12781
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->access$44900(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12743
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->access$44900(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12749
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->access$44900(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 12732
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->access$44900(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 12738
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;->access$44900(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 12506
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 12506
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;
    .locals 1

    .prologue
    .line 12520
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;

    return-object v0
.end method

.method public getLogin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12676
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->login_:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12683
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->password_:Ljava/lang/String;

    return-object v0
.end method

.method public getPasswordType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$PasswordEncodingType;
    .locals 1

    .prologue
    .line 12704
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->passwordType_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$PasswordEncodingType;

    return-object v0
.end method

.method public getProfile()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;
    .locals 1

    .prologue
    .line 12697
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->profile_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;

    return-object v0
.end method

.method public getProviderType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$ProviderType;
    .locals 1

    .prologue
    .line 12711
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->providerType_:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$ProviderType;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12690
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->token_:Ljava/lang/String;

    return-object v0
.end method

.method public hasLogin()Z
    .locals 1

    .prologue
    .line 12675
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->hasLogin:Z

    return v0
.end method

.method public hasPassword()Z
    .locals 1

    .prologue
    .line 12682
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->hasPassword:Z

    return v0
.end method

.method public hasPasswordType()Z
    .locals 1

    .prologue
    .line 12703
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->hasPasswordType:Z

    return v0
.end method

.method public hasProfile()Z
    .locals 1

    .prologue
    .line 12696
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->hasProfile:Z

    return v0
.end method

.method public hasProviderType()Z
    .locals 1

    .prologue
    .line 12710
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->hasProviderType:Z

    return v0
.end method

.method public hasToken()Z
    .locals 1

    .prologue
    .line 12689
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->hasToken:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 12530
    # getter for: Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->internal_static_motoaccount_UserInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->access$44800()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 12506
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 12506
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;
    .locals 1

    .prologue
    .line 12786
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 12506
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 12506
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;
    .locals 1

    .prologue
    .line 12790
    invoke-static {p0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserInfo$Builder;

    move-result-object v0

    return-object v0
.end method
