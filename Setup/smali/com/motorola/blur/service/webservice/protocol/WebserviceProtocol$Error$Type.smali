.class public final enum Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;
.super Ljava/lang/Enum;
.source "WebserviceProtocol.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

.field public static final enum BLUR_CONTINUOUS_BAD_REQUESTS:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

.field public static final enum BLUR_OAUTH_BODY_HASH_INVALID:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

.field public static final enum BLUR_OAUTH_PAYLOAD_BYTES_READ_ERROR:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

.field public static final enum BLUR_OAUTH_QUERY_STRING_PARAM_ERROR:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

.field public static final enum INTERNAL_ERROR:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

.field public static final enum INVALID_SESSIONID:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

.field public static final enum INVALID_URI:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

.field public static final enum NO_MATCHING_SERVICE:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

.field public static final enum OAUTH_CONSUMER_KEY_REFUSED:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

.field public static final enum OAUTH_INVALID_CONSUMER_KEY:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

.field public static final enum OAUTH_INVALID_EXPIRED_TOKEN:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

.field public static final enum OAUTH_INVALID_USED_NONCE:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

.field public static final enum OAUTH_NONCE_DUPLICATED_ERROR:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

.field public static final enum OAUTH_PARAMETER_ABSENT:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

.field public static final enum OAUTH_PARAMETER_REJECTED:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

.field public static final enum OAUTH_SIGNATURE_INVALID:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

.field public static final enum OAUTH_SIGNATURE_METHOD_REJECTED:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

.field public static final enum OAUTH_TIMESTAMP_REFUSED:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

.field public static final enum OAUTH_TOKEN_NOT_AUTHORIZED:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

.field public static final enum OAUTH_VERSION_REJECTED:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

.field private static final VALUES:[Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;",
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
    new-instance v0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    const-string v1, "INVALID_URI"

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;->INVALID_URI:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    .line 41
    new-instance v0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    const-string v1, "NO_MATCHING_SERVICE"

    invoke-direct {v0, v1, v6, v6, v6}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;->NO_MATCHING_SERVICE:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    .line 42
    new-instance v0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    const-string v1, "INVALID_SESSIONID"

    invoke-direct {v0, v1, v7, v7, v7}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;->INVALID_SESSIONID:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    .line 43
    new-instance v0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    const-string v1, "INTERNAL_ERROR"

    invoke-direct {v0, v1, v8, v8, v8}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;->INTERNAL_ERROR:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    .line 44
    new-instance v0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    const-string v1, "OAUTH_VERSION_REJECTED"

    invoke-direct {v0, v1, v9, v9, v9}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;->OAUTH_VERSION_REJECTED:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    .line 45
    new-instance v0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    const-string v1, "OAUTH_PARAMETER_ABSENT"

    const/4 v2, 0x5

    const/4 v3, 0x5

    const/4 v4, 0x5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;->OAUTH_PARAMETER_ABSENT:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    .line 46
    new-instance v0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    const-string v1, "OAUTH_PARAMETER_REJECTED"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const/4 v4, 0x6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;->OAUTH_PARAMETER_REJECTED:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    .line 47
    new-instance v0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    const-string v1, "OAUTH_TIMESTAMP_REFUSED"

    const/4 v2, 0x7

    const/4 v3, 0x7

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;->OAUTH_TIMESTAMP_REFUSED:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    .line 48
    new-instance v0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    const-string v1, "OAUTH_SIGNATURE_METHOD_REJECTED"

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;->OAUTH_SIGNATURE_METHOD_REJECTED:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    .line 49
    new-instance v0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    const-string v1, "OAUTH_CONSUMER_KEY_REFUSED"

    const/16 v2, 0x9

    const/16 v3, 0x9

    const/16 v4, 0x9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;->OAUTH_CONSUMER_KEY_REFUSED:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    .line 50
    new-instance v0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    const-string v1, "OAUTH_INVALID_CONSUMER_KEY"

    const/16 v2, 0xa

    const/16 v3, 0xa

    const/16 v4, 0xa

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;->OAUTH_INVALID_CONSUMER_KEY:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    .line 51
    new-instance v0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    const-string v1, "OAUTH_INVALID_EXPIRED_TOKEN"

    const/16 v2, 0xb

    const/16 v3, 0xb

    const/16 v4, 0xb

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;->OAUTH_INVALID_EXPIRED_TOKEN:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    .line 52
    new-instance v0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    const-string v1, "OAUTH_SIGNATURE_INVALID"

    const/16 v2, 0xc

    const/16 v3, 0xc

    const/16 v4, 0xc

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;->OAUTH_SIGNATURE_INVALID:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    .line 53
    new-instance v0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    const-string v1, "OAUTH_INVALID_USED_NONCE"

    const/16 v2, 0xd

    const/16 v3, 0xd

    const/16 v4, 0xd

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;->OAUTH_INVALID_USED_NONCE:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    .line 54
    new-instance v0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    const-string v1, "OAUTH_TOKEN_NOT_AUTHORIZED"

    const/16 v2, 0xe

    const/16 v3, 0xe

    const/16 v4, 0xe

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;->OAUTH_TOKEN_NOT_AUTHORIZED:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    .line 55
    new-instance v0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    const-string v1, "BLUR_OAUTH_QUERY_STRING_PARAM_ERROR"

    const/16 v2, 0xf

    const/16 v3, 0xf

    const/16 v4, 0xf

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;->BLUR_OAUTH_QUERY_STRING_PARAM_ERROR:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    .line 56
    new-instance v0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    const-string v1, "BLUR_OAUTH_BODY_HASH_INVALID"

    const/16 v2, 0x10

    const/16 v3, 0x10

    const/16 v4, 0x10

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;->BLUR_OAUTH_BODY_HASH_INVALID:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    .line 57
    new-instance v0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    const-string v1, "BLUR_OAUTH_PAYLOAD_BYTES_READ_ERROR"

    const/16 v2, 0x11

    const/16 v3, 0x11

    const/16 v4, 0x11

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;->BLUR_OAUTH_PAYLOAD_BYTES_READ_ERROR:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    .line 58
    new-instance v0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    const-string v1, "OAUTH_NONCE_DUPLICATED_ERROR"

    const/16 v2, 0x12

    const/16 v3, 0x12

    const/16 v4, 0x12

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;->OAUTH_NONCE_DUPLICATED_ERROR:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    .line 59
    new-instance v0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    const-string v1, "BLUR_CONTINUOUS_BAD_REQUESTS"

    const/16 v2, 0x13

    const/16 v3, 0x13

    const/16 v4, 0x13

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;->BLUR_CONTINUOUS_BAD_REQUESTS:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    .line 38
    const/16 v0, 0x14

    new-array v0, v0, [Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    sget-object v1, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;->INVALID_URI:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;->NO_MATCHING_SERVICE:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;->INVALID_SESSIONID:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    aput-object v1, v0, v7

    sget-object v1, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;->INTERNAL_ERROR:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    aput-object v1, v0, v8

    sget-object v1, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;->OAUTH_VERSION_REJECTED:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;->OAUTH_PARAMETER_ABSENT:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;->OAUTH_PARAMETER_REJECTED:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;->OAUTH_TIMESTAMP_REFUSED:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;->OAUTH_SIGNATURE_METHOD_REJECTED:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;->OAUTH_CONSUMER_KEY_REFUSED:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;->OAUTH_INVALID_CONSUMER_KEY:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;->OAUTH_INVALID_EXPIRED_TOKEN:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;->OAUTH_SIGNATURE_INVALID:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;->OAUTH_INVALID_USED_NONCE:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;->OAUTH_TOKEN_NOT_AUTHORIZED:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;->BLUR_OAUTH_QUERY_STRING_PARAM_ERROR:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;->BLUR_OAUTH_BODY_HASH_INVALID:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;->BLUR_OAUTH_PAYLOAD_BYTES_READ_ERROR:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;->OAUTH_NONCE_DUPLICATED_ERROR:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;->BLUR_CONTINUOUS_BAD_REQUESTS:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;->$VALUES:[Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    .line 96
    new-instance v0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type$1;

    invoke-direct {v0}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type$1;-><init>()V

    sput-object v0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 116
    const/16 v0, 0x14

    new-array v0, v0, [Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    sget-object v1, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;->INVALID_URI:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;->NO_MATCHING_SERVICE:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;->INVALID_SESSIONID:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    aput-object v1, v0, v7

    sget-object v1, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;->INTERNAL_ERROR:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    aput-object v1, v0, v8

    sget-object v1, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;->OAUTH_VERSION_REJECTED:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;->OAUTH_PARAMETER_ABSENT:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;->OAUTH_PARAMETER_REJECTED:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;->OAUTH_TIMESTAMP_REFUSED:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;->OAUTH_SIGNATURE_METHOD_REJECTED:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;->OAUTH_CONSUMER_KEY_REFUSED:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;->OAUTH_INVALID_CONSUMER_KEY:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;->OAUTH_INVALID_EXPIRED_TOKEN:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;->OAUTH_SIGNATURE_INVALID:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;->OAUTH_INVALID_USED_NONCE:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;->OAUTH_TOKEN_NOT_AUTHORIZED:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;->BLUR_OAUTH_QUERY_STRING_PARAM_ERROR:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;->BLUR_OAUTH_BODY_HASH_INVALID:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;->BLUR_OAUTH_PAYLOAD_BYTES_READ_ERROR:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;->OAUTH_NONCE_DUPLICATED_ERROR:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;->BLUR_CONTINUOUS_BAD_REQUESTS:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;->VALUES:[Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    .line 135
    invoke-static {}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 136
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
    .line 129
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 130
    iput p3, p0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;->index:I

    .line 131
    iput p4, p0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;->value:I

    .line 132
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .prologue
    .line 113
    invoke-static {}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

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
            "Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    sget-object v0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 66
    packed-switch p0, :pswitch_data_0

    .line 87
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 67
    :pswitch_0
    sget-object v0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;->INVALID_URI:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    goto :goto_0

    .line 68
    :pswitch_1
    sget-object v0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;->NO_MATCHING_SERVICE:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    goto :goto_0

    .line 69
    :pswitch_2
    sget-object v0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;->INVALID_SESSIONID:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    goto :goto_0

    .line 70
    :pswitch_3
    sget-object v0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;->INTERNAL_ERROR:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    goto :goto_0

    .line 71
    :pswitch_4
    sget-object v0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;->OAUTH_VERSION_REJECTED:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    goto :goto_0

    .line 72
    :pswitch_5
    sget-object v0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;->OAUTH_PARAMETER_ABSENT:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    goto :goto_0

    .line 73
    :pswitch_6
    sget-object v0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;->OAUTH_PARAMETER_REJECTED:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    goto :goto_0

    .line 74
    :pswitch_7
    sget-object v0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;->OAUTH_TIMESTAMP_REFUSED:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    goto :goto_0

    .line 75
    :pswitch_8
    sget-object v0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;->OAUTH_SIGNATURE_METHOD_REJECTED:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    goto :goto_0

    .line 76
    :pswitch_9
    sget-object v0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;->OAUTH_CONSUMER_KEY_REFUSED:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    goto :goto_0

    .line 77
    :pswitch_a
    sget-object v0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;->OAUTH_INVALID_CONSUMER_KEY:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    goto :goto_0

    .line 78
    :pswitch_b
    sget-object v0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;->OAUTH_INVALID_EXPIRED_TOKEN:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    goto :goto_0

    .line 79
    :pswitch_c
    sget-object v0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;->OAUTH_SIGNATURE_INVALID:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    goto :goto_0

    .line 80
    :pswitch_d
    sget-object v0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;->OAUTH_INVALID_USED_NONCE:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    goto :goto_0

    .line 81
    :pswitch_e
    sget-object v0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;->OAUTH_TOKEN_NOT_AUTHORIZED:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    goto :goto_0

    .line 82
    :pswitch_f
    sget-object v0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;->BLUR_OAUTH_QUERY_STRING_PARAM_ERROR:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    goto :goto_0

    .line 83
    :pswitch_10
    sget-object v0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;->BLUR_OAUTH_BODY_HASH_INVALID:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    goto :goto_0

    .line 84
    :pswitch_11
    sget-object v0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;->BLUR_OAUTH_PAYLOAD_BYTES_READ_ERROR:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    goto :goto_0

    .line 85
    :pswitch_12
    sget-object v0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;->OAUTH_NONCE_DUPLICATED_ERROR:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    goto :goto_0

    .line 86
    :pswitch_13
    sget-object v0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;->BLUR_CONTINUOUS_BAD_REQUESTS:Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    goto :goto_0

    .line 66
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;
    .locals 2
    .param p0, "desc"    # Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 122
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EnumValueDescriptor is not for this type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_0
    sget-object v0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;->VALUES:[Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 38
    const-class v0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    return-object v0
.end method

.method public static values()[Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;->$VALUES:[Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .prologue
    .line 109
    invoke-static {}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .prologue
    .line 105
    invoke-static {}, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/motorola/blur/service/webservice/protocol/WebserviceProtocol$Error$Type;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
