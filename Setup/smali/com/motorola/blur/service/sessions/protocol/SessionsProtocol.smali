.class public final Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol;
.super Ljava/lang/Object;
.source "SessionsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;,
        Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest2;,
        Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse1;,
        Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPRequest1;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static internal_static_SRPRequest1_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_SRPRequest1_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_SRPRequest2_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_SRPRequest2_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_SRPResponse1_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_SRPResponse1_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_SRPResponse2_Data_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_SRPResponse2_Data_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_SRPResponse2_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_SRPResponse2_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1984
    const/4 v2, 0x4

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "\n\u0017sessions_protocol.proto\u001a\u001bprovisioning_protocol.proto\"b\n\u000bSRPRequest1\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012\t\n\u0001U\u0018\u0002 \u0002(\t\u0012\t\n\u0001A\u0018\u0003 \u0002(\t\u0012,\n\u000bsessionInfo\u0018\u0004 \u0001(\u000b2\u0017.ClientOAUTHSessionInfo\"\u00b9\u0002\n\u000cSRPResponse1\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012\"\n\u0005error\u0018\u0002 \u0001(\u000e2\u0013.SRPResponse1.Error\u0012\t\n\u0001s\u0018\u0003 \u0001(\t\u0012\t\n\u0001B\u0018\u0004 \u0001(\t\u0012\u000f\n\u0007context\u0018\u0005 \u0001(\u0004\u0012\u0012\n\nsavedLogin\u0018\u0006 \u0001(\t\"\u00b8\u0001\n\u0005Error\u0012\u000f\n\u000bWRONG_LOGIN\u0010\u0000\u0012\u0015\n\u0011INVALID_ARGUMENTS\u0010\u0001\u0012\u0017\n\u0013REQUEST_PARSE_ERROR\u0010\u0002\u0012 \n\u001cSERVICE_TEMPORARILY_DISABLED\u0010\u0003\u0012\u0014\n\u0010ACCO"

    aput-object v2, v1, v4

    const-string v2, "UNT_DISABLED\u0010\u0004\u0012\u000e\n\nNO_ACCOUNT\u0010\u0005\u0012\u0011\n\rACCOUNT_MOVED\u0010\u0006\u0012\u0013\n\u000fACCOUNT_DELETED\u0010\u0007\"\u00e4\u0001\n\u000bSRPRequest2\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012\t\n\u0001M\u0018\u0002 \u0002(\t\u0012%\n\ndeviceInfo\u0018\u0003 \u0001(\u000b2\u0011.ClientDeviceInfo\u0012\u000f\n\u0007context\u0018\u0004 \u0002(\u0004\u0012\u0018\n\tuserLogin\u0018\u0005 \u0001(\u0008:\u0005false\u0012,\n\u000bsessionInfo\u0018\u0006 \u0001(\u000b2\u0017.ClientOAUTHSessionInfo\u0012\'\n\u000bcaptchaInfo\u0018\u0007 \u0001(\u000b2\u0012.ClientCaptchaInfo\u0012\u0010\n\u0008configId\u0018\u0008 \u0001(\t\"\u00de\u0003\n\u000cSRPResponse2\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012\"\n\u0005error\u0018\u0002 \u0001(\u000e2\u0013.SRPResponse2.Error\u0012\t\n\u0001M\u0018\u0003 \u0001(\t\u0012 \n\u0004data\u0018\u0004 \u0001(\u000b2\u0012.S"

    aput-object v2, v1, v5

    const/4 v2, 0x2

    const-string v3, "RPResponse2.Data\u0012\'\n\u000bcaptchaInfo\u0018\u0005 \u0001(\u000b2\u0012.ServerCaptchaInfo\u001a\u0084\u0001\n\u0004Data\u0012\'\n\u000baccountInfo\u0018\u0001 \u0002(\u000b2\u0012.ServerAccountInfo\u0012%\n\ndeviceInfo\u0018\u0002 \u0002(\u000b2\u0011.ServerDeviceInfo\u0012,\n\u000bsessionInfo\u0018\u0003 \u0002(\u000b2\u0017.ServerOAUTHSessionInfo\"\u00bb\u0001\n\u0005Error\u0012\u0012\n\u000eWRONG_PASSWORD\u0010\u0000\u0012\u0015\n\u0011INVALID_ARGUMENTS\u0010\u0001\u0012\u0017\n\u0013REQUEST_PARSE_ERROR\u0010\u0002\u0012 \n\u001cSERVICE_TEMPORARILY_DISABLED\u0010\u0003\u0012\u0010\n\u000cWRONG_DEVICE\u0010\u0004\u0012\u000b\n\u0007TIMEOUT\u0010\u0005\u0012\u0018\n\u0014INVALID_CAPTCHA_INFO\u0010\u0006\u0012\u0013\n\u000fCAPTCHA_EXPIRED\u0010\u0007B/\n+com.motorola.b"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "lur.service.sessions.protocolH\u0002"

    aput-object v3, v1, v2

    .line 2017
    .local v1, "descriptorData":[Ljava/lang/String;
    new-instance v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$1;

    invoke-direct {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$1;-><init>()V

    .line 2065
    .local v0, "assigner":Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;
    new-array v2, v5, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 2070
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
    sget-object v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol;->internal_static_SRPRequest1_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol;->internal_static_SRPRequest1_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol;->internal_static_SRPRequest1_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol;->internal_static_SRPRequest1_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$1300()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol;->internal_static_SRPResponse1_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol;->internal_static_SRPResponse1_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$1400()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol;->internal_static_SRPResponse1_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol;->internal_static_SRPResponse1_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$3000()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol;->internal_static_SRPRequest2_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol;->internal_static_SRPRequest2_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$3100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol;->internal_static_SRPRequest2_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol;->internal_static_SRPRequest2_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$5100()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol;->internal_static_SRPResponse2_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$5102(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol;->internal_static_SRPResponse2_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$5200()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol;->internal_static_SRPResponse2_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$5202(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol;->internal_static_SRPResponse2_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$5300()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol;->internal_static_SRPResponse2_Data_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$5302(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol;->internal_static_SRPResponse2_Data_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$5400()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol;->internal_static_SRPResponse2_Data_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$5402(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol;->internal_static_SRPResponse2_Data_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$7702(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$FileDescriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .prologue
    .line 1979
    sget-object v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static internalForceInit()V
    .locals 0

    .prologue
    .line 2072
    return-void
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 0
    .param p0, "registry"    # Lcom/google/protobuf/ExtensionRegistry;

    .prologue
    .line 10
    return-void
.end method
