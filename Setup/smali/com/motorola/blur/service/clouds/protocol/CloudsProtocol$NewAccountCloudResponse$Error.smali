.class public final enum Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;
.super Ljava/lang/Enum;
.source "CloudsProtocol.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Error"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;

.field public static final enum CAPTCHA_EXPIRED:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;

.field public static final enum INVALID_ARGUMENTS:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;

.field public static final enum INVALID_CAPTCHA_INFO:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;

.field public static final enum REQUEST_PARSE_ERROR:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;

.field public static final enum SCREEN_NAME_OCCUPIED:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;

.field public static final enum SERVICE_TEMPORARILY_DISABLED:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;

.field private static final VALUES:[Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;",
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

    .line 370
    new-instance v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;

    const-string v1, "INVALID_ARGUMENTS"

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;->INVALID_ARGUMENTS:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;

    .line 371
    new-instance v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;

    const-string v1, "REQUEST_PARSE_ERROR"

    invoke-direct {v0, v1, v6, v6, v6}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;->REQUEST_PARSE_ERROR:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;

    .line 372
    new-instance v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;

    const-string v1, "SERVICE_TEMPORARILY_DISABLED"

    invoke-direct {v0, v1, v7, v7, v7}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;->SERVICE_TEMPORARILY_DISABLED:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;

    .line 373
    new-instance v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;

    const-string v1, "INVALID_CAPTCHA_INFO"

    invoke-direct {v0, v1, v8, v8, v8}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;->INVALID_CAPTCHA_INFO:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;

    .line 374
    new-instance v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;

    const-string v1, "CAPTCHA_EXPIRED"

    invoke-direct {v0, v1, v9, v9, v9}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;->CAPTCHA_EXPIRED:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;

    .line 375
    new-instance v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;

    const-string v1, "SCREEN_NAME_OCCUPIED"

    const/4 v2, 0x5

    const/4 v3, 0x5

    const/4 v4, 0x5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;->SCREEN_NAME_OCCUPIED:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;

    .line 368
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;

    sget-object v1, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;->INVALID_ARGUMENTS:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;

    aput-object v1, v0, v5

    sget-object v1, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;->REQUEST_PARSE_ERROR:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;

    aput-object v1, v0, v6

    sget-object v1, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;->SERVICE_TEMPORARILY_DISABLED:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;

    aput-object v1, v0, v7

    sget-object v1, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;->INVALID_CAPTCHA_INFO:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;

    aput-object v1, v0, v8

    sget-object v1, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;->CAPTCHA_EXPIRED:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;->SCREEN_NAME_OCCUPIED:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;->$VALUES:[Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;

    .line 398
    new-instance v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error$1;

    invoke-direct {v0}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error$1;-><init>()V

    sput-object v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 418
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;

    sget-object v1, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;->INVALID_ARGUMENTS:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;

    aput-object v1, v0, v5

    sget-object v1, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;->REQUEST_PARSE_ERROR:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;

    aput-object v1, v0, v6

    sget-object v1, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;->SERVICE_TEMPORARILY_DISABLED:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;

    aput-object v1, v0, v7

    sget-object v1, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;->INVALID_CAPTCHA_INFO:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;

    aput-object v1, v0, v8

    sget-object v1, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;->CAPTCHA_EXPIRED:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;->SCREEN_NAME_OCCUPIED:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;->VALUES:[Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;

    .line 437
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 438
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
    .line 431
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 432
    iput p3, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;->index:I

    .line 433
    iput p4, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;->value:I

    .line 434
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .prologue
    .line 415
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

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
            "Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;",
            ">;"
        }
    .end annotation

    .prologue
    .line 395
    sget-object v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 382
    packed-switch p0, :pswitch_data_0

    .line 389
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 383
    :pswitch_0
    sget-object v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;->INVALID_ARGUMENTS:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;

    goto :goto_0

    .line 384
    :pswitch_1
    sget-object v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;->REQUEST_PARSE_ERROR:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;

    goto :goto_0

    .line 385
    :pswitch_2
    sget-object v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;->SERVICE_TEMPORARILY_DISABLED:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;

    goto :goto_0

    .line 386
    :pswitch_3
    sget-object v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;->INVALID_CAPTCHA_INFO:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;

    goto :goto_0

    .line 387
    :pswitch_4
    sget-object v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;->CAPTCHA_EXPIRED:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;

    goto :goto_0

    .line 388
    :pswitch_5
    sget-object v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;->SCREEN_NAME_OCCUPIED:Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;

    goto :goto_0

    .line 382
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;
    .locals 2
    .param p0, "desc"    # Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    .prologue
    .line 423
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 424
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EnumValueDescriptor is not for this type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 427
    :cond_0
    sget-object v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;->VALUES:[Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 368
    const-class v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;

    return-object v0
.end method

.method public static values()[Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;
    .locals 1

    .prologue
    .line 368
    sget-object v0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;->$VALUES:[Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .prologue
    .line 411
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .prologue
    .line 379
    iget v0, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .prologue
    .line 407
    invoke-static {}, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/motorola/blur/service/clouds/protocol/CloudsProtocol$NewAccountCloudResponse$Error;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
