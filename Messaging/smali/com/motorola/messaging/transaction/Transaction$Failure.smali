.class public final enum Lcom/motorola/messaging/transaction/Transaction$Failure;
.super Ljava/lang/Enum;
.source "Transaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/transaction/Transaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Failure"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/motorola/messaging/transaction/Transaction$Failure;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/messaging/transaction/Transaction$Failure;

.field public static final enum AIRPLANE_MODE:Lcom/motorola/messaging/transaction/Transaction$Failure;

.field public static final enum APN_CONNECTION:Lcom/motorola/messaging/transaction/Transaction$Failure;

.field public static final enum APN_CONNECTION_TIMEOUT:Lcom/motorola/messaging/transaction/Transaction$Failure;

.field public static final enum DATA_DISABLED:Lcom/motorola/messaging/transaction/Transaction$Failure;

.field public static final enum INTERNAL:Lcom/motorola/messaging/transaction/Transaction$Failure;

.field public static final enum MMS_EXPIRED:Lcom/motorola/messaging/transaction/Transaction$Failure;

.field public static final enum NETWORK:Lcom/motorola/messaging/transaction/Transaction$Failure;

.field public static final enum NETWORK_AVAILABILITY:Lcom/motorola/messaging/transaction/Transaction$Failure;

.field public static final enum NONE:Lcom/motorola/messaging/transaction/Transaction$Failure;

.field public static final enum NO_RESPONSE_TIMEOUT:Lcom/motorola/messaging/transaction/Transaction$Failure;

.field public static final enum TEMPORARY:Lcom/motorola/messaging/transaction/Transaction$Failure;

.field public static final enum TRANSACTION_TIMEOUT:Lcom/motorola/messaging/transaction/Transaction$Failure;

.field public static final enum VOICE_CALL_TOO_LONG:Lcom/motorola/messaging/transaction/Transaction$Failure;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 56
    new-instance v0, Lcom/motorola/messaging/transaction/Transaction$Failure;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcom/motorola/messaging/transaction/Transaction$Failure;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/messaging/transaction/Transaction$Failure;->NONE:Lcom/motorola/messaging/transaction/Transaction$Failure;

    .line 59
    new-instance v0, Lcom/motorola/messaging/transaction/Transaction$Failure;

    const-string v1, "NETWORK"

    invoke-direct {v0, v1, v4}, Lcom/motorola/messaging/transaction/Transaction$Failure;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/messaging/transaction/Transaction$Failure;->NETWORK:Lcom/motorola/messaging/transaction/Transaction$Failure;

    .line 64
    new-instance v0, Lcom/motorola/messaging/transaction/Transaction$Failure;

    const-string v1, "TEMPORARY"

    invoke-direct {v0, v1, v5}, Lcom/motorola/messaging/transaction/Transaction$Failure;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/messaging/transaction/Transaction$Failure;->TEMPORARY:Lcom/motorola/messaging/transaction/Transaction$Failure;

    .line 72
    new-instance v0, Lcom/motorola/messaging/transaction/Transaction$Failure;

    const-string v1, "INTERNAL"

    invoke-direct {v0, v1, v6}, Lcom/motorola/messaging/transaction/Transaction$Failure;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/messaging/transaction/Transaction$Failure;->INTERNAL:Lcom/motorola/messaging/transaction/Transaction$Failure;

    .line 75
    new-instance v0, Lcom/motorola/messaging/transaction/Transaction$Failure;

    const-string v1, "VOICE_CALL_TOO_LONG"

    invoke-direct {v0, v1, v7}, Lcom/motorola/messaging/transaction/Transaction$Failure;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/messaging/transaction/Transaction$Failure;->VOICE_CALL_TOO_LONG:Lcom/motorola/messaging/transaction/Transaction$Failure;

    .line 78
    new-instance v0, Lcom/motorola/messaging/transaction/Transaction$Failure;

    const-string v1, "NETWORK_AVAILABILITY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/motorola/messaging/transaction/Transaction$Failure;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/messaging/transaction/Transaction$Failure;->NETWORK_AVAILABILITY:Lcom/motorola/messaging/transaction/Transaction$Failure;

    .line 81
    new-instance v0, Lcom/motorola/messaging/transaction/Transaction$Failure;

    const-string v1, "AIRPLANE_MODE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/motorola/messaging/transaction/Transaction$Failure;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/messaging/transaction/Transaction$Failure;->AIRPLANE_MODE:Lcom/motorola/messaging/transaction/Transaction$Failure;

    .line 84
    new-instance v0, Lcom/motorola/messaging/transaction/Transaction$Failure;

    const-string v1, "DATA_DISABLED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/motorola/messaging/transaction/Transaction$Failure;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/messaging/transaction/Transaction$Failure;->DATA_DISABLED:Lcom/motorola/messaging/transaction/Transaction$Failure;

    .line 87
    new-instance v0, Lcom/motorola/messaging/transaction/Transaction$Failure;

    const-string v1, "APN_CONNECTION"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/motorola/messaging/transaction/Transaction$Failure;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/messaging/transaction/Transaction$Failure;->APN_CONNECTION:Lcom/motorola/messaging/transaction/Transaction$Failure;

    .line 90
    new-instance v0, Lcom/motorola/messaging/transaction/Transaction$Failure;

    const-string v1, "APN_CONNECTION_TIMEOUT"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/motorola/messaging/transaction/Transaction$Failure;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/messaging/transaction/Transaction$Failure;->APN_CONNECTION_TIMEOUT:Lcom/motorola/messaging/transaction/Transaction$Failure;

    .line 93
    new-instance v0, Lcom/motorola/messaging/transaction/Transaction$Failure;

    const-string v1, "NO_RESPONSE_TIMEOUT"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/motorola/messaging/transaction/Transaction$Failure;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/messaging/transaction/Transaction$Failure;->NO_RESPONSE_TIMEOUT:Lcom/motorola/messaging/transaction/Transaction$Failure;

    .line 96
    new-instance v0, Lcom/motorola/messaging/transaction/Transaction$Failure;

    const-string v1, "TRANSACTION_TIMEOUT"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/motorola/messaging/transaction/Transaction$Failure;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/messaging/transaction/Transaction$Failure;->TRANSACTION_TIMEOUT:Lcom/motorola/messaging/transaction/Transaction$Failure;

    .line 99
    new-instance v0, Lcom/motorola/messaging/transaction/Transaction$Failure;

    const-string v1, "MMS_EXPIRED"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/motorola/messaging/transaction/Transaction$Failure;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/messaging/transaction/Transaction$Failure;->MMS_EXPIRED:Lcom/motorola/messaging/transaction/Transaction$Failure;

    .line 55
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/motorola/messaging/transaction/Transaction$Failure;

    sget-object v1, Lcom/motorola/messaging/transaction/Transaction$Failure;->NONE:Lcom/motorola/messaging/transaction/Transaction$Failure;

    aput-object v1, v0, v3

    sget-object v1, Lcom/motorola/messaging/transaction/Transaction$Failure;->NETWORK:Lcom/motorola/messaging/transaction/Transaction$Failure;

    aput-object v1, v0, v4

    sget-object v1, Lcom/motorola/messaging/transaction/Transaction$Failure;->TEMPORARY:Lcom/motorola/messaging/transaction/Transaction$Failure;

    aput-object v1, v0, v5

    sget-object v1, Lcom/motorola/messaging/transaction/Transaction$Failure;->INTERNAL:Lcom/motorola/messaging/transaction/Transaction$Failure;

    aput-object v1, v0, v6

    sget-object v1, Lcom/motorola/messaging/transaction/Transaction$Failure;->VOICE_CALL_TOO_LONG:Lcom/motorola/messaging/transaction/Transaction$Failure;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/motorola/messaging/transaction/Transaction$Failure;->NETWORK_AVAILABILITY:Lcom/motorola/messaging/transaction/Transaction$Failure;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/motorola/messaging/transaction/Transaction$Failure;->AIRPLANE_MODE:Lcom/motorola/messaging/transaction/Transaction$Failure;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/motorola/messaging/transaction/Transaction$Failure;->DATA_DISABLED:Lcom/motorola/messaging/transaction/Transaction$Failure;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/motorola/messaging/transaction/Transaction$Failure;->APN_CONNECTION:Lcom/motorola/messaging/transaction/Transaction$Failure;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/motorola/messaging/transaction/Transaction$Failure;->APN_CONNECTION_TIMEOUT:Lcom/motorola/messaging/transaction/Transaction$Failure;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/motorola/messaging/transaction/Transaction$Failure;->NO_RESPONSE_TIMEOUT:Lcom/motorola/messaging/transaction/Transaction$Failure;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/motorola/messaging/transaction/Transaction$Failure;->TRANSACTION_TIMEOUT:Lcom/motorola/messaging/transaction/Transaction$Failure;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/motorola/messaging/transaction/Transaction$Failure;->MMS_EXPIRED:Lcom/motorola/messaging/transaction/Transaction$Failure;

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/messaging/transaction/Transaction$Failure;->$VALUES:[Lcom/motorola/messaging/transaction/Transaction$Failure;

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
    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/messaging/transaction/Transaction$Failure;
    .locals 1

    .prologue
    .line 55
    const-class v0, Lcom/motorola/messaging/transaction/Transaction$Failure;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/transaction/Transaction$Failure;

    return-object v0
.end method

.method public static values()[Lcom/motorola/messaging/transaction/Transaction$Failure;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/motorola/messaging/transaction/Transaction$Failure;->$VALUES:[Lcom/motorola/messaging/transaction/Transaction$Failure;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/messaging/transaction/Transaction$Failure;

    return-object v0
.end method
