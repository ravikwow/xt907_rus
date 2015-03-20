.class public final enum Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;
.super Ljava/lang/Enum;
.source "CommonProtocol.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MetaItemType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;

.field public static final enum APP:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;

.field public static final enum CONTACT:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;

.field public static final enum EVENT:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;

.field public static final enum LINK:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;

.field public static final enum LOCATION:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;

.field private static final VALUES:[Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;

.field public static final enum WINDOW_DRESSING_MEDIA:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;",
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

    .line 109
    new-instance v0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;

    const-string v1, "CONTACT"

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;->CONTACT:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;

    .line 110
    new-instance v0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;

    const-string v1, "LINK"

    invoke-direct {v0, v1, v6, v6, v6}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;->LINK:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;

    .line 111
    new-instance v0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;

    const-string v1, "LOCATION"

    invoke-direct {v0, v1, v7, v7, v7}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;->LOCATION:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;

    .line 112
    new-instance v0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;

    const-string v1, "EVENT"

    invoke-direct {v0, v1, v8, v8, v8}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;->EVENT:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;

    .line 113
    new-instance v0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;

    const-string v1, "APP"

    invoke-direct {v0, v1, v9, v9, v9}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;->APP:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;

    .line 114
    new-instance v0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;

    const-string v1, "WINDOW_DRESSING_MEDIA"

    const/4 v2, 0x5

    const/4 v3, 0x5

    const/4 v4, 0x5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;->WINDOW_DRESSING_MEDIA:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;

    .line 107
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;

    sget-object v1, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;->CONTACT:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;->LINK:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;->LOCATION:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;->EVENT:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;->APP:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;->WINDOW_DRESSING_MEDIA:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;->$VALUES:[Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;

    .line 137
    new-instance v0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType$1;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType$1;-><init>()V

    sput-object v0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 157
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;

    sget-object v1, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;->CONTACT:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;->LINK:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;->LOCATION:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;->EVENT:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;->APP:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;->WINDOW_DRESSING_MEDIA:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;->VALUES:[Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;

    .line 176
    invoke-static {}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 177
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
    .line 170
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 171
    iput p3, p0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;->index:I

    .line 172
    iput p4, p0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;->value:I

    .line 173
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .prologue
    .line 154
    invoke-static {}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

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
            "Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    sget-object v0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 121
    packed-switch p0, :pswitch_data_0

    .line 128
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 122
    :pswitch_0
    sget-object v0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;->CONTACT:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;

    goto :goto_0

    .line 123
    :pswitch_1
    sget-object v0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;->LINK:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;

    goto :goto_0

    .line 124
    :pswitch_2
    sget-object v0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;->LOCATION:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;

    goto :goto_0

    .line 125
    :pswitch_3
    sget-object v0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;->EVENT:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;

    goto :goto_0

    .line 126
    :pswitch_4
    sget-object v0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;->APP:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;

    goto :goto_0

    .line 127
    :pswitch_5
    sget-object v0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;->WINDOW_DRESSING_MEDIA:Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;

    goto :goto_0

    .line 121
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

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;
    .locals 2
    .param p0, "desc"    # Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 163
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EnumValueDescriptor is not for this type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_0
    sget-object v0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;->VALUES:[Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 107
    const-class v0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;

    return-object v0
.end method

.method public static values()[Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;
    .locals 1

    .prologue
    .line 107
    sget-object v0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;->$VALUES:[Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .prologue
    .line 150
    invoke-static {}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .prologue
    .line 146
    invoke-static {}, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/motorola/blur/service/apps/common/protocol/CommonProtocol$MetaItem$MetaItemType;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
