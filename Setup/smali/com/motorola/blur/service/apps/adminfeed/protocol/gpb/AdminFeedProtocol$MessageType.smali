.class public final enum Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType;
.super Ljava/lang/Enum;
.source "AdminFeedProtocol.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MessageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType;

.field public static final enum LOCK_DEVICE:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType;

.field public static final enum NOTIFY:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType;

.field public static final enum OTA_UPDATE:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType;

.field public static final enum RESET_PASSWD:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType;

.field public static final enum UNKNOWN:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType;

.field private static final VALUES:[Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType;

.field public static final enum WIPE_DEVICE:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType;",
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

    .line 13
    new-instance v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType;->UNKNOWN:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType;

    .line 14
    new-instance v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType;

    const-string v1, "NOTIFY"

    invoke-direct {v0, v1, v6, v6, v6}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType;->NOTIFY:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType;

    .line 15
    new-instance v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType;

    const-string v1, "RESET_PASSWD"

    invoke-direct {v0, v1, v7, v7, v7}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType;->RESET_PASSWD:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType;

    .line 16
    new-instance v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType;

    const-string v1, "OTA_UPDATE"

    invoke-direct {v0, v1, v8, v8, v8}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType;->OTA_UPDATE:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType;

    .line 17
    new-instance v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType;

    const-string v1, "WIPE_DEVICE"

    invoke-direct {v0, v1, v9, v9, v9}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType;->WIPE_DEVICE:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType;

    .line 18
    new-instance v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType;

    const-string v1, "LOCK_DEVICE"

    const/4 v2, 0x5

    const/4 v3, 0x5

    const/4 v4, 0x5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType;->LOCK_DEVICE:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType;

    .line 11
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType;

    sget-object v1, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType;->UNKNOWN:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType;->NOTIFY:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType;->RESET_PASSWD:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType;->OTA_UPDATE:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType;->WIPE_DEVICE:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType;->LOCK_DEVICE:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType;->$VALUES:[Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType;

    .line 41
    new-instance v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType$1;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType$1;-><init>()V

    sput-object v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 61
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType;

    sget-object v1, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType;->UNKNOWN:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType;->NOTIFY:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType;->RESET_PASSWD:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType;->OTA_UPDATE:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType;->WIPE_DEVICE:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType;->LOCK_DEVICE:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType;->VALUES:[Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType;

    .line 80
    invoke-static {}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 81
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
    .line 74
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 75
    iput p3, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType;->index:I

    .line 76
    iput p4, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType;->value:I

    .line 77
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .prologue
    .line 58
    invoke-static {}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

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
            "Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    sget-object v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 25
    packed-switch p0, :pswitch_data_0

    .line 32
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 26
    :pswitch_0
    sget-object v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType;->UNKNOWN:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType;

    goto :goto_0

    .line 27
    :pswitch_1
    sget-object v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType;->NOTIFY:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType;

    goto :goto_0

    .line 28
    :pswitch_2
    sget-object v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType;->RESET_PASSWD:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType;

    goto :goto_0

    .line 29
    :pswitch_3
    sget-object v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType;->OTA_UPDATE:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType;

    goto :goto_0

    .line 30
    :pswitch_4
    sget-object v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType;->WIPE_DEVICE:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType;

    goto :goto_0

    .line 31
    :pswitch_5
    sget-object v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType;->LOCK_DEVICE:Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType;

    goto :goto_0

    .line 25
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

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType;
    .locals 2
    .param p0, "desc"    # Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EnumValueDescriptor is not for this type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_0
    sget-object v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType;->VALUES:[Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 11
    const-class v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType;

    return-object v0
.end method

.method public static values()[Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType;->$VALUES:[Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .prologue
    .line 54
    invoke-static {}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .prologue
    .line 50
    invoke-static {}, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/motorola/blur/service/apps/adminfeed/protocol/gpb/AdminFeedProtocol$MessageType;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
