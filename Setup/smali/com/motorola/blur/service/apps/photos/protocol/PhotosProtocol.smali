.class public final Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol;
.super Ljava/lang/Object;
.source "PhotosProtocol.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse;,
        Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static internal_static_PhotoResponse_Error_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_PhotoResponse_Error_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_PhotoResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_PhotoResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_PhotoSharingStatus_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_PhotoSharingStatus_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1045
    const/4 v2, 0x3

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "\n\u0015photos_protocol.proto\"\u00a2\u0005\n\u0012PhotoSharingStatus\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012\u000f\n\u0007photoId\u0018\u0002 \u0002(\u0005\u0012(\n\u0005state\u0018\u0003 \u0002(\u000e2\u0019.PhotoSharingStatus.State\u0012\u0010\n\u0008provider\u0018\u0004 \u0001(\t\"\u00ad\u0004\n\u0005State\u0012\u0014\n\u0010SUCCESS_COMPLETE\u0010\u0000\u0012\u000b\n\u0007PENDING\u0010\u0001\u0012\u0011\n\rERROR_UNKNOWN\u0010d\u0012\u001d\n\u0019ERROR_SERVICE_UNAVAILABLE\u0010e\u0012\u0017\n\u0013ERROR_DISALLOWED_IP\u0010f\u0012\u0019\n\u0015ERROR_INVALID_REQUEST\u0010g\u0012\u0019\n\u0015ERROR_TOO_MANY_QUEUED\u0010h\u0012\u0011\n\rERROR_TIMEOUT\u0010i\u0012\u0015\n\u0011ERROR_SNP_GAVE_UP\u0010j\u0012\u001a\n\u0015ERROR_INVALID_USER_ID\u0010\u00c8\u0001\u0012\u0018\n\u0013ERROR_INVALI"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, "D_LOGIN\u0010\u00c9\u0001\u0012!\n\u001cERROR_INVALID_IMAGE_CONTENTS\u0010\u00ac\u0002\u0012\u001d\n\u0018ERROR_INVALID_IMAGE_TYPE\u0010\u00ad\u0002\u0012\u0018\n\u0013ERROR_MISSING_IMAGE\u0010\u00ae\u0002\u0012\u001c\n\u0017ERROR_MAX_SIZE_EXCEEDED\u0010\u00af\u0002\u0012\u001f\n\u001aERROR_DESCRIPTION_TOO_LONG\u0010\u0090\u0003\u0012\u001d\n\u0018ERROR_MISSING_ALBUM_NAME\u0010\u00f4\u0003\u0012\u0018\n\u0013ERROR_PRIVATE_ALBUM\u0010\u00f5\u0003\u0012\u001b\n\u0016ERROR_INVALID_ALBUM_ID\u0010\u00f6\u0003\u0012\u0015\n\u0010ERROR_ALBUM_FULL\u0010\u00f7\u0003\u0012\u0018\n\u0013ERROR_ALBUM_TOO_BIG\u0010\u00f8\u0003\"\u00e3\u0002\n\rPhotoResponse\u0012\u000f\n\u0007version\u0018\u0001 \u0002(\r\u0012#\n\u0005error\u0018\u0002 \u0001(\u000b2\u0014.PhotoResponse.Error\u0012#\n\u0006status\u0018\u0003 \u0003(\u000b2\u0013.PhotoShar"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "ingStatus\u001a\u00f6\u0001\n\u0005Error\u0012\'\n\u0004type\u0018\u0001 \u0002(\u000e2\u0019.PhotoResponse.Error.Type\"\u00c3\u0001\n\u0004Type\u0012\u0015\n\u0011INVALID_ARGUMENTS\u0010\u0000\u0012\u0017\n\u0013REQUEST_PARSE_ERROR\u0010\u0001\u0012\u0012\n\u000eINTERNAL_ERROR\u0010\u0002\u0012\u0017\n\u0013SERVICE_UNAVAILABLE\u0010\u0003\u0012\u000e\n\nAUTH_ERROR\u0010\u0004\u0012\u000f\n\u000bINVALID_PID\u0010d\u0012\u0011\n\rMISSING_PHOTO\u0010e\u0012\u0017\n\u0013PHOTO_STORAGE_ERROR\u0010f\u0012\u0011\n\rSHARING_ERROR\u0010gB2\n.com.motorola.blur.service.apps.photos.protocolH\u0002"

    aput-object v3, v1, v2

    .line 1075
    .local v1, "descriptorData":[Ljava/lang/String;
    new-instance v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$1;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$1;-><init>()V

    .line 1107
    .local v0, "assigner":Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;
    new-array v2, v4, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {v1, v2, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 1111
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
    sget-object v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol;->internal_static_PhotoSharingStatus_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol;->internal_static_PhotoSharingStatus_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol;->internal_static_PhotoSharingStatus_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol;->internal_static_PhotoSharingStatus_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$1300()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol;->internal_static_PhotoResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol;->internal_static_PhotoResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$1400()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol;->internal_static_PhotoResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol;->internal_static_PhotoResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$1500()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol;->internal_static_PhotoResponse_Error_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$Descriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol;->internal_static_PhotoResponse_Error_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$1600()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol;->internal_static_PhotoResponse_Error_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol;->internal_static_PhotoResponse_Error_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object p0
.end method

.method static synthetic access$3002(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$FileDescriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .prologue
    .line 1040
    sget-object v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static internalForceInit()V
    .locals 0

    .prologue
    .line 1113
    return-void
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 0
    .param p0, "registry"    # Lcom/google/protobuf/ExtensionRegistry;

    .prologue
    .line 10
    return-void
.end method
