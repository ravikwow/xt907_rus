.class public final enum Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;
.super Ljava/lang/Enum;
.source "MotoAccount.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/MotoAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Error"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

.field public static final enum ACCOUNT_DELETED:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

.field public static final enum ACCOUNT_DISABLED:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

.field public static final enum ACCOUNT_EXISTS:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

.field public static final enum ACCOUNT_LOCKED:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

.field public static final enum ACCOUNT_NOT_FOUND:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

.field public static final enum ACCOUNT_RESTORE_ERROR:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

.field public static final enum ACCOUNT_UNVERIFIED:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

.field public static final enum BAD_REQUEST:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

.field public static final enum CAPTCHA_EXPIRED:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

.field public static final enum CAPTCHA_INVALID:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

.field public static final enum FORBIDDEN:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

.field public static final enum INVALID_APPID:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

.field public static final enum INVALID_ARGUMENTS:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

.field public static final enum INVALID_ASSOCIATION:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

.field public static final enum INVALID_CREDENTIALS:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

.field public static final enum INVALID_EMAIL:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

.field public static final enum INVALID_LENGTH:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

.field public static final enum INVALID_NAME:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

.field public static final enum INVALID_PASSWORD:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

.field public static final enum INVALID_SESSION:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

.field public static final enum INVALID_TOKEN:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

.field public static final enum INVALID_VERIFICATION_CODE:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

.field public static final enum IO_ERROR:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

.field public static final enum NOT_FOUND:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

.field public static final enum PROTOBUF_ERROR:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

.field public static final enum SERVER_ERROR:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

.field public static final enum SERVICE_BUSY:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

.field public static final enum SERVICE_DOWN:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

.field public static final enum SESSION_EXPIRED:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

.field public static final enum SSL_ERROR:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

.field public static final enum UNKNOWN_ERROR:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

.field private static final VALUES:[Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;",
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
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/16 v5, 0x14

    .line 86
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    const-string v1, "UNKNOWN_ERROR"

    invoke-direct {v0, v1, v6, v6, v5}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->UNKNOWN_ERROR:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .line 87
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    const-string v1, "PROTOBUF_ERROR"

    const/16 v2, 0x28

    invoke-direct {v0, v1, v7, v7, v2}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->PROTOBUF_ERROR:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .line 88
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    const-string v1, "SERVER_ERROR"

    const/16 v2, 0x32

    invoke-direct {v0, v1, v8, v8, v2}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->SERVER_ERROR:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .line 89
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    const-string v1, "IO_ERROR"

    const/16 v2, 0x46

    invoke-direct {v0, v1, v9, v9, v2}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->IO_ERROR:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .line 90
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    const-string v1, "FORBIDDEN"

    const/4 v2, 0x4

    const/4 v3, 0x4

    const/16 v4, 0x78

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->FORBIDDEN:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .line 91
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    const-string v1, "BAD_REQUEST"

    const/4 v2, 0x5

    const/4 v3, 0x5

    const/16 v4, 0x82

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->BAD_REQUEST:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .line 92
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    const-string v1, "SERVICE_DOWN"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const/16 v4, 0x96

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->SERVICE_DOWN:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .line 93
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    const-string v1, "SERVICE_BUSY"

    const/4 v2, 0x7

    const/4 v3, 0x7

    const/16 v4, 0xa0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->SERVICE_BUSY:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .line 94
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    const-string v1, "NOT_FOUND"

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0xd2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->NOT_FOUND:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .line 95
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    const-string v1, "INVALID_ARGUMENTS"

    const/16 v2, 0x9

    const/16 v3, 0x9

    const/16 v4, 0xe6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->INVALID_ARGUMENTS:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .line 96
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    const-string v1, "INVALID_EMAIL"

    const/16 v2, 0xa

    const/16 v3, 0xa

    const/16 v4, 0x12c

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->INVALID_EMAIL:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .line 97
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    const-string v1, "INVALID_PASSWORD"

    const/16 v2, 0xb

    const/16 v3, 0xb

    const/16 v4, 0x276

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->INVALID_PASSWORD:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .line 98
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    const-string v1, "INVALID_NAME"

    const/16 v2, 0xc

    const/16 v3, 0xc

    const/16 v4, 0x280

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->INVALID_NAME:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .line 99
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    const-string v1, "INVALID_ASSOCIATION"

    const/16 v2, 0xd

    const/16 v3, 0xd

    const/16 v4, 0x28a

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->INVALID_ASSOCIATION:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .line 100
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    const-string v1, "INVALID_TOKEN"

    const/16 v2, 0xe

    const/16 v3, 0xe

    const/16 v4, 0x294

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->INVALID_TOKEN:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .line 101
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    const-string v1, "INVALID_CREDENTIALS"

    const/16 v2, 0xf

    const/16 v3, 0xf

    const/16 v4, 0x8c

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->INVALID_CREDENTIALS:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .line 102
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    const-string v1, "INVALID_LENGTH"

    const/16 v2, 0x10

    const/16 v3, 0x10

    const/16 v4, 0x208

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->INVALID_LENGTH:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .line 103
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    const-string v1, "INVALID_VERIFICATION_CODE"

    const/16 v2, 0x11

    const/16 v3, 0x11

    const/16 v4, 0x2a8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->INVALID_VERIFICATION_CODE:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .line 104
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    const-string v1, "INVALID_SESSION"

    const/16 v2, 0x12

    const/16 v3, 0x12

    const/16 v4, 0x230

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->INVALID_SESSION:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .line 105
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    const-string v1, "SESSION_EXPIRED"

    const/16 v2, 0x13

    const/16 v3, 0x13

    const/16 v4, 0x258

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->SESSION_EXPIRED:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .line 106
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    const-string v1, "INVALID_APPID"

    const/16 v2, 0x26c

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->INVALID_APPID:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .line 107
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    const-string v1, "ACCOUNT_EXISTS"

    const/16 v2, 0x15

    const/16 v3, 0x15

    const/16 v4, 0xb4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->ACCOUNT_EXISTS:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .line 108
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    const-string v1, "ACCOUNT_DISABLED"

    const/16 v2, 0x16

    const/16 v3, 0x16

    const/16 v4, 0x172

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->ACCOUNT_DISABLED:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .line 109
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    const-string v1, "ACCOUNT_NOT_FOUND"

    const/16 v2, 0x17

    const/16 v3, 0x17

    const/16 v4, 0x17c

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->ACCOUNT_NOT_FOUND:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .line 110
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    const-string v1, "ACCOUNT_DELETED"

    const/16 v2, 0x18

    const/16 v3, 0x18

    const/16 v4, 0x1b8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->ACCOUNT_DELETED:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .line 111
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    const-string v1, "ACCOUNT_RESTORE_ERROR"

    const/16 v2, 0x19

    const/16 v3, 0x19

    const/16 v4, 0x23a

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->ACCOUNT_RESTORE_ERROR:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .line 112
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    const-string v1, "ACCOUNT_LOCKED"

    const/16 v2, 0x1a

    const/16 v3, 0x1a

    const/16 v4, 0x262

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->ACCOUNT_LOCKED:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .line 113
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    const-string v1, "ACCOUNT_UNVERIFIED"

    const/16 v2, 0x1b

    const/16 v3, 0x1b

    const/16 v4, 0x29e

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->ACCOUNT_UNVERIFIED:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .line 114
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    const-string v1, "CAPTCHA_INVALID"

    const/16 v2, 0x1c

    const/16 v3, 0x1c

    const/16 v4, 0x1a4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->CAPTCHA_INVALID:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .line 115
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    const-string v1, "CAPTCHA_EXPIRED"

    const/16 v2, 0x1d

    const/16 v3, 0x1d

    const/16 v4, 0x1ae

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->CAPTCHA_EXPIRED:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .line 116
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    const-string v1, "SSL_ERROR"

    const/16 v2, 0x1e

    const/16 v3, 0x1e

    const/16 v4, 0x1cc

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->SSL_ERROR:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .line 84
    const/16 v0, 0x1f

    new-array v0, v0, [Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    sget-object v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->UNKNOWN_ERROR:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    aput-object v1, v0, v6

    sget-object v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->PROTOBUF_ERROR:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    aput-object v1, v0, v7

    sget-object v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->SERVER_ERROR:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    aput-object v1, v0, v8

    sget-object v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->IO_ERROR:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    aput-object v1, v0, v9

    const/4 v1, 0x4

    sget-object v2, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->FORBIDDEN:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->BAD_REQUEST:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->SERVICE_DOWN:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->SERVICE_BUSY:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->NOT_FOUND:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->INVALID_ARGUMENTS:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->INVALID_EMAIL:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->INVALID_PASSWORD:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->INVALID_NAME:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->INVALID_ASSOCIATION:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->INVALID_TOKEN:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->INVALID_CREDENTIALS:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->INVALID_LENGTH:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->INVALID_VERIFICATION_CODE:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->INVALID_SESSION:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->SESSION_EXPIRED:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    aput-object v2, v0, v1

    sget-object v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->INVALID_APPID:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    aput-object v1, v0, v5

    const/16 v1, 0x15

    sget-object v2, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->ACCOUNT_EXISTS:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->ACCOUNT_DISABLED:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->ACCOUNT_NOT_FOUND:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->ACCOUNT_DELETED:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->ACCOUNT_RESTORE_ERROR:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->ACCOUNT_LOCKED:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->ACCOUNT_UNVERIFIED:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->CAPTCHA_INVALID:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->CAPTCHA_EXPIRED:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->SSL_ERROR:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->$VALUES:[Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .line 164
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error$1;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error$1;-><init>()V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 184
    const/16 v0, 0x1f

    new-array v0, v0, [Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    sget-object v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->UNKNOWN_ERROR:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    aput-object v1, v0, v6

    sget-object v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->PROTOBUF_ERROR:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    aput-object v1, v0, v7

    sget-object v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->SERVER_ERROR:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    aput-object v1, v0, v8

    sget-object v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->IO_ERROR:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    aput-object v1, v0, v9

    const/4 v1, 0x4

    sget-object v2, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->FORBIDDEN:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->BAD_REQUEST:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->SERVICE_DOWN:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->SERVICE_BUSY:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->NOT_FOUND:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->INVALID_ARGUMENTS:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->INVALID_EMAIL:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->INVALID_PASSWORD:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->INVALID_NAME:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->INVALID_ASSOCIATION:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->INVALID_TOKEN:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->INVALID_CREDENTIALS:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->INVALID_LENGTH:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->INVALID_VERIFICATION_CODE:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->INVALID_SESSION:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->SESSION_EXPIRED:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    aput-object v2, v0, v1

    sget-object v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->INVALID_APPID:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    aput-object v1, v0, v5

    const/16 v1, 0x15

    sget-object v2, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->ACCOUNT_EXISTS:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->ACCOUNT_DISABLED:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->ACCOUNT_NOT_FOUND:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->ACCOUNT_DELETED:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->ACCOUNT_RESTORE_ERROR:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->ACCOUNT_LOCKED:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->ACCOUNT_UNVERIFIED:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->CAPTCHA_INVALID:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->CAPTCHA_EXPIRED:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->SSL_ERROR:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->VALUES:[Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    .line 203
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 204
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
    .line 197
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 198
    iput p3, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->index:I

    .line 199
    iput p4, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->value:I

    .line 200
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .prologue
    .line 181
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getEnumTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

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
            "Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;",
            ">;"
        }
    .end annotation

    .prologue
    .line 161
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 123
    sparse-switch p0, :sswitch_data_0

    .line 155
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 124
    :sswitch_0
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->UNKNOWN_ERROR:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    goto :goto_0

    .line 125
    :sswitch_1
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->PROTOBUF_ERROR:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    goto :goto_0

    .line 126
    :sswitch_2
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->SERVER_ERROR:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    goto :goto_0

    .line 127
    :sswitch_3
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->IO_ERROR:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    goto :goto_0

    .line 128
    :sswitch_4
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->FORBIDDEN:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    goto :goto_0

    .line 129
    :sswitch_5
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->BAD_REQUEST:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    goto :goto_0

    .line 130
    :sswitch_6
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->SERVICE_DOWN:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    goto :goto_0

    .line 131
    :sswitch_7
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->SERVICE_BUSY:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    goto :goto_0

    .line 132
    :sswitch_8
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->NOT_FOUND:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    goto :goto_0

    .line 133
    :sswitch_9
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->INVALID_ARGUMENTS:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    goto :goto_0

    .line 134
    :sswitch_a
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->INVALID_EMAIL:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    goto :goto_0

    .line 135
    :sswitch_b
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->INVALID_PASSWORD:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    goto :goto_0

    .line 136
    :sswitch_c
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->INVALID_NAME:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    goto :goto_0

    .line 137
    :sswitch_d
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->INVALID_ASSOCIATION:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    goto :goto_0

    .line 138
    :sswitch_e
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->INVALID_TOKEN:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    goto :goto_0

    .line 139
    :sswitch_f
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->INVALID_CREDENTIALS:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    goto :goto_0

    .line 140
    :sswitch_10
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->INVALID_LENGTH:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    goto :goto_0

    .line 141
    :sswitch_11
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->INVALID_VERIFICATION_CODE:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    goto :goto_0

    .line 142
    :sswitch_12
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->INVALID_SESSION:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    goto :goto_0

    .line 143
    :sswitch_13
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->SESSION_EXPIRED:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    goto :goto_0

    .line 144
    :sswitch_14
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->INVALID_APPID:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    goto :goto_0

    .line 145
    :sswitch_15
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->ACCOUNT_EXISTS:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    goto :goto_0

    .line 146
    :sswitch_16
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->ACCOUNT_DISABLED:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    goto :goto_0

    .line 147
    :sswitch_17
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->ACCOUNT_NOT_FOUND:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    goto :goto_0

    .line 148
    :sswitch_18
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->ACCOUNT_DELETED:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    goto :goto_0

    .line 149
    :sswitch_19
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->ACCOUNT_RESTORE_ERROR:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    goto :goto_0

    .line 150
    :sswitch_1a
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->ACCOUNT_LOCKED:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    goto :goto_0

    .line 151
    :sswitch_1b
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->ACCOUNT_UNVERIFIED:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    goto :goto_0

    .line 152
    :sswitch_1c
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->CAPTCHA_INVALID:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    goto :goto_0

    .line 153
    :sswitch_1d
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->CAPTCHA_EXPIRED:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    goto :goto_0

    .line 154
    :sswitch_1e
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->SSL_ERROR:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    goto :goto_0

    .line 123
    :sswitch_data_0
    .sparse-switch
        0x14 -> :sswitch_0
        0x28 -> :sswitch_1
        0x32 -> :sswitch_2
        0x46 -> :sswitch_3
        0x78 -> :sswitch_4
        0x82 -> :sswitch_5
        0x8c -> :sswitch_f
        0x96 -> :sswitch_6
        0xa0 -> :sswitch_7
        0xb4 -> :sswitch_15
        0xd2 -> :sswitch_8
        0xe6 -> :sswitch_9
        0x12c -> :sswitch_a
        0x172 -> :sswitch_16
        0x17c -> :sswitch_17
        0x1a4 -> :sswitch_1c
        0x1ae -> :sswitch_1d
        0x1b8 -> :sswitch_18
        0x1cc -> :sswitch_1e
        0x208 -> :sswitch_10
        0x230 -> :sswitch_12
        0x23a -> :sswitch_19
        0x258 -> :sswitch_13
        0x262 -> :sswitch_1a
        0x26c -> :sswitch_14
        0x276 -> :sswitch_b
        0x280 -> :sswitch_c
        0x28a -> :sswitch_d
        0x294 -> :sswitch_e
        0x29e -> :sswitch_1b
        0x2a8 -> :sswitch_11
    .end sparse-switch
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;
    .locals 2
    .param p0, "desc"    # Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 190
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EnumValueDescriptor is not for this type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :cond_0
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->VALUES:[Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 84
    const-class v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    return-object v0
.end method

.method public static values()[Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->$VALUES:[Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .prologue
    .line 177
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .prologue
    .line 173
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$Error;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
