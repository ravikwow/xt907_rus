.class public final enum Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Action;
.super Ljava/lang/Enum;
.source "MotoAccount.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Action;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Action;

.field public static final enum ADD_ASSOCIATION:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Action;

.field public static final enum GET_ASSOCIATION:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Action;

.field public static final enum REMOVE_ASSOCIATION:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Action;

.field public static final enum UPDATE_ASSOCIATION:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Action;

.field private static final VALUES:[Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Action;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Action;",
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

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 11321
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Action;

    const-string v1, "ADD_ASSOCIATION"

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Action;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Action;->ADD_ASSOCIATION:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Action;

    .line 11322
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Action;

    const-string v1, "REMOVE_ASSOCIATION"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Action;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Action;->REMOVE_ASSOCIATION:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Action;

    .line 11323
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Action;

    const-string v1, "UPDATE_ASSOCIATION"

    invoke-direct {v0, v1, v3, v3, v4}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Action;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Action;->UPDATE_ASSOCIATION:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Action;

    .line 11324
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Action;

    const-string v1, "GET_ASSOCIATION"

    invoke-direct {v0, v1, v4, v4, v6}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Action;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Action;->GET_ASSOCIATION:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Action;

    .line 11319
    new-array v0, v6, [Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Action;

    sget-object v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Action;->ADD_ASSOCIATION:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Action;

    aput-object v1, v0, v5

    sget-object v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Action;->REMOVE_ASSOCIATION:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Action;

    aput-object v1, v0, v2

    sget-object v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Action;->UPDATE_ASSOCIATION:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Action;

    aput-object v1, v0, v3

    sget-object v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Action;->GET_ASSOCIATION:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Action;

    aput-object v1, v0, v4

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Action;->$VALUES:[Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Action;

    .line 11345
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Action$1;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Action$1;-><init>()V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Action;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 11365
    new-array v0, v6, [Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Action;

    sget-object v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Action;->ADD_ASSOCIATION:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Action;

    aput-object v1, v0, v5

    sget-object v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Action;->REMOVE_ASSOCIATION:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Action;

    aput-object v1, v0, v2

    sget-object v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Action;->UPDATE_ASSOCIATION:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Action;

    aput-object v1, v0, v3

    sget-object v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Action;->GET_ASSOCIATION:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Action;

    aput-object v1, v0, v4

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Action;->VALUES:[Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Action;

    .line 11384
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 11385
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
    .line 11378
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11379
    iput p3, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Action;->index:I

    .line 11380
    iput p4, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Action;->value:I

    .line 11381
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .prologue
    .line 11362
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

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
            "Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Action;",
            ">;"
        }
    .end annotation

    .prologue
    .line 11342
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Action;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Action;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 11331
    packed-switch p0, :pswitch_data_0

    .line 11336
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 11332
    :pswitch_0
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Action;->ADD_ASSOCIATION:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Action;

    goto :goto_0

    .line 11333
    :pswitch_1
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Action;->REMOVE_ASSOCIATION:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Action;

    goto :goto_0

    .line 11334
    :pswitch_2
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Action;->UPDATE_ASSOCIATION:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Action;

    goto :goto_0

    .line 11335
    :pswitch_3
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Action;->GET_ASSOCIATION:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Action;

    goto :goto_0

    .line 11331
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Action;
    .locals 2
    .param p0, "desc"    # Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    .prologue
    .line 11370
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Action;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 11371
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EnumValueDescriptor is not for this type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11374
    :cond_0
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Action;->VALUES:[Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Action;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Action;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 11319
    const-class v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Action;

    return-object v0
.end method

.method public static values()[Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Action;
    .locals 1

    .prologue
    .line 11319
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Action;->$VALUES:[Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Action;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Action;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .prologue
    .line 11358
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Action;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .prologue
    .line 11328
    iget v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Action;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .prologue
    .line 11354
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Action;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$AssociationRequest$Action;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
