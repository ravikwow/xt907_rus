.class public final Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol;
.super Ljava/lang/Object;
.source "SnpSettingsProtocol.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthCallbackResponse;,
        Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$InvokeSNPOAuthCallbackUrlRequest;,
        Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPOAuthURLResponse;,
        Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$GetSNPOAuthUrlRequest;,
        Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$SNPResponse;,
        Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$UpdateSNPAccountPasswordRequest;,
        Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$RemoveSNPAccountRequest;,
        Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$AddSNPAccountRequest;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static internal_static_AddSNPAccountRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_AddSNPAccountRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_GetSNPOAuthUrlRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_GetSNPOAuthUrlRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_InvokeSNPOAuthCallbackUrlRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_InvokeSNPOAuthCallbackUrlRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_RemoveSNPAccountRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_RemoveSNPAccountRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_SNPOAuthCallbackResponse_Error_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_SNPOAuthCallbackResponse_Error_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_SNPOAuthCallbackResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_SNPOAuthCallbackResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_SNPOAuthURLResponse_Error_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_SNPOAuthURLResponse_Error_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_SNPOAuthURLResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_SNPOAuthURLResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_SNPResponse_Error_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_SNPResponse_Error_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_SNPResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_SNPResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_UpdateSNPAccountPasswordRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_UpdateSNPAccountPasswordRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3489
    const/4 v2, 0x4

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "\n\u001bsnp_settings_protocol.proto\"\u0083\u0001\n\u0014AddSNPAccountRequest\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012\u000c\n\u0004type\u0018\u0002 \u0002(\t\u0012\r\n\u0005login\u0018\u0003 \u0002(\t\u0012\u0010\n\u0008password\u0018\u0004 \u0002(\t\u0012\u0015\n\rcaptcha_token\u0018\u0005 \u0001(\t\u0012\u0014\n\u000ccaptcha_text\u0018\u0006 \u0001(\t\"G\n\u0017RemoveSNPAccountRequest\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012\u000c\n\u0004type\u0018\u0002 \u0002(\t\u0012\r\n\u0005login\u0018\u0003 \u0002(\t\"\u008e\u0001\n\u001fUpdateSNPAccountPasswordRequest\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012\u000c\n\u0004type\u0018\u0002 \u0002(\t\u0012\r\n\u0005login\u0018\u0003 \u0002(\t\u0012\u0010\n\u0008password\u0018\u0004 \u0002(\t\u0012\u0015\n\rcaptcha_token\u0018\u0005 \u0001(\t\u0012\u0014\n\u000ccaptcha_text\u0018\u0006 \u0001(\t\"\u00fe\u0002\n\u000bSNPResponse\u0012\u000f\n"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, "\u0007version\u0018\u0001 \u0002(\r\u0012!\n\u0005error\u0018\u0002 \u0001(\u000b2\u0012.SNPResponse.Error\u0012\u000b\n\u0003uid\u0018\u0003 \u0002(\t\u0012\u0013\n\u000bdisplayName\u0018\u0004 \u0002(\t\u0012\u0018\n\u0010snpExtendedError\u0018\u0005 \u0001(\u0005\u0012\u0014\n\u000ccaptchaToken\u0018\u0006 \u0001(\t\u0012\u0017\n\u000fcaptchaImageUrl\u0018\u0007 \u0001(\t\u0012\u0017\n\u000fcaptchaImageBuf\u0018\u0008 \u0001(\t\u0012\u0018\n\u0010captchaImageType\u0018\t \u0001(\t\u001a\u009c\u0001\n\u0005Error\u0012*\n\u0004type\u0018\u0001 \u0002(\u000e2\u001c.SNPResponse.Error.ErrorType\"g\n\tErrorType\u0012\u0015\n\u0011INVALID_ARGUMENTS\u0010\u0000\u0012\u0017\n\u0013REQUEST_PARSE_ERROR\u0010\u0001\u0012\u0012\n\u000eINTERNAL_ERROR\u0010\u0002\u0012\u0016\n\u0012SNP_EXTENDED_ERROR\u0010\u0003\"%\n\u0015GetSNPOAuthUrlRequest\u0012\u000c\n\u0004type\u0018"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "\u0001 \u0002(\t\"\u00af\u0002\n\u0013SNPOAuthURLResponse\u0012\u000b\n\u0003url\u0018\u0001 \u0002(\t\u0012\u0010\n\u0008callback\u0018\u0002 \u0002(\t\u0012\r\n\u0005token\u0018\u0003 \u0001(\t\u0012)\n\u0005error\u0018\u0004 \u0001(\u000b2\u001a.SNPOAuthURLResponse.Error\u0012\u0018\n\u0010snpExtendedError\u0018\u0005 \u0001(\u0005\u001a\u00a4\u0001\n\u0005Error\u00122\n\u0004type\u0018\u0001 \u0002(\u000e2$.SNPOAuthURLResponse.Error.ErrorType\"g\n\tErrorType\u0012\u0015\n\u0011INVALID_ARGUMENTS\u0010\u0000\u0012\u0017\n\u0013REQUEST_PARSE_ERROR\u0010\u0001\u0012\u0012\n\u000eINTERNAL_ERROR\u0010\u0002\u0012\u0016\n\u0012SNP_EXTENDED_ERROR\u0010\u0003\"M\n InvokeSNPOAuthCallbackUrlRequest\u0012\u000c\n\u0004type\u0018\u0001 \u0002(\t\u0012\u000b\n\u0003url\u0018\u0002 \u0002(\t\u0012\u000e\n\u0006reauth\u0018\u0003 \u0002(\u0008\"\u00c3\u0002\n\u0018SNPOA"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "uthCallbackResponse\u0012\u000b\n\u0003uid\u0018\u0001 \u0002(\t\u0012\u0011\n\tuser_name\u0018\u0002 \u0002(\t\u0012\u0011\n\treal_name\u0018\u0003 \u0001(\t\u0012.\n\u0005error\u0018\u0004 \u0001(\u000b2\u001f.SNPOAuthCallbackResponse.Error\u0012\u0018\n\u0010snpExtendedError\u0018\u0005 \u0001(\u0005\u001a\u00a9\u0001\n\u0005Error\u00127\n\u0004type\u0018\u0001 \u0002(\u000e2).SNPOAuthCallbackResponse.Error.ErrorType\"g\n\tErrorType\u0012\u0015\n\u0011INVALID_ARGUMENTS\u0010\u0000\u0012\u0017\n\u0013REQUEST_PARSE_ERROR\u0010\u0001\u0012\u0012\n\u000eINTERNAL_ERROR\u0010\u0002\u0012\u0016\n\u0012SNP_EXTENDED_ERROR\u0010\u0003B2\n.com.motorola.blur.service.snpsettings.protocolH\u0002"

    aput-object v3, v1, v2

    .line 3531
    .local v1, "descriptorData":[Ljava/lang/String;
    new-instance v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$1;

    invoke-direct {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol$1;-><init>()V

    .line 3627
    .local v0, "assigner":Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;
    new-array v2, v4, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {v1, v2, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 3631
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
    sget-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol;->internal_static_AddSNPAccountRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol;->internal_static_AddSNPAccountRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol;->internal_static_AddSNPAccountRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol;->internal_static_AddSNPAccountRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$10400()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol;->internal_static_InvokeSNPOAuthCallbackUrlRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$10402(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol;->internal_static_InvokeSNPOAuthCallbackUrlRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$10500()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol;->internal_static_InvokeSNPOAuthCallbackUrlRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$10502(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol;->internal_static_InvokeSNPOAuthCallbackUrlRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$11500()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol;->internal_static_SNPOAuthCallbackResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$11502(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol;->internal_static_SNPOAuthCallbackResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$11600()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol;->internal_static_SNPOAuthCallbackResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$11602(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol;->internal_static_SNPOAuthCallbackResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$11700()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol;->internal_static_SNPOAuthCallbackResponse_Error_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$11702(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol;->internal_static_SNPOAuthCallbackResponse_Error_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$11800()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol;->internal_static_SNPOAuthCallbackResponse_Error_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$11802(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol;->internal_static_SNPOAuthCallbackResponse_Error_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$13702(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$FileDescriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method static synthetic access$1700()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol;->internal_static_RemoveSNPAccountRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol;->internal_static_RemoveSNPAccountRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$1800()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol;->internal_static_RemoveSNPAccountRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol;->internal_static_RemoveSNPAccountRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$2800()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol;->internal_static_UpdateSNPAccountPasswordRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol;->internal_static_UpdateSNPAccountPasswordRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$2900()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol;->internal_static_UpdateSNPAccountPasswordRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol;->internal_static_UpdateSNPAccountPasswordRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$4500()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol;->internal_static_SNPResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$4502(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol;->internal_static_SNPResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$4600()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol;->internal_static_SNPResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$4602(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol;->internal_static_SNPResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$4700()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol;->internal_static_SNPResponse_Error_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$4702(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol;->internal_static_SNPResponse_Error_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$4800()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol;->internal_static_SNPResponse_Error_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$4802(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol;->internal_static_SNPResponse_Error_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$7500()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol;->internal_static_GetSNPOAuthUrlRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$7502(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol;->internal_static_GetSNPOAuthUrlRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$7600()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol;->internal_static_GetSNPOAuthUrlRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$7602(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol;->internal_static_GetSNPOAuthUrlRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$8200()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol;->internal_static_SNPOAuthURLResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$8202(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol;->internal_static_SNPOAuthURLResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$8300()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol;->internal_static_SNPOAuthURLResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$8302(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol;->internal_static_SNPOAuthURLResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$8400()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol;->internal_static_SNPOAuthURLResponse_Error_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$8402(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol;->internal_static_SNPOAuthURLResponse_Error_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$8500()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol;->internal_static_SNPOAuthURLResponse_Error_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$8502(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol;->internal_static_SNPOAuthURLResponse_Error_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .prologue
    .line 3484
    sget-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpSettingsProtocol;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static internalForceInit()V
    .locals 0

    .prologue
    .line 3633
    return-void
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 0
    .param p0, "registry"    # Lcom/google/protobuf/ExtensionRegistry;

    .prologue
    .line 10
    return-void
.end method
