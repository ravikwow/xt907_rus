.class public final enum Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;
.super Ljava/lang/Enum;
.source "ContactsSyncProtocol.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Month"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;

.field public static final enum April:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;

.field public static final enum August:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;

.field public static final enum December:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;

.field public static final enum February:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;

.field public static final enum January:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;

.field public static final enum July:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;

.field public static final enum June:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;

.field public static final enum March:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;

.field public static final enum May:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;

.field public static final enum November:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;

.field public static final enum October:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;

.field public static final enum September:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;

.field private static final VALUES:[Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;",
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

    .line 2625
    new-instance v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;

    const-string v1, "January"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;->January:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;

    .line 2626
    new-instance v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;

    const-string v1, "February"

    invoke-direct {v0, v1, v5, v5, v6}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;->February:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;

    .line 2627
    new-instance v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;

    const-string v1, "March"

    invoke-direct {v0, v1, v6, v6, v7}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;->March:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;

    .line 2628
    new-instance v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;

    const-string v1, "April"

    invoke-direct {v0, v1, v7, v7, v8}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;->April:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;

    .line 2629
    new-instance v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;

    const-string v1, "May"

    invoke-direct {v0, v1, v8, v8, v9}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;->May:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;

    .line 2630
    new-instance v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;

    const-string v1, "June"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v9, v9, v2}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;->June:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;

    .line 2631
    new-instance v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;

    const-string v1, "July"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;->July:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;

    .line 2632
    new-instance v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;

    const-string v1, "August"

    const/4 v2, 0x7

    const/4 v3, 0x7

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;->August:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;

    .line 2633
    new-instance v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;

    const-string v1, "September"

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;->September:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;

    .line 2634
    new-instance v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;

    const-string v1, "October"

    const/16 v2, 0x9

    const/16 v3, 0x9

    const/16 v4, 0xa

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;->October:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;

    .line 2635
    new-instance v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;

    const-string v1, "November"

    const/16 v2, 0xa

    const/16 v3, 0xa

    const/16 v4, 0xb

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;->November:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;

    .line 2636
    new-instance v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;

    const-string v1, "December"

    const/16 v2, 0xb

    const/16 v3, 0xb

    const/16 v4, 0xc

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;->December:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;

    .line 2623
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;

    const/4 v1, 0x0

    sget-object v2, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;->January:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;

    aput-object v2, v0, v1

    sget-object v1, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;->February:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;

    aput-object v1, v0, v5

    sget-object v1, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;->March:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;

    aput-object v1, v0, v6

    sget-object v1, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;->April:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;

    aput-object v1, v0, v7

    sget-object v1, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;->May:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;

    aput-object v1, v0, v8

    sget-object v1, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;->June:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;->July:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;->August:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;->September:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;->October:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;->November:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;->December:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;->$VALUES:[Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;

    .line 2665
    new-instance v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month$1;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month$1;-><init>()V

    sput-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 2685
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;

    const/4 v1, 0x0

    sget-object v2, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;->January:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;

    aput-object v2, v0, v1

    sget-object v1, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;->February:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;

    aput-object v1, v0, v5

    sget-object v1, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;->March:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;

    aput-object v1, v0, v6

    sget-object v1, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;->April:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;

    aput-object v1, v0, v7

    sget-object v1, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;->May:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;

    aput-object v1, v0, v8

    sget-object v1, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;->June:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;->July:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;->August:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;->September:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;->October:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;->November:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;->December:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;->VALUES:[Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;

    .line 2704
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 2705
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
    .line 2698
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2699
    iput p3, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;->index:I

    .line 2700
    iput p4, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;->value:I

    .line 2701
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .prologue
    .line 2682
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$Descriptor;->getEnumTypes()Ljava/util/List;

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
            "Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2662
    sget-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 2643
    packed-switch p0, :pswitch_data_0

    .line 2656
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 2644
    :pswitch_0
    sget-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;->January:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;

    goto :goto_0

    .line 2645
    :pswitch_1
    sget-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;->February:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;

    goto :goto_0

    .line 2646
    :pswitch_2
    sget-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;->March:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;

    goto :goto_0

    .line 2647
    :pswitch_3
    sget-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;->April:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;

    goto :goto_0

    .line 2648
    :pswitch_4
    sget-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;->May:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;

    goto :goto_0

    .line 2649
    :pswitch_5
    sget-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;->June:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;

    goto :goto_0

    .line 2650
    :pswitch_6
    sget-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;->July:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;

    goto :goto_0

    .line 2651
    :pswitch_7
    sget-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;->August:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;

    goto :goto_0

    .line 2652
    :pswitch_8
    sget-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;->September:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;

    goto :goto_0

    .line 2653
    :pswitch_9
    sget-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;->October:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;

    goto :goto_0

    .line 2654
    :pswitch_a
    sget-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;->November:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;

    goto :goto_0

    .line 2655
    :pswitch_b
    sget-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;->December:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;

    goto :goto_0

    .line 2643
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
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
    .end packed-switch
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;
    .locals 2
    .param p0, "desc"    # Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    .prologue
    .line 2690
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2691
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EnumValueDescriptor is not for this type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2694
    :cond_0
    sget-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;->VALUES:[Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 2623
    const-class v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;

    return-object v0
.end method

.method public static values()[Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;
    .locals 1

    .prologue
    .line 2623
    sget-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;->$VALUES:[Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .prologue
    .line 2678
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .prologue
    .line 2640
    iget v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .prologue
    .line 2674
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Person$Month;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
