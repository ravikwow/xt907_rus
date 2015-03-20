.class public final enum Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;
.super Ljava/lang/Enum;
.source "PhotosProtocol.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;

.field public static final enum AUTH_ERROR:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;

.field public static final enum INTERNAL_ERROR:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;

.field public static final enum INVALID_ARGUMENTS:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;

.field public static final enum INVALID_PID:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;

.field public static final enum MISSING_PHOTO:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;

.field public static final enum PHOTO_STORAGE_ERROR:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;

.field public static final enum REQUEST_PARSE_ERROR:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;

.field public static final enum SERVICE_UNAVAILABLE:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;

.field public static final enum SHARING_ERROR:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;

.field private static final VALUES:[Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;",
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

    .line 463
    new-instance v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;

    const-string v1, "INVALID_ARGUMENTS"

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;->INVALID_ARGUMENTS:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;

    .line 464
    new-instance v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;

    const-string v1, "REQUEST_PARSE_ERROR"

    invoke-direct {v0, v1, v6, v6, v6}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;->REQUEST_PARSE_ERROR:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;

    .line 465
    new-instance v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;

    const-string v1, "INTERNAL_ERROR"

    invoke-direct {v0, v1, v7, v7, v7}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;->INTERNAL_ERROR:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;

    .line 466
    new-instance v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;

    const-string v1, "SERVICE_UNAVAILABLE"

    invoke-direct {v0, v1, v8, v8, v8}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;->SERVICE_UNAVAILABLE:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;

    .line 467
    new-instance v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;

    const-string v1, "AUTH_ERROR"

    invoke-direct {v0, v1, v9, v9, v9}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;->AUTH_ERROR:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;

    .line 468
    new-instance v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;

    const-string v1, "INVALID_PID"

    const/4 v2, 0x5

    const/4 v3, 0x5

    const/16 v4, 0x64

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;->INVALID_PID:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;

    .line 469
    new-instance v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;

    const-string v1, "MISSING_PHOTO"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const/16 v4, 0x65

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;->MISSING_PHOTO:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;

    .line 470
    new-instance v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;

    const-string v1, "PHOTO_STORAGE_ERROR"

    const/4 v2, 0x7

    const/4 v3, 0x7

    const/16 v4, 0x66

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;->PHOTO_STORAGE_ERROR:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;

    .line 471
    new-instance v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;

    const-string v1, "SHARING_ERROR"

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x67

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;->SHARING_ERROR:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;

    .line 461
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;

    sget-object v1, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;->INVALID_ARGUMENTS:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;->REQUEST_PARSE_ERROR:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;->INTERNAL_ERROR:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;

    aput-object v1, v0, v7

    sget-object v1, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;->SERVICE_UNAVAILABLE:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;

    aput-object v1, v0, v8

    sget-object v1, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;->AUTH_ERROR:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;->INVALID_PID:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;->MISSING_PHOTO:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;->PHOTO_STORAGE_ERROR:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;->SHARING_ERROR:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;->$VALUES:[Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;

    .line 497
    new-instance v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type$1;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type$1;-><init>()V

    sput-object v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 517
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;

    sget-object v1, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;->INVALID_ARGUMENTS:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;->REQUEST_PARSE_ERROR:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;->INTERNAL_ERROR:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;

    aput-object v1, v0, v7

    sget-object v1, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;->SERVICE_UNAVAILABLE:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;

    aput-object v1, v0, v8

    sget-object v1, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;->AUTH_ERROR:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;->INVALID_PID:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;->MISSING_PHOTO:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;->PHOTO_STORAGE_ERROR:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;->SHARING_ERROR:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;->VALUES:[Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;

    .line 536
    invoke-static {}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 537
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
    .line 530
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 531
    iput p3, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;->index:I

    .line 532
    iput p4, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;->value:I

    .line 533
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .prologue
    .line 514
    invoke-static {}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

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
            "Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;",
            ">;"
        }
    .end annotation

    .prologue
    .line 494
    sget-object v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 478
    sparse-switch p0, :sswitch_data_0

    .line 488
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 479
    :sswitch_0
    sget-object v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;->INVALID_ARGUMENTS:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;

    goto :goto_0

    .line 480
    :sswitch_1
    sget-object v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;->REQUEST_PARSE_ERROR:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;

    goto :goto_0

    .line 481
    :sswitch_2
    sget-object v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;->INTERNAL_ERROR:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;

    goto :goto_0

    .line 482
    :sswitch_3
    sget-object v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;->SERVICE_UNAVAILABLE:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;

    goto :goto_0

    .line 483
    :sswitch_4
    sget-object v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;->AUTH_ERROR:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;

    goto :goto_0

    .line 484
    :sswitch_5
    sget-object v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;->INVALID_PID:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;

    goto :goto_0

    .line 485
    :sswitch_6
    sget-object v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;->MISSING_PHOTO:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;

    goto :goto_0

    .line 486
    :sswitch_7
    sget-object v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;->PHOTO_STORAGE_ERROR:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;

    goto :goto_0

    .line 487
    :sswitch_8
    sget-object v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;->SHARING_ERROR:Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;

    goto :goto_0

    .line 478
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x64 -> :sswitch_5
        0x65 -> :sswitch_6
        0x66 -> :sswitch_7
        0x67 -> :sswitch_8
    .end sparse-switch
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;
    .locals 2
    .param p0, "desc"    # Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    .prologue
    .line 522
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 523
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EnumValueDescriptor is not for this type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 526
    :cond_0
    sget-object v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;->VALUES:[Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 461
    const-class v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;

    return-object v0
.end method

.method public static values()[Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;
    .locals 1

    .prologue
    .line 461
    sget-object v0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;->$VALUES:[Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .prologue
    .line 510
    invoke-static {}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .prologue
    .line 475
    iget v0, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .prologue
    .line 506
    invoke-static {}, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/motorola/blur/service/apps/photos/protocol/PhotosProtocol$PhotoResponse$Error$Type;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
