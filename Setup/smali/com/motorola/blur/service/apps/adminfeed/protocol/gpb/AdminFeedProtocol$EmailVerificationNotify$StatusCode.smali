.class public final enum Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$StatusCode;
.super Ljava/lang/Enum;
.source "AdminFeedProtocol.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StatusCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$StatusCode;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$StatusCode;

.field public static final enum INVALID:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$StatusCode;

.field public static final enum REMINDER:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$StatusCode;

.field public static final enum TIMEOUT:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$StatusCode;

.field public static final enum VALID:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$StatusCode;

.field private static final VALUES:[Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$StatusCode;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$StatusCode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final index:I

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3537
    new-instance v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$StatusCode;

    const-string v1, "VALID"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$StatusCode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$StatusCode;->VALID:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$StatusCode;

    .line 3538
    new-instance v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$StatusCode;

    const-string v1, "INVALID"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$StatusCode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$StatusCode;->INVALID:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$StatusCode;

    .line 3539
    new-instance v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$StatusCode;

    const-string v1, "TIMEOUT"

    invoke-direct {v0, v1, v4, v4, v4}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$StatusCode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$StatusCode;->TIMEOUT:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$StatusCode;

    .line 3540
    new-instance v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$StatusCode;

    const-string v1, "REMINDER"

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$StatusCode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$StatusCode;->REMINDER:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$StatusCode;

    .line 3535
    new-array v0, v6, [Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$StatusCode;

    sget-object v1, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$StatusCode;->VALID:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$StatusCode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$StatusCode;->INVALID:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$StatusCode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$StatusCode;->TIMEOUT:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$StatusCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$StatusCode;->REMINDER:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$StatusCode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$StatusCode;->$VALUES:[Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$StatusCode;

    .line 3561
    new-instance v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$StatusCode$1;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$StatusCode$1;-><init>()V

    sput-object v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$StatusCode;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 3581
    new-array v0, v6, [Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$StatusCode;

    sget-object v1, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$StatusCode;->VALID:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$StatusCode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$StatusCode;->INVALID:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$StatusCode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$StatusCode;->TIMEOUT:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$StatusCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$StatusCode;->REMINDER:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$StatusCode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$StatusCode;->VALUES:[Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$StatusCode;

    .line 3600
    invoke-static {}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 3601
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
    .line 3594
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 3595
    iput p3, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$StatusCode;->index:I

    .line 3596
    iput p4, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$StatusCode;->value:I

    .line 3597
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .prologue
    .line 3578
    invoke-static {}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

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
            "Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$StatusCode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3558
    sget-object v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$StatusCode;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$StatusCode;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 3547
    packed-switch p0, :pswitch_data_0

    .line 3552
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 3548
    :pswitch_0
    sget-object v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$StatusCode;->VALID:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$StatusCode;

    goto :goto_0

    .line 3549
    :pswitch_1
    sget-object v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$StatusCode;->INVALID:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$StatusCode;

    goto :goto_0

    .line 3550
    :pswitch_2
    sget-object v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$StatusCode;->TIMEOUT:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$StatusCode;

    goto :goto_0

    .line 3551
    :pswitch_3
    sget-object v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$StatusCode;->REMINDER:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$StatusCode;

    goto :goto_0

    .line 3547
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$StatusCode;
    .locals 2
    .param p0, "desc"    # Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    .prologue
    .line 3586
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$StatusCode;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3587
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EnumValueDescriptor is not for this type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3590
    :cond_0
    sget-object v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$StatusCode;->VALUES:[Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$StatusCode;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$StatusCode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3535
    const-class v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$StatusCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$StatusCode;

    return-object v0
.end method

.method public static values()[Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$StatusCode;
    .locals 1

    .prologue
    .line 3535
    sget-object v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$StatusCode;->$VALUES:[Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$StatusCode;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$StatusCode;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .prologue
    .line 3574
    invoke-static {}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$StatusCode;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .prologue
    .line 3544
    iget v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$StatusCode;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .prologue
    .line 3570
    invoke-static {}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$StatusCode;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$EmailVerificationNotify$StatusCode;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
