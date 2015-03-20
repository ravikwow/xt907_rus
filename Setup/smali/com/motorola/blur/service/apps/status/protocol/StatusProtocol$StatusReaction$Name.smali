.class public final enum Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Name;
.super Ljava/lang/Enum;
.source "StatusProtocol.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Name"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Name;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Name;

.field private static final VALUES:[Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Name;

.field public static final enum comment:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Name;

.field public static final enum commentStatus:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Name;

.field public static final enum favorite:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Name;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Name;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum retweet:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Name;


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

    .line 4373
    new-instance v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Name;

    const-string v1, "comment"

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Name;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Name;->comment:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Name;

    .line 4374
    new-instance v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Name;

    const-string v1, "commentStatus"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Name;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Name;->commentStatus:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Name;

    .line 4375
    new-instance v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Name;

    const-string v1, "favorite"

    invoke-direct {v0, v1, v3, v3, v4}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Name;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Name;->favorite:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Name;

    .line 4376
    new-instance v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Name;

    const-string v1, "retweet"

    invoke-direct {v0, v1, v4, v4, v6}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Name;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Name;->retweet:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Name;

    .line 4371
    new-array v0, v6, [Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Name;

    sget-object v1, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Name;->comment:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Name;

    aput-object v1, v0, v5

    sget-object v1, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Name;->commentStatus:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Name;

    aput-object v1, v0, v2

    sget-object v1, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Name;->favorite:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Name;

    aput-object v1, v0, v3

    sget-object v1, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Name;->retweet:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Name;

    aput-object v1, v0, v4

    sput-object v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Name;->$VALUES:[Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Name;

    .line 4397
    new-instance v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Name$1;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Name$1;-><init>()V

    sput-object v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Name;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 4417
    new-array v0, v6, [Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Name;

    sget-object v1, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Name;->comment:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Name;

    aput-object v1, v0, v5

    sget-object v1, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Name;->commentStatus:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Name;

    aput-object v1, v0, v2

    sget-object v1, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Name;->favorite:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Name;

    aput-object v1, v0, v3

    sget-object v1, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Name;->retweet:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Name;

    aput-object v1, v0, v4

    sput-object v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Name;->VALUES:[Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Name;

    .line 4436
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 4437
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
    .line 4430
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4431
    iput p3, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Name;->index:I

    .line 4432
    iput p4, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Name;->value:I

    .line 4433
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .prologue
    .line 4414
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

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
            "Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Name;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4394
    sget-object v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Name;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Name;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 4383
    packed-switch p0, :pswitch_data_0

    .line 4388
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 4384
    :pswitch_0
    sget-object v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Name;->comment:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Name;

    goto :goto_0

    .line 4385
    :pswitch_1
    sget-object v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Name;->commentStatus:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Name;

    goto :goto_0

    .line 4386
    :pswitch_2
    sget-object v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Name;->favorite:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Name;

    goto :goto_0

    .line 4387
    :pswitch_3
    sget-object v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Name;->retweet:Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Name;

    goto :goto_0

    .line 4383
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Name;
    .locals 2
    .param p0, "desc"    # Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    .prologue
    .line 4422
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Name;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4423
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EnumValueDescriptor is not for this type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4426
    :cond_0
    sget-object v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Name;->VALUES:[Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Name;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Name;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 4371
    const-class v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Name;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Name;

    return-object v0
.end method

.method public static values()[Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Name;
    .locals 1

    .prologue
    .line 4371
    sget-object v0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Name;->$VALUES:[Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Name;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Name;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .prologue
    .line 4410
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Name;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .prologue
    .line 4380
    iget v0, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Name;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .prologue
    .line 4406
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Name;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Name;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
