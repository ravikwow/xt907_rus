.class public final Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;
.super Lcom/google/protobuf/GeneratedMessage;
.source "SessionsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SRPRequest1"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;
    }
.end annotation


# static fields
.field public static final A_FIELD_NUMBER:I = 0x3

.field public static final SESSIONINFO_FIELD_NUMBER:I = 0x4

.field public static final U_FIELD_NUMBER:I = 0x2

.field public static final VERSION_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;


# instance fields
.field private a_:Ljava/lang/String;

.field private hasA:Z

.field private hasSessionInfo:Z

.field private hasU:Z

.field private hasVersion:Z

.field private sessionInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;

.field private u_:Ljava/lang/String;

.field private version_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 313
    new-instance v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;->defaultInstance:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;

    .line 314
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol;->internalForceInit()V

    .line 315
    sget-object v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;->defaultInstance:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;

    invoke-direct {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;->initFields()V

    .line 316
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;->version_:I

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;->u_:Ljava/lang/String;

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;->a_:Ljava/lang/String;

    .line 15
    invoke-direct {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;->initFields()V

    .line 16
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$1;

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;->version_:I

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;->u_:Ljava/lang/String;

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;->a_:Ljava/lang/String;

    .line 17
    return-void
.end method

.method static synthetic access$1002(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 11
    iput-object p1, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;->a_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;
    .param p1, "x1"    # Z

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;->hasSessionInfo:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;

    .prologue
    .line 11
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;->sessionInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;
    .param p1, "x1"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;

    .prologue
    .line 11
    iput-object p1, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;->sessionInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;

    return-object p1
.end method

.method static synthetic access$502(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;
    .param p1, "x1"    # Z

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;->hasVersion:Z

    return p1
.end method

.method static synthetic access$602(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;I)I
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;
    .param p1, "x1"    # I

    .prologue
    .line 11
    iput p1, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;->version_:I

    return p1
.end method

.method static synthetic access$702(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;
    .param p1, "x1"    # Z

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;->hasU:Z

    return p1
.end method

.method static synthetic access$802(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 11
    iput-object p1, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;->u_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$902(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;
    .param p1, "x1"    # Z

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;->hasA:Z

    return p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;->defaultInstance:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 30
    # getter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol;->internal_static_SRPRequest1_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 67
    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;->getDefaultInstance()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;->sessionInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;

    .line 68
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;
    .locals 1

    .prologue
    .line 136
    # invokes: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;->create()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;->access$300()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;

    .prologue
    .line 139
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;->newBuilder()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;->newBuilder()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;

    move-result-object v0

    .line 106
    .local v0, "builder":Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    # invokes: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;->buildParsed()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;
    invoke-static {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;->access$200(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;

    move-result-object v1

    .line 109
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;->newBuilder()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;

    move-result-object v0

    .line 117
    .local v0, "builder":Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    # invokes: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;->buildParsed()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;
    invoke-static {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;->access$200(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;

    move-result-object v1

    .line 120
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;->newBuilder()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;

    # invokes: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;->buildParsed()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;
    invoke-static {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;->access$200(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 78
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;->newBuilder()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;

    # invokes: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;->buildParsed()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;
    invoke-static {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;->access$200(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;->newBuilder()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;

    # invokes: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;->buildParsed()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;
    invoke-static {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;->access$200(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;->newBuilder()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;

    # invokes: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;->buildParsed()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;
    invoke-static {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;->access$200(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;->newBuilder()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;

    # invokes: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;->buildParsed()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;
    invoke-static {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;->access$200(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;->newBuilder()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;

    # invokes: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;->buildParsed()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;
    invoke-static {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;->access$200(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 83
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;->newBuilder()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;

    # invokes: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;->buildParsed()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;
    invoke-static {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;->access$200(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 89
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;->newBuilder()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;

    # invokes: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;->buildParsed()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;
    invoke-static {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;->access$200(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getA()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;->a_:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;->getDefaultInstanceForType()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;->getDefaultInstanceForType()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;->defaultInstance:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;

    return-object v0
.end method

.method public getSessionInfo()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;->sessionInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;

    return-object v0
.end method

.method public getU()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;->u_:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;->version_:I

    return v0
.end method

.method public hasA()Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;->hasA:Z

    return v0
.end method

.method public hasSessionInfo()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;->hasSessionInfo:Z

    return v0
.end method

.method public hasU()Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;->hasU:Z

    return v0
.end method

.method public hasVersion()Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;->hasVersion:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 35
    # getter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol;->internal_static_SRPRequest1_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;->newBuilderForType()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;->newBuilderForType()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;
    .locals 1

    .prologue
    .line 137
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;->newBuilder()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;->toBuilder()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;->toBuilder()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;
    .locals 1

    .prologue
    .line 141
    invoke-static {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;->newBuilder(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1$Builder;

    move-result-object v0

    return-object v0
.end method
