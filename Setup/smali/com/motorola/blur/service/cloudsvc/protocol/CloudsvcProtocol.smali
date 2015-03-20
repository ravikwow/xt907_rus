.class public final Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol;
.super Ljava/lang/Object;
.source "CloudsvcProtocol.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$ErrorResponse;,
        Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static internal_static_cloudsvc_ErrorResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_cloudsvc_ErrorResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 424
    const/4 v2, 0x3

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "\n\u0017cloudsvc_protocol.proto\u0012\u0008cloudsvc\"V\n\rErrorResponse\u0012\u001e\n\u0005error\u0018\u0001 \u0002(\u000e2\u000f.cloudsvc.Error\u0012\u0012\n\nerror_text\u0018\u0002 \u0001(\t\u0012\u0011\n\terror_url\u0018\u0003 \u0001(\t*\u00a1\u0007\n\u0005Error\u0012\u0006\n\u0002OK\u0010\u0000\u0012\u0017\n\u0013NO_MATCHING_SERVICE\u0010\u0001\u0012\u0013\n\u000fINVALID_SESSION\u0010\u0002\u0012\u0012\n\u000eINTERNAL_ERROR\u0010\u0003\u0012\u001d\n\u0019URI_MISSING_FORMAT_STRING\u0010\u0004\u0012\u001b\n\u0017URI_FORMAT_STRING_ERROR\u0010\u0005\u0012\u0011\n\rACCESS_DENIED\u0010\u0006\u0012\u0010\n\u000cRATE_LIMITED\u0010\u0007\u0012\u0015\n\u0011MISSING_PARAMETER\u0010\u0008\u0012\u0019\n\u0015PAYLOAD_PARSING_ERROR\u0010\t\u0012\u001c\n\u0018SIGNED_BODY_HASH_INVALID\u0010\n\u0012#\n\u001fSIGNED_PAYLO"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, "AD_BYTES_READ_ERROR\u0010\u000b\u0012#\n\u001fSIGNED_QUERY_STRING_PARAM_ERROR\u0010\u000c\u0012\u000f\n\u000bAPP_BLOCKED\u0010\r\u0012\u0018\n\u0014OAUTH_HEADER_MISSING\u0010\u000e\u0012\u000f\n\u000bINVALID_APP\u0010\u000f\u0012\u0018\n\u0014CACHE_ITEM_NOT_FOUND\u0010\u0010\u0012\u0014\n\u0010INVALID_ARGUMENT\u0010\u0011\u0012\u0012\n\u000eMISSING_HEADER\u0010\u0012\u0012\u001b\n\u0017UNSUPPORTED_HTTP_METHOD\u0010(\u0012\u001a\n\u0016OAUTH_VERSION_REJECTED\u00102\u0012\u001a\n\u0016OAUTH_PARAMETER_ABSENT\u00103\u0012\u001c\n\u0018OAUTH_PARAMETER_REJECTED\u00104\u0012\u001b\n\u0017OAUTH_TIMESTAMP_REFUSED\u00105\u0012#\n\u001fOAUTH_SIGNATURE_METHOD_REJECTED\u00106\u0012\u001e\n\u001aOAUTH_CONSUMER_KEY_REFUSED\u00107\u0012"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "\u001e\n\u001aOAUTH_INVALID_CONSUMER_KEY\u00108\u0012\u001f\n\u001bOAUTH_INVALID_EXPIRED_TOKEN\u00109\u0012\u001b\n\u0017OAUTH_SIGNATURE_INVALID\u0010:\u0012\u001c\n\u0018OAUTH_INVALID_USED_NONCE\u0010;\u0012\u001e\n\u001aOAUTH_TOKEN_NOT_AUTHORIZED\u0010<\u0012 \n\u001cOAUTH_NONCE_DUPLICATED_ERROR\u0010=\u0012(\n$OAUTH_AUTHTOKEN_IN_QUERYSTRING_ERROR\u0010>\u0012\u0016\n\u0012NO_MATCHING_DEVICE\u0010FB/\n+com.motorola.blur.service.cloudsvc.protocolH\u0002"

    aput-object v3, v1, v2

    .line 454
    .local v1, "descriptorData":[Ljava/lang/String;
    new-instance v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$1;

    invoke-direct {v0}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$1;-><init>()V

    .line 470
    .local v0, "assigner":Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;
    new-array v2, v4, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {v1, v2, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 474
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
    sget-object v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol;->internal_static_cloudsvc_ErrorResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol;->internal_static_cloudsvc_ErrorResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol;->internal_static_cloudsvc_ErrorResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol;->internal_static_cloudsvc_ErrorResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$FileDescriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .prologue
    .line 419
    sget-object v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static internalForceInit()V
    .locals 0

    .prologue
    .line 476
    return-void
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 0
    .param p0, "registry"    # Lcom/google/protobuf/ExtensionRegistry;

    .prologue
    .line 10
    return-void
.end method
