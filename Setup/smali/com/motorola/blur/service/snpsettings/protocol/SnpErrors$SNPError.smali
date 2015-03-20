.class public final enum Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;
.super Ljava/lang/Enum;
.source "SnpErrors.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SNPError"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

.field public static final enum ACCOUNT_NOT_FOUND:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

.field public static final enum APP_PHOTO_ALBUM_FULL:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

.field public static final enum APP_PHOTO_CORRUPT_PHOTO:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

.field public static final enum APP_PHOTO_INVALID_ALBUM:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

.field public static final enum APP_PHOTO_INVALID_PHOTO_TYPE:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

.field public static final enum APP_PHOTO_NOT_SHARED:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

.field public static final enum APP_PHOTO_PENDING_APPROVAL:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

.field public static final enum APP_PHOTO_SERVICE_NOT_SETUP:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

.field public static final enum APP_PHOTO_SHARE_NOT_SUPPORTED:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

.field public static final enum APP_PHOTO_SHARE_TIMEOUT:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

.field public static final enum APP_SNMAIL_INVALID_FOLDER:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

.field public static final enum APP_SNMAIL_INVALID_MSG_ID:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

.field public static final enum APP_SNMAIL_INVALID_MSG_RECIPIENT:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

.field public static final enum APP_SNMAIL_INVALID_THREAD_ID:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

.field public static final enum APP_SNMAIL_MISSING_MSG_BODY:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

.field public static final enum APP_SNMAIL_MSG_TOO_LONG:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

.field public static final enum APP_SNMAIL_TOO_MANY_MSGS:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

.field public static final enum DATABASE_ERROR:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

.field public static final enum INTERNAL_SERVER_ERROR:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

.field public static final enum INVALID_INPUT:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

.field public static final enum IN_PROGRESS:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

.field public static final enum LOGIN_NOT_MATCH_DB:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

.field public static final enum MISSING_PARAMETER:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

.field public static final enum MULTIPLE_ERRORS:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

.field public static final enum PROIVDER_NOT_SUPPORTED:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

.field public static final enum SERVICE_UNAVAILABLE:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

.field public static final enum SUCCESS:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

.field public static final enum SYNC_EXCEED_MAX_COUNT:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

.field public static final enum SYNC_FOUND_CHANGE:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

.field public static final enum SYNC_NO_CHANGE:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

.field public static final enum TARGET_SERVER_AUTH_FAILURE:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

.field public static final enum TARGET_SERVER_BAD_IP:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

.field public static final enum TARGET_SERVER_BANNED_CONTENT:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

.field public static final enum TARGET_SERVER_CAPTCHA_REQUIRED:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

.field public static final enum TARGET_SERVER_ERROR:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

.field public static final enum TARGET_SERVER_INVALID_API_KEY:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

.field public static final enum TARGET_SERVER_INVALID_REQ:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

.field public static final enum TARGET_SERVER_IO_ERROR:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

.field public static final enum TARGET_SERVER_LOGIN_INVALID:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

.field public static final enum TARGET_SERVER_NOT_ALLOWED:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

.field public static final enum TARGET_SERVER_REQ_LIMIT_REACHED:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

.field public static final enum TARGET_SERVER_RESOURCE_NOT_FOUND:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

.field public static final enum TARGET_SERVER_SESSION_EXPIRED:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

.field public static final enum TARGET_SERVER_SESSION_INVALID:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

.field public static final enum TARGET_SERVER_TIMEOUT:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

.field public static final enum TARGET_SERVER_UNAVAILABLE:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

.field public static final enum TARGET_SERVER_UNSUPPORTED_METHOD:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

.field public static final enum UNKNOWN_ERROR:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

.field public static final enum UNKNOWN_METHOD:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

.field public static final enum USER_EXIST_IN_DB:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

.field private static final VALUES:[Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

.field public static final enum WORK_QUEUE_FULL:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final index:I

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 13
    new-instance v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->SUCCESS:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    .line 14
    new-instance v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    const-string v1, "IN_PROGRESS"

    invoke-direct {v0, v1, v6, v6, v6}, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->IN_PROGRESS:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    .line 15
    new-instance v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    const-string v1, "UNKNOWN_ERROR"

    invoke-direct {v0, v1, v7, v7, v7}, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->UNKNOWN_ERROR:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    .line 16
    new-instance v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    const-string v1, "SERVICE_UNAVAILABLE"

    invoke-direct {v0, v1, v8, v8, v8}, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->SERVICE_UNAVAILABLE:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    .line 17
    new-instance v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    const-string v1, "UNKNOWN_METHOD"

    invoke-direct {v0, v1, v9, v9, v9}, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->UNKNOWN_METHOD:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    .line 18
    new-instance v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    const-string v1, "MULTIPLE_ERRORS"

    const/4 v2, 0x5

    const/4 v3, 0x5

    const/4 v4, 0x5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->MULTIPLE_ERRORS:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    .line 19
    new-instance v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    const-string v1, "DATABASE_ERROR"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const/4 v4, 0x6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->DATABASE_ERROR:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    .line 20
    new-instance v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    const-string v1, "INTERNAL_SERVER_ERROR"

    const/4 v2, 0x7

    const/4 v3, 0x7

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->INTERNAL_SERVER_ERROR:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    .line 21
    new-instance v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    const-string v1, "WORK_QUEUE_FULL"

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->WORK_QUEUE_FULL:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    .line 22
    new-instance v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    const-string v1, "INVALID_INPUT"

    const/16 v2, 0x9

    const/16 v3, 0x9

    const/16 v4, 0x64

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->INVALID_INPUT:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    .line 23
    new-instance v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    const-string v1, "MISSING_PARAMETER"

    const/16 v2, 0xa

    const/16 v3, 0xa

    const/16 v4, 0x65

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->MISSING_PARAMETER:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    .line 24
    new-instance v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    const-string v1, "ACCOUNT_NOT_FOUND"

    const/16 v2, 0xb

    const/16 v3, 0xb

    const/16 v4, 0x66

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->ACCOUNT_NOT_FOUND:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    .line 25
    new-instance v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    const-string v1, "PROIVDER_NOT_SUPPORTED"

    const/16 v2, 0xc

    const/16 v3, 0xc

    const/16 v4, 0x67

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->PROIVDER_NOT_SUPPORTED:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    .line 26
    new-instance v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    const-string v1, "LOGIN_NOT_MATCH_DB"

    const/16 v2, 0xd

    const/16 v3, 0xd

    const/16 v4, 0x68

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->LOGIN_NOT_MATCH_DB:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    .line 27
    new-instance v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    const-string v1, "USER_EXIST_IN_DB"

    const/16 v2, 0xe

    const/16 v3, 0xe

    const/16 v4, 0x69

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->USER_EXIST_IN_DB:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    .line 28
    new-instance v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    const-string v1, "TARGET_SERVER_ERROR"

    const/16 v2, 0xf

    const/16 v3, 0xf

    const/16 v4, 0xc8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->TARGET_SERVER_ERROR:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    .line 29
    new-instance v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    const-string v1, "TARGET_SERVER_IO_ERROR"

    const/16 v2, 0x10

    const/16 v3, 0x10

    const/16 v4, 0xc9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->TARGET_SERVER_IO_ERROR:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    .line 30
    new-instance v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    const-string v1, "TARGET_SERVER_TIMEOUT"

    const/16 v2, 0x11

    const/16 v3, 0x11

    const/16 v4, 0xca

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->TARGET_SERVER_TIMEOUT:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    .line 31
    new-instance v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    const-string v1, "TARGET_SERVER_UNAVAILABLE"

    const/16 v2, 0x12

    const/16 v3, 0x12

    const/16 v4, 0xcb

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->TARGET_SERVER_UNAVAILABLE:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    .line 32
    new-instance v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    const-string v1, "TARGET_SERVER_AUTH_FAILURE"

    const/16 v2, 0x13

    const/16 v3, 0x13

    const/16 v4, 0xcc

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->TARGET_SERVER_AUTH_FAILURE:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    .line 33
    new-instance v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    const-string v1, "TARGET_SERVER_LOGIN_INVALID"

    const/16 v2, 0x14

    const/16 v3, 0x14

    const/16 v4, 0xcd

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->TARGET_SERVER_LOGIN_INVALID:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    .line 34
    new-instance v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    const-string v1, "TARGET_SERVER_SESSION_INVALID"

    const/16 v2, 0x15

    const/16 v3, 0x15

    const/16 v4, 0xce

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->TARGET_SERVER_SESSION_INVALID:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    .line 35
    new-instance v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    const-string v1, "TARGET_SERVER_SESSION_EXPIRED"

    const/16 v2, 0x16

    const/16 v3, 0x16

    const/16 v4, 0xcf

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->TARGET_SERVER_SESSION_EXPIRED:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    .line 36
    new-instance v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    const-string v1, "TARGET_SERVER_NOT_ALLOWED"

    const/16 v2, 0x17

    const/16 v3, 0x17

    const/16 v4, 0xd0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->TARGET_SERVER_NOT_ALLOWED:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    .line 37
    new-instance v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    const-string v1, "TARGET_SERVER_REQ_LIMIT_REACHED"

    const/16 v2, 0x18

    const/16 v3, 0x18

    const/16 v4, 0xd1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->TARGET_SERVER_REQ_LIMIT_REACHED:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    .line 38
    new-instance v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    const-string v1, "TARGET_SERVER_BANNED_CONTENT"

    const/16 v2, 0x19

    const/16 v3, 0x19

    const/16 v4, 0xd2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->TARGET_SERVER_BANNED_CONTENT:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    .line 39
    new-instance v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    const-string v1, "TARGET_SERVER_UNSUPPORTED_METHOD"

    const/16 v2, 0x1a

    const/16 v3, 0x1a

    const/16 v4, 0xd3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->TARGET_SERVER_UNSUPPORTED_METHOD:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    .line 40
    new-instance v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    const-string v1, "TARGET_SERVER_BAD_IP"

    const/16 v2, 0x1b

    const/16 v3, 0x1b

    const/16 v4, 0xd4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->TARGET_SERVER_BAD_IP:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    .line 41
    new-instance v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    const-string v1, "TARGET_SERVER_INVALID_REQ"

    const/16 v2, 0x1c

    const/16 v3, 0x1c

    const/16 v4, 0xd5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->TARGET_SERVER_INVALID_REQ:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    .line 42
    new-instance v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    const-string v1, "TARGET_SERVER_INVALID_API_KEY"

    const/16 v2, 0x1d

    const/16 v3, 0x1d

    const/16 v4, 0xd6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->TARGET_SERVER_INVALID_API_KEY:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    .line 43
    new-instance v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    const-string v1, "TARGET_SERVER_RESOURCE_NOT_FOUND"

    const/16 v2, 0x1e

    const/16 v3, 0x1e

    const/16 v4, 0xd7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->TARGET_SERVER_RESOURCE_NOT_FOUND:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    .line 44
    new-instance v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    const-string v1, "TARGET_SERVER_CAPTCHA_REQUIRED"

    const/16 v2, 0x1f

    const/16 v3, 0x1f

    const/16 v4, 0xd8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->TARGET_SERVER_CAPTCHA_REQUIRED:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    .line 45
    new-instance v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    const-string v1, "SYNC_NO_CHANGE"

    const/16 v2, 0x20

    const/16 v3, 0x20

    const/16 v4, 0x12d

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->SYNC_NO_CHANGE:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    .line 46
    new-instance v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    const-string v1, "SYNC_FOUND_CHANGE"

    const/16 v2, 0x21

    const/16 v3, 0x21

    const/16 v4, 0x12e

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->SYNC_FOUND_CHANGE:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    .line 47
    new-instance v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    const-string v1, "SYNC_EXCEED_MAX_COUNT"

    const/16 v2, 0x22

    const/16 v3, 0x22

    const/16 v4, 0x12f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->SYNC_EXCEED_MAX_COUNT:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    .line 48
    new-instance v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    const-string v1, "APP_SNMAIL_MISSING_MSG_BODY"

    const/16 v2, 0x23

    const/16 v3, 0x23

    const/16 v4, 0x1f5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->APP_SNMAIL_MISSING_MSG_BODY:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    .line 49
    new-instance v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    const-string v1, "APP_SNMAIL_MSG_TOO_LONG"

    const/16 v2, 0x24

    const/16 v3, 0x24

    const/16 v4, 0x1f6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->APP_SNMAIL_MSG_TOO_LONG:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    .line 50
    new-instance v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    const-string v1, "APP_SNMAIL_TOO_MANY_MSGS"

    const/16 v2, 0x25

    const/16 v3, 0x25

    const/16 v4, 0x1f7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->APP_SNMAIL_TOO_MANY_MSGS:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    .line 51
    new-instance v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    const-string v1, "APP_SNMAIL_INVALID_MSG_ID"

    const/16 v2, 0x26

    const/16 v3, 0x26

    const/16 v4, 0x1f8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->APP_SNMAIL_INVALID_MSG_ID:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    .line 52
    new-instance v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    const-string v1, "APP_SNMAIL_INVALID_THREAD_ID"

    const/16 v2, 0x27

    const/16 v3, 0x27

    const/16 v4, 0x1f9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->APP_SNMAIL_INVALID_THREAD_ID:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    .line 53
    new-instance v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    const-string v1, "APP_SNMAIL_INVALID_FOLDER"

    const/16 v2, 0x28

    const/16 v3, 0x28

    const/16 v4, 0x1fa

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->APP_SNMAIL_INVALID_FOLDER:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    .line 54
    new-instance v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    const-string v1, "APP_SNMAIL_INVALID_MSG_RECIPIENT"

    const/16 v2, 0x29

    const/16 v3, 0x29

    const/16 v4, 0x1fb

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->APP_SNMAIL_INVALID_MSG_RECIPIENT:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    .line 55
    new-instance v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    const-string v1, "APP_PHOTO_NOT_SHARED"

    const/16 v2, 0x2a

    const/16 v3, 0x2a

    const/16 v4, 0x259

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->APP_PHOTO_NOT_SHARED:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    .line 56
    new-instance v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    const-string v1, "APP_PHOTO_SHARE_NOT_SUPPORTED"

    const/16 v2, 0x2b

    const/16 v3, 0x2b

    const/16 v4, 0x25a

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->APP_PHOTO_SHARE_NOT_SUPPORTED:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    .line 57
    new-instance v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    const-string v1, "APP_PHOTO_SHARE_TIMEOUT"

    const/16 v2, 0x2c

    const/16 v3, 0x2c

    const/16 v4, 0x25b

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->APP_PHOTO_SHARE_TIMEOUT:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    .line 58
    new-instance v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    const-string v1, "APP_PHOTO_CORRUPT_PHOTO"

    const/16 v2, 0x2d

    const/16 v3, 0x2d

    const/16 v4, 0x25c

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->APP_PHOTO_CORRUPT_PHOTO:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    .line 59
    new-instance v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    const-string v1, "APP_PHOTO_SERVICE_NOT_SETUP"

    const/16 v2, 0x2e

    const/16 v3, 0x2e

    const/16 v4, 0x25d

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->APP_PHOTO_SERVICE_NOT_SETUP:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    .line 60
    new-instance v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    const-string v1, "APP_PHOTO_INVALID_ALBUM"

    const/16 v2, 0x2f

    const/16 v3, 0x2f

    const/16 v4, 0x25e

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->APP_PHOTO_INVALID_ALBUM:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    .line 61
    new-instance v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    const-string v1, "APP_PHOTO_ALBUM_FULL"

    const/16 v2, 0x30

    const/16 v3, 0x30

    const/16 v4, 0x25f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->APP_PHOTO_ALBUM_FULL:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    .line 62
    new-instance v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    const-string v1, "APP_PHOTO_PENDING_APPROVAL"

    const/16 v2, 0x31

    const/16 v3, 0x31

    const/16 v4, 0x260

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->APP_PHOTO_PENDING_APPROVAL:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    .line 63
    new-instance v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    const-string v1, "APP_PHOTO_INVALID_PHOTO_TYPE"

    const/16 v2, 0x32

    const/16 v3, 0x32

    const/16 v4, 0x261

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->APP_PHOTO_INVALID_PHOTO_TYPE:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    .line 11
    const/16 v0, 0x33

    new-array v0, v0, [Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    sget-object v1, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->SUCCESS:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    aput-object v1, v0, v5

    sget-object v1, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->IN_PROGRESS:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    aput-object v1, v0, v6

    sget-object v1, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->UNKNOWN_ERROR:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    aput-object v1, v0, v7

    sget-object v1, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->SERVICE_UNAVAILABLE:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    aput-object v1, v0, v8

    sget-object v1, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->UNKNOWN_METHOD:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->MULTIPLE_ERRORS:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->DATABASE_ERROR:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->INTERNAL_SERVER_ERROR:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->WORK_QUEUE_FULL:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->INVALID_INPUT:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->MISSING_PARAMETER:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->ACCOUNT_NOT_FOUND:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->PROIVDER_NOT_SUPPORTED:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->LOGIN_NOT_MATCH_DB:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->USER_EXIST_IN_DB:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->TARGET_SERVER_ERROR:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->TARGET_SERVER_IO_ERROR:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->TARGET_SERVER_TIMEOUT:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->TARGET_SERVER_UNAVAILABLE:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->TARGET_SERVER_AUTH_FAILURE:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->TARGET_SERVER_LOGIN_INVALID:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->TARGET_SERVER_SESSION_INVALID:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->TARGET_SERVER_SESSION_EXPIRED:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->TARGET_SERVER_NOT_ALLOWED:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->TARGET_SERVER_REQ_LIMIT_REACHED:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->TARGET_SERVER_BANNED_CONTENT:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->TARGET_SERVER_UNSUPPORTED_METHOD:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->TARGET_SERVER_BAD_IP:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->TARGET_SERVER_INVALID_REQ:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->TARGET_SERVER_INVALID_API_KEY:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->TARGET_SERVER_RESOURCE_NOT_FOUND:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->TARGET_SERVER_CAPTCHA_REQUIRED:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->SYNC_NO_CHANGE:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->SYNC_FOUND_CHANGE:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->SYNC_EXCEED_MAX_COUNT:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->APP_SNMAIL_MISSING_MSG_BODY:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    sget-object v2, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->APP_SNMAIL_MSG_TOO_LONG:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    aput-object v2, v0, v1

    const/16 v1, 0x25

    sget-object v2, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->APP_SNMAIL_TOO_MANY_MSGS:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    aput-object v2, v0, v1

    const/16 v1, 0x26

    sget-object v2, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->APP_SNMAIL_INVALID_MSG_ID:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    aput-object v2, v0, v1

    const/16 v1, 0x27

    sget-object v2, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->APP_SNMAIL_INVALID_THREAD_ID:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    aput-object v2, v0, v1

    const/16 v1, 0x28

    sget-object v2, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->APP_SNMAIL_INVALID_FOLDER:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    aput-object v2, v0, v1

    const/16 v1, 0x29

    sget-object v2, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->APP_SNMAIL_INVALID_MSG_RECIPIENT:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    sget-object v2, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->APP_PHOTO_NOT_SHARED:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    sget-object v2, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->APP_PHOTO_SHARE_NOT_SUPPORTED:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    sget-object v2, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->APP_PHOTO_SHARE_TIMEOUT:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    sget-object v2, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->APP_PHOTO_CORRUPT_PHOTO:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    sget-object v2, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->APP_PHOTO_SERVICE_NOT_SETUP:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    sget-object v2, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->APP_PHOTO_INVALID_ALBUM:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    aput-object v2, v0, v1

    const/16 v1, 0x30

    sget-object v2, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->APP_PHOTO_ALBUM_FULL:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    aput-object v2, v0, v1

    const/16 v1, 0x31

    sget-object v2, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->APP_PHOTO_PENDING_APPROVAL:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    aput-object v2, v0, v1

    const/16 v1, 0x32

    sget-object v2, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->APP_PHOTO_INVALID_PHOTO_TYPE:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->$VALUES:[Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    .line 131
    new-instance v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError$1;

    invoke-direct {v0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError$1;-><init>()V

    sput-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 151
    const/16 v0, 0x33

    new-array v0, v0, [Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    sget-object v1, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->SUCCESS:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    aput-object v1, v0, v5

    sget-object v1, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->IN_PROGRESS:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    aput-object v1, v0, v6

    sget-object v1, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->UNKNOWN_ERROR:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    aput-object v1, v0, v7

    sget-object v1, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->SERVICE_UNAVAILABLE:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    aput-object v1, v0, v8

    sget-object v1, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->UNKNOWN_METHOD:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->MULTIPLE_ERRORS:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->DATABASE_ERROR:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->INTERNAL_SERVER_ERROR:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->WORK_QUEUE_FULL:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->INVALID_INPUT:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->MISSING_PARAMETER:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->ACCOUNT_NOT_FOUND:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->PROIVDER_NOT_SUPPORTED:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->LOGIN_NOT_MATCH_DB:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->USER_EXIST_IN_DB:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->TARGET_SERVER_ERROR:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->TARGET_SERVER_IO_ERROR:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->TARGET_SERVER_TIMEOUT:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->TARGET_SERVER_UNAVAILABLE:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->TARGET_SERVER_AUTH_FAILURE:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->TARGET_SERVER_LOGIN_INVALID:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->TARGET_SERVER_SESSION_INVALID:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->TARGET_SERVER_SESSION_EXPIRED:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->TARGET_SERVER_NOT_ALLOWED:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->TARGET_SERVER_REQ_LIMIT_REACHED:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->TARGET_SERVER_BANNED_CONTENT:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->TARGET_SERVER_UNSUPPORTED_METHOD:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->TARGET_SERVER_BAD_IP:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->TARGET_SERVER_INVALID_REQ:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->TARGET_SERVER_INVALID_API_KEY:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->TARGET_SERVER_RESOURCE_NOT_FOUND:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->TARGET_SERVER_CAPTCHA_REQUIRED:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->SYNC_NO_CHANGE:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->SYNC_FOUND_CHANGE:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->SYNC_EXCEED_MAX_COUNT:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->APP_SNMAIL_MISSING_MSG_BODY:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    sget-object v2, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->APP_SNMAIL_MSG_TOO_LONG:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    aput-object v2, v0, v1

    const/16 v1, 0x25

    sget-object v2, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->APP_SNMAIL_TOO_MANY_MSGS:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    aput-object v2, v0, v1

    const/16 v1, 0x26

    sget-object v2, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->APP_SNMAIL_INVALID_MSG_ID:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    aput-object v2, v0, v1

    const/16 v1, 0x27

    sget-object v2, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->APP_SNMAIL_INVALID_THREAD_ID:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    aput-object v2, v0, v1

    const/16 v1, 0x28

    sget-object v2, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->APP_SNMAIL_INVALID_FOLDER:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    aput-object v2, v0, v1

    const/16 v1, 0x29

    sget-object v2, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->APP_SNMAIL_INVALID_MSG_RECIPIENT:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    sget-object v2, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->APP_PHOTO_NOT_SHARED:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    sget-object v2, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->APP_PHOTO_SHARE_NOT_SUPPORTED:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    sget-object v2, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->APP_PHOTO_SHARE_TIMEOUT:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    sget-object v2, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->APP_PHOTO_CORRUPT_PHOTO:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    sget-object v2, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->APP_PHOTO_SERVICE_NOT_SETUP:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    sget-object v2, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->APP_PHOTO_INVALID_ALBUM:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    aput-object v2, v0, v1

    const/16 v1, 0x30

    sget-object v2, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->APP_PHOTO_ALBUM_FULL:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    aput-object v2, v0, v1

    const/16 v1, 0x31

    sget-object v2, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->APP_PHOTO_PENDING_APPROVAL:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    aput-object v2, v0, v1

    const/16 v1, 0x32

    sget-object v2, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->APP_PHOTO_INVALID_PHOTO_TYPE:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->VALUES:[Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    .line 170
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 171
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .param p3, "index"    # I
    .param p4, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 164
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 165
    iput p3, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->index:I

    .line 166
    iput p4, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->value:I

    .line 167
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .prologue
    .line 148
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getEnumTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumDescriptor;

    return-object v0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;",
            ">;"
        }
    .end annotation

    .prologue
    .line 128
    sget-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 70
    sparse-switch p0, :sswitch_data_0

    .line 122
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 71
    :sswitch_0
    sget-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->SUCCESS:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    goto :goto_0

    .line 72
    :sswitch_1
    sget-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->IN_PROGRESS:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    goto :goto_0

    .line 73
    :sswitch_2
    sget-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->UNKNOWN_ERROR:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    goto :goto_0

    .line 74
    :sswitch_3
    sget-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->SERVICE_UNAVAILABLE:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    goto :goto_0

    .line 75
    :sswitch_4
    sget-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->UNKNOWN_METHOD:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    goto :goto_0

    .line 76
    :sswitch_5
    sget-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->MULTIPLE_ERRORS:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    goto :goto_0

    .line 77
    :sswitch_6
    sget-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->DATABASE_ERROR:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    goto :goto_0

    .line 78
    :sswitch_7
    sget-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->INTERNAL_SERVER_ERROR:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    goto :goto_0

    .line 79
    :sswitch_8
    sget-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->WORK_QUEUE_FULL:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    goto :goto_0

    .line 80
    :sswitch_9
    sget-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->INVALID_INPUT:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    goto :goto_0

    .line 81
    :sswitch_a
    sget-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->MISSING_PARAMETER:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    goto :goto_0

    .line 82
    :sswitch_b
    sget-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->ACCOUNT_NOT_FOUND:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    goto :goto_0

    .line 83
    :sswitch_c
    sget-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->PROIVDER_NOT_SUPPORTED:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    goto :goto_0

    .line 84
    :sswitch_d
    sget-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->LOGIN_NOT_MATCH_DB:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    goto :goto_0

    .line 85
    :sswitch_e
    sget-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->USER_EXIST_IN_DB:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    goto :goto_0

    .line 86
    :sswitch_f
    sget-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->TARGET_SERVER_ERROR:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    goto :goto_0

    .line 87
    :sswitch_10
    sget-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->TARGET_SERVER_IO_ERROR:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    goto :goto_0

    .line 88
    :sswitch_11
    sget-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->TARGET_SERVER_TIMEOUT:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    goto :goto_0

    .line 89
    :sswitch_12
    sget-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->TARGET_SERVER_UNAVAILABLE:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    goto :goto_0

    .line 90
    :sswitch_13
    sget-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->TARGET_SERVER_AUTH_FAILURE:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    goto :goto_0

    .line 91
    :sswitch_14
    sget-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->TARGET_SERVER_LOGIN_INVALID:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    goto :goto_0

    .line 92
    :sswitch_15
    sget-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->TARGET_SERVER_SESSION_INVALID:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    goto :goto_0

    .line 93
    :sswitch_16
    sget-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->TARGET_SERVER_SESSION_EXPIRED:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    goto :goto_0

    .line 94
    :sswitch_17
    sget-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->TARGET_SERVER_NOT_ALLOWED:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    goto :goto_0

    .line 95
    :sswitch_18
    sget-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->TARGET_SERVER_REQ_LIMIT_REACHED:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    goto :goto_0

    .line 96
    :sswitch_19
    sget-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->TARGET_SERVER_BANNED_CONTENT:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    goto :goto_0

    .line 97
    :sswitch_1a
    sget-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->TARGET_SERVER_UNSUPPORTED_METHOD:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    goto :goto_0

    .line 98
    :sswitch_1b
    sget-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->TARGET_SERVER_BAD_IP:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    goto :goto_0

    .line 99
    :sswitch_1c
    sget-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->TARGET_SERVER_INVALID_REQ:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    goto :goto_0

    .line 100
    :sswitch_1d
    sget-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->TARGET_SERVER_INVALID_API_KEY:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    goto :goto_0

    .line 101
    :sswitch_1e
    sget-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->TARGET_SERVER_RESOURCE_NOT_FOUND:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    goto :goto_0

    .line 102
    :sswitch_1f
    sget-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->TARGET_SERVER_CAPTCHA_REQUIRED:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    goto :goto_0

    .line 103
    :sswitch_20
    sget-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->SYNC_NO_CHANGE:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    goto :goto_0

    .line 104
    :sswitch_21
    sget-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->SYNC_FOUND_CHANGE:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    goto :goto_0

    .line 105
    :sswitch_22
    sget-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->SYNC_EXCEED_MAX_COUNT:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    goto :goto_0

    .line 106
    :sswitch_23
    sget-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->APP_SNMAIL_MISSING_MSG_BODY:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    goto :goto_0

    .line 107
    :sswitch_24
    sget-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->APP_SNMAIL_MSG_TOO_LONG:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    goto :goto_0

    .line 108
    :sswitch_25
    sget-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->APP_SNMAIL_TOO_MANY_MSGS:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    goto :goto_0

    .line 109
    :sswitch_26
    sget-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->APP_SNMAIL_INVALID_MSG_ID:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    goto :goto_0

    .line 110
    :sswitch_27
    sget-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->APP_SNMAIL_INVALID_THREAD_ID:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    goto :goto_0

    .line 111
    :sswitch_28
    sget-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->APP_SNMAIL_INVALID_FOLDER:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    goto :goto_0

    .line 112
    :sswitch_29
    sget-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->APP_SNMAIL_INVALID_MSG_RECIPIENT:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    goto :goto_0

    .line 113
    :sswitch_2a
    sget-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->APP_PHOTO_NOT_SHARED:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    goto/16 :goto_0

    .line 114
    :sswitch_2b
    sget-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->APP_PHOTO_SHARE_NOT_SUPPORTED:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    goto/16 :goto_0

    .line 115
    :sswitch_2c
    sget-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->APP_PHOTO_SHARE_TIMEOUT:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    goto/16 :goto_0

    .line 116
    :sswitch_2d
    sget-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->APP_PHOTO_CORRUPT_PHOTO:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    goto/16 :goto_0

    .line 117
    :sswitch_2e
    sget-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->APP_PHOTO_SERVICE_NOT_SETUP:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    goto/16 :goto_0

    .line 118
    :sswitch_2f
    sget-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->APP_PHOTO_INVALID_ALBUM:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    goto/16 :goto_0

    .line 119
    :sswitch_30
    sget-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->APP_PHOTO_ALBUM_FULL:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    goto/16 :goto_0

    .line 120
    :sswitch_31
    sget-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->APP_PHOTO_PENDING_APPROVAL:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    goto/16 :goto_0

    .line 121
    :sswitch_32
    sget-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->APP_PHOTO_INVALID_PHOTO_TYPE:Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    goto/16 :goto_0

    .line 70
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x64 -> :sswitch_9
        0x65 -> :sswitch_a
        0x66 -> :sswitch_b
        0x67 -> :sswitch_c
        0x68 -> :sswitch_d
        0x69 -> :sswitch_e
        0xc8 -> :sswitch_f
        0xc9 -> :sswitch_10
        0xca -> :sswitch_11
        0xcb -> :sswitch_12
        0xcc -> :sswitch_13
        0xcd -> :sswitch_14
        0xce -> :sswitch_15
        0xcf -> :sswitch_16
        0xd0 -> :sswitch_17
        0xd1 -> :sswitch_18
        0xd2 -> :sswitch_19
        0xd3 -> :sswitch_1a
        0xd4 -> :sswitch_1b
        0xd5 -> :sswitch_1c
        0xd6 -> :sswitch_1d
        0xd7 -> :sswitch_1e
        0xd8 -> :sswitch_1f
        0x12d -> :sswitch_20
        0x12e -> :sswitch_21
        0x12f -> :sswitch_22
        0x1f5 -> :sswitch_23
        0x1f6 -> :sswitch_24
        0x1f7 -> :sswitch_25
        0x1f8 -> :sswitch_26
        0x1f9 -> :sswitch_27
        0x1fa -> :sswitch_28
        0x1fb -> :sswitch_29
        0x259 -> :sswitch_2a
        0x25a -> :sswitch_2b
        0x25b -> :sswitch_2c
        0x25c -> :sswitch_2d
        0x25d -> :sswitch_2e
        0x25e -> :sswitch_2f
        0x25f -> :sswitch_30
        0x260 -> :sswitch_31
        0x261 -> :sswitch_32
    .end sparse-switch
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;
    .locals 2
    .param p0, "desc"    # Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 157
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EnumValueDescriptor is not for this type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_0
    sget-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->VALUES:[Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 11
    const-class v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    return-object v0
.end method

.method public static values()[Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->$VALUES:[Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .prologue
    .line 144
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .prologue
    .line 140
    invoke-static {}, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
