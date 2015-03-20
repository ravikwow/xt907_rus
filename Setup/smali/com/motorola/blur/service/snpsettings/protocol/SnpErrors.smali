.class public final Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors;
.super Ljava/lang/Object;
.source "SnpErrors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 184
    const/4 v2, 0x4

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "\n\u0010snp_errors.proto*\u00d1\u000b\n\u0008SNPError\u0012\u000b\n\u0007SUCCESS\u0010\u0000\u0012\u000f\n\u000bIN_PROGRESS\u0010\u0001\u0012\u0011\n\rUNKNOWN_ERROR\u0010\u0002\u0012\u0017\n\u0013SERVICE_UNAVAILABLE\u0010\u0003\u0012\u0012\n\u000eUNKNOWN_METHOD\u0010\u0004\u0012\u0013\n\u000fMULTIPLE_ERRORS\u0010\u0005\u0012\u0012\n\u000eDATABASE_ERROR\u0010\u0006\u0012\u0019\n\u0015INTERNAL_SERVER_ERROR\u0010\u0007\u0012\u0013\n\u000fWORK_QUEUE_FULL\u0010\u0008\u0012\u0011\n\rINVALID_INPUT\u0010d\u0012\u0015\n\u0011MISSING_PARAMETER\u0010e\u0012\u0015\n\u0011ACCOUNT_NOT_FOUND\u0010f\u0012\u001a\n\u0016PROIVDER_NOT_SUPPORTED\u0010g\u0012\u0016\n\u0012LOGIN_NOT_MATCH_DB\u0010h\u0012\u0014\n\u0010USER_EXIST_IN_DB\u0010i\u0012\u0018\n\u0013TARGET_SERVER_ERROR\u0010\u00c8\u0001\u0012\u001b\n\u0016TARGET_SERVER_IO_"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, "ERROR\u0010\u00c9\u0001\u0012\u001a\n\u0015TARGET_SERVER_TIMEOUT\u0010\u00ca\u0001\u0012\u001e\n\u0019TARGET_SERVER_UNAVAILABLE\u0010\u00cb\u0001\u0012\u001f\n\u001aTARGET_SERVER_AUTH_FAILURE\u0010\u00cc\u0001\u0012 \n\u001bTARGET_SERVER_LOGIN_INVALID\u0010\u00cd\u0001\u0012\"\n\u001dTARGET_SERVER_SESSION_INVALID\u0010\u00ce\u0001\u0012\"\n\u001dTARGET_SERVER_SESSION_EXPIRED\u0010\u00cf\u0001\u0012\u001e\n\u0019TARGET_SERVER_NOT_ALLOWED\u0010\u00d0\u0001\u0012$\n\u001fTARGET_SERVER_REQ_LIMIT_REACHED\u0010\u00d1\u0001\u0012!\n\u001cTARGET_SERVER_BANNED_CONTENT\u0010\u00d2\u0001\u0012%\n TARGET_SERVER_UNSUPPORTED_METHOD\u0010\u00d3\u0001\u0012\u0019\n\u0014TARGET_SERVER_BAD_IP\u0010\u00d4\u0001\u0012\u001e\n\u0019TARGET_SERVER_INVA"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "LID_REQ\u0010\u00d5\u0001\u0012\"\n\u001dTARGET_SERVER_INVALID_API_KEY\u0010\u00d6\u0001\u0012%\n TARGET_SERVER_RESOURCE_NOT_FOUND\u0010\u00d7\u0001\u0012#\n\u001eTARGET_SERVER_CAPTCHA_REQUIRED\u0010\u00d8\u0001\u0012\u0013\n\u000eSYNC_NO_CHANGE\u0010\u00ad\u0002\u0012\u0016\n\u0011SYNC_FOUND_CHANGE\u0010\u00ae\u0002\u0012\u001a\n\u0015SYNC_EXCEED_MAX_COUNT\u0010\u00af\u0002\u0012 \n\u001bAPP_SNMAIL_MISSING_MSG_BODY\u0010\u00f5\u0003\u0012\u001c\n\u0017APP_SNMAIL_MSG_TOO_LONG\u0010\u00f6\u0003\u0012\u001d\n\u0018APP_SNMAIL_TOO_MANY_MSGS\u0010\u00f7\u0003\u0012\u001e\n\u0019APP_SNMAIL_INVALID_MSG_ID\u0010\u00f8\u0003\u0012!\n\u001cAPP_SNMAIL_INVALID_THREAD_ID\u0010\u00f9\u0003\u0012\u001e\n\u0019APP_SNMAIL_INVALID_FOLDER\u0010\u00fa\u0003\u0012%\n APP_SNM"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "AIL_INVALID_MSG_RECIPIENT\u0010\u00fb\u0003\u0012\u0019\n\u0014APP_PHOTO_NOT_SHARED\u0010\u00d9\u0004\u0012\"\n\u001dAPP_PHOTO_SHARE_NOT_SUPPORTED\u0010\u00da\u0004\u0012\u001c\n\u0017APP_PHOTO_SHARE_TIMEOUT\u0010\u00db\u0004\u0012\u001c\n\u0017APP_PHOTO_CORRUPT_PHOTO\u0010\u00dc\u0004\u0012 \n\u001bAPP_PHOTO_SERVICE_NOT_SETUP\u0010\u00dd\u0004\u0012\u001c\n\u0017APP_PHOTO_INVALID_ALBUM\u0010\u00de\u0004\u0012\u0019\n\u0014APP_PHOTO_ALBUM_FULL\u0010\u00df\u0004\u0012\u001f\n\u001aAPP_PHOTO_PENDING_APPROVAL\u0010\u00e0\u0004\u0012!\n\u001cAPP_PHOTO_INVALID_PHOTO_TYPE\u0010\u00e1\u0004B2\n.com.motorola.blur.service.snpsettings.protocolH\u0002"

    aput-object v3, v1, v2

    .line 226
    .local v1, "descriptorData":[Ljava/lang/String;
    new-instance v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$1;

    invoke-direct {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$1;-><init>()V

    .line 234
    .local v0, "assigner":Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;
    new-array v2, v4, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {v1, v2, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 238
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/Descriptors$FileDescriptor;

    .prologue
    .line 6
    sput-object p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .prologue
    .line 179
    sget-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static internalForceInit()V
    .locals 0

    .prologue
    .line 240
    return-void
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 0
    .param p0, "registry"    # Lcom/google/protobuf/ExtensionRegistry;

    .prologue
    .line 10
    return-void
.end method
