.class public final Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol;
.super Ljava/lang/Object;
.source "WebserviceProtocol.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$AppError;,
        Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static internal_static_AppError_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_AppError_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_Error_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_Error_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 579
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "\n\u0019webservice_protocol.proto\"\u009d\u0005\n\u0005Error\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012\u0019\n\u0004type\u0018\u0002 \u0002(\u000e2\u000b.Error.Type\"\u00e7\u0004\n\u0004Type\u0012\u000f\n\u000bINVALID_URI\u0010\u0000\u0012\u0017\n\u0013NO_MATCHING_SERVICE\u0010\u0001\u0012\u0015\n\u0011INVALID_SESSIONID\u0010\u0002\u0012\u0012\n\u000eINTERNAL_ERROR\u0010\u0003\u0012\u001a\n\u0016OAUTH_VERSION_REJECTED\u0010\u0004\u0012\u001a\n\u0016OAUTH_PARAMETER_ABSENT\u0010\u0005\u0012\u001c\n\u0018OAUTH_PARAMETER_REJECTED\u0010\u0006\u0012\u001b\n\u0017OAUTH_TIMESTAMP_REFUSED\u0010\u0007\u0012#\n\u001fOAUTH_SIGNATURE_METHOD_REJECTED\u0010\u0008\u0012\u001e\n\u001aOAUTH_CONSUMER_KEY_REFUSED\u0010\t\u0012\u001e\n\u001aOAUTH_INVALID_CONSUMER_KEY\u0010\n\u0012\u001f\n\u001bOAUTH"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, "_INVALID_EXPIRED_TOKEN\u0010\u000b\u0012\u001b\n\u0017OAUTH_SIGNATURE_INVALID\u0010\u000c\u0012\u001c\n\u0018OAUTH_INVALID_USED_NONCE\u0010\r\u0012\u001e\n\u001aOAUTH_TOKEN_NOT_AUTHORIZED\u0010\u000e\u0012\'\n#BLUR_OAUTH_QUERY_STRING_PARAM_ERROR\u0010\u000f\u0012 \n\u001cBLUR_OAUTH_BODY_HASH_INVALID\u0010\u0010\u0012\'\n#BLUR_OAUTH_PAYLOAD_BYTES_READ_ERROR\u0010\u0011\u0012 \n\u001cOAUTH_NONCE_DUPLICATED_ERROR\u0010\u0012\u0012 \n\u001cBLUR_CONTINUOUS_BAD_REQUESTS\u0010\u0013\"\u001d\n\u0008AppError\u0012\u0011\n\terrorCode\u0018\u0001 \u0002(\u0005B1\n-com.motorola.blur.service.webservice.protocolH\u0002"

    aput-object v3, v1, v2

    .line 601
    .local v1, "descriptorData":[Ljava/lang/String;
    new-instance v0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$1;

    invoke-direct {v0}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$1;-><init>()V

    .line 625
    .local v0, "assigner":Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;
    new-array v2, v4, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {v1, v2, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 629
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
    sget-object v0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol;->internal_static_Error_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol;->internal_static_Error_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol;->internal_static_Error_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$1000()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol;->internal_static_AppError_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol;->internal_static_AppError_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$102(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol;->internal_static_Error_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$1602(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$FileDescriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method static synthetic access$900()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol;->internal_static_AppError_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$902(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol;->internal_static_AppError_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .prologue
    .line 574
    sget-object v0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static internalForceInit()V
    .locals 0

    .prologue
    .line 631
    return-void
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 0
    .param p0, "registry"    # Lcom/google/protobuf/ExtensionRegistry;

    .prologue
    .line 10
    return-void
.end method
