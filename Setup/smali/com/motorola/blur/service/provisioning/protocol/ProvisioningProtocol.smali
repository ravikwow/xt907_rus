.class public final Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol;
.super Ljava/lang/Object;
.source "ProvisioningProtocol.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$NewAccountSignature;,
        Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientCaptchaInfo;,
        Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;,
        Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientOAUTHSessionInfo;,
        Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerOAUTHSessionInfo;,
        Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerSessionInfo;,
        Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerDeviceInfo;,
        Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;,
        Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientSimInfo;,
        Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientDeviceInfo;,
        Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ClientAccountInfo;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static internal_static_ClientAccountInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_ClientAccountInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_ClientCaptchaInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_ClientCaptchaInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_ClientDeviceInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_ClientDeviceInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_ClientOAUTHSessionInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_ClientOAUTHSessionInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_ClientSimInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_ClientSimInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_NewAccountSignature_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_NewAccountSignature_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_ServerAccountInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_ServerAccountInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_ServerCaptchaInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_ServerCaptchaInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_ServerDeviceInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_ServerDeviceInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_ServerOAUTHSessionInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_ServerOAUTHSessionInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_ServerSessionInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_ServerSessionInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3283
    const/4 v2, 0x4

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "\n\u001bprovisioning_protocol.proto\"K\n\u0011ClientAccountInfo\u0012\r\n\u0005email\u0018\u0001 \u0002(\t\u0012\u0010\n\u0008password\u0018\u0002 \u0002(\t\u0012\u0015\n\u0004name\u0018\u0003 \u0001(\t:\u0007not set\"\u0087\u0004\n\u0010ClientDeviceInfo\u0012\u0014\n\u000cserialNumber\u0018\u0001 \u0002(\t\u0012\u0013\n\u000bblurVersion\u0018\u0002 \u0002(\t\u0012\u001f\n\u0007simInfo\u0018\u0003 \u0001(\u000b2\u000e.ClientSimInfo\u0012\u0014\n\u0008language\u0018\u0004 \u0001(\t:\u0002en\u0012\u001b\n\u0007barCode\u0018\u0005 \u0001(\t:\n0000000000\u0012\u0010\n\u0005flags\u0018\u0006 \u0001(\u0005:\u00010\"\u00e1\u0002\n\u0007FlagBit\u0012#\n\u001fMULTIPLE_HOME_SCREEN_CAPABILITY\u0010\u0001\u0012\u0016\n\u0012NO_GOOGLE_PROVIDER\u0010\u0002\u0012\u0019\n\u0015YAHOO_AUTH_CAPABILITY\u0010\u0004\u0012\u0018\n\u0014SNP_OAUTH_CAPABILITY\u0010\u0008\u0012!"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, "\n\u001dEMAIL_VERIFICATION_CAPABILITY\u0010\u0010\u0012\u001a\n\u0016LOCK_DEVICE_CAPABILITY\u0010 \u0012#\n\u001fPROFILES_HOME_SCREEN_CAPABILITY\u0010@\u0012&\n!STATUS_APP_SYNC_SOURCE_CAPABILITY\u0010\u0080\u0001\u0012 \n\u001bSTABLE_4_5_FEATURES_SUPPORT\u0010\u0080\u0002\u0012\u001a\n\u0015HSS6_FEATURES_SUPPORT\u0010\u0080\u0004\u0012\u001a\n\u0015HSS7_FEATURES_SUPPORT\u0010\u0080\u0008\",\n\rClientSimInfo\u0012\r\n\u0005phone\u0018\u0001 \u0002(\t\u0012\u000c\n\u0004IMSI\u0018\u0002 \u0002(\t\"`\n\u0011ServerAccountInfo\u0012\u0011\n\taccountID\u0018\u0001 \u0002(\t\u0012\u000c\n\u0004name\u0018\u0002 \u0001(\t\u0012\u0010\n\u0005flags\u0018\u0003 \u0001(\u0005:\u00010\"\u0018\n\u0008FlagBits\u0012\u000c\n\u0008VERIFIED\u0010\u0001\"$\n\u0010ServerDeviceInfo\u0012\u0010\n\u0008devi"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "ceID\u0018\u0001 \u0002(\u0003\"-\n\u0011ServerSessionInfo\u0012\u0018\n\u0010sessionAuthToken\u0018\u0001 \u0002(\t\"\u00e1\u0001\n\u0016ServerOAUTHSessionInfo\u0012\u0013\n\u000boauth_token\u0018\u0001 \u0002(\t\u0012\u001a\n\u0012oauth_token_secret\u0018\u0002 \u0002(\t\u0012\n\n\u0002lb\u0018\u0003 \u0002(\t\u0012\u0011\n\ttimestamp\u0018\u0004 \u0002(\u0003\u0012\u0013\n\u000bchunk_token\u0018\u0005 \u0001(\t\u0012\u001a\n\u0012chunk_token_secret\u0018\u0006 \u0001(\t\u0012\u0015\n\rserverVersion\u0018\u0007 \u0001(\t\u0012\u0017\n\u000flocation_secret\u0018\u0008 \u0001(\t\u0012\u0016\n\u000eauto_login_key\u0018\t \u0001(\t\"~\n\u0016ClientOAUTHSessionInfo\u0012\u0018\n\u0010last_oauth_token\u0018\u0001 \u0002(\t\u0012\u001b\n\u0013last_auto_login_key\u0018\u0002 \u0002(\t\u0012\u0016\n\u000elast_accountid\u0018\u0003 \u0001(\t\u0012\u0015\n\rlast_d"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "eviceid\u0018\u0004 \u0001(\u0003\"D\n\u0011ServerCaptchaInfo\u0012\r\n\u0005token\u0018\u0001 \u0002(\t\u0012\r\n\u0005image\u0018\u0002 \u0002(\u000c\u0012\u0011\n\textension\u0018\u0003 \u0002(\t\"0\n\u0011ClientCaptchaInfo\u0012\r\n\u0005token\u0018\u0001 \u0002(\t\u0012\u000c\n\u0004text\u0018\u0002 \u0002(\t\"J\n\u0013NewAccountSignature\u0012\u0011\n\tsignature\u0018\u0001 \u0002(\t\u0012\u000f\n\u0007context\u0018\u0002 \u0002(\t\u0012\u000f\n\u0007cloudid\u0018\u0003 \u0002(\u0005B3\n/com.motorola.blur.service.provisioning.protocolH\u0002"

    aput-object v3, v1, v2

    .line 3322
    .local v1, "descriptorData":[Ljava/lang/String;
    new-instance v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$1;

    invoke-direct {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$1;-><init>()V

    .line 3418
    .local v0, "assigner":Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;
    new-array v2, v4, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {v1, v2, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 3422
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
    sget-object v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol;->internal_static_ClientAccountInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol;->internal_static_ClientAccountInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol;->internal_static_ClientAccountInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol;->internal_static_ClientAccountInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$10900()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol;->internal_static_ClientCaptchaInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$10902(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol;->internal_static_ClientCaptchaInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$1100()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol;->internal_static_ClientDeviceInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$11000()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol;->internal_static_ClientCaptchaInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$11002(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol;->internal_static_ClientCaptchaInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol;->internal_static_ClientDeviceInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$11800()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol;->internal_static_NewAccountSignature_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$11802(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol;->internal_static_NewAccountSignature_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$11900()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol;->internal_static_NewAccountSignature_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$11902(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol;->internal_static_NewAccountSignature_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$1200()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol;->internal_static_ClientDeviceInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol;->internal_static_ClientDeviceInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$12902(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$FileDescriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method static synthetic access$2800()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol;->internal_static_ClientSimInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol;->internal_static_ClientSimInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$2900()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol;->internal_static_ClientSimInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol;->internal_static_ClientSimInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$3700()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol;->internal_static_ServerAccountInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$3702(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol;->internal_static_ServerAccountInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$3800()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol;->internal_static_ServerAccountInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$3802(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol;->internal_static_ServerAccountInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$4800()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol;->internal_static_ServerDeviceInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$4802(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol;->internal_static_ServerDeviceInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$4900()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol;->internal_static_ServerDeviceInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$4902(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol;->internal_static_ServerDeviceInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$5500()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol;->internal_static_ServerSessionInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$5502(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol;->internal_static_ServerSessionInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$5600()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol;->internal_static_ServerSessionInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$5602(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol;->internal_static_ServerSessionInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$6200()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol;->internal_static_ServerOAUTHSessionInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$6202(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol;->internal_static_ServerOAUTHSessionInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$6300()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol;->internal_static_ServerOAUTHSessionInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$6302(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol;->internal_static_ServerOAUTHSessionInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$8500()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol;->internal_static_ClientOAUTHSessionInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$8502(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol;->internal_static_ClientOAUTHSessionInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$8600()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol;->internal_static_ClientOAUTHSessionInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$8602(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol;->internal_static_ClientOAUTHSessionInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$9800()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol;->internal_static_ServerCaptchaInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$9802(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol;->internal_static_ServerCaptchaInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$9900()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol;->internal_static_ServerCaptchaInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$9902(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol;->internal_static_ServerCaptchaInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .prologue
    .line 3278
    sget-object v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static internalForceInit()V
    .locals 0

    .prologue
    .line 3424
    return-void
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 0
    .param p0, "registry"    # Lcom/google/protobuf/ExtensionRegistry;

    .prologue
    .line 10
    return-void
.end method
