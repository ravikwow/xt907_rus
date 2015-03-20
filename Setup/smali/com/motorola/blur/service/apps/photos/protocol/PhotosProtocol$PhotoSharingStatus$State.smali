.class public final enum Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;
.super Ljava/lang/Enum;
.source "PhotosProtocol.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

.field public static final enum ERROR_ALBUM_FULL:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

.field public static final enum ERROR_ALBUM_TOO_BIG:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

.field public static final enum ERROR_DESCRIPTION_TOO_LONG:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

.field public static final enum ERROR_DISALLOWED_IP:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

.field public static final enum ERROR_INVALID_ALBUM_ID:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

.field public static final enum ERROR_INVALID_IMAGE_CONTENTS:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

.field public static final enum ERROR_INVALID_IMAGE_TYPE:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

.field public static final enum ERROR_INVALID_LOGIN:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

.field public static final enum ERROR_INVALID_REQUEST:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

.field public static final enum ERROR_INVALID_USER_ID:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

.field public static final enum ERROR_MAX_SIZE_EXCEEDED:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

.field public static final enum ERROR_MISSING_ALBUM_NAME:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

.field public static final enum ERROR_MISSING_IMAGE:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

.field public static final enum ERROR_PRIVATE_ALBUM:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

.field public static final enum ERROR_SERVICE_UNAVAILABLE:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

.field public static final enum ERROR_SNP_GAVE_UP:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

.field public static final enum ERROR_TIMEOUT:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

.field public static final enum ERROR_TOO_MANY_QUEUED:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

.field public static final enum ERROR_UNKNOWN:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

.field public static final enum PENDING:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

.field public static final enum SUCCESS_COMPLETE:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

.field private static final VALUES:[Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;",
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

    .line 40
    new-instance v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    const-string v1, "SUCCESS_COMPLETE"

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;->SUCCESS_COMPLETE:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    .line 41
    new-instance v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    const-string v1, "PENDING"

    invoke-direct {v0, v1, v6, v6, v6}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;->PENDING:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    .line 42
    new-instance v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    const-string v1, "ERROR_UNKNOWN"

    const/16 v2, 0x64

    invoke-direct {v0, v1, v7, v7, v2}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;->ERROR_UNKNOWN:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    .line 43
    new-instance v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    const-string v1, "ERROR_SERVICE_UNAVAILABLE"

    const/16 v2, 0x65

    invoke-direct {v0, v1, v8, v8, v2}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;->ERROR_SERVICE_UNAVAILABLE:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    .line 44
    new-instance v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    const-string v1, "ERROR_DISALLOWED_IP"

    const/16 v2, 0x66

    invoke-direct {v0, v1, v9, v9, v2}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;->ERROR_DISALLOWED_IP:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    .line 45
    new-instance v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    const-string v1, "ERROR_INVALID_REQUEST"

    const/4 v2, 0x5

    const/4 v3, 0x5

    const/16 v4, 0x67

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;->ERROR_INVALID_REQUEST:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    .line 46
    new-instance v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    const-string v1, "ERROR_TOO_MANY_QUEUED"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const/16 v4, 0x68

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;->ERROR_TOO_MANY_QUEUED:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    .line 47
    new-instance v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    const-string v1, "ERROR_TIMEOUT"

    const/4 v2, 0x7

    const/4 v3, 0x7

    const/16 v4, 0x69

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;->ERROR_TIMEOUT:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    .line 48
    new-instance v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    const-string v1, "ERROR_SNP_GAVE_UP"

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x6a

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;->ERROR_SNP_GAVE_UP:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    .line 49
    new-instance v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    const-string v1, "ERROR_INVALID_USER_ID"

    const/16 v2, 0x9

    const/16 v3, 0x9

    const/16 v4, 0xc8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;->ERROR_INVALID_USER_ID:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    .line 50
    new-instance v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    const-string v1, "ERROR_INVALID_LOGIN"

    const/16 v2, 0xa

    const/16 v3, 0xa

    const/16 v4, 0xc9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;->ERROR_INVALID_LOGIN:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    .line 51
    new-instance v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    const-string v1, "ERROR_INVALID_IMAGE_CONTENTS"

    const/16 v2, 0xb

    const/16 v3, 0xb

    const/16 v4, 0x12c

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;->ERROR_INVALID_IMAGE_CONTENTS:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    .line 52
    new-instance v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    const-string v1, "ERROR_INVALID_IMAGE_TYPE"

    const/16 v2, 0xc

    const/16 v3, 0xc

    const/16 v4, 0x12d

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;->ERROR_INVALID_IMAGE_TYPE:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    .line 53
    new-instance v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    const-string v1, "ERROR_MISSING_IMAGE"

    const/16 v2, 0xd

    const/16 v3, 0xd

    const/16 v4, 0x12e

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;->ERROR_MISSING_IMAGE:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    .line 54
    new-instance v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    const-string v1, "ERROR_MAX_SIZE_EXCEEDED"

    const/16 v2, 0xe

    const/16 v3, 0xe

    const/16 v4, 0x12f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;->ERROR_MAX_SIZE_EXCEEDED:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    .line 55
    new-instance v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    const-string v1, "ERROR_DESCRIPTION_TOO_LONG"

    const/16 v2, 0xf

    const/16 v3, 0xf

    const/16 v4, 0x190

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;->ERROR_DESCRIPTION_TOO_LONG:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    .line 56
    new-instance v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    const-string v1, "ERROR_MISSING_ALBUM_NAME"

    const/16 v2, 0x10

    const/16 v3, 0x10

    const/16 v4, 0x1f4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;->ERROR_MISSING_ALBUM_NAME:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    .line 57
    new-instance v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    const-string v1, "ERROR_PRIVATE_ALBUM"

    const/16 v2, 0x11

    const/16 v3, 0x11

    const/16 v4, 0x1f5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;->ERROR_PRIVATE_ALBUM:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    .line 58
    new-instance v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    const-string v1, "ERROR_INVALID_ALBUM_ID"

    const/16 v2, 0x12

    const/16 v3, 0x12

    const/16 v4, 0x1f6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;->ERROR_INVALID_ALBUM_ID:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    .line 59
    new-instance v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    const-string v1, "ERROR_ALBUM_FULL"

    const/16 v2, 0x13

    const/16 v3, 0x13

    const/16 v4, 0x1f7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;->ERROR_ALBUM_FULL:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    .line 60
    new-instance v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    const-string v1, "ERROR_ALBUM_TOO_BIG"

    const/16 v2, 0x14

    const/16 v3, 0x14

    const/16 v4, 0x1f8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;->ERROR_ALBUM_TOO_BIG:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    .line 38
    const/16 v0, 0x15

    new-array v0, v0, [Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    sget-object v1, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;->SUCCESS_COMPLETE:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;->PENDING:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;->ERROR_UNKNOWN:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    aput-object v1, v0, v7

    sget-object v1, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;->ERROR_SERVICE_UNAVAILABLE:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    aput-object v1, v0, v8

    sget-object v1, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;->ERROR_DISALLOWED_IP:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;->ERROR_INVALID_REQUEST:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;->ERROR_TOO_MANY_QUEUED:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;->ERROR_TIMEOUT:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;->ERROR_SNP_GAVE_UP:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;->ERROR_INVALID_USER_ID:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;->ERROR_INVALID_LOGIN:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;->ERROR_INVALID_IMAGE_CONTENTS:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;->ERROR_INVALID_IMAGE_TYPE:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;->ERROR_MISSING_IMAGE:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;->ERROR_MAX_SIZE_EXCEEDED:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;->ERROR_DESCRIPTION_TOO_LONG:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;->ERROR_MISSING_ALBUM_NAME:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;->ERROR_PRIVATE_ALBUM:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;->ERROR_INVALID_ALBUM_ID:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;->ERROR_ALBUM_FULL:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;->ERROR_ALBUM_TOO_BIG:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;->$VALUES:[Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    .line 98
    new-instance v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State$1;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State$1;-><init>()V

    sput-object v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 118
    const/16 v0, 0x15

    new-array v0, v0, [Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    sget-object v1, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;->SUCCESS_COMPLETE:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;->PENDING:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;->ERROR_UNKNOWN:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    aput-object v1, v0, v7

    sget-object v1, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;->ERROR_SERVICE_UNAVAILABLE:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    aput-object v1, v0, v8

    sget-object v1, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;->ERROR_DISALLOWED_IP:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;->ERROR_INVALID_REQUEST:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;->ERROR_TOO_MANY_QUEUED:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;->ERROR_TIMEOUT:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;->ERROR_SNP_GAVE_UP:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;->ERROR_INVALID_USER_ID:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;->ERROR_INVALID_LOGIN:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;->ERROR_INVALID_IMAGE_CONTENTS:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;->ERROR_INVALID_IMAGE_TYPE:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;->ERROR_MISSING_IMAGE:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;->ERROR_MAX_SIZE_EXCEEDED:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;->ERROR_DESCRIPTION_TOO_LONG:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;->ERROR_MISSING_ALBUM_NAME:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;->ERROR_PRIVATE_ALBUM:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;->ERROR_INVALID_ALBUM_ID:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;->ERROR_ALBUM_FULL:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;->ERROR_ALBUM_TOO_BIG:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;->VALUES:[Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    .line 137
    invoke-static {}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 138
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
    .line 131
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 132
    iput p3, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;->index:I

    .line 133
    iput p4, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;->value:I

    .line 134
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .prologue
    .line 115
    invoke-static {}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$Descriptor;->getEnumTypes()Ljava/util/List;

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
            "Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    sget-object v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 67
    sparse-switch p0, :sswitch_data_0

    .line 89
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 68
    :sswitch_0
    sget-object v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;->SUCCESS_COMPLETE:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    goto :goto_0

    .line 69
    :sswitch_1
    sget-object v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;->PENDING:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    goto :goto_0

    .line 70
    :sswitch_2
    sget-object v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;->ERROR_UNKNOWN:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    goto :goto_0

    .line 71
    :sswitch_3
    sget-object v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;->ERROR_SERVICE_UNAVAILABLE:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    goto :goto_0

    .line 72
    :sswitch_4
    sget-object v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;->ERROR_DISALLOWED_IP:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    goto :goto_0

    .line 73
    :sswitch_5
    sget-object v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;->ERROR_INVALID_REQUEST:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    goto :goto_0

    .line 74
    :sswitch_6
    sget-object v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;->ERROR_TOO_MANY_QUEUED:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    goto :goto_0

    .line 75
    :sswitch_7
    sget-object v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;->ERROR_TIMEOUT:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    goto :goto_0

    .line 76
    :sswitch_8
    sget-object v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;->ERROR_SNP_GAVE_UP:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    goto :goto_0

    .line 77
    :sswitch_9
    sget-object v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;->ERROR_INVALID_USER_ID:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    goto :goto_0

    .line 78
    :sswitch_a
    sget-object v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;->ERROR_INVALID_LOGIN:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    goto :goto_0

    .line 79
    :sswitch_b
    sget-object v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;->ERROR_INVALID_IMAGE_CONTENTS:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    goto :goto_0

    .line 80
    :sswitch_c
    sget-object v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;->ERROR_INVALID_IMAGE_TYPE:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    goto :goto_0

    .line 81
    :sswitch_d
    sget-object v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;->ERROR_MISSING_IMAGE:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    goto :goto_0

    .line 82
    :sswitch_e
    sget-object v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;->ERROR_MAX_SIZE_EXCEEDED:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    goto :goto_0

    .line 83
    :sswitch_f
    sget-object v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;->ERROR_DESCRIPTION_TOO_LONG:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    goto :goto_0

    .line 84
    :sswitch_10
    sget-object v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;->ERROR_MISSING_ALBUM_NAME:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    goto :goto_0

    .line 85
    :sswitch_11
    sget-object v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;->ERROR_PRIVATE_ALBUM:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    goto :goto_0

    .line 86
    :sswitch_12
    sget-object v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;->ERROR_INVALID_ALBUM_ID:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    goto :goto_0

    .line 87
    :sswitch_13
    sget-object v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;->ERROR_ALBUM_FULL:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    goto :goto_0

    .line 88
    :sswitch_14
    sget-object v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;->ERROR_ALBUM_TOO_BIG:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    goto :goto_0

    .line 67
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x64 -> :sswitch_2
        0x65 -> :sswitch_3
        0x66 -> :sswitch_4
        0x67 -> :sswitch_5
        0x68 -> :sswitch_6
        0x69 -> :sswitch_7
        0x6a -> :sswitch_8
        0xc8 -> :sswitch_9
        0xc9 -> :sswitch_a
        0x12c -> :sswitch_b
        0x12d -> :sswitch_c
        0x12e -> :sswitch_d
        0x12f -> :sswitch_e
        0x190 -> :sswitch_f
        0x1f4 -> :sswitch_10
        0x1f5 -> :sswitch_11
        0x1f6 -> :sswitch_12
        0x1f7 -> :sswitch_13
        0x1f8 -> :sswitch_14
    .end sparse-switch
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;
    .locals 2
    .param p0, "desc"    # Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 124
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EnumValueDescriptor is not for this type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_0
    sget-object v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;->VALUES:[Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 38
    const-class v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    return-object v0
.end method

.method public static values()[Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;->$VALUES:[Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .prologue
    .line 111
    invoke-static {}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .prologue
    .line 107
    invoke-static {}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoSharingStatus$State;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
