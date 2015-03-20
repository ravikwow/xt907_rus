.class public final Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol;
.super Ljava/lang/Object;
.source "EmailProvidersProtocol.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$ProviderResponse;,
        Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$EmailProviderSettingRequest;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static internal_static_EmailProviderSettingRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_EmailProviderSettingRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_ProviderResponse_Error_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_ProviderResponse_Error_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_ProviderResponse_ServerInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_ProviderResponse_ServerInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_ProviderResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_ProviderResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1616
    const/4 v2, 0x3

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "\n\u001eemail_providers_protocol.proto\"W\n\u001bEmailProviderSettingRequest\u0012\u0013\n\u000bblurVersion\u0018\u0001 \u0002(\t\u0012\r\n\u0005email\u0018\u0002 \u0002(\t\u0012\u0014\n\u000ccapabilities\u0018\u0003 \u0001(\u0005\"\u008d\u0006\n\u0010ProviderResponse\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012&\n\u0005error\u0018\u0002 \u0001(\u000b2\u0017.ProviderResponse.Error\u0012-\n\u0007servers\u0018\u0003 \u0003(\u000b2\u001c.ProviderResponse.ServerInfo\u001a\u0089\u0001\n\u0005Error\u0012/\n\u0004type\u0018\u0001 \u0002(\u000e2!.ProviderResponse.Error.ErrorType\"O\n\tErrorType\u0012\u0015\n\u0011INVALID_ARGUMENTS\u0010\u0000\u0012\u0017\n\u0013REQUEST_PARSE_ERROR\u0010\u0001\u0012\u0012\n\u000eINTERNAL_ERROR\u0010\u0002\u001a\u0084\u0004\n\nServerInf"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, "o\u0012\u000e\n\u0006server\u0018\u0001 \u0002(\t\u0012\u000b\n\u0003ssl\u0018\u0002 \u0001(\u0008\u0012\u000c\n\u0004auth\u0018\u0003 \u0001(\u0008\u0012\u000c\n\u0004port\u0018\u0004 \u0002(\u0005\u0012/\n\u0004type\u0018\u0005 \u0002(\u000e2!.ProviderResponse.ServerInfo.Type\u0012\u0014\n\u000cemailPattern\u0018\u0006 \u0001(\t\u0012\u0018\n\u0010loginReplacement\u0018\u0007 \u0001(\t\u0012\u0010\n\u0008imageURL\u0018\u0008 \u0001(\t\u0012\u0010\n\u0008authType\u0018\t \u0001(\u0005\u0012\u0010\n\u0008verifyCA\u0018\n \u0001(\u0008\u0012C\n\u000esecurityPolicy\u0018\u000b \u0001(\u000e2+.ProviderResponse.ServerInfo.SecurityPolicy\u0012\r\n\u0005flags\u0018\u000c \u0001(\u0005\"%\n\u0004Type\u0012\u0008\n\u0004POP3\u0010\u0000\u0012\u0008\n\u0004SMTP\u0010\u0001\u0012\t\n\u0005IMAP4\u0010\u0002\"Y\n\u000eSecurityPolicy\u0012\u0011\n\rSECURITY_NONE\u0010\u0000\u0012\u0019\n\u0015SECURITY_TLS_OPTIONAL\u0010\u0001\u0012\u0019\n\u0015"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "SECURITY_TLS_REQUIRED\u0010\u0002\"P\n\u0008FlagBits\u0012\u001e\n\u001aDISPLAY_YAHOO_WIFI_WARNING\u0010\u0001\u0012$\n DISPLAY_YAHOO_FREE_EMAIL_WARNING\u0010\u0002B4\n0com.motorola.blur.service.emailsettings.protocolH\u0002"

    aput-object v3, v1, v2

    .line 1642
    .local v1, "descriptorData":[Ljava/lang/String;
    new-instance v0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$1;

    invoke-direct {v0}, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol$1;-><init>()V

    .line 1682
    .local v0, "assigner":Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;
    new-array v2, v4, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {v1, v2, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 1686
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
    sget-object v0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol;->internal_static_EmailProviderSettingRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol;->internal_static_EmailProviderSettingRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol;->internal_static_EmailProviderSettingRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol;->internal_static_EmailProviderSettingRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$1100()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol;->internal_static_ProviderResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol;->internal_static_ProviderResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$1200()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol;->internal_static_ProviderResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol;->internal_static_ProviderResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$1300()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol;->internal_static_ProviderResponse_Error_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol;->internal_static_ProviderResponse_Error_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$1400()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol;->internal_static_ProviderResponse_Error_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol;->internal_static_ProviderResponse_Error_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$2000()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol;->internal_static_ProviderResponse_ServerInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol;->internal_static_ProviderResponse_ServerInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$2100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol;->internal_static_ProviderResponse_ServerInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol;->internal_static_ProviderResponse_ServerInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$5702(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$FileDescriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .prologue
    .line 1611
    sget-object v0, Lcom/motorola/blur/service/emailsettings/protocol/EmailProvidersProtocol;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static internalForceInit()V
    .locals 0

    .prologue
    .line 1688
    return-void
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 0
    .param p0, "registry"    # Lcom/google/protobuf/ExtensionRegistry;

    .prologue
    .line 10
    return-void
.end method
