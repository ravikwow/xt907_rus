.class public final enum Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$TokenType;
.super Ljava/lang/Enum;
.source "MotoAccount.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TokenType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$TokenType;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$TokenType;

.field public static final enum CHANGE_LOGIN:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$TokenType;

.field public static final enum CREATE_ACCOUNT:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$TokenType;

.field public static final enum FORGOT_PASSWORD:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$TokenType;

.field private static final VALUES:[Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$TokenType;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$TokenType;",
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

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 10618
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$TokenType;

    const-string v1, "CREATE_ACCOUNT"

    invoke-direct {v0, v1, v4, v4, v2}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$TokenType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$TokenType;->CREATE_ACCOUNT:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$TokenType;

    .line 10619
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$TokenType;

    const-string v1, "CHANGE_LOGIN"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$TokenType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$TokenType;->CHANGE_LOGIN:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$TokenType;

    .line 10620
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$TokenType;

    const-string v1, "FORGOT_PASSWORD"

    invoke-direct {v0, v1, v3, v3, v5}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$TokenType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$TokenType;->FORGOT_PASSWORD:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$TokenType;

    .line 10616
    new-array v0, v5, [Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$TokenType;

    sget-object v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$TokenType;->CREATE_ACCOUNT:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$TokenType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$TokenType;->CHANGE_LOGIN:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$TokenType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$TokenType;->FORGOT_PASSWORD:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$TokenType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$TokenType;->$VALUES:[Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$TokenType;

    .line 10640
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$TokenType$1;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$TokenType$1;-><init>()V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$TokenType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 10660
    new-array v0, v5, [Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$TokenType;

    sget-object v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$TokenType;->CREATE_ACCOUNT:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$TokenType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$TokenType;->CHANGE_LOGIN:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$TokenType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$TokenType;->FORGOT_PASSWORD:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$TokenType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$TokenType;->VALUES:[Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$TokenType;

    .line 10679
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 10680
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
    .line 10673
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 10674
    iput p3, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$TokenType;->index:I

    .line 10675
    iput p4, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$TokenType;->value:I

    .line 10676
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .prologue
    .line 10657
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

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
            "Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$TokenType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 10637
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$TokenType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$TokenType;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 10627
    packed-switch p0, :pswitch_data_0

    .line 10631
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 10628
    :pswitch_0
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$TokenType;->CREATE_ACCOUNT:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$TokenType;

    goto :goto_0

    .line 10629
    :pswitch_1
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$TokenType;->CHANGE_LOGIN:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$TokenType;

    goto :goto_0

    .line 10630
    :pswitch_2
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$TokenType;->FORGOT_PASSWORD:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$TokenType;

    goto :goto_0

    .line 10627
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$TokenType;
    .locals 2
    .param p0, "desc"    # Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    .prologue
    .line 10665
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$TokenType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 10666
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EnumValueDescriptor is not for this type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10669
    :cond_0
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$TokenType;->VALUES:[Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$TokenType;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$TokenType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 10616
    const-class v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$TokenType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$TokenType;

    return-object v0
.end method

.method public static values()[Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$TokenType;
    .locals 1

    .prologue
    .line 10616
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$TokenType;->$VALUES:[Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$TokenType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$TokenType;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .prologue
    .line 10653
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$TokenType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .prologue
    .line 10624
    iget v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$TokenType;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .prologue
    .line 10649
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$TokenType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$TokenValidationRequest$TokenType;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
