.class public final Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;
.super Lcom/google/protobuf/GeneratedMessage;
.source "AccountsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AddAssociationRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;
    }
.end annotation


# static fields
.field public static final LOGIN_FIELD_NUMBER:I = 0x2

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field public static final PASSWORD_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;


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
    .line 4282
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;

    .line 4283
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internalForceInit()V

    .line 4284
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;->initFields()V

    .line 4285
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 4025
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 4052
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;->name_:Ljava/lang/String;

    .line 4059
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;->login_:Ljava/lang/String;

    .line 4066
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;->password_:Ljava/lang/String;

    .line 4026
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;->initFields()V

    .line 4027
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$1;

    .prologue
    .line 4022
    invoke-direct {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    .line 4028
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 4052
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;->name_:Ljava/lang/String;

    .line 4059
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;->login_:Ljava/lang/String;

    .line 4066
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;->password_:Ljava/lang/String;

    .line 4028
    return-void
.end method

.method static synthetic access$13502(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 4022
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;->hasName:Z

    return p1
.end method

.method static synthetic access$13602(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 4022
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;->name_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$13702(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 4022
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;->hasLogin:Z

    return p1
.end method

.method static synthetic access$13802(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 4022
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;->login_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$13902(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;
    .param p1, "x1"    # Z

    .prologue
    .line 4022
    iput-boolean p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;->hasPassword:Z

    return p1
.end method

.method static synthetic access$14002(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 4022
    iput-object p1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;->password_:Ljava/lang/String;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;
    .locals 1

    .prologue
    .line 4032
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 4041
    # getter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_AddAssociationRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->access$13000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 4071
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;
    .locals 1

    .prologue
    .line 4139
    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;->create()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;->access$13300()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;

    .prologue
    .line 4142
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4108
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;

    move-result-object v0

    .line 4109
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4110
    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;->access$13200(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;

    move-result-object v1

    .line 4112
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4119
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;

    move-result-object v0

    .line 4120
    .local v0, "builder":Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4121
    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;->access$13200(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;

    move-result-object v1

    .line 4123
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4075
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;->access$13200(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4081
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;->access$13200(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4129
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;->access$13200(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4135
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;->access$13200(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4097
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;->access$13200(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4103
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;->access$13200(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4086
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;->access$13200(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4092
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;

    # invokes: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;->buildParsed()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;
    invoke-static {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;->access$13200(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 4022
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4022
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;->getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;
    .locals 1

    .prologue
    .line 4036
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;->defaultInstance:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;

    return-object v0
.end method

.method public getLogin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4061
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;->login_:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4054
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4068
    iget-object v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;->password_:Ljava/lang/String;

    return-object v0
.end method

.method public hasLogin()Z
    .locals 1

    .prologue
    .line 4060
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;->hasLogin:Z

    return v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 4053
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;->hasName:Z

    return v0
.end method

.method public hasPassword()Z
    .locals 1

    .prologue
    .line 4067
    iget-boolean v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;->hasPassword:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 4046
    # getter for: Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->internal_static_AddAssociationRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->access$13100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 4022
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4022
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;->newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;
    .locals 1

    .prologue
    .line 4140
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;->newBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 4022
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4022
    invoke-virtual {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;->toBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;
    .locals 1

    .prologue
    .line 4144
    invoke-static {p0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;->newBuilder(Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$AddAssociationRequest$Builder;

    move-result-object v0

    return-object v0
.end method
