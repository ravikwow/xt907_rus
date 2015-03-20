.class public final Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;
.super Lcom/google/protobuf/GeneratedMessage;
.source "SessionsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SRPRequest2"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;
    }
.end annotation


# static fields
.field public static final CAPTCHAINFO_FIELD_NUMBER:I = 0x7

.field public static final CONFIGID_FIELD_NUMBER:I = 0x8

.field public static final CONTEXT_FIELD_NUMBER:I = 0x4

.field public static final DEVICEINFO_FIELD_NUMBER:I = 0x3

.field public static final M_FIELD_NUMBER:I = 0x2

.field public static final SESSIONINFO_FIELD_NUMBER:I = 0x6

.field public static final USERLOGIN_FIELD_NUMBER:I = 0x5

.field public static final VERSION_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;


# instance fields
.field private captchaInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;

.field private configId_:Ljava/lang/String;

.field private context_:J

.field private deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

.field private hasCaptchaInfo:Z

.field private hasConfigId:Z

.field private hasContext:Z

.field private hasDeviceInfo:Z

.field private hasM:Z

.field private hasSessionInfo:Z

.field private hasUserLogin:Z

.field private hasVersion:Z

.field private m_:Ljava/lang/String;

.field private sessionInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;

.field private userLogin_:Z

.field private version_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1189
    new-instance v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;-><init>(Z)V

    sput-object v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->defaultInstance:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    .line 1190
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol;->internalForceInit()V

    .line 1191
    sget-object v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->defaultInstance:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    invoke-direct {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->initFields()V

    .line 1192
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 750
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 777
    iput v2, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->version_:I

    .line 784
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->m_:Ljava/lang/String;

    .line 798
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->context_:J

    .line 805
    iput-boolean v2, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->userLogin_:Z

    .line 826
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->configId_:Ljava/lang/String;

    .line 751
    invoke-direct {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->initFields()V

    .line 752
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$1;

    .prologue
    .line 747
    invoke-direct {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 3
    .param p1, "noInit"    # Z

    .prologue
    const/4 v2, 0x0

    .line 753
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 777
    iput v2, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->version_:I

    .line 784
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->m_:Ljava/lang/String;

    .line 798
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->context_:J

    .line 805
    iput-boolean v2, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->userLogin_:Z

    .line 826
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->configId_:Ljava/lang/String;

    .line 753
    return-void
.end method

.method static synthetic access$3502(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;
    .param p1, "x1"    # Z

    .prologue
    .line 747
    iput-boolean p1, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->hasVersion:Z

    return p1
.end method

.method static synthetic access$3602(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;I)I
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;
    .param p1, "x1"    # I

    .prologue
    .line 747
    iput p1, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->version_:I

    return p1
.end method

.method static synthetic access$3702(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;
    .param p1, "x1"    # Z

    .prologue
    .line 747
    iput-boolean p1, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->hasM:Z

    return p1
.end method

.method static synthetic access$3802(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 747
    iput-object p1, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->m_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3902(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;
    .param p1, "x1"    # Z

    .prologue
    .line 747
    iput-boolean p1, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->hasDeviceInfo:Z

    return p1
.end method

.method static synthetic access$4000(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    .prologue
    .line 747
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    return-object v0
.end method

.method static synthetic access$4002(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;
    .param p1, "x1"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    .prologue
    .line 747
    iput-object p1, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    return-object p1
.end method

.method static synthetic access$4102(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;
    .param p1, "x1"    # Z

    .prologue
    .line 747
    iput-boolean p1, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->hasContext:Z

    return p1
.end method

.method static synthetic access$4202(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;J)J
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;
    .param p1, "x1"    # J

    .prologue
    .line 747
    iput-wide p1, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->context_:J

    return-wide p1
.end method

.method static synthetic access$4302(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;
    .param p1, "x1"    # Z

    .prologue
    .line 747
    iput-boolean p1, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->hasUserLogin:Z

    return p1
.end method

.method static synthetic access$4402(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;
    .param p1, "x1"    # Z

    .prologue
    .line 747
    iput-boolean p1, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->userLogin_:Z

    return p1
.end method

.method static synthetic access$4502(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;
    .param p1, "x1"    # Z

    .prologue
    .line 747
    iput-boolean p1, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->hasSessionInfo:Z

    return p1
.end method

.method static synthetic access$4600(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    .prologue
    .line 747
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->sessionInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;

    return-object v0
.end method

.method static synthetic access$4602(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;
    .param p1, "x1"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;

    .prologue
    .line 747
    iput-object p1, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->sessionInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;

    return-object p1
.end method

.method static synthetic access$4702(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;
    .param p1, "x1"    # Z

    .prologue
    .line 747
    iput-boolean p1, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->hasCaptchaInfo:Z

    return p1
.end method

.method static synthetic access$4800(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    .prologue
    .line 747
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->captchaInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;

    return-object v0
.end method

.method static synthetic access$4802(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;
    .param p1, "x1"    # Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;

    .prologue
    .line 747
    iput-object p1, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->captchaInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;

    return-object p1
.end method

.method static synthetic access$4902(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;
    .param p1, "x1"    # Z

    .prologue
    .line 747
    iput-boolean p1, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->hasConfigId:Z

    return p1
.end method

.method static synthetic access$5002(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 747
    iput-object p1, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->configId_:Ljava/lang/String;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;
    .locals 1

    .prologue
    .line 757
    sget-object v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->defaultInstance:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 766
    # getter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol;->internal_static_SRPRequest2_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol;->access$3000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 831
    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;->getDefaultInstance()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    .line 832
    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;->getDefaultInstance()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->sessionInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;

    .line 833
    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;->getDefaultInstance()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->captchaInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;

    .line 834
    return-void
.end method

.method public static newBuilder()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;
    .locals 1

    .prologue
    .line 902
    # invokes: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->create()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->access$3300()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    .prologue
    .line 905
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->newBuilder()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 871
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->newBuilder()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;

    move-result-object v0

    .line 872
    .local v0, "builder":Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;
    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 873
    # invokes: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->buildParsed()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;
    invoke-static {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->access$3200(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    move-result-object v1

    .line 875
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 882
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->newBuilder()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;

    move-result-object v0

    .line 883
    .local v0, "builder":Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 884
    # invokes: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->buildParsed()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;
    invoke-static {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->access$3200(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    move-result-object v1

    .line 886
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 838
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->newBuilder()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;

    # invokes: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->buildParsed()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;
    invoke-static {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->access$3200(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 844
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->newBuilder()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;

    # invokes: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->buildParsed()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;
    invoke-static {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->access$3200(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 892
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->newBuilder()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;

    # invokes: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->buildParsed()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;
    invoke-static {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->access$3200(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 898
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->newBuilder()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;

    # invokes: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->buildParsed()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;
    invoke-static {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->access$3200(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 860
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->newBuilder()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;

    # invokes: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->buildParsed()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;
    invoke-static {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->access$3200(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 866
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->newBuilder()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;

    # invokes: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->buildParsed()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;
    invoke-static {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->access$3200(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 849
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->newBuilder()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;

    # invokes: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->buildParsed()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;
    invoke-static {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->access$3200(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 855
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->newBuilder()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;

    # invokes: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->buildParsed()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;
    invoke-static {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;->access$3200(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCaptchaInfo()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;
    .locals 1

    .prologue
    .line 821
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->captchaInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;

    return-object v0
.end method

.method public getConfigId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 828
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->configId_:Ljava/lang/String;

    return-object v0
.end method

.method public getContext()J
    .locals 2

    .prologue
    .line 800
    iget-wide v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->context_:J

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 747
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->getDefaultInstanceForType()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 747
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->getDefaultInstanceForType()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;
    .locals 1

    .prologue
    .line 761
    sget-object v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->defaultInstance:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;

    return-object v0
.end method

.method public getDeviceInfo()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;
    .locals 1

    .prologue
    .line 793
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->deviceInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;

    return-object v0
.end method

.method public getM()Ljava/lang/String;
    .locals 1

    .prologue
    .line 786
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->m_:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionInfo()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;
    .locals 1

    .prologue
    .line 814
    iget-object v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->sessionInfo_:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;

    return-object v0
.end method

.method public getUserLogin()Z
    .locals 1

    .prologue
    .line 807
    iget-boolean v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->userLogin_:Z

    return v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 779
    iget v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->version_:I

    return v0
.end method

.method public hasCaptchaInfo()Z
    .locals 1

    .prologue
    .line 820
    iget-boolean v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->hasCaptchaInfo:Z

    return v0
.end method

.method public hasConfigId()Z
    .locals 1

    .prologue
    .line 827
    iget-boolean v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->hasConfigId:Z

    return v0
.end method

.method public hasContext()Z
    .locals 1

    .prologue
    .line 799
    iget-boolean v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->hasContext:Z

    return v0
.end method

.method public hasDeviceInfo()Z
    .locals 1

    .prologue
    .line 792
    iget-boolean v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->hasDeviceInfo:Z

    return v0
.end method

.method public hasM()Z
    .locals 1

    .prologue
    .line 785
    iget-boolean v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->hasM:Z

    return v0
.end method

.method public hasSessionInfo()Z
    .locals 1

    .prologue
    .line 813
    iget-boolean v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->hasSessionInfo:Z

    return v0
.end method

.method public hasUserLogin()Z
    .locals 1

    .prologue
    .line 806
    iget-boolean v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->hasUserLogin:Z

    return v0
.end method

.method public hasVersion()Z
    .locals 1

    .prologue
    .line 778
    iget-boolean v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->hasVersion:Z

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 771
    # getter for: Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol;->internal_static_SRPRequest2_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol;->access$3100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 747
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->newBuilderForType()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 747
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->newBuilderForType()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;
    .locals 1

    .prologue
    .line 903
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->newBuilder()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 747
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->toBuilder()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 747
    invoke-virtual {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->toBuilder()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;
    .locals 1

    .prologue
    .line 907
    invoke-static {p0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;->newBuilder(Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2$Builder;

    move-result-object v0

    return-object v0
.end method
