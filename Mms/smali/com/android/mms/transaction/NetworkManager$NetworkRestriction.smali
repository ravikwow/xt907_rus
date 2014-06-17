.class public final enum Lcom/android/mms/transaction/NetworkManager$NetworkRestriction;
.super Ljava/lang/Enum;
.source "NetworkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/NetworkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NetworkRestriction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/mms/transaction/NetworkManager$NetworkRestriction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/mms/transaction/NetworkManager$NetworkRestriction;

.field public static final enum NONE:Lcom/android/mms/transaction/NetworkManager$NetworkRestriction;

.field public static final enum RESTRICTED_AIRPLANE_MODE:Lcom/android/mms/transaction/NetworkManager$NetworkRestriction;

.field public static final enum RESTRICTED_DATA_DISABLED:Lcom/android/mms/transaction/NetworkManager$NetworkRestriction;

.field public static final enum RESTRICTED_NETWORK_UNAVAILABLE:Lcom/android/mms/transaction/NetworkManager$NetworkRestriction;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 111
    new-instance v0, Lcom/android/mms/transaction/NetworkManager$NetworkRestriction;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/transaction/NetworkManager$NetworkRestriction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/transaction/NetworkManager$NetworkRestriction;->NONE:Lcom/android/mms/transaction/NetworkManager$NetworkRestriction;

    new-instance v0, Lcom/android/mms/transaction/NetworkManager$NetworkRestriction;

    const-string v1, "RESTRICTED_AIRPLANE_MODE"

    invoke-direct {v0, v1, v3}, Lcom/android/mms/transaction/NetworkManager$NetworkRestriction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/transaction/NetworkManager$NetworkRestriction;->RESTRICTED_AIRPLANE_MODE:Lcom/android/mms/transaction/NetworkManager$NetworkRestriction;

    new-instance v0, Lcom/android/mms/transaction/NetworkManager$NetworkRestriction;

    const-string v1, "RESTRICTED_DATA_DISABLED"

    invoke-direct {v0, v1, v4}, Lcom/android/mms/transaction/NetworkManager$NetworkRestriction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/transaction/NetworkManager$NetworkRestriction;->RESTRICTED_DATA_DISABLED:Lcom/android/mms/transaction/NetworkManager$NetworkRestriction;

    new-instance v0, Lcom/android/mms/transaction/NetworkManager$NetworkRestriction;

    const-string v1, "RESTRICTED_NETWORK_UNAVAILABLE"

    invoke-direct {v0, v1, v5}, Lcom/android/mms/transaction/NetworkManager$NetworkRestriction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/transaction/NetworkManager$NetworkRestriction;->RESTRICTED_NETWORK_UNAVAILABLE:Lcom/android/mms/transaction/NetworkManager$NetworkRestriction;

    .line 110
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/mms/transaction/NetworkManager$NetworkRestriction;

    sget-object v1, Lcom/android/mms/transaction/NetworkManager$NetworkRestriction;->NONE:Lcom/android/mms/transaction/NetworkManager$NetworkRestriction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/mms/transaction/NetworkManager$NetworkRestriction;->RESTRICTED_AIRPLANE_MODE:Lcom/android/mms/transaction/NetworkManager$NetworkRestriction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/mms/transaction/NetworkManager$NetworkRestriction;->RESTRICTED_DATA_DISABLED:Lcom/android/mms/transaction/NetworkManager$NetworkRestriction;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/mms/transaction/NetworkManager$NetworkRestriction;->RESTRICTED_NETWORK_UNAVAILABLE:Lcom/android/mms/transaction/NetworkManager$NetworkRestriction;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/mms/transaction/NetworkManager$NetworkRestriction;->$VALUES:[Lcom/android/mms/transaction/NetworkManager$NetworkRestriction;

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
    .line 110
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/mms/transaction/NetworkManager$NetworkRestriction;
    .locals 1

    .prologue
    .line 110
    const-class v0, Lcom/android/mms/transaction/NetworkManager$NetworkRestriction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/mms/transaction/NetworkManager$NetworkRestriction;

    return-object v0
.end method

.method public static values()[Lcom/android/mms/transaction/NetworkManager$NetworkRestriction;
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lcom/android/mms/transaction/NetworkManager$NetworkRestriction;->$VALUES:[Lcom/android/mms/transaction/NetworkManager$NetworkRestriction;

    invoke-virtual {v0}, [Lcom/android/mms/transaction/NetworkManager$NetworkRestriction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/mms/transaction/NetworkManager$NetworkRestriction;

    return-object v0
.end method
