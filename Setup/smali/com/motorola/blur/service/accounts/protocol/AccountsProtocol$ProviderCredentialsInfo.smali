.class public final Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;
.super Lcom/google/protobuf/GeneratedMessage;
.source "AccountsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProviderCredentialsInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;
    }
.end annotation


# static fields
.field public static final LOGIN_FIELD_NUMBER:I = 0x2

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field public static final PASSWORD_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;


# instance fields
.field private hasLogin:Z

.field private hasName:Z

.field private hasPassword:Z

.field private login_:Ljava/lang/String;

.field private name_:Ljava/lang/String;

.field private password_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 5153
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;

    .line 5154
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internalForceInit()V

    .line 5155
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;->initFields()V

    .line 5156
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 4896
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 4923
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;->name_:Ljava/lang/String;

    .line 4930
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;->login_:Ljava/lang/String;

    .line 4937
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;->password_:Ljava/lang/String;

    .line 4897
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;->initFields()V

    .line 4898
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$1;

    .prologue
    .line 4893
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    .line 4899
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 4923
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;->name_:Ljava/lang/String;

    .line 4930
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;->login_:Ljava/lang/String;

    .line 4937
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;->password_:Ljava/lang/String;

    .line 4899
    return-void
.end method

.method static synthetic access$16402(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;
    .param p1, "x1"    # Z

    .prologue
    .line 4893
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;->hasName:Z

    return p1
.end method

.method static synthetic access$16502(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 4893
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;->name_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$16602(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;
    .param p1, "x1"    # Z

    .prologue
    .line 4893
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;->hasLogin:Z

    return p1
.end method

.method static synthetic access$16702(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 4893
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;->login_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$16802(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;
    .param p1, "x1"    # Z

    .prologue
    .line 4893
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;->hasPassword:Z

    return p1
.end method

.method static synthetic access$16902(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 4893
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;->password_:Ljava/lang/String;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;
    .locals 1

    .prologue
    .line 4903
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 4912
    # getter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_ProviderCredentialsInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->access$15900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 4942
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;
    .locals 1

    .prologue
    .line 5010
    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;->access$16200()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;

    .prologue
    .line 5013
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4979
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;

    move-result-object v0

    .line 4980
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4981
    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;->access$16100(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;

    move-result-object v1

    .line 4983
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4990
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;

    move-result-object v0

    .line 4991
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4992
    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;->access$16100(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;

    move-result-object v1

    .line 4994
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4946
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;->access$16100(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4952
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;->access$16100(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5000
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;->access$16100(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5006
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;->access$16100(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4968
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;->access$16100(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4974
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;->access$16100(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4957
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;->access$16100(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4963
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;->access$16100(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 4893
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4893
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;
    .locals 1

    .prologue
    .line 4907
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;

    return-object v0
.end method

.method public getLogin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4932
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;->login_:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4925
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4939
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;->password_:Ljava/lang/String;

    return-object v0
.end method

.method public hasLogin()Z
    .locals 1

    .prologue
    .line 4931
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;->hasLogin:Z

    return v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 4924
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;->hasName:Z

    return v0
.end method

.method public hasPassword()Z
    .locals 1

    .prologue
    .line 4938
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;->hasPassword:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 4917
    # getter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_ProviderCredentialsInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->access$16000()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 4893
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4893
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;
    .locals 1

    .prologue
    .line 5011
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 4893
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4893
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;
    .locals 1

    .prologue
    .line 5015
    invoke-static {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ProviderCredentialsInfo$Builder;

    move-result-object v0

    return-object v0
.end method
