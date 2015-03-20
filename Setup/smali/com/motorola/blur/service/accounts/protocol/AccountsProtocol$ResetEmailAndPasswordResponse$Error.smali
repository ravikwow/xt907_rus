.class public final enum Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Error;
.super Ljava/lang/Enum;
.source "AccountsProtocol.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Error"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Error;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Error;

.field public static final enum CURRENT_EMAIL_NOT_EXIST:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Error;

.field public static final enum INVALID_ARGUMENTS:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Error;

.field public static final enum NEW_EMAIL_EXISTED:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Error;

.field public static final enum SERVICE_TEMPORARILY_DISABLED:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Error;

.field private static final VALUES:[Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Error;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Error;",
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

    .line 2991
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Error;

    const-string v1, "INVALID_ARGUMENTS"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Error;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Error;->INVALID_ARGUMENTS:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Error;

    .line 2992
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Error;

    const-string v1, "SERVICE_TEMPORARILY_DISABLED"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Error;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Error;->SERVICE_TEMPORARILY_DISABLED:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Error;

    .line 2993
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Error;

    const-string v1, "CURRENT_EMAIL_NOT_EXIST"

    invoke-direct {v0, v1, v4, v4, v4}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Error;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Error;->CURRENT_EMAIL_NOT_EXIST:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Error;

    .line 2994
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Error;

    const-string v1, "NEW_EMAIL_EXISTED"

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Error;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Error;->NEW_EMAIL_EXISTED:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Error;

    .line 2989
    new-array v0, v6, [Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Error;

    sget-object v1, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Error;->INVALID_ARGUMENTS:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Error;

    aput-object v1, v0, v2

    sget-object v1, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Error;->SERVICE_TEMPORARILY_DISABLED:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Error;

    aput-object v1, v0, v3

    sget-object v1, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Error;->CURRENT_EMAIL_NOT_EXIST:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Error;

    aput-object v1, v0, v4

    sget-object v1, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Error;->NEW_EMAIL_EXISTED:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Error;

    aput-object v1, v0, v5

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Error;->$VALUES:[Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Error;

    .line 3015
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Error$1;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Error$1;-><init>()V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Error;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 3035
    new-array v0, v6, [Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Error;

    sget-object v1, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Error;->INVALID_ARGUMENTS:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Error;

    aput-object v1, v0, v2

    sget-object v1, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Error;->SERVICE_TEMPORARILY_DISABLED:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Error;

    aput-object v1, v0, v3

    sget-object v1, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Error;->CURRENT_EMAIL_NOT_EXIST:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Error;

    aput-object v1, v0, v4

    sget-object v1, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Error;->NEW_EMAIL_EXISTED:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Error;

    aput-object v1, v0, v5

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Error;->VALUES:[Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Error;

    .line 3054
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 3055
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
    .line 3048
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 3049
    iput p3, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Error;->index:I

    .line 3050
    iput p4, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Error;->value:I

    .line 3051
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .prologue
    .line 3032
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

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
            "Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Error;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3012
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Error;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Error;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 3001
    packed-switch p0, :pswitch_data_0

    .line 3006
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 3002
    :pswitch_0
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Error;->INVALID_ARGUMENTS:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Error;

    goto :goto_0

    .line 3003
    :pswitch_1
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Error;->SERVICE_TEMPORARILY_DISABLED:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Error;

    goto :goto_0

    .line 3004
    :pswitch_2
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Error;->CURRENT_EMAIL_NOT_EXIST:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Error;

    goto :goto_0

    .line 3005
    :pswitch_3
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Error;->NEW_EMAIL_EXISTED:Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Error;

    goto :goto_0

    .line 3001
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Error;
    .locals 2
    .param p0, "desc"    # Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    .prologue
    .line 3040
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Error;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3041
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EnumValueDescriptor is not for this type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3044
    :cond_0
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Error;->VALUES:[Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Error;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Error;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 2989
    const-class v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Error;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Error;

    return-object v0
.end method

.method public static values()[Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Error;
    .locals 1

    .prologue
    .line 2989
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Error;->$VALUES:[Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Error;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Error;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .prologue
    .line 3028
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Error;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .prologue
    .line 2998
    iget v0, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Error;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .prologue
    .line 3024
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Error;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/motorola/blur/service/accounts/protocol/AccountsProtocol$ResetEmailAndPasswordResponse$Error;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
