.class public final enum Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Action;
.super Ljava/lang/Enum;
.source "MotoAccount.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Action;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Action;

.field public static final enum CREATE:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Action;

.field public static final enum LINK:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Action;

.field private static final VALUES:[Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Action;

.field public static final enum VERIFY:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Action;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Action;",
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

    .line 13534
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Action;

    const-string v1, "CREATE"

    invoke-direct {v0, v1, v4, v4, v2}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Action;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Action;->CREATE:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Action;

    .line 13535
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Action;

    const-string v1, "LINK"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Action;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Action;->LINK:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Action;

    .line 13536
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Action;

    const-string v1, "VERIFY"

    invoke-direct {v0, v1, v3, v3, v5}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Action;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Action;->VERIFY:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Action;

    .line 13532
    new-array v0, v5, [Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Action;

    sget-object v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Action;->CREATE:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Action;

    aput-object v1, v0, v4

    sget-object v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Action;->LINK:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Action;

    aput-object v1, v0, v2

    sget-object v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Action;->VERIFY:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Action;

    aput-object v1, v0, v3

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Action;->$VALUES:[Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Action;

    .line 13556
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Action$1;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Action$1;-><init>()V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Action;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 13576
    new-array v0, v5, [Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Action;

    sget-object v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Action;->CREATE:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Action;

    aput-object v1, v0, v4

    sget-object v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Action;->LINK:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Action;

    aput-object v1, v0, v2

    sget-object v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Action;->VERIFY:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Action;

    aput-object v1, v0, v3

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Action;->VALUES:[Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Action;

    .line 13595
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 13596
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
    .line 13589
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13590
    iput p3, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Action;->index:I

    .line 13591
    iput p4, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Action;->value:I

    .line 13592
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .prologue
    .line 13573
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

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
            "Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Action;",
            ">;"
        }
    .end annotation

    .prologue
    .line 13553
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Action;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Action;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 13543
    packed-switch p0, :pswitch_data_0

    .line 13547
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 13544
    :pswitch_0
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Action;->CREATE:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Action;

    goto :goto_0

    .line 13545
    :pswitch_1
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Action;->LINK:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Action;

    goto :goto_0

    .line 13546
    :pswitch_2
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Action;->VERIFY:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Action;

    goto :goto_0

    .line 13543
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Action;
    .locals 2
    .param p0, "desc"    # Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    .prologue
    .line 13581
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Action;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 13582
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EnumValueDescriptor is not for this type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 13585
    :cond_0
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Action;->VALUES:[Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Action;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Action;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 13532
    const-class v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Action;

    return-object v0
.end method

.method public static values()[Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Action;
    .locals 1

    .prologue
    .line 13532
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Action;->$VALUES:[Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Action;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Action;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .prologue
    .line 13569
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Action;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .prologue
    .line 13540
    iget v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Action;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .prologue
    .line 13565
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Action;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AccountInfo$Action;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
