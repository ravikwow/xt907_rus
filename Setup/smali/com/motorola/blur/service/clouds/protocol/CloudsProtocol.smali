.class public final Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol;
.super Ljava/lang/Object;
.source "CloudsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudResponse;,
        Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NetworkInfo;,
        Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$CloudInfo;,
        Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudResponse;,
        Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$LoginCloudRequest;,
        Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;,
        Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudRequest;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static internal_static_CloudInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_CloudInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_CloudResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_CloudResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_LoginCloudRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_LoginCloudRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_LoginCloudResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_LoginCloudResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_NetworkInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_NetworkInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_NewAccountCloudRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_NewAccountCloudRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_NewAccountCloudResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_NewAccountCloudResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2402
    const/4 v2, 0x4

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "\n\u0015clouds_protocol.proto\u001a\u001bprovisioning_protocol.proto\"\u008b\u0001\n\u0016NewAccountCloudRequest\u0012\r\n\u0005email\u0018\u0001 \u0002(\t\u0012%\n\ndeviceInfo\u0018\u0002 \u0002(\u000b2\u0011.ClientDeviceInfo\u0012\'\n\u000bcaptchaInfo\u0018\u0003 \u0001(\u000b2\u0012.ClientCaptchaInfo\u0012\u0012\n\nscreenName\u0018\u0004 \u0001(\t\"\u00e4\u0002\n\u0017NewAccountCloudResponse\u0012-\n\u0005error\u0018\u0001 \u0001(\u000e2\u001e.NewAccountCloudResponse.Error\u0012\u0019\n\u0005cloud\u0018\u0002 \u0001(\u000b2\n.CloudInfo\u0012\'\n\u000bcaptchaInfo\u0018\u0003 \u0001(\u000b2\u0012.ServerCaptchaInfo\u00121\n\u0013newAccountSignature\u0018\u0004 \u0001(\u000b2\u0014.NewAccountSignature\"\u00a2\u0001\n\u0005Error\u0012\u0015"

    aput-object v2, v1, v4

    const-string v2, "\n\u0011INVALID_ARGUMENTS\u0010\u0000\u0012\u0017\n\u0013REQUEST_PARSE_ERROR\u0010\u0001\u0012 \n\u001cSERVICE_TEMPORARILY_DISABLED\u0010\u0002\u0012\u0018\n\u0014INVALID_CAPTCHA_INFO\u0010\u0003\u0012\u0013\n\u000fCAPTCHA_EXPIRED\u0010\u0004\u0012\u0018\n\u0014SCREEN_NAME_OCCUPIED\u0010\u0005\"I\n\u0011LoginCloudRequest\u0012\r\n\u0005email\u0018\u0001 \u0002(\t\u0012%\n\ndeviceInfo\u0018\u0002 \u0001(\u000b2\u0011.ClientDeviceInfo\"\u00c7\u0001\n\u0012LoginCloudResponse\u0012(\n\u0005error\u0018\u0001 \u0001(\u000e2\u0019.LoginCloudResponse.Error\u0012\u0019\n\u0005cloud\u0018\u0002 \u0001(\u000b2\n.CloudInfo\"l\n\u0005Error\u0012\u0015\n\u0011INVALID_ARGUMENTS\u0010\u0000\u0012\u0017\n\u0013REQUEST_PARSE_ERROR\u0010\u0001\u0012 \n\u001cSERVICE_TEMPORARILY"

    aput-object v2, v1, v5

    const/4 v2, 0x2

    const-string v3, "_DISABLED\u0010\u0002\u0012\u0011\n\rINVALID_LOGIN\u0010\u0003\"<\n\tCloudInfo\u0012\u000f\n\u0007cloudid\u0018\u0001 \u0002(\r\u0012\u001e\n\u0008networks\u0018\u0002 \u0003(\u000b2\u000c.NetworkInfo\"\u009b\u0001\n\u000bNetworkInfo\u0012\u0011\n\tnetworkid\u0018\u0001 \u0002(\r\u0012\u001f\n\u0004type\u0018\u0002 \u0002(\u000e2\u0011.NetworkInfo.Type\u0012\u0010\n\u0008hostname\u0018\u0003 \u0002(\t\u0012\u0012\n\nsecurePort\u0018\u0004 \u0002(\r\u0012\u0011\n\tclearPort\u0018\u0005 \u0002(\r\"\u001f\n\u0004Type\u0012\n\n\u0006PUBLIC\u0010\u0000\u0012\u000b\n\u0007PRIVATE\u0010\u0001\"\u00a2\u0001\n\rCloudResponse\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012#\n\u0005error\u0018\u0002 \u0001(\u000e2\u0014.CloudResponse.Error\u0012\u0019\n\u0005cloud\u0018\u0003 \u0001(\u000b2\n.CloudInfo\"@\n\u0005Error\u0012\u0015\n\u0011INVALID_ARGUMENTS\u0010\u0000\u0012 \n\u001cSERVICE_TEMPORA"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "RILY_DISABLED\u0010\u0001B-\n)com.motorola.blur.service.clouds.protocolH\u0002"

    aput-object v3, v1, v2

    .line 2436
    .local v1, "descriptorData":[Ljava/lang/String;
    new-instance v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$1;

    invoke-direct {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$1;-><init>()V

    .line 2500
    .local v0, "assigner":Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;
    new-array v2, v5, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 2505
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol;->internal_static_NewAccountCloudRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol;->internal_static_NewAccountCloudRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol;->internal_static_NewAccountCloudRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol;->internal_static_NewAccountCloudRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$1300()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol;->internal_static_NewAccountCloudResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol;->internal_static_NewAccountCloudResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$1400()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol;->internal_static_NewAccountCloudResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol;->internal_static_NewAccountCloudResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$2600()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol;->internal_static_LoginCloudRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol;->internal_static_LoginCloudRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$2700()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol;->internal_static_LoginCloudRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol;->internal_static_LoginCloudRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$3500()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol;->internal_static_LoginCloudResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol;->internal_static_LoginCloudResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$3600()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol;->internal_static_LoginCloudResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$3602(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol;->internal_static_LoginCloudResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$4400()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol;->internal_static_CloudInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$4402(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol;->internal_static_CloudInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$4500()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol;->internal_static_CloudInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$4502(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol;->internal_static_CloudInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$5200()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol;->internal_static_NetworkInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$5202(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol;->internal_static_NetworkInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$5300()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol;->internal_static_NetworkInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$5302(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol;->internal_static_NetworkInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$6700()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol;->internal_static_CloudResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$6702(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol;->internal_static_CloudResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$6800()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol;->internal_static_CloudResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$6802(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol;->internal_static_CloudResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$7802(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$FileDescriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .prologue
    .line 2397
    sget-object v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static internalForceInit()V
    .locals 0

    .prologue
    .line 2507
    return-void
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 0
    .param p0, "registry"    # Lcom/google/protobuf/ExtensionRegistry;

    .prologue
    .line 10
    return-void
.end method
