.class public final enum Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;
.super Ljava/lang/Enum;
.source "MotoAccount.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/accounts/protocol/MotoAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RestoreLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;

.field public static final enum ALL:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;

.field public static final enum CONTACTS:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;

.field public static final enum EMAILS:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;

.field public static final enum PROVIDERS:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;

.field public static final enum SETTINGS:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;

.field private static final VALUES:[Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final index:I

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 13
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;

    const-string v1, "ALL"

    invoke-direct {v0, v1, v6, v6, v3}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;->ALL:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;

    .line 14
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;

    const-string v1, "EMAILS"

    invoke-direct {v0, v1, v3, v3, v4}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;->EMAILS:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;

    .line 15
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;

    const-string v1, "PROVIDERS"

    invoke-direct {v0, v1, v4, v4, v5}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;->PROVIDERS:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;

    .line 16
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;

    const-string v1, "CONTACTS"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v7, v7, v2}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;->CONTACTS:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;

    .line 17
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;

    const-string v1, "SETTINGS"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;->SETTINGS:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;

    .line 11
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;

    sget-object v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;->ALL:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;

    aput-object v1, v0, v6

    sget-object v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;->EMAILS:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;->PROVIDERS:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;

    aput-object v1, v0, v4

    sget-object v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;->CONTACTS:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;

    aput-object v1, v0, v7

    sget-object v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;->SETTINGS:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;

    aput-object v1, v0, v5

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;->$VALUES:[Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;

    .line 39
    new-instance v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel$1;

    invoke-direct {v0}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel$1;-><init>()V

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 59
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;

    sget-object v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;->ALL:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;

    aput-object v1, v0, v6

    sget-object v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;->EMAILS:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;->PROVIDERS:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;

    aput-object v1, v0, v4

    sget-object v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;->CONTACTS:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;

    aput-object v1, v0, v7

    sget-object v1, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;->SETTINGS:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;

    aput-object v1, v0, v5

    sput-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;->VALUES:[Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;

    .line 78
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 79
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
    .line 72
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 73
    iput p3, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;->index:I

    .line 74
    iput p4, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;->value:I

    .line 75
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .prologue
    .line 56
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

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
            "Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 24
    sparse-switch p0, :sswitch_data_0

    .line 30
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 25
    :sswitch_0
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;->ALL:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;

    goto :goto_0

    .line 26
    :sswitch_1
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;->EMAILS:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;

    goto :goto_0

    .line 27
    :sswitch_2
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;->PROVIDERS:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;

    goto :goto_0

    .line 28
    :sswitch_3
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;->CONTACTS:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;

    goto :goto_0

    .line 29
    :sswitch_4
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;->SETTINGS:Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;

    goto :goto_0

    .line 24
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
    .end sparse-switch
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;
    .locals 2
    .param p0, "desc"    # Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EnumValueDescriptor is not for this type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_0
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;->VALUES:[Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 11
    const-class v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;

    return-object v0
.end method

.method public static values()[Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;->$VALUES:[Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .prologue
    .line 52
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .prologue
    .line 48
    invoke-static {}, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/motorola/blur/service/accounts/protocol/MotoAccount$RestoreLevel;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
