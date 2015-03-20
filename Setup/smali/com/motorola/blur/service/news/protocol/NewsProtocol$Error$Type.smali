.class public final enum Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;
.super Ljava/lang/Enum;
.source "NewsProtocol.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;

.field public static final enum ALREADY_SUBSCRIBED:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;

.field public static final enum BAD_REQUEST:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;

.field public static final enum FORBIDDEN:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;

.field public static final enum INTERNAL_SERVER_ERROR:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;

.field public static final enum MULTIPLE_ERRORS:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;

.field public static final enum NOT_FOUND:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;

.field public static final enum OVER_LIMIT:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;

.field public static final enum SERVICE_UNAVAILABLE:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;

.field public static final enum UNAUTHORIZED:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;

.field public static final enum UNSUPPORTED_FORMAT:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;

.field private static final VALUES:[Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;",
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
    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 40
    new-instance v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;

    const-string v1, "BAD_REQUEST"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;->BAD_REQUEST:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;

    .line 41
    new-instance v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;

    const-string v1, "INTERNAL_SERVER_ERROR"

    invoke-direct {v0, v1, v5, v5, v6}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;->INTERNAL_SERVER_ERROR:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;

    .line 42
    new-instance v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;

    const-string v1, "SERVICE_UNAVAILABLE"

    invoke-direct {v0, v1, v6, v6, v7}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;->SERVICE_UNAVAILABLE:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;

    .line 43
    new-instance v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;

    const-string v1, "UNAUTHORIZED"

    invoke-direct {v0, v1, v7, v7, v8}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;->UNAUTHORIZED:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;

    .line 44
    new-instance v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;

    const-string v1, "FORBIDDEN"

    invoke-direct {v0, v1, v8, v8, v9}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;->FORBIDDEN:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;

    .line 45
    new-instance v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;

    const-string v1, "NOT_FOUND"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v9, v9, v2}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;->NOT_FOUND:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;

    .line 46
    new-instance v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;

    const-string v1, "MULTIPLE_ERRORS"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;->MULTIPLE_ERRORS:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;

    .line 47
    new-instance v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;

    const-string v1, "OVER_LIMIT"

    const/4 v2, 0x7

    const/4 v3, 0x7

    const/16 v4, 0xc8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;->OVER_LIMIT:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;

    .line 48
    new-instance v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;

    const-string v1, "ALREADY_SUBSCRIBED"

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0xc9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;->ALREADY_SUBSCRIBED:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;

    .line 49
    new-instance v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;

    const-string v1, "UNSUPPORTED_FORMAT"

    const/16 v2, 0x9

    const/16 v3, 0x9

    const/16 v4, 0xca

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;->UNSUPPORTED_FORMAT:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;

    .line 38
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;

    const/4 v1, 0x0

    sget-object v2, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;->BAD_REQUEST:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;

    aput-object v2, v0, v1

    sget-object v1, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;->INTERNAL_SERVER_ERROR:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;->SERVICE_UNAVAILABLE:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;->UNAUTHORIZED:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;

    aput-object v1, v0, v7

    sget-object v1, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;->FORBIDDEN:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;

    aput-object v1, v0, v8

    sget-object v1, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;->NOT_FOUND:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;->MULTIPLE_ERRORS:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;->OVER_LIMIT:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;->ALREADY_SUBSCRIBED:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;->UNSUPPORTED_FORMAT:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;->$VALUES:[Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;

    .line 76
    new-instance v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type$1;

    invoke-direct {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type$1;-><init>()V

    sput-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 96
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;

    const/4 v1, 0x0

    sget-object v2, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;->BAD_REQUEST:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;

    aput-object v2, v0, v1

    sget-object v1, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;->INTERNAL_SERVER_ERROR:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;->SERVICE_UNAVAILABLE:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;->UNAUTHORIZED:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;

    aput-object v1, v0, v7

    sget-object v1, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;->FORBIDDEN:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;

    aput-object v1, v0, v8

    sget-object v1, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;->NOT_FOUND:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;->MULTIPLE_ERRORS:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;->OVER_LIMIT:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;->ALREADY_SUBSCRIBED:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;->UNSUPPORTED_FORMAT:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;->VALUES:[Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;

    .line 115
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 116
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
    .line 109
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 110
    iput p3, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;->index:I

    .line 111
    iput p4, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;->value:I

    .line 112
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .prologue
    .line 93
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

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
            "Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    sget-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 56
    sparse-switch p0, :sswitch_data_0

    .line 67
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 57
    :sswitch_0
    sget-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;->BAD_REQUEST:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;

    goto :goto_0

    .line 58
    :sswitch_1
    sget-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;->INTERNAL_SERVER_ERROR:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;

    goto :goto_0

    .line 59
    :sswitch_2
    sget-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;->SERVICE_UNAVAILABLE:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;

    goto :goto_0

    .line 60
    :sswitch_3
    sget-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;->UNAUTHORIZED:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;

    goto :goto_0

    .line 61
    :sswitch_4
    sget-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;->FORBIDDEN:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;

    goto :goto_0

    .line 62
    :sswitch_5
    sget-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;->NOT_FOUND:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;

    goto :goto_0

    .line 63
    :sswitch_6
    sget-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;->MULTIPLE_ERRORS:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;

    goto :goto_0

    .line 64
    :sswitch_7
    sget-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;->OVER_LIMIT:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;

    goto :goto_0

    .line 65
    :sswitch_8
    sget-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;->ALREADY_SUBSCRIBED:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;

    goto :goto_0

    .line 66
    :sswitch_9
    sget-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;->UNSUPPORTED_FORMAT:Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;

    goto :goto_0

    .line 56
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0xc8 -> :sswitch_7
        0xc9 -> :sswitch_8
        0xca -> :sswitch_9
    .end sparse-switch
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;
    .locals 2
    .param p0, "desc"    # Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 102
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EnumValueDescriptor is not for this type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_0
    sget-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;->VALUES:[Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 38
    const-class v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;

    return-object v0
.end method

.method public static values()[Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;->$VALUES:[Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .prologue
    .line 89
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .prologue
    .line 85
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Type;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
