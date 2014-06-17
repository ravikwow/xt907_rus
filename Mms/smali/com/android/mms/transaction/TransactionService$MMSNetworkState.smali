.class final enum Lcom/android/mms/transaction/TransactionService$MMSNetworkState;
.super Ljava/lang/Enum;
.source "TransactionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/TransactionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "MMSNetworkState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/mms/transaction/TransactionService$MMSNetworkState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/mms/transaction/TransactionService$MMSNetworkState;

.field public static final enum CONNECTED:Lcom/android/mms/transaction/TransactionService$MMSNetworkState;

.field public static final enum FAILED:Lcom/android/mms/transaction/TransactionService$MMSNetworkState;

.field public static final enum IN_PROGRESS:Lcom/android/mms/transaction/TransactionService$MMSNetworkState;

.field public static final enum SUSPENDED:Lcom/android/mms/transaction/TransactionService$MMSNetworkState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 188
    new-instance v0, Lcom/android/mms/transaction/TransactionService$MMSNetworkState;

    const-string v1, "CONNECTED"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/transaction/TransactionService$MMSNetworkState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/transaction/TransactionService$MMSNetworkState;->CONNECTED:Lcom/android/mms/transaction/TransactionService$MMSNetworkState;

    new-instance v0, Lcom/android/mms/transaction/TransactionService$MMSNetworkState;

    const-string v1, "IN_PROGRESS"

    invoke-direct {v0, v1, v3}, Lcom/android/mms/transaction/TransactionService$MMSNetworkState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/transaction/TransactionService$MMSNetworkState;->IN_PROGRESS:Lcom/android/mms/transaction/TransactionService$MMSNetworkState;

    new-instance v0, Lcom/android/mms/transaction/TransactionService$MMSNetworkState;

    const-string v1, "SUSPENDED"

    invoke-direct {v0, v1, v4}, Lcom/android/mms/transaction/TransactionService$MMSNetworkState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/transaction/TransactionService$MMSNetworkState;->SUSPENDED:Lcom/android/mms/transaction/TransactionService$MMSNetworkState;

    new-instance v0, Lcom/android/mms/transaction/TransactionService$MMSNetworkState;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v5}, Lcom/android/mms/transaction/TransactionService$MMSNetworkState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/transaction/TransactionService$MMSNetworkState;->FAILED:Lcom/android/mms/transaction/TransactionService$MMSNetworkState;

    .line 187
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/mms/transaction/TransactionService$MMSNetworkState;

    sget-object v1, Lcom/android/mms/transaction/TransactionService$MMSNetworkState;->CONNECTED:Lcom/android/mms/transaction/TransactionService$MMSNetworkState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/mms/transaction/TransactionService$MMSNetworkState;->IN_PROGRESS:Lcom/android/mms/transaction/TransactionService$MMSNetworkState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/mms/transaction/TransactionService$MMSNetworkState;->SUSPENDED:Lcom/android/mms/transaction/TransactionService$MMSNetworkState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/mms/transaction/TransactionService$MMSNetworkState;->FAILED:Lcom/android/mms/transaction/TransactionService$MMSNetworkState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/mms/transaction/TransactionService$MMSNetworkState;->$VALUES:[Lcom/android/mms/transaction/TransactionService$MMSNetworkState;

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
    .line 187
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/mms/transaction/TransactionService$MMSNetworkState;
    .locals 1

    .prologue
    .line 187
    const-class v0, Lcom/android/mms/transaction/TransactionService$MMSNetworkState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/mms/transaction/TransactionService$MMSNetworkState;

    return-object v0
.end method

.method public static values()[Lcom/android/mms/transaction/TransactionService$MMSNetworkState;
    .locals 1

    .prologue
    .line 187
    sget-object v0, Lcom/android/mms/transaction/TransactionService$MMSNetworkState;->$VALUES:[Lcom/android/mms/transaction/TransactionService$MMSNetworkState;

    invoke-virtual {v0}, [Lcom/android/mms/transaction/TransactionService$MMSNetworkState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/mms/transaction/TransactionService$MMSNetworkState;

    return-object v0
.end method
