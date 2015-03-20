.class public final enum Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo$FlagBits;
.super Ljava/lang/Enum;
.source "ProvisioningProtocol.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FlagBits"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo$FlagBits;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo$FlagBits;

.field private static final VALUES:[Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo$FlagBits;

.field public static final enum VERIFIED:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo$FlagBits;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo$FlagBits;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final index:I

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 999
    new-instance v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo$FlagBits;

    const-string v1, "VERIFIED"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo$FlagBits;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo$FlagBits;->VERIFIED:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo$FlagBits;

    .line 997
    new-array v0, v3, [Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo$FlagBits;

    sget-object v1, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo$FlagBits;->VERIFIED:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo$FlagBits;

    aput-object v1, v0, v2

    sput-object v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo$FlagBits;->$VALUES:[Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo$FlagBits;

    .line 1017
    new-instance v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo$FlagBits$1;

    invoke-direct {v0}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo$FlagBits$1;-><init>()V

    sput-object v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo$FlagBits;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 1037
    new-array v0, v3, [Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo$FlagBits;

    sget-object v1, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo$FlagBits;->VERIFIED:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo$FlagBits;

    aput-object v1, v0, v2

    sput-object v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo$FlagBits;->VALUES:[Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo$FlagBits;

    .line 1056
    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 1057
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
    .line 1050
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1051
    iput p3, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo$FlagBits;->index:I

    .line 1052
    iput p4, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo$FlagBits;->value:I

    .line 1053
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .prologue
    .line 1034
    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

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
            "Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo$FlagBits;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1014
    sget-object v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo$FlagBits;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo$FlagBits;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 1006
    packed-switch p0, :pswitch_data_0

    .line 1008
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1007
    :pswitch_0
    sget-object v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo$FlagBits;->VERIFIED:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo$FlagBits;

    goto :goto_0

    .line 1006
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo$FlagBits;
    .locals 2
    .param p0, "desc"    # Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    .prologue
    .line 1042
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo$FlagBits;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1043
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EnumValueDescriptor is not for this type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1046
    :cond_0
    sget-object v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo$FlagBits;->VALUES:[Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo$FlagBits;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo$FlagBits;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 997
    const-class v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo$FlagBits;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo$FlagBits;

    return-object v0
.end method

.method public static values()[Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo$FlagBits;
    .locals 1

    .prologue
    .line 997
    sget-object v0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo$FlagBits;->$VALUES:[Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo$FlagBits;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo$FlagBits;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .prologue
    .line 1030
    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo$FlagBits;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .prologue
    .line 1003
    iget v0, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo$FlagBits;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .prologue
    .line 1026
    invoke-static {}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo$FlagBits;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerAccountInfo$FlagBits;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
