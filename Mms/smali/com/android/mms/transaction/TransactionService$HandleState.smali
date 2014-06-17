.class final enum Lcom/android/mms/transaction/TransactionService$HandleState;
.super Ljava/lang/Enum;
.source "TransactionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/TransactionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "HandleState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/mms/transaction/TransactionService$HandleState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/mms/transaction/TransactionService$HandleState;

.field public static final enum INIT:Lcom/android/mms/transaction/TransactionService$HandleState;

.field public static final enum QUIT:Lcom/android/mms/transaction/TransactionService$HandleState;

.field public static final enum QUITTING:Lcom/android/mms/transaction/TransactionService$HandleState;

.field public static final enum STARTED:Lcom/android/mms/transaction/TransactionService$HandleState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 198
    new-instance v0, Lcom/android/mms/transaction/TransactionService$HandleState;

    const-string v1, "INIT"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/transaction/TransactionService$HandleState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/transaction/TransactionService$HandleState;->INIT:Lcom/android/mms/transaction/TransactionService$HandleState;

    new-instance v0, Lcom/android/mms/transaction/TransactionService$HandleState;

    const-string v1, "STARTED"

    invoke-direct {v0, v1, v3}, Lcom/android/mms/transaction/TransactionService$HandleState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/transaction/TransactionService$HandleState;->STARTED:Lcom/android/mms/transaction/TransactionService$HandleState;

    new-instance v0, Lcom/android/mms/transaction/TransactionService$HandleState;

    const-string v1, "QUITTING"

    invoke-direct {v0, v1, v4}, Lcom/android/mms/transaction/TransactionService$HandleState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/transaction/TransactionService$HandleState;->QUITTING:Lcom/android/mms/transaction/TransactionService$HandleState;

    new-instance v0, Lcom/android/mms/transaction/TransactionService$HandleState;

    const-string v1, "QUIT"

    invoke-direct {v0, v1, v5}, Lcom/android/mms/transaction/TransactionService$HandleState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/transaction/TransactionService$HandleState;->QUIT:Lcom/android/mms/transaction/TransactionService$HandleState;

    .line 197
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/mms/transaction/TransactionService$HandleState;

    sget-object v1, Lcom/android/mms/transaction/TransactionService$HandleState;->INIT:Lcom/android/mms/transaction/TransactionService$HandleState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/mms/transaction/TransactionService$HandleState;->STARTED:Lcom/android/mms/transaction/TransactionService$HandleState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/mms/transaction/TransactionService$HandleState;->QUITTING:Lcom/android/mms/transaction/TransactionService$HandleState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/mms/transaction/TransactionService$HandleState;->QUIT:Lcom/android/mms/transaction/TransactionService$HandleState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/mms/transaction/TransactionService$HandleState;->$VALUES:[Lcom/android/mms/transaction/TransactionService$HandleState;

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
    .line 197
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/mms/transaction/TransactionService$HandleState;
    .locals 1

    .prologue
    .line 197
    const-class v0, Lcom/android/mms/transaction/TransactionService$HandleState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/mms/transaction/TransactionService$HandleState;

    return-object v0
.end method

.method public static values()[Lcom/android/mms/transaction/TransactionService$HandleState;
    .locals 1

    .prologue
    .line 197
    sget-object v0, Lcom/android/mms/transaction/TransactionService$HandleState;->$VALUES:[Lcom/android/mms/transaction/TransactionService$HandleState;

    invoke-virtual {v0}, [Lcom/android/mms/transaction/TransactionService$HandleState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/mms/transaction/TransactionService$HandleState;

    return-object v0
.end method
