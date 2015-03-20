.class public final enum Lcom/motorola/messaging/transaction/NetworkManager$NetworkRestriction;
.super Ljava/lang/Enum;
.source "NetworkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/transaction/NetworkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NetworkRestriction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/motorola/messaging/transaction/NetworkManager$NetworkRestriction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/messaging/transaction/NetworkManager$NetworkRestriction;

.field public static final enum NONE:Lcom/motorola/messaging/transaction/NetworkManager$NetworkRestriction;

.field public static final enum RESTRICTED_AIRPLANE_MODE:Lcom/motorola/messaging/transaction/NetworkManager$NetworkRestriction;

.field public static final enum RESTRICTED_DATA_DISABLED:Lcom/motorola/messaging/transaction/NetworkManager$NetworkRestriction;

.field public static final enum RESTRICTED_NETWORK_UNAVAILABLE:Lcom/motorola/messaging/transaction/NetworkManager$NetworkRestriction;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 106
    new-instance v0, Lcom/motorola/messaging/transaction/NetworkManager$NetworkRestriction;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/motorola/messaging/transaction/NetworkManager$NetworkRestriction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/messaging/transaction/NetworkManager$NetworkRestriction;->NONE:Lcom/motorola/messaging/transaction/NetworkManager$NetworkRestriction;

    .line 107
    new-instance v0, Lcom/motorola/messaging/transaction/NetworkManager$NetworkRestriction;

    const-string v1, "RESTRICTED_AIRPLANE_MODE"

    invoke-direct {v0, v1, v3}, Lcom/motorola/messaging/transaction/NetworkManager$NetworkRestriction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/messaging/transaction/NetworkManager$NetworkRestriction;->RESTRICTED_AIRPLANE_MODE:Lcom/motorola/messaging/transaction/NetworkManager$NetworkRestriction;

    .line 108
    new-instance v0, Lcom/motorola/messaging/transaction/NetworkManager$NetworkRestriction;

    const-string v1, "RESTRICTED_DATA_DISABLED"

    invoke-direct {v0, v1, v4}, Lcom/motorola/messaging/transaction/NetworkManager$NetworkRestriction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/messaging/transaction/NetworkManager$NetworkRestriction;->RESTRICTED_DATA_DISABLED:Lcom/motorola/messaging/transaction/NetworkManager$NetworkRestriction;

    .line 109
    new-instance v0, Lcom/motorola/messaging/transaction/NetworkManager$NetworkRestriction;

    const-string v1, "RESTRICTED_NETWORK_UNAVAILABLE"

    invoke-direct {v0, v1, v5}, Lcom/motorola/messaging/transaction/NetworkManager$NetworkRestriction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/messaging/transaction/NetworkManager$NetworkRestriction;->RESTRICTED_NETWORK_UNAVAILABLE:Lcom/motorola/messaging/transaction/NetworkManager$NetworkRestriction;

    .line 105
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/motorola/messaging/transaction/NetworkManager$NetworkRestriction;

    sget-object v1, Lcom/motorola/messaging/transaction/NetworkManager$NetworkRestriction;->NONE:Lcom/motorola/messaging/transaction/NetworkManager$NetworkRestriction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/motorola/messaging/transaction/NetworkManager$NetworkRestriction;->RESTRICTED_AIRPLANE_MODE:Lcom/motorola/messaging/transaction/NetworkManager$NetworkRestriction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/motorola/messaging/transaction/NetworkManager$NetworkRestriction;->RESTRICTED_DATA_DISABLED:Lcom/motorola/messaging/transaction/NetworkManager$NetworkRestriction;

    aput-object v1, v0, v4

    sget-object v1, Lcom/motorola/messaging/transaction/NetworkManager$NetworkRestriction;->RESTRICTED_NETWORK_UNAVAILABLE:Lcom/motorola/messaging/transaction/NetworkManager$NetworkRestriction;

    aput-object v1, v0, v5

    sput-object v0, Lcom/motorola/messaging/transaction/NetworkManager$NetworkRestriction;->$VALUES:[Lcom/motorola/messaging/transaction/NetworkManager$NetworkRestriction;

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
    .line 105
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/messaging/transaction/NetworkManager$NetworkRestriction;
    .locals 1

    .prologue
    .line 105
    const-class v0, Lcom/motorola/messaging/transaction/NetworkManager$NetworkRestriction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/transaction/NetworkManager$NetworkRestriction;

    return-object v0
.end method

.method public static values()[Lcom/motorola/messaging/transaction/NetworkManager$NetworkRestriction;
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lcom/motorola/messaging/transaction/NetworkManager$NetworkRestriction;->$VALUES:[Lcom/motorola/messaging/transaction/NetworkManager$NetworkRestriction;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/messaging/transaction/NetworkManager$NetworkRestriction;

    return-object v0
.end method
