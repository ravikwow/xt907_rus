.class public final enum Lcom/motorola/messaging/settings/MessageSettings$PhoneType;
.super Ljava/lang/Enum;
.source "MessageSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/settings/MessageSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PhoneType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/motorola/messaging/settings/MessageSettings$PhoneType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/messaging/settings/MessageSettings$PhoneType;

.field public static final enum CDMA:Lcom/motorola/messaging/settings/MessageSettings$PhoneType;

.field public static final enum GSM:Lcom/motorola/messaging/settings/MessageSettings$PhoneType;

.field public static final enum LTE:Lcom/motorola/messaging/settings/MessageSettings$PhoneType;

.field public static final enum NONE:Lcom/motorola/messaging/settings/MessageSettings$PhoneType;

.field public static final enum WORLD_CDMA:Lcom/motorola/messaging/settings/MessageSettings$PhoneType;

.field public static final enum WORLD_GSM:Lcom/motorola/messaging/settings/MessageSettings$PhoneType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 73
    new-instance v0, Lcom/motorola/messaging/settings/MessageSettings$PhoneType;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcom/motorola/messaging/settings/MessageSettings$PhoneType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/messaging/settings/MessageSettings$PhoneType;->NONE:Lcom/motorola/messaging/settings/MessageSettings$PhoneType;

    .line 74
    new-instance v0, Lcom/motorola/messaging/settings/MessageSettings$PhoneType;

    const-string v1, "GSM"

    invoke-direct {v0, v1, v4}, Lcom/motorola/messaging/settings/MessageSettings$PhoneType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/messaging/settings/MessageSettings$PhoneType;->GSM:Lcom/motorola/messaging/settings/MessageSettings$PhoneType;

    .line 75
    new-instance v0, Lcom/motorola/messaging/settings/MessageSettings$PhoneType;

    const-string v1, "CDMA"

    invoke-direct {v0, v1, v5}, Lcom/motorola/messaging/settings/MessageSettings$PhoneType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/messaging/settings/MessageSettings$PhoneType;->CDMA:Lcom/motorola/messaging/settings/MessageSettings$PhoneType;

    .line 76
    new-instance v0, Lcom/motorola/messaging/settings/MessageSettings$PhoneType;

    const-string v1, "WORLD_GSM"

    invoke-direct {v0, v1, v6}, Lcom/motorola/messaging/settings/MessageSettings$PhoneType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/messaging/settings/MessageSettings$PhoneType;->WORLD_GSM:Lcom/motorola/messaging/settings/MessageSettings$PhoneType;

    .line 77
    new-instance v0, Lcom/motorola/messaging/settings/MessageSettings$PhoneType;

    const-string v1, "WORLD_CDMA"

    invoke-direct {v0, v1, v7}, Lcom/motorola/messaging/settings/MessageSettings$PhoneType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/messaging/settings/MessageSettings$PhoneType;->WORLD_CDMA:Lcom/motorola/messaging/settings/MessageSettings$PhoneType;

    .line 78
    new-instance v0, Lcom/motorola/messaging/settings/MessageSettings$PhoneType;

    const-string v1, "LTE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/motorola/messaging/settings/MessageSettings$PhoneType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/messaging/settings/MessageSettings$PhoneType;->LTE:Lcom/motorola/messaging/settings/MessageSettings$PhoneType;

    .line 72
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/motorola/messaging/settings/MessageSettings$PhoneType;

    sget-object v1, Lcom/motorola/messaging/settings/MessageSettings$PhoneType;->NONE:Lcom/motorola/messaging/settings/MessageSettings$PhoneType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/motorola/messaging/settings/MessageSettings$PhoneType;->GSM:Lcom/motorola/messaging/settings/MessageSettings$PhoneType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/motorola/messaging/settings/MessageSettings$PhoneType;->CDMA:Lcom/motorola/messaging/settings/MessageSettings$PhoneType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/motorola/messaging/settings/MessageSettings$PhoneType;->WORLD_GSM:Lcom/motorola/messaging/settings/MessageSettings$PhoneType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/motorola/messaging/settings/MessageSettings$PhoneType;->WORLD_CDMA:Lcom/motorola/messaging/settings/MessageSettings$PhoneType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/motorola/messaging/settings/MessageSettings$PhoneType;->LTE:Lcom/motorola/messaging/settings/MessageSettings$PhoneType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/messaging/settings/MessageSettings$PhoneType;->$VALUES:[Lcom/motorola/messaging/settings/MessageSettings$PhoneType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/messaging/settings/MessageSettings$PhoneType;
    .locals 1

    .prologue
    .line 72
    const-class v0, Lcom/motorola/messaging/settings/MessageSettings$PhoneType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/settings/MessageSettings$PhoneType;

    return-object v0
.end method

.method public static values()[Lcom/motorola/messaging/settings/MessageSettings$PhoneType;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/motorola/messaging/settings/MessageSettings$PhoneType;->$VALUES:[Lcom/motorola/messaging/settings/MessageSettings$PhoneType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/messaging/settings/MessageSettings$PhoneType;

    return-object v0
.end method
