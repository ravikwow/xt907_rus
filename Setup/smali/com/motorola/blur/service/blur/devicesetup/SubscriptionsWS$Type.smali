.class public final enum Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Type;
.super Ljava/lang/Enum;
.source "SubscriptionsWS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Type;

.field public static final enum ADD:Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Type;

.field public static final enum DEL:Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Type;

.field public static final enum GET:Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Type;

.field public static final enum SETUP:Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    new-instance v0, Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Type;

    const-string v1, "SETUP"

    invoke-direct {v0, v1, v2}, Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Type;->SETUP:Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Type;

    new-instance v0, Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Type;

    const-string v1, "GET"

    invoke-direct {v0, v1, v3}, Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Type;->GET:Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Type;

    new-instance v0, Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Type;

    const-string v1, "ADD"

    invoke-direct {v0, v1, v4}, Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Type;->ADD:Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Type;

    new-instance v0, Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Type;

    const-string v1, "DEL"

    invoke-direct {v0, v1, v5}, Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Type;->DEL:Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Type;

    .line 43
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Type;

    sget-object v1, Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Type;->SETUP:Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Type;->GET:Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Type;->ADD:Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Type;->DEL:Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Type;

    aput-object v1, v0, v5

    sput-object v0, Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Type;->$VALUES:[Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Type;

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
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 43
    const-class v0, Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Type;

    return-object v0
.end method

.method public static values()[Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Type;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Type;->$VALUES:[Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Type;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/blur/service/blur/devicesetup/SubscriptionsWS$Type;

    return-object v0
.end method
