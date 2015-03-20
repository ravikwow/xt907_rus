.class public final enum Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendActionName;
.super Ljava/lang/Enum;
.source "SnfriendProtocol.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FriendActionName"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendActionName;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendActionName;

.field private static final VALUES:[Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendActionName;

.field public static final enum comment:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendActionName;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendActionName;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum poke:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendActionName;


# instance fields
.field private final index:I

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendActionName;

    const-string v1, "comment"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendActionName;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendActionName;->comment:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendActionName;

    .line 14
    new-instance v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendActionName;

    const-string v1, "poke"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendActionName;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendActionName;->poke:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendActionName;

    .line 11
    new-array v0, v4, [Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendActionName;

    sget-object v1, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendActionName;->comment:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendActionName;

    aput-object v1, v0, v2

    sget-object v1, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendActionName;->poke:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendActionName;

    aput-object v1, v0, v3

    sput-object v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendActionName;->$VALUES:[Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendActionName;

    .line 33
    new-instance v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendActionName$1;

    invoke-direct {v0}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendActionName$1;-><init>()V

    sput-object v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendActionName;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 53
    new-array v0, v4, [Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendActionName;

    sget-object v1, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendActionName;->comment:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendActionName;

    aput-object v1, v0, v2

    sget-object v1, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendActionName;->poke:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendActionName;

    aput-object v1, v0, v3

    sput-object v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendActionName;->VALUES:[Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendActionName;

    .line 72
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 73
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
    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 67
    iput p3, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendActionName;->index:I

    .line 68
    iput p4, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendActionName;->value:I

    .line 69
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .prologue
    .line 50
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

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
            "Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendActionName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    sget-object v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendActionName;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendActionName;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 21
    packed-switch p0, :pswitch_data_0

    .line 24
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 22
    :pswitch_0
    sget-object v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendActionName;->comment:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendActionName;

    goto :goto_0

    .line 23
    :pswitch_1
    sget-object v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendActionName;->poke:Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendActionName;

    goto :goto_0

    .line 21
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendActionName;
    .locals 2
    .param p0, "desc"    # Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendActionName;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EnumValueDescriptor is not for this type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_0
    sget-object v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendActionName;->VALUES:[Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendActionName;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendActionName;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 11
    const-class v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendActionName;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendActionName;

    return-object v0
.end method

.method public static values()[Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendActionName;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendActionName;->$VALUES:[Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendActionName;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendActionName;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .prologue
    .line 46
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendActionName;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendActionName;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .prologue
    .line 42
    invoke-static {}, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendActionName;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/motorola/blur/service/apps/snfriend/protocol/SnfriendProtocol$FriendActionName;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
