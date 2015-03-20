.class public final enum Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MeFeedType;
.super Ljava/lang/Enum;
.source "CommonProtocol.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MeFeedType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MeFeedType;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MeFeedType;

.field public static final enum IS_FOR_ME:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MeFeedType;

.field public static final enum IS_ME:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MeFeedType;

.field public static final enum NEITHER:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MeFeedType;

.field private static final VALUES:[Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MeFeedType;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MeFeedType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final index:I

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MeFeedType;

    const-string v1, "NEITHER"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MeFeedType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MeFeedType;->NEITHER:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MeFeedType;

    .line 14
    new-instance v0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MeFeedType;

    const-string v1, "IS_FOR_ME"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MeFeedType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MeFeedType;->IS_FOR_ME:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MeFeedType;

    .line 15
    new-instance v0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MeFeedType;

    const-string v1, "IS_ME"

    invoke-direct {v0, v1, v4, v4, v4}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MeFeedType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MeFeedType;->IS_ME:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MeFeedType;

    .line 11
    new-array v0, v5, [Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MeFeedType;

    sget-object v1, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MeFeedType;->NEITHER:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MeFeedType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MeFeedType;->IS_FOR_ME:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MeFeedType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MeFeedType;->IS_ME:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MeFeedType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MeFeedType;->$VALUES:[Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MeFeedType;

    .line 35
    new-instance v0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MeFeedType$1;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MeFeedType$1;-><init>()V

    sput-object v0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MeFeedType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 55
    new-array v0, v5, [Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MeFeedType;

    sget-object v1, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MeFeedType;->NEITHER:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MeFeedType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MeFeedType;->IS_FOR_ME:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MeFeedType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MeFeedType;->IS_ME:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MeFeedType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MeFeedType;->VALUES:[Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MeFeedType;

    .line 74
    invoke-static {}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 75
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
    .line 68
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 69
    iput p3, p0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MeFeedType;->index:I

    .line 70
    iput p4, p0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MeFeedType;->value:I

    .line 71
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .prologue
    .line 52
    invoke-static {}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

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
            "Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MeFeedType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    sget-object v0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MeFeedType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MeFeedType;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 22
    packed-switch p0, :pswitch_data_0

    .line 26
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 23
    :pswitch_0
    sget-object v0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MeFeedType;->NEITHER:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MeFeedType;

    goto :goto_0

    .line 24
    :pswitch_1
    sget-object v0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MeFeedType;->IS_FOR_ME:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MeFeedType;

    goto :goto_0

    .line 25
    :pswitch_2
    sget-object v0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MeFeedType;->IS_ME:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MeFeedType;

    goto :goto_0

    .line 22
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MeFeedType;
    .locals 2
    .param p0, "desc"    # Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MeFeedType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EnumValueDescriptor is not for this type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_0
    sget-object v0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MeFeedType;->VALUES:[Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MeFeedType;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MeFeedType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 11
    const-class v0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MeFeedType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MeFeedType;

    return-object v0
.end method

.method public static values()[Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MeFeedType;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MeFeedType;->$VALUES:[Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MeFeedType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MeFeedType;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .prologue
    .line 48
    invoke-static {}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MeFeedType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MeFeedType;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .prologue
    .line 44
    invoke-static {}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MeFeedType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MeFeedType;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
