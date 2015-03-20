.class public final Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;
.super Lcom/google/protobuf/GeneratedMessage;
.source "AccountsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ValidateSNAccountRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;
    }
.end annotation


# static fields
.field public static final LOGIN_FIELD_NUMBER:I = 0x2

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field public static final PASSWORD_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;


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
    .line 8551
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;

    .line 8552
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internalForceInit()V

    .line 8553
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;->initFields()V

    .line 8554
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 8294
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 8321
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;->name_:Ljava/lang/String;

    .line 8328
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;->login_:Ljava/lang/String;

    .line 8335
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;->password_:Ljava/lang/String;

    .line 8295
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;->initFields()V

    .line 8296
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$1;

    .prologue
    .line 8291
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    .line 8297
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 8321
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;->name_:Ljava/lang/String;

    .line 8328
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;->login_:Ljava/lang/String;

    .line 8335
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;->password_:Ljava/lang/String;

    .line 8297
    return-void
.end method

.method static synthetic access$28002(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 8291
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;->hasName:Z

    return p1
.end method

.method static synthetic access$28102(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 8291
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;->name_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$28202(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 8291
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;->hasLogin:Z

    return p1
.end method

.method static synthetic access$28302(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 8291
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;->login_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$28402(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 8291
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;->hasPassword:Z

    return p1
.end method

.method static synthetic access$28502(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 8291
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;->password_:Ljava/lang/String;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;
    .locals 1

    .prologue
    .line 8301
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 8310
    # getter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_ValidateSNAccountRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->access$27500()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 8340
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;
    .locals 1

    .prologue
    .line 8408
    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;->access$27800()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;

    .prologue
    .line 8411
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8377
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;

    move-result-object v0

    .line 8378
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8379
    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;->access$27700(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;

    move-result-object v1

    .line 8381
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8388
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;

    move-result-object v0

    .line 8389
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8390
    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;->access$27700(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;

    move-result-object v1

    .line 8392
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 8344
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;->access$27700(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 8350
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;->access$27700(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8398
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;->access$27700(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8404
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;->access$27700(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8366
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;->access$27700(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8372
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;->access$27700(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 8355
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;->access$27700(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 8361
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;->access$27700(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 8291
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 8291
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;
    .locals 1

    .prologue
    .line 8305
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;

    return-object v0
.end method

.method public getLogin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8330
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;->login_:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8323
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8337
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;->password_:Ljava/lang/String;

    return-object v0
.end method

.method public hasLogin()Z
    .locals 1

    .prologue
    .line 8329
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;->hasLogin:Z

    return v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 8322
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;->hasName:Z

    return v0
.end method

.method public hasPassword()Z
    .locals 1

    .prologue
    .line 8336
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;->hasPassword:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 8315
    # getter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_ValidateSNAccountRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->access$27600()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 8291
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 8291
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;
    .locals 1

    .prologue
    .line 8409
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 8291
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 8291
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;
    .locals 1

    .prologue
    .line 8413
    invoke-static {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ValidateSNAccountRequest$Builder;

    move-result-object v0

    return-object v0
.end method
