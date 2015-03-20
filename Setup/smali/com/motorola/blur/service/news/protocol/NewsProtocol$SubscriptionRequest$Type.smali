.class public final enum Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Type;
.super Ljava/lang/Enum;
.source "NewsProtocol.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Type;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Type;

.field public static final enum ADD:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Type;

.field public static final enum DELETE:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Type;

.field private static final VALUES:[Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Type;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Type;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final index:I

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2520
    new-instance v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Type;

    const-string v1, "ADD"

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Type;->ADD:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Type;

    .line 2521
    new-instance v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Type;

    const-string v1, "DELETE"

    invoke-direct {v0, v1, v2, v2, v4}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Type;->DELETE:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Type;

    .line 2518
    new-array v0, v4, [Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Type;

    sget-object v1, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Type;->ADD:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Type;->DELETE:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Type;

    aput-object v1, v0, v2

    sput-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Type;->$VALUES:[Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Type;

    .line 2540
    new-instance v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Type$1;

    invoke-direct {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Type$1;-><init>()V

    sput-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 2560
    new-array v0, v4, [Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Type;

    sget-object v1, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Type;->ADD:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Type;->DELETE:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Type;

    aput-object v1, v0, v2

    sput-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Type;->VALUES:[Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Type;

    .line 2579
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2580
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
    .line 2573
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2574
    iput p3, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Type;->index:I

    .line 2575
    iput p4, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Type;->value:I

    .line 2576
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .prologue
    .line 2557
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

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
            "Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Type;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2537
    sget-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Type;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 2528
    packed-switch p0, :pswitch_data_0

    .line 2531
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 2529
    :pswitch_0
    sget-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Type;->ADD:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Type;

    goto :goto_0

    .line 2530
    :pswitch_1
    sget-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Type;->DELETE:Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Type;

    goto :goto_0

    .line 2528
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Type;
    .locals 2
    .param p0, "desc"    # Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    .prologue
    .line 2565
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Type;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2566
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EnumValueDescriptor is not for this type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2569
    :cond_0
    sget-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Type;->VALUES:[Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Type;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 2518
    const-class v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Type;

    return-object v0
.end method

.method public static values()[Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Type;
    .locals 1

    .prologue
    .line 2518
    sget-object v0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Type;->$VALUES:[Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Type;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Type;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .prologue
    .line 2553
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Type;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .prologue
    .line 2525
    iget v0, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Type;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .prologue
    .line 2549
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Type;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Type;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
