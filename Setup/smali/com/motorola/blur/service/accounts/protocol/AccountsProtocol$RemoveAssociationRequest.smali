.class public final Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;
.super Lcom/google/protobuf/GeneratedMessage;
.source "AccountsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RemoveAssociationRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;
    }
.end annotation


# static fields
.field public static final LOGIN_FIELD_NUMBER:I = 0x2

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field public static final PASSWORD_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;


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
    .line 7479
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;

    .line 7480
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internalForceInit()V

    .line 7481
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;->initFields()V

    .line 7482
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 7222
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 7249
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;->name_:Ljava/lang/String;

    .line 7256
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;->login_:Ljava/lang/String;

    .line 7263
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;->password_:Ljava/lang/String;

    .line 7223
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;->initFields()V

    .line 7224
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$1;

    .prologue
    .line 7219
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    .line 7225
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 7249
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;->name_:Ljava/lang/String;

    .line 7256
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;->login_:Ljava/lang/String;

    .line 7263
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;->password_:Ljava/lang/String;

    .line 7225
    return-void
.end method

.method static synthetic access$24602(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 7219
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;->hasName:Z

    return p1
.end method

.method static synthetic access$24702(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 7219
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;->name_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$24802(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 7219
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;->hasLogin:Z

    return p1
.end method

.method static synthetic access$24902(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 7219
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;->login_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$25002(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 7219
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;->hasPassword:Z

    return p1
.end method

.method static synthetic access$25102(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 7219
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;->password_:Ljava/lang/String;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;
    .locals 1

    .prologue
    .line 7229
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 7238
    # getter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_RemoveAssociationRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->access$24100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 7268
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;
    .locals 1

    .prologue
    .line 7336
    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;->access$24400()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;

    .prologue
    .line 7339
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7305
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;

    move-result-object v0

    .line 7306
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7307
    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;->access$24300(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;

    move-result-object v1

    .line 7309
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7316
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;

    move-result-object v0

    .line 7317
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7318
    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;->access$24300(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;

    move-result-object v1

    .line 7320
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 7272
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;->access$24300(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 7278
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;->access$24300(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7326
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;->access$24300(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7332
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;->access$24300(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7294
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;->access$24300(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7300
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;->access$24300(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 7283
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;->access$24300(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 7289
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;->access$24300(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 7219
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 7219
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;
    .locals 1

    .prologue
    .line 7233
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;

    return-object v0
.end method

.method public getLogin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7258
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;->login_:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7251
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7265
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;->password_:Ljava/lang/String;

    return-object v0
.end method

.method public hasLogin()Z
    .locals 1

    .prologue
    .line 7257
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;->hasLogin:Z

    return v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 7250
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;->hasName:Z

    return v0
.end method

.method public hasPassword()Z
    .locals 1

    .prologue
    .line 7264
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;->hasPassword:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 7243
    # getter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_RemoveAssociationRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->access$24200()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 7219
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 7219
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;
    .locals 1

    .prologue
    .line 7337
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 7219
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 7219
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;
    .locals 1

    .prologue
    .line 7341
    invoke-static {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$RemoveAssociationRequest$Builder;

    move-result-object v0

    return-object v0
.end method
