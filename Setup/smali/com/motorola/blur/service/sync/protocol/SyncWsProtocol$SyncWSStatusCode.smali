.class public final enum Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;
.super Ljava/lang/Enum;
.source "SyncWsProtocol.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SyncWSStatusCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

.field public static final enum ERROR_CLIENT_ANCHOR_NOT_SUPPORTED:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

.field public static final enum ERROR_INCONSISTENT_SYNC_STATE:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

.field public static final enum ERROR_INTERNAL_SERVER_ERROR:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

.field public static final enum ERROR_INVALID_ANCHOR:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

.field public static final enum ERROR_INVALID_REQUEST:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

.field public static final enum ERROR_PARSE:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

.field public static final enum ERROR_SERVER_REQUESTS_RECOVERY:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

.field public static final enum ERROR_STALE_CLIENT_ANCHOR:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

.field public static final enum ERROR_UNKNOWN:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

.field public static final enum ERROR_UNKNOWN_APP_ID:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

.field public static final enum OK:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

.field private static final VALUES:[Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;",
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
    new-instance v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

    const-string v1, "OK"

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;->OK:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

    .line 14
    new-instance v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

    const-string v1, "ERROR_UNKNOWN"

    const/16 v2, 0x3e8

    invoke-direct {v0, v1, v6, v6, v2}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;->ERROR_UNKNOWN:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

    .line 15
    new-instance v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

    const-string v1, "ERROR_INTERNAL_SERVER_ERROR"

    const/16 v2, 0x3f2

    invoke-direct {v0, v1, v7, v7, v2}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;->ERROR_INTERNAL_SERVER_ERROR:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

    .line 16
    new-instance v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

    const-string v1, "ERROR_PARSE"

    const/16 v2, 0x3fc

    invoke-direct {v0, v1, v8, v8, v2}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;->ERROR_PARSE:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

    .line 17
    new-instance v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

    const-string v1, "ERROR_UNKNOWN_APP_ID"

    const/16 v2, 0x7d0

    invoke-direct {v0, v1, v9, v9, v2}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;->ERROR_UNKNOWN_APP_ID:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

    .line 18
    new-instance v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

    const-string v1, "ERROR_INVALID_REQUEST"

    const/4 v2, 0x5

    const/4 v3, 0x5

    const/16 v4, 0x7da

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;->ERROR_INVALID_REQUEST:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

    .line 19
    new-instance v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

    const-string v1, "ERROR_STALE_CLIENT_ANCHOR"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const/16 v4, 0xbb8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;->ERROR_STALE_CLIENT_ANCHOR:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

    .line 20
    new-instance v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

    const-string v1, "ERROR_INVALID_ANCHOR"

    const/4 v2, 0x7

    const/4 v3, 0x7

    const/16 v4, 0xbc2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;->ERROR_INVALID_ANCHOR:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

    .line 21
    new-instance v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

    const-string v1, "ERROR_INCONSISTENT_SYNC_STATE"

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0xbcc

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;->ERROR_INCONSISTENT_SYNC_STATE:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

    .line 22
    new-instance v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

    const-string v1, "ERROR_CLIENT_ANCHOR_NOT_SUPPORTED"

    const/16 v2, 0x9

    const/16 v3, 0x9

    const/16 v4, 0xbd6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;->ERROR_CLIENT_ANCHOR_NOT_SUPPORTED:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

    .line 23
    new-instance v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

    const-string v1, "ERROR_SERVER_REQUESTS_RECOVERY"

    const/16 v2, 0xa

    const/16 v3, 0xa

    const/16 v4, 0xbe0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;->ERROR_SERVER_REQUESTS_RECOVERY:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

    .line 11
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

    sget-object v1, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;->OK:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;->ERROR_UNKNOWN:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;->ERROR_INTERNAL_SERVER_ERROR:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;->ERROR_PARSE:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

    aput-object v1, v0, v8

    sget-object v1, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;->ERROR_UNKNOWN_APP_ID:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;->ERROR_INVALID_REQUEST:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;->ERROR_STALE_CLIENT_ANCHOR:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;->ERROR_INVALID_ANCHOR:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;->ERROR_INCONSISTENT_SYNC_STATE:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;->ERROR_CLIENT_ANCHOR_NOT_SUPPORTED:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;->ERROR_SERVER_REQUESTS_RECOVERY:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;->$VALUES:[Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

    .line 51
    new-instance v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode$1;

    invoke-direct {v0}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode$1;-><init>()V

    sput-object v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 71
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

    sget-object v1, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;->OK:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;->ERROR_UNKNOWN:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;->ERROR_INTERNAL_SERVER_ERROR:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;->ERROR_PARSE:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

    aput-object v1, v0, v8

    sget-object v1, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;->ERROR_UNKNOWN_APP_ID:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;->ERROR_INVALID_REQUEST:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;->ERROR_STALE_CLIENT_ANCHOR:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;->ERROR_INVALID_ANCHOR:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;->ERROR_INCONSISTENT_SYNC_STATE:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;->ERROR_CLIENT_ANCHOR_NOT_SUPPORTED:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;->ERROR_SERVER_REQUESTS_RECOVERY:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;->VALUES:[Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

    .line 90
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 91
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
    .line 84
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 85
    iput p3, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;->index:I

    .line 86
    iput p4, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;->value:I

    .line 87
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .prologue
    .line 68
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

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
            "Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    sget-object v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 30
    sparse-switch p0, :sswitch_data_0

    .line 42
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 31
    :sswitch_0
    sget-object v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;->OK:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

    goto :goto_0

    .line 32
    :sswitch_1
    sget-object v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;->ERROR_UNKNOWN:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

    goto :goto_0

    .line 33
    :sswitch_2
    sget-object v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;->ERROR_INTERNAL_SERVER_ERROR:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

    goto :goto_0

    .line 34
    :sswitch_3
    sget-object v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;->ERROR_PARSE:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

    goto :goto_0

    .line 35
    :sswitch_4
    sget-object v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;->ERROR_UNKNOWN_APP_ID:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

    goto :goto_0

    .line 36
    :sswitch_5
    sget-object v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;->ERROR_INVALID_REQUEST:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

    goto :goto_0

    .line 37
    :sswitch_6
    sget-object v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;->ERROR_STALE_CLIENT_ANCHOR:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

    goto :goto_0

    .line 38
    :sswitch_7
    sget-object v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;->ERROR_INVALID_ANCHOR:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

    goto :goto_0

    .line 39
    :sswitch_8
    sget-object v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;->ERROR_INCONSISTENT_SYNC_STATE:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

    goto :goto_0

    .line 40
    :sswitch_9
    sget-object v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;->ERROR_CLIENT_ANCHOR_NOT_SUPPORTED:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

    goto :goto_0

    .line 41
    :sswitch_a
    sget-object v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;->ERROR_SERVER_REQUESTS_RECOVERY:Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

    goto :goto_0

    .line 30
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x3e8 -> :sswitch_1
        0x3f2 -> :sswitch_2
        0x3fc -> :sswitch_3
        0x7d0 -> :sswitch_4
        0x7da -> :sswitch_5
        0xbb8 -> :sswitch_6
        0xbc2 -> :sswitch_7
        0xbcc -> :sswitch_8
        0xbd6 -> :sswitch_9
        0xbe0 -> :sswitch_a
    .end sparse-switch
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;
    .locals 2
    .param p0, "desc"    # Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EnumValueDescriptor is not for this type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_0
    sget-object v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;->VALUES:[Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 11
    const-class v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

    return-object v0
.end method

.method public static values()[Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;->$VALUES:[Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .prologue
    .line 64
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .prologue
    .line 60
    invoke-static {}, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/motorola/blur/service/sync/protocol/SyncWsProtocol$SyncWSStatusCode;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
