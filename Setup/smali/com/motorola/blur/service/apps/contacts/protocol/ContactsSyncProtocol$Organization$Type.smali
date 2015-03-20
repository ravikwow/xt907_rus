.class public final enum Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;
.super Ljava/lang/Enum;
.source "ContactsSyncProtocol.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;

.field public static final enum CUSTOM:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;

.field public static final enum HOME:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;

.field public static final enum HOME_FAX:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;

.field public static final enum MOBILE:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;

.field public static final enum OTHER:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;

.field public static final enum PAGER:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;

.field private static final VALUES:[Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;

.field public static final enum WORK:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;

.field public static final enum WORK_FAX:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;",
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

    .line 6048
    new-instance v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;

    const-string v1, "CUSTOM"

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;->CUSTOM:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;

    .line 6049
    new-instance v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;

    const-string v1, "HOME"

    invoke-direct {v0, v1, v6, v6, v6}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;->HOME:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;

    .line 6050
    new-instance v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;

    const-string v1, "MOBILE"

    invoke-direct {v0, v1, v7, v7, v7}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;->MOBILE:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;

    .line 6051
    new-instance v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;

    const-string v1, "WORK"

    invoke-direct {v0, v1, v8, v8, v8}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;->WORK:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;

    .line 6052
    new-instance v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;

    const-string v1, "WORK_FAX"

    invoke-direct {v0, v1, v9, v9, v9}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;->WORK_FAX:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;

    .line 6053
    new-instance v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;

    const-string v1, "HOME_FAX"

    const/4 v2, 0x5

    const/4 v3, 0x5

    const/4 v4, 0x5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;->HOME_FAX:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;

    .line 6054
    new-instance v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;

    const-string v1, "PAGER"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const/4 v4, 0x6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;->PAGER:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;

    .line 6055
    new-instance v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;

    const-string v1, "OTHER"

    const/4 v2, 0x7

    const/4 v3, 0x7

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;->OTHER:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;

    .line 6046
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;

    sget-object v1, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;->CUSTOM:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;->HOME:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;->MOBILE:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;

    aput-object v1, v0, v7

    sget-object v1, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;->WORK:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;

    aput-object v1, v0, v8

    sget-object v1, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;->WORK_FAX:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;->HOME_FAX:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;->PAGER:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;->OTHER:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;->$VALUES:[Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;

    .line 6080
    new-instance v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type$1;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type$1;-><init>()V

    sput-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 6100
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;

    sget-object v1, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;->CUSTOM:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;->HOME:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;->MOBILE:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;

    aput-object v1, v0, v7

    sget-object v1, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;->WORK:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;

    aput-object v1, v0, v8

    sget-object v1, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;->WORK_FAX:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;->HOME_FAX:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;->PAGER:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;->OTHER:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;->VALUES:[Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;

    .line 6119
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 6120
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
    .line 6113
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 6114
    iput p3, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;->index:I

    .line 6115
    iput p4, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;->value:I

    .line 6116
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .prologue
    .line 6097
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

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
            "Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6077
    sget-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 6062
    packed-switch p0, :pswitch_data_0

    .line 6071
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 6063
    :pswitch_0
    sget-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;->CUSTOM:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;

    goto :goto_0

    .line 6064
    :pswitch_1
    sget-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;->HOME:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;

    goto :goto_0

    .line 6065
    :pswitch_2
    sget-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;->MOBILE:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;

    goto :goto_0

    .line 6066
    :pswitch_3
    sget-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;->WORK:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;

    goto :goto_0

    .line 6067
    :pswitch_4
    sget-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;->WORK_FAX:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;

    goto :goto_0

    .line 6068
    :pswitch_5
    sget-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;->HOME_FAX:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;

    goto :goto_0

    .line 6069
    :pswitch_6
    sget-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;->PAGER:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;

    goto :goto_0

    .line 6070
    :pswitch_7
    sget-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;->OTHER:Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;

    goto :goto_0

    .line 6062
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

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;
    .locals 2
    .param p0, "desc"    # Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    .prologue
    .line 6105
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 6106
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EnumValueDescriptor is not for this type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6109
    :cond_0
    sget-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;->VALUES:[Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6046
    const-class v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;

    return-object v0
.end method

.method public static values()[Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;
    .locals 1

    .prologue
    .line 6046
    sget-object v0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;->$VALUES:[Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .prologue
    .line 6093
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .prologue
    .line 6059
    iget v0, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .prologue
    .line 6089
    invoke-static {}, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/motorola/blur/service/apps/contacts/protocol/ContactsSyncProtocol$Organization$Type;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
