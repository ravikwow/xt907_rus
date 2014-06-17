.class public final enum Lcom/android/mms/transaction/Transaction$Failure;
.super Ljava/lang/Enum;
.source "Transaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/Transaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Failure"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/mms/transaction/Transaction$Failure;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/mms/transaction/Transaction$Failure;

.field public static final enum AIRPLANE_MODE:Lcom/android/mms/transaction/Transaction$Failure;

.field public static final enum APN_CONNECTION:Lcom/android/mms/transaction/Transaction$Failure;

.field public static final enum APN_CONNECTION_TIMEOUT:Lcom/android/mms/transaction/Transaction$Failure;

.field public static final enum DATA_DISABLED:Lcom/android/mms/transaction/Transaction$Failure;

.field public static final enum INTERNAL:Lcom/android/mms/transaction/Transaction$Failure;

.field public static final enum MMS_EXPIRED:Lcom/android/mms/transaction/Transaction$Failure;

.field public static final enum NETWORK:Lcom/android/mms/transaction/Transaction$Failure;

.field public static final enum NETWORK_AVAILABILITY:Lcom/android/mms/transaction/Transaction$Failure;

.field public static final enum NONE:Lcom/android/mms/transaction/Transaction$Failure;

.field public static final enum NO_RESPONSE_TIMEOUT:Lcom/android/mms/transaction/Transaction$Failure;

.field public static final enum TEMPORARY:Lcom/android/mms/transaction/Transaction$Failure;

.field public static final enum TRANSACTION_TIMEOUT:Lcom/android/mms/transaction/Transaction$Failure;

.field public static final enum VOICE_CALL_TOO_LONG:Lcom/android/mms/transaction/Transaction$Failure;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 63
    new-instance v0, Lcom/android/mms/transaction/Transaction$Failure;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcom/android/mms/transaction/Transaction$Failure;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/transaction/Transaction$Failure;->NONE:Lcom/android/mms/transaction/Transaction$Failure;

    .line 66
    new-instance v0, Lcom/android/mms/transaction/Transaction$Failure;

    const-string v1, "NETWORK"

    invoke-direct {v0, v1, v4}, Lcom/android/mms/transaction/Transaction$Failure;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/transaction/Transaction$Failure;->NETWORK:Lcom/android/mms/transaction/Transaction$Failure;

    .line 71
    new-instance v0, Lcom/android/mms/transaction/Transaction$Failure;

    const-string v1, "TEMPORARY"

    invoke-direct {v0, v1, v5}, Lcom/android/mms/transaction/Transaction$Failure;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/transaction/Transaction$Failure;->TEMPORARY:Lcom/android/mms/transaction/Transaction$Failure;

    .line 79
    new-instance v0, Lcom/android/mms/transaction/Transaction$Failure;

    const-string v1, "INTERNAL"

    invoke-direct {v0, v1, v6}, Lcom/android/mms/transaction/Transaction$Failure;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/transaction/Transaction$Failure;->INTERNAL:Lcom/android/mms/transaction/Transaction$Failure;

    .line 82
    new-instance v0, Lcom/android/mms/transaction/Transaction$Failure;

    const-string v1, "VOICE_CALL_TOO_LONG"

    invoke-direct {v0, v1, v7}, Lcom/android/mms/transaction/Transaction$Failure;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/transaction/Transaction$Failure;->VOICE_CALL_TOO_LONG:Lcom/android/mms/transaction/Transaction$Failure;

    .line 85
    new-instance v0, Lcom/android/mms/transaction/Transaction$Failure;

    const-string v1, "NETWORK_AVAILABILITY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/mms/transaction/Transaction$Failure;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/transaction/Transaction$Failure;->NETWORK_AVAILABILITY:Lcom/android/mms/transaction/Transaction$Failure;

    .line 88
    new-instance v0, Lcom/android/mms/transaction/Transaction$Failure;

    const-string v1, "AIRPLANE_MODE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/mms/transaction/Transaction$Failure;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/transaction/Transaction$Failure;->AIRPLANE_MODE:Lcom/android/mms/transaction/Transaction$Failure;

    .line 91
    new-instance v0, Lcom/android/mms/transaction/Transaction$Failure;

    const-string v1, "DATA_DISABLED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/mms/transaction/Transaction$Failure;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/transaction/Transaction$Failure;->DATA_DISABLED:Lcom/android/mms/transaction/Transaction$Failure;

    .line 94
    new-instance v0, Lcom/android/mms/transaction/Transaction$Failure;

    const-string v1, "APN_CONNECTION"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/mms/transaction/Transaction$Failure;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/transaction/Transaction$Failure;->APN_CONNECTION:Lcom/android/mms/transaction/Transaction$Failure;

    .line 97
    new-instance v0, Lcom/android/mms/transaction/Transaction$Failure;

    const-string v1, "APN_CONNECTION_TIMEOUT"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/mms/transaction/Transaction$Failure;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/transaction/Transaction$Failure;->APN_CONNECTION_TIMEOUT:Lcom/android/mms/transaction/Transaction$Failure;

    .line 100
    new-instance v0, Lcom/android/mms/transaction/Transaction$Failure;

    const-string v1, "NO_RESPONSE_TIMEOUT"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/mms/transaction/Transaction$Failure;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/transaction/Transaction$Failure;->NO_RESPONSE_TIMEOUT:Lcom/android/mms/transaction/Transaction$Failure;

    .line 103
    new-instance v0, Lcom/android/mms/transaction/Transaction$Failure;

    const-string v1, "TRANSACTION_TIMEOUT"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/android/mms/transaction/Transaction$Failure;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/transaction/Transaction$Failure;->TRANSACTION_TIMEOUT:Lcom/android/mms/transaction/Transaction$Failure;

    .line 106
    new-instance v0, Lcom/android/mms/transaction/Transaction$Failure;

    const-string v1, "MMS_EXPIRED"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/android/mms/transaction/Transaction$Failure;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/transaction/Transaction$Failure;->MMS_EXPIRED:Lcom/android/mms/transaction/Transaction$Failure;

    .line 62
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/android/mms/transaction/Transaction$Failure;

    sget-object v1, Lcom/android/mms/transaction/Transaction$Failure;->NONE:Lcom/android/mms/transaction/Transaction$Failure;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/mms/transaction/Transaction$Failure;->NETWORK:Lcom/android/mms/transaction/Transaction$Failure;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/mms/transaction/Transaction$Failure;->TEMPORARY:Lcom/android/mms/transaction/Transaction$Failure;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/mms/transaction/Transaction$Failure;->INTERNAL:Lcom/android/mms/transaction/Transaction$Failure;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/mms/transaction/Transaction$Failure;->VOICE_CALL_TOO_LONG:Lcom/android/mms/transaction/Transaction$Failure;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/mms/transaction/Transaction$Failure;->NETWORK_AVAILABILITY:Lcom/android/mms/transaction/Transaction$Failure;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/mms/transaction/Transaction$Failure;->AIRPLANE_MODE:Lcom/android/mms/transaction/Transaction$Failure;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/mms/transaction/Transaction$Failure;->DATA_DISABLED:Lcom/android/mms/transaction/Transaction$Failure;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/mms/transaction/Transaction$Failure;->APN_CONNECTION:Lcom/android/mms/transaction/Transaction$Failure;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/mms/transaction/Transaction$Failure;->APN_CONNECTION_TIMEOUT:Lcom/android/mms/transaction/Transaction$Failure;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/mms/transaction/Transaction$Failure;->NO_RESPONSE_TIMEOUT:Lcom/android/mms/transaction/Transaction$Failure;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/android/mms/transaction/Transaction$Failure;->TRANSACTION_TIMEOUT:Lcom/android/mms/transaction/Transaction$Failure;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/android/mms/transaction/Transaction$Failure;->MMS_EXPIRED:Lcom/android/mms/transaction/Transaction$Failure;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/transaction/Transaction$Failure;->$VALUES:[Lcom/android/mms/transaction/Transaction$Failure;

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
    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/mms/transaction/Transaction$Failure;
    .locals 1

    .prologue
    .line 62
    const-class v0, Lcom/android/mms/transaction/Transaction$Failure;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/mms/transaction/Transaction$Failure;

    return-object v0
.end method

.method public static values()[Lcom/android/mms/transaction/Transaction$Failure;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/android/mms/transaction/Transaction$Failure;->$VALUES:[Lcom/android/mms/transaction/Transaction$Failure;

    invoke-virtual {v0}, [Lcom/android/mms/transaction/Transaction$Failure;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/mms/transaction/Transaction$Failure;

    return-object v0
.end method
