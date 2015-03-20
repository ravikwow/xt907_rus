.class public final Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;
.super Lcom/google/protobuf/GeneratedMessage;
.source "SessionsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SRPResponse2"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;,
        Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;,
        Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;
    }
.end annotation


# static fields
.field public static final CAPTCHAINFO_FIELD_NUMBER:I = 0x5

.field public static final DATA_FIELD_NUMBER:I = 0x4

.field public static final ERROR_FIELD_NUMBER:I = 0x2

.field public static final M_FIELD_NUMBER:I = 0x3

.field public static final VERSION_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;


# instance fields
.field private captchaInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

.field private data_:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;

.field private error_:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;

.field private hasCaptchaInfo:Z

.field private hasData:Z

.field private hasError:Z

.field private hasM:Z

.field private hasVersion:Z

.field private m_:Ljava/lang/String;

.field private version_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1943
    new-instance v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->defaultInstance:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;

    .line 1944
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol;->internalForceInit()V

    .line 1945
    sget-object v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->defaultInstance:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;

    invoke-direct {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->initFields()V

    .line 1946
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1200
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 1625
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->version_:I

    .line 1639
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->m_:Ljava/lang/String;

    .line 1201
    invoke-direct {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->initFields()V

    .line 1202
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$1;

    .prologue
    .line 1197
    invoke-direct {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    .line 1203
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 1625
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->version_:I

    .line 1639
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->m_:Ljava/lang/String;

    .line 1203
    return-void
.end method

.method static synthetic access$6702(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;
    .param p1, "x1"    # Z

    .prologue
    .line 1197
    iput-boolean p1, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->hasVersion:Z

    return p1
.end method

.method static synthetic access$6802(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;I)I
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;
    .param p1, "x1"    # I

    .prologue
    .line 1197
    iput p1, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->version_:I

    return p1
.end method

.method static synthetic access$6902(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;
    .param p1, "x1"    # Z

    .prologue
    .line 1197
    iput-boolean p1, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->hasError:Z

    return p1
.end method

.method static synthetic access$7002(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;
    .param p1, "x1"    # Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;

    .prologue
    .line 1197
    iput-object p1, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->error_:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;

    return-object p1
.end method

.method static synthetic access$7102(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;
    .param p1, "x1"    # Z

    .prologue
    .line 1197
    iput-boolean p1, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->hasM:Z

    return p1
.end method

.method static synthetic access$7202(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 1197
    iput-object p1, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->m_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$7302(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;
    .param p1, "x1"    # Z

    .prologue
    .line 1197
    iput-boolean p1, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->hasData:Z

    return p1
.end method

.method static synthetic access$7400(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;

    .prologue
    .line 1197
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->data_:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;

    return-object v0
.end method

.method static synthetic access$7402(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;
    .param p1, "x1"    # Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;

    .prologue
    .line 1197
    iput-object p1, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->data_:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;

    return-object p1
.end method

.method static synthetic access$7502(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;
    .param p1, "x1"    # Z

    .prologue
    .line 1197
    iput-boolean p1, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->hasCaptchaInfo:Z

    return p1
.end method

.method static synthetic access$7600(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;

    .prologue
    .line 1197
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->captchaInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

    return-object v0
.end method

.method static synthetic access$7602(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;
    .param p1, "x1"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

    .prologue
    .line 1197
    iput-object p1, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->captchaInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;
    .locals 1

    .prologue
    .line 1207
    sget-object v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->defaultInstance:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1216
    # getter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol;->internal_static_SRPResponse2_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol;->access$5100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 1658
    sget-object v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;->WRONG_PASSWORD:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;

    iput-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->error_:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;

    .line 1659
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;->getDefaultInstance()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->data_:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;

    .line 1660
    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;->getDefaultInstance()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->captchaInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

    .line 1661
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;
    .locals 1

    .prologue
    .line 1729
    # invokes: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;->create()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;->access$6500()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;

    .prologue
    .line 1732
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->newBuilder()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1698
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->newBuilder()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;

    move-result-object v0

    .line 1699
    .local v0, "builder":Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1700
    # invokes: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;->buildParsed()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;
    invoke-static {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;->access$6400(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;

    move-result-object v1

    .line 1702
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1709
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->newBuilder()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;

    move-result-object v0

    .line 1710
    .local v0, "builder":Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1711
    # invokes: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;->buildParsed()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;
    invoke-static {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;->access$6400(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;

    move-result-object v1

    .line 1713
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1665
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->newBuilder()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;

    # invokes: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;->buildParsed()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;
    invoke-static {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;->access$6400(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1671
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->newBuilder()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;

    # invokes: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;->buildParsed()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;
    invoke-static {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;->access$6400(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1719
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->newBuilder()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;

    # invokes: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;->buildParsed()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;
    invoke-static {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;->access$6400(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1725
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->newBuilder()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;

    # invokes: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;->buildParsed()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;
    invoke-static {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;->access$6400(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1687
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->newBuilder()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;

    # invokes: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;->buildParsed()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;
    invoke-static {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;->access$6400(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1693
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->newBuilder()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;

    # invokes: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;->buildParsed()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;
    invoke-static {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;->access$6400(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1676
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->newBuilder()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;

    # invokes: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;->buildParsed()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;
    invoke-static {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;->access$6400(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1682
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->newBuilder()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;

    # invokes: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;->buildParsed()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;
    invoke-static {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;->access$6400(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCaptchaInfo()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;
    .locals 1

    .prologue
    .line 1655
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->captchaInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

    return-object v0
.end method

.method public getData()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;
    .locals 1

    .prologue
    .line 1648
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->data_:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Data;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1197
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->getDefaultInstanceForType()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1197
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->getDefaultInstanceForType()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;
    .locals 1

    .prologue
    .line 1211
    sget-object v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->defaultInstance:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;

    return-object v0
.end method

.method public getError()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;
    .locals 1

    .prologue
    .line 1634
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->error_:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;

    return-object v0
.end method

.method public getM()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1641
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->m_:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 1627
    iget v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->version_:I

    return v0
.end method

.method public hasCaptchaInfo()Z
    .locals 1

    .prologue
    .line 1654
    iget-boolean v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->hasCaptchaInfo:Z

    return v0
.end method

.method public hasData()Z
    .locals 1

    .prologue
    .line 1647
    iget-boolean v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->hasData:Z

    return v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 1633
    iget-boolean v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->hasError:Z

    return v0
.end method

.method public hasM()Z
    .locals 1

    .prologue
    .line 1640
    iget-boolean v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->hasM:Z

    return v0
.end method

.method public hasVersion()Z
    .locals 1

    .prologue
    .line 1626
    iget-boolean v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->hasVersion:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 1221
    # getter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol;->internal_static_SRPResponse2_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol;->access$5200()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1197
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->newBuilderForType()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1197
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->newBuilderForType()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;
    .locals 1

    .prologue
    .line 1730
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->newBuilder()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1197
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->toBuilder()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1197
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->toBuilder()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;
    .locals 1

    .prologue
    .line 1734
    invoke-static {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->newBuilder(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Builder;

    move-result-object v0

    return-object v0
.end method
