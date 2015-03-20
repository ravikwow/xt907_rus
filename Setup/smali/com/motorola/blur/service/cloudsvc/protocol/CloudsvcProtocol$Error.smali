.class public final enum Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;
.super Ljava/lang/Enum;
.source "CloudsvcProtocol.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Error"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

.field public static final enum ACCESS_DENIED:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

.field public static final enum APP_BLOCKED:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

.field public static final enum CACHE_ITEM_NOT_FOUND:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

.field public static final enum INTERNAL_ERROR:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

.field public static final enum INVALID_APP:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

.field public static final enum INVALID_ARGUMENT:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

.field public static final enum INVALID_SESSION:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

.field public static final enum MISSING_HEADER:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

.field public static final enum MISSING_PARAMETER:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

.field public static final enum NO_MATCHING_DEVICE:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

.field public static final enum NO_MATCHING_SERVICE:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

.field public static final enum OAUTH_AUTHTOKEN_IN_QUERYSTRING_ERROR:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

.field public static final enum OAUTH_CONSUMER_KEY_REFUSED:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

.field public static final enum OAUTH_HEADER_MISSING:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

.field public static final enum OAUTH_INVALID_CONSUMER_KEY:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

.field public static final enum OAUTH_INVALID_EXPIRED_TOKEN:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

.field public static final enum OAUTH_INVALID_USED_NONCE:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

.field public static final enum OAUTH_NONCE_DUPLICATED_ERROR:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

.field public static final enum OAUTH_PARAMETER_ABSENT:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

.field public static final enum OAUTH_PARAMETER_REJECTED:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

.field public static final enum OAUTH_SIGNATURE_INVALID:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

.field public static final enum OAUTH_SIGNATURE_METHOD_REJECTED:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

.field public static final enum OAUTH_TIMESTAMP_REFUSED:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

.field public static final enum OAUTH_TOKEN_NOT_AUTHORIZED:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

.field public static final enum OAUTH_VERSION_REJECTED:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

.field public static final enum OK:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

.field public static final enum PAYLOAD_PARSING_ERROR:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

.field public static final enum RATE_LIMITED:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

.field public static final enum SIGNED_BODY_HASH_INVALID:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

.field public static final enum SIGNED_PAYLOAD_BYTES_READ_ERROR:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

.field public static final enum SIGNED_QUERY_STRING_PARAM_ERROR:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

.field public static final enum UNSUPPORTED_HTTP_METHOD:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

.field public static final enum URI_FORMAT_STRING_ERROR:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

.field public static final enum URI_MISSING_FORMAT_STRING:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

.field private static final VALUES:[Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;",
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
    new-instance v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    const-string v1, "OK"

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->OK:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    .line 14
    new-instance v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    const-string v1, "NO_MATCHING_SERVICE"

    invoke-direct {v0, v1, v6, v6, v6}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->NO_MATCHING_SERVICE:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    .line 15
    new-instance v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    const-string v1, "INVALID_SESSION"

    invoke-direct {v0, v1, v7, v7, v7}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->INVALID_SESSION:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    .line 16
    new-instance v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    const-string v1, "INTERNAL_ERROR"

    invoke-direct {v0, v1, v8, v8, v8}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->INTERNAL_ERROR:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    .line 17
    new-instance v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    const-string v1, "URI_MISSING_FORMAT_STRING"

    invoke-direct {v0, v1, v9, v9, v9}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->URI_MISSING_FORMAT_STRING:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    .line 18
    new-instance v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    const-string v1, "URI_FORMAT_STRING_ERROR"

    const/4 v2, 0x5

    const/4 v3, 0x5

    const/4 v4, 0x5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->URI_FORMAT_STRING_ERROR:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    .line 19
    new-instance v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    const-string v1, "ACCESS_DENIED"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const/4 v4, 0x6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->ACCESS_DENIED:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    .line 20
    new-instance v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    const-string v1, "RATE_LIMITED"

    const/4 v2, 0x7

    const/4 v3, 0x7

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->RATE_LIMITED:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    .line 21
    new-instance v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    const-string v1, "MISSING_PARAMETER"

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->MISSING_PARAMETER:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    .line 22
    new-instance v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    const-string v1, "PAYLOAD_PARSING_ERROR"

    const/16 v2, 0x9

    const/16 v3, 0x9

    const/16 v4, 0x9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->PAYLOAD_PARSING_ERROR:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    .line 23
    new-instance v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    const-string v1, "SIGNED_BODY_HASH_INVALID"

    const/16 v2, 0xa

    const/16 v3, 0xa

    const/16 v4, 0xa

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->SIGNED_BODY_HASH_INVALID:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    .line 24
    new-instance v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    const-string v1, "SIGNED_PAYLOAD_BYTES_READ_ERROR"

    const/16 v2, 0xb

    const/16 v3, 0xb

    const/16 v4, 0xb

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->SIGNED_PAYLOAD_BYTES_READ_ERROR:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    .line 25
    new-instance v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    const-string v1, "SIGNED_QUERY_STRING_PARAM_ERROR"

    const/16 v2, 0xc

    const/16 v3, 0xc

    const/16 v4, 0xc

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->SIGNED_QUERY_STRING_PARAM_ERROR:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    .line 26
    new-instance v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    const-string v1, "APP_BLOCKED"

    const/16 v2, 0xd

    const/16 v3, 0xd

    const/16 v4, 0xd

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->APP_BLOCKED:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    .line 27
    new-instance v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    const-string v1, "OAUTH_HEADER_MISSING"

    const/16 v2, 0xe

    const/16 v3, 0xe

    const/16 v4, 0xe

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->OAUTH_HEADER_MISSING:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    .line 28
    new-instance v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    const-string v1, "INVALID_APP"

    const/16 v2, 0xf

    const/16 v3, 0xf

    const/16 v4, 0xf

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->INVALID_APP:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    .line 29
    new-instance v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    const-string v1, "CACHE_ITEM_NOT_FOUND"

    const/16 v2, 0x10

    const/16 v3, 0x10

    const/16 v4, 0x10

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->CACHE_ITEM_NOT_FOUND:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    .line 30
    new-instance v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    const-string v1, "INVALID_ARGUMENT"

    const/16 v2, 0x11

    const/16 v3, 0x11

    const/16 v4, 0x11

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->INVALID_ARGUMENT:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    .line 31
    new-instance v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    const-string v1, "MISSING_HEADER"

    const/16 v2, 0x12

    const/16 v3, 0x12

    const/16 v4, 0x12

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->MISSING_HEADER:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    .line 32
    new-instance v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    const-string v1, "UNSUPPORTED_HTTP_METHOD"

    const/16 v2, 0x13

    const/16 v3, 0x13

    const/16 v4, 0x28

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->UNSUPPORTED_HTTP_METHOD:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    .line 33
    new-instance v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    const-string v1, "OAUTH_VERSION_REJECTED"

    const/16 v2, 0x14

    const/16 v3, 0x14

    const/16 v4, 0x32

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->OAUTH_VERSION_REJECTED:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    .line 34
    new-instance v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    const-string v1, "OAUTH_PARAMETER_ABSENT"

    const/16 v2, 0x15

    const/16 v3, 0x15

    const/16 v4, 0x33

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->OAUTH_PARAMETER_ABSENT:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    .line 35
    new-instance v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    const-string v1, "OAUTH_PARAMETER_REJECTED"

    const/16 v2, 0x16

    const/16 v3, 0x16

    const/16 v4, 0x34

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->OAUTH_PARAMETER_REJECTED:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    .line 36
    new-instance v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    const-string v1, "OAUTH_TIMESTAMP_REFUSED"

    const/16 v2, 0x17

    const/16 v3, 0x17

    const/16 v4, 0x35

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->OAUTH_TIMESTAMP_REFUSED:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    .line 37
    new-instance v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    const-string v1, "OAUTH_SIGNATURE_METHOD_REJECTED"

    const/16 v2, 0x18

    const/16 v3, 0x18

    const/16 v4, 0x36

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->OAUTH_SIGNATURE_METHOD_REJECTED:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    .line 38
    new-instance v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    const-string v1, "OAUTH_CONSUMER_KEY_REFUSED"

    const/16 v2, 0x19

    const/16 v3, 0x19

    const/16 v4, 0x37

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->OAUTH_CONSUMER_KEY_REFUSED:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    .line 39
    new-instance v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    const-string v1, "OAUTH_INVALID_CONSUMER_KEY"

    const/16 v2, 0x1a

    const/16 v3, 0x1a

    const/16 v4, 0x38

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->OAUTH_INVALID_CONSUMER_KEY:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    .line 40
    new-instance v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    const-string v1, "OAUTH_INVALID_EXPIRED_TOKEN"

    const/16 v2, 0x1b

    const/16 v3, 0x1b

    const/16 v4, 0x39

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->OAUTH_INVALID_EXPIRED_TOKEN:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    .line 41
    new-instance v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    const-string v1, "OAUTH_SIGNATURE_INVALID"

    const/16 v2, 0x1c

    const/16 v3, 0x1c

    const/16 v4, 0x3a

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->OAUTH_SIGNATURE_INVALID:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    .line 42
    new-instance v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    const-string v1, "OAUTH_INVALID_USED_NONCE"

    const/16 v2, 0x1d

    const/16 v3, 0x1d

    const/16 v4, 0x3b

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->OAUTH_INVALID_USED_NONCE:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    .line 43
    new-instance v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    const-string v1, "OAUTH_TOKEN_NOT_AUTHORIZED"

    const/16 v2, 0x1e

    const/16 v3, 0x1e

    const/16 v4, 0x3c

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->OAUTH_TOKEN_NOT_AUTHORIZED:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    .line 44
    new-instance v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    const-string v1, "OAUTH_NONCE_DUPLICATED_ERROR"

    const/16 v2, 0x1f

    const/16 v3, 0x1f

    const/16 v4, 0x3d

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->OAUTH_NONCE_DUPLICATED_ERROR:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    .line 45
    new-instance v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    const-string v1, "OAUTH_AUTHTOKEN_IN_QUERYSTRING_ERROR"

    const/16 v2, 0x20

    const/16 v3, 0x20

    const/16 v4, 0x3e

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->OAUTH_AUTHTOKEN_IN_QUERYSTRING_ERROR:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    .line 46
    new-instance v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    const-string v1, "NO_MATCHING_DEVICE"

    const/16 v2, 0x21

    const/16 v3, 0x21

    const/16 v4, 0x46

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->NO_MATCHING_DEVICE:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    .line 11
    const/16 v0, 0x22

    new-array v0, v0, [Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    sget-object v1, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->OK:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    aput-object v1, v0, v5

    sget-object v1, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->NO_MATCHING_SERVICE:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    aput-object v1, v0, v6

    sget-object v1, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->INVALID_SESSION:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    aput-object v1, v0, v7

    sget-object v1, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->INTERNAL_ERROR:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    aput-object v1, v0, v8

    sget-object v1, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->URI_MISSING_FORMAT_STRING:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->URI_FORMAT_STRING_ERROR:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->ACCESS_DENIED:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->RATE_LIMITED:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->MISSING_PARAMETER:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->PAYLOAD_PARSING_ERROR:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->SIGNED_BODY_HASH_INVALID:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->SIGNED_PAYLOAD_BYTES_READ_ERROR:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->SIGNED_QUERY_STRING_PARAM_ERROR:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->APP_BLOCKED:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->OAUTH_HEADER_MISSING:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->INVALID_APP:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->CACHE_ITEM_NOT_FOUND:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->INVALID_ARGUMENT:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->MISSING_HEADER:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->UNSUPPORTED_HTTP_METHOD:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->OAUTH_VERSION_REJECTED:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->OAUTH_PARAMETER_ABSENT:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->OAUTH_PARAMETER_REJECTED:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->OAUTH_TIMESTAMP_REFUSED:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->OAUTH_SIGNATURE_METHOD_REJECTED:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->OAUTH_CONSUMER_KEY_REFUSED:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->OAUTH_INVALID_CONSUMER_KEY:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->OAUTH_INVALID_EXPIRED_TOKEN:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->OAUTH_SIGNATURE_INVALID:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->OAUTH_INVALID_USED_NONCE:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->OAUTH_TOKEN_NOT_AUTHORIZED:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->OAUTH_NONCE_DUPLICATED_ERROR:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->OAUTH_AUTHTOKEN_IN_QUERYSTRING_ERROR:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->NO_MATCHING_DEVICE:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->$VALUES:[Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    .line 97
    new-instance v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error$1;

    invoke-direct {v0}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error$1;-><init>()V

    sput-object v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 117
    const/16 v0, 0x22

    new-array v0, v0, [Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    sget-object v1, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->OK:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    aput-object v1, v0, v5

    sget-object v1, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->NO_MATCHING_SERVICE:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    aput-object v1, v0, v6

    sget-object v1, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->INVALID_SESSION:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    aput-object v1, v0, v7

    sget-object v1, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->INTERNAL_ERROR:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    aput-object v1, v0, v8

    sget-object v1, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->URI_MISSING_FORMAT_STRING:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->URI_FORMAT_STRING_ERROR:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->ACCESS_DENIED:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->RATE_LIMITED:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->MISSING_PARAMETER:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->PAYLOAD_PARSING_ERROR:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->SIGNED_BODY_HASH_INVALID:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->SIGNED_PAYLOAD_BYTES_READ_ERROR:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->SIGNED_QUERY_STRING_PARAM_ERROR:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->APP_BLOCKED:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->OAUTH_HEADER_MISSING:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->INVALID_APP:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->CACHE_ITEM_NOT_FOUND:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->INVALID_ARGUMENT:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->MISSING_HEADER:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->UNSUPPORTED_HTTP_METHOD:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->OAUTH_VERSION_REJECTED:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->OAUTH_PARAMETER_ABSENT:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->OAUTH_PARAMETER_REJECTED:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->OAUTH_TIMESTAMP_REFUSED:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->OAUTH_SIGNATURE_METHOD_REJECTED:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->OAUTH_CONSUMER_KEY_REFUSED:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->OAUTH_INVALID_CONSUMER_KEY:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->OAUTH_INVALID_EXPIRED_TOKEN:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->OAUTH_SIGNATURE_INVALID:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->OAUTH_INVALID_USED_NONCE:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->OAUTH_TOKEN_NOT_AUTHORIZED:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->OAUTH_NONCE_DUPLICATED_ERROR:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->OAUTH_AUTHTOKEN_IN_QUERYSTRING_ERROR:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->NO_MATCHING_DEVICE:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->VALUES:[Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    .line 136
    invoke-static {}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 137
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
    .line 130
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 131
    iput p3, p0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->index:I

    .line 132
    iput p4, p0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->value:I

    .line 133
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .prologue
    .line 114
    invoke-static {}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

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
            "Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    sget-object v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 53
    packed-switch p0, :pswitch_data_0

    .line 88
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 54
    :pswitch_1
    sget-object v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->OK:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    goto :goto_0

    .line 55
    :pswitch_2
    sget-object v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->NO_MATCHING_SERVICE:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    goto :goto_0

    .line 56
    :pswitch_3
    sget-object v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->INVALID_SESSION:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    goto :goto_0

    .line 57
    :pswitch_4
    sget-object v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->INTERNAL_ERROR:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    goto :goto_0

    .line 58
    :pswitch_5
    sget-object v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->URI_MISSING_FORMAT_STRING:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    goto :goto_0

    .line 59
    :pswitch_6
    sget-object v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->URI_FORMAT_STRING_ERROR:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    goto :goto_0

    .line 60
    :pswitch_7
    sget-object v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->ACCESS_DENIED:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    goto :goto_0

    .line 61
    :pswitch_8
    sget-object v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->RATE_LIMITED:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    goto :goto_0

    .line 62
    :pswitch_9
    sget-object v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->MISSING_PARAMETER:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    goto :goto_0

    .line 63
    :pswitch_a
    sget-object v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->PAYLOAD_PARSING_ERROR:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    goto :goto_0

    .line 64
    :pswitch_b
    sget-object v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->SIGNED_BODY_HASH_INVALID:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    goto :goto_0

    .line 65
    :pswitch_c
    sget-object v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->SIGNED_PAYLOAD_BYTES_READ_ERROR:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    goto :goto_0

    .line 66
    :pswitch_d
    sget-object v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->SIGNED_QUERY_STRING_PARAM_ERROR:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    goto :goto_0

    .line 67
    :pswitch_e
    sget-object v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->APP_BLOCKED:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    goto :goto_0

    .line 68
    :pswitch_f
    sget-object v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->OAUTH_HEADER_MISSING:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    goto :goto_0

    .line 69
    :pswitch_10
    sget-object v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->INVALID_APP:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    goto :goto_0

    .line 70
    :pswitch_11
    sget-object v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->CACHE_ITEM_NOT_FOUND:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    goto :goto_0

    .line 71
    :pswitch_12
    sget-object v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->INVALID_ARGUMENT:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    goto :goto_0

    .line 72
    :pswitch_13
    sget-object v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->MISSING_HEADER:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    goto :goto_0

    .line 73
    :pswitch_14
    sget-object v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->UNSUPPORTED_HTTP_METHOD:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    goto :goto_0

    .line 74
    :pswitch_15
    sget-object v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->OAUTH_VERSION_REJECTED:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    goto :goto_0

    .line 75
    :pswitch_16
    sget-object v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->OAUTH_PARAMETER_ABSENT:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    goto :goto_0

    .line 76
    :pswitch_17
    sget-object v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->OAUTH_PARAMETER_REJECTED:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    goto :goto_0

    .line 77
    :pswitch_18
    sget-object v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->OAUTH_TIMESTAMP_REFUSED:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    goto :goto_0

    .line 78
    :pswitch_19
    sget-object v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->OAUTH_SIGNATURE_METHOD_REJECTED:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    goto :goto_0

    .line 79
    :pswitch_1a
    sget-object v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->OAUTH_CONSUMER_KEY_REFUSED:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    goto :goto_0

    .line 80
    :pswitch_1b
    sget-object v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->OAUTH_INVALID_CONSUMER_KEY:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    goto :goto_0

    .line 81
    :pswitch_1c
    sget-object v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->OAUTH_INVALID_EXPIRED_TOKEN:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    goto :goto_0

    .line 82
    :pswitch_1d
    sget-object v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->OAUTH_SIGNATURE_INVALID:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    goto :goto_0

    .line 83
    :pswitch_1e
    sget-object v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->OAUTH_INVALID_USED_NONCE:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    goto :goto_0

    .line 84
    :pswitch_1f
    sget-object v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->OAUTH_TOKEN_NOT_AUTHORIZED:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    goto :goto_0

    .line 85
    :pswitch_20
    sget-object v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->OAUTH_NONCE_DUPLICATED_ERROR:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    goto :goto_0

    .line 86
    :pswitch_21
    sget-object v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->OAUTH_AUTHTOKEN_IN_QUERYSTRING_ERROR:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    goto :goto_0

    .line 87
    :pswitch_22
    sget-object v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->NO_MATCHING_DEVICE:Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    goto :goto_0

    .line 53
    nop

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_14
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_22
    .end packed-switch
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;
    .locals 2
    .param p0, "desc"    # Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 123
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EnumValueDescriptor is not for this type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_0
    sget-object v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->VALUES:[Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 11
    const-class v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    return-object v0
.end method

.method public static values()[Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->$VALUES:[Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .prologue
    .line 110
    invoke-static {}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .prologue
    .line 106
    invoke-static {}, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/motorola/blur/service/cloudsvc/protocol/CloudsvcProtocol$Error;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
