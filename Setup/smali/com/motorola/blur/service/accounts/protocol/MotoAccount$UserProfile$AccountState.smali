.class public final enum Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountState;
.super Ljava/lang/Enum;
.source "MotoAccount.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AccountState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountState;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountState;

.field public static final enum DELETED:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountState;

.field public static final enum DISABLED:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountState;

.field public static final enum ENABLED:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountState;

.field private static final VALUES:[Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountState;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountState;",
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
    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 13044
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountState;

    const-string v1, "ENABLED"

    invoke-direct {v0, v1, v5, v5, v3}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountState;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountState;->ENABLED:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountState;

    .line 13045
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountState;

    const-string v1, "DISABLED"

    invoke-direct {v0, v1, v3, v3, v4}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountState;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountState;->DISABLED:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountState;

    .line 13046
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountState;

    const-string v1, "DELETED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v4, v4, v2}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountState;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountState;->DELETED:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountState;

    .line 13042
    new-array v0, v6, [Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountState;

    sget-object v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountState;->ENABLED:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountState;->DISABLED:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountState;->DELETED:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountState;->$VALUES:[Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountState;

    .line 13066
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountState$1;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountState$1;-><init>()V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountState;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 13086
    new-array v0, v6, [Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountState;

    sget-object v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountState;->ENABLED:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountState;->DISABLED:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountState;->DELETED:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountState;->VALUES:[Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountState;

    .line 13105
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 13106
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
    .line 13099
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13100
    iput p3, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountState;->index:I

    .line 13101
    iput p4, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountState;->value:I

    .line 13102
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .prologue
    .line 13083
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

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
            "Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 13063
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountState;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountState;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 13053
    packed-switch p0, :pswitch_data_0

    .line 13057
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 13054
    :pswitch_1
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountState;->ENABLED:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountState;

    goto :goto_0

    .line 13055
    :pswitch_2
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountState;->DISABLED:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountState;

    goto :goto_0

    .line 13056
    :pswitch_3
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountState;->DELETED:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountState;

    goto :goto_0

    .line 13053
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountState;
    .locals 2
    .param p0, "desc"    # Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    .prologue
    .line 13091
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountState;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 13092
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EnumValueDescriptor is not for this type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 13095
    :cond_0
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountState;->VALUES:[Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountState;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 13042
    const-class v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountState;

    return-object v0
.end method

.method public static values()[Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountState;
    .locals 1

    .prologue
    .line 13042
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountState;->$VALUES:[Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountState;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountState;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .prologue
    .line 13079
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountState;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .prologue
    .line 13050
    iget v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountState;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .prologue
    .line 13075
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountState;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountState;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
