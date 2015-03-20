.class public final enum Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountVerificationStatus;
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
    name = "AccountVerificationStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountVerificationStatus;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountVerificationStatus;

.field public static final enum UNVERIFIED:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountVerificationStatus;

.field private static final VALUES:[Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountVerificationStatus;

.field public static final enum VERIFIED:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountVerificationStatus;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountVerificationStatus;",
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

    .line 13113
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountVerificationStatus;

    const-string v1, "VERIFIED"

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountVerificationStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountVerificationStatus;->VERIFIED:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountVerificationStatus;

    .line 13114
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountVerificationStatus;

    const-string v1, "UNVERIFIED"

    invoke-direct {v0, v1, v2, v2, v4}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountVerificationStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountVerificationStatus;->UNVERIFIED:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountVerificationStatus;

    .line 13111
    new-array v0, v4, [Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountVerificationStatus;

    sget-object v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountVerificationStatus;->VERIFIED:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountVerificationStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountVerificationStatus;->UNVERIFIED:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountVerificationStatus;

    aput-object v1, v0, v2

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountVerificationStatus;->$VALUES:[Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountVerificationStatus;

    .line 13133
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountVerificationStatus$1;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountVerificationStatus$1;-><init>()V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountVerificationStatus;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 13153
    new-array v0, v4, [Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountVerificationStatus;

    sget-object v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountVerificationStatus;->VERIFIED:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountVerificationStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountVerificationStatus;->UNVERIFIED:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountVerificationStatus;

    aput-object v1, v0, v2

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountVerificationStatus;->VALUES:[Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountVerificationStatus;

    .line 13172
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 13173
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
    .line 13166
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13167
    iput p3, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountVerificationStatus;->index:I

    .line 13168
    iput p4, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountVerificationStatus;->value:I

    .line 13169
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .prologue
    .line 13150
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

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
            "Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountVerificationStatus;",
            ">;"
        }
    .end annotation

    .prologue
    .line 13130
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountVerificationStatus;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountVerificationStatus;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 13121
    packed-switch p0, :pswitch_data_0

    .line 13124
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 13122
    :pswitch_0
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountVerificationStatus;->VERIFIED:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountVerificationStatus;

    goto :goto_0

    .line 13123
    :pswitch_1
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountVerificationStatus;->UNVERIFIED:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountVerificationStatus;

    goto :goto_0

    .line 13121
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountVerificationStatus;
    .locals 2
    .param p0, "desc"    # Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    .prologue
    .line 13158
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountVerificationStatus;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 13159
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EnumValueDescriptor is not for this type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 13162
    :cond_0
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountVerificationStatus;->VALUES:[Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountVerificationStatus;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountVerificationStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 13111
    const-class v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountVerificationStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountVerificationStatus;

    return-object v0
.end method

.method public static values()[Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountVerificationStatus;
    .locals 1

    .prologue
    .line 13111
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountVerificationStatus;->$VALUES:[Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountVerificationStatus;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountVerificationStatus;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .prologue
    .line 13146
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountVerificationStatus;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .prologue
    .line 13118
    iget v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountVerificationStatus;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .prologue
    .line 13142
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountVerificationStatus;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$UserProfile$AccountVerificationStatus;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
