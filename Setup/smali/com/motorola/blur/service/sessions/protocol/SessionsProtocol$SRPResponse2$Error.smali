.class public final enum Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;
.super Ljava/lang/Enum;
.source "SessionsProtocol.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Error"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;

.field public static final enum CAPTCHA_EXPIRED:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;

.field public static final enum INVALID_ARGUMENTS:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;

.field public static final enum INVALID_CAPTCHA_INFO:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;

.field public static final enum REQUEST_PARSE_ERROR:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;

.field public static final enum SERVICE_TEMPORARILY_DISABLED:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;

.field public static final enum TIMEOUT:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;

.field private static final VALUES:[Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;

.field public static final enum WRONG_DEVICE:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;

.field public static final enum WRONG_PASSWORD:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;",
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

    .line 1226
    new-instance v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;

    const-string v1, "WRONG_PASSWORD"

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;->WRONG_PASSWORD:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;

    .line 1227
    new-instance v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;

    const-string v1, "INVALID_ARGUMENTS"

    invoke-direct {v0, v1, v6, v6, v6}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;->INVALID_ARGUMENTS:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;

    .line 1228
    new-instance v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;

    const-string v1, "REQUEST_PARSE_ERROR"

    invoke-direct {v0, v1, v7, v7, v7}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;->REQUEST_PARSE_ERROR:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;

    .line 1229
    new-instance v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;

    const-string v1, "SERVICE_TEMPORARILY_DISABLED"

    invoke-direct {v0, v1, v8, v8, v8}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;->SERVICE_TEMPORARILY_DISABLED:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;

    .line 1230
    new-instance v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;

    const-string v1, "WRONG_DEVICE"

    invoke-direct {v0, v1, v9, v9, v9}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;->WRONG_DEVICE:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;

    .line 1231
    new-instance v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;

    const-string v1, "TIMEOUT"

    const/4 v2, 0x5

    const/4 v3, 0x5

    const/4 v4, 0x5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;->TIMEOUT:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;

    .line 1232
    new-instance v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;

    const-string v1, "INVALID_CAPTCHA_INFO"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const/4 v4, 0x6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;->INVALID_CAPTCHA_INFO:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;

    .line 1233
    new-instance v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;

    const-string v1, "CAPTCHA_EXPIRED"

    const/4 v2, 0x7

    const/4 v3, 0x7

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;->CAPTCHA_EXPIRED:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;

    .line 1224
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;

    sget-object v1, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;->WRONG_PASSWORD:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;

    aput-object v1, v0, v5

    sget-object v1, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;->INVALID_ARGUMENTS:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;

    aput-object v1, v0, v6

    sget-object v1, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;->REQUEST_PARSE_ERROR:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;

    aput-object v1, v0, v7

    sget-object v1, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;->SERVICE_TEMPORARILY_DISABLED:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;

    aput-object v1, v0, v8

    sget-object v1, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;->WRONG_DEVICE:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;->TIMEOUT:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;->INVALID_CAPTCHA_INFO:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;->CAPTCHA_EXPIRED:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;->$VALUES:[Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;

    .line 1258
    new-instance v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error$1;

    invoke-direct {v0}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error$1;-><init>()V

    sput-object v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 1278
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;

    sget-object v1, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;->WRONG_PASSWORD:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;

    aput-object v1, v0, v5

    sget-object v1, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;->INVALID_ARGUMENTS:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;

    aput-object v1, v0, v6

    sget-object v1, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;->REQUEST_PARSE_ERROR:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;

    aput-object v1, v0, v7

    sget-object v1, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;->SERVICE_TEMPORARILY_DISABLED:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;

    aput-object v1, v0, v8

    sget-object v1, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;->WRONG_DEVICE:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;->TIMEOUT:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;->INVALID_CAPTCHA_INFO:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;->CAPTCHA_EXPIRED:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;->VALUES:[Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;

    .line 1297
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 1298
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
    .line 1291
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1292
    iput p3, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;->index:I

    .line 1293
    iput p4, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;->value:I

    .line 1294
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .prologue
    .line 1275
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

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
            "Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1255
    sget-object v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 1240
    packed-switch p0, :pswitch_data_0

    .line 1249
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1241
    :pswitch_0
    sget-object v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;->WRONG_PASSWORD:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;

    goto :goto_0

    .line 1242
    :pswitch_1
    sget-object v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;->INVALID_ARGUMENTS:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;

    goto :goto_0

    .line 1243
    :pswitch_2
    sget-object v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;->REQUEST_PARSE_ERROR:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;

    goto :goto_0

    .line 1244
    :pswitch_3
    sget-object v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;->SERVICE_TEMPORARILY_DISABLED:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;

    goto :goto_0

    .line 1245
    :pswitch_4
    sget-object v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;->WRONG_DEVICE:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;

    goto :goto_0

    .line 1246
    :pswitch_5
    sget-object v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;->TIMEOUT:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;

    goto :goto_0

    .line 1247
    :pswitch_6
    sget-object v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;->INVALID_CAPTCHA_INFO:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;

    goto :goto_0

    .line 1248
    :pswitch_7
    sget-object v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;->CAPTCHA_EXPIRED:Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;

    goto :goto_0

    .line 1240
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
    .end packed-switch
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;
    .locals 2
    .param p0, "desc"    # Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    .prologue
    .line 1283
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1284
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EnumValueDescriptor is not for this type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1287
    :cond_0
    sget-object v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;->VALUES:[Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1224
    const-class v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;

    return-object v0
.end method

.method public static values()[Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;
    .locals 1

    .prologue
    .line 1224
    sget-object v0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;->$VALUES:[Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .prologue
    .line 1271
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .prologue
    .line 1237
    iget v0, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .prologue
    .line 1267
    invoke-static {}, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/motorola/blur/service/sessions/protocol/SessionsProtocol$SRPResponse2$Error;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
