.class final enum Lcom/android/mms/transaction/TransactionService$MainState;
.super Ljava/lang/Enum;
.source "TransactionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/TransactionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "MainState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/mms/transaction/TransactionService$MainState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/mms/transaction/TransactionService$MainState;

.field public static final enum FINALIZE:Lcom/android/mms/transaction/TransactionService$MainState;

.field public static final enum INIT:Lcom/android/mms/transaction/TransactionService$MainState;

.field public static final enum ON_CREATE:Lcom/android/mms/transaction/TransactionService$MainState;

.field public static final enum ON_DESTROY:Lcom/android/mms/transaction/TransactionService$MainState;

.field public static final enum ON_START:Lcom/android/mms/transaction/TransactionService$MainState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 193
    new-instance v0, Lcom/android/mms/transaction/TransactionService$MainState;

    const-string v1, "INIT"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/transaction/TransactionService$MainState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/transaction/TransactionService$MainState;->INIT:Lcom/android/mms/transaction/TransactionService$MainState;

    new-instance v0, Lcom/android/mms/transaction/TransactionService$MainState;

    const-string v1, "ON_CREATE"

    invoke-direct {v0, v1, v3}, Lcom/android/mms/transaction/TransactionService$MainState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/transaction/TransactionService$MainState;->ON_CREATE:Lcom/android/mms/transaction/TransactionService$MainState;

    new-instance v0, Lcom/android/mms/transaction/TransactionService$MainState;

    const-string v1, "ON_START"

    invoke-direct {v0, v1, v4}, Lcom/android/mms/transaction/TransactionService$MainState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/transaction/TransactionService$MainState;->ON_START:Lcom/android/mms/transaction/TransactionService$MainState;

    new-instance v0, Lcom/android/mms/transaction/TransactionService$MainState;

    const-string v1, "ON_DESTROY"

    invoke-direct {v0, v1, v5}, Lcom/android/mms/transaction/TransactionService$MainState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/transaction/TransactionService$MainState;->ON_DESTROY:Lcom/android/mms/transaction/TransactionService$MainState;

    new-instance v0, Lcom/android/mms/transaction/TransactionService$MainState;

    const-string v1, "FINALIZE"

    invoke-direct {v0, v1, v6}, Lcom/android/mms/transaction/TransactionService$MainState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/transaction/TransactionService$MainState;->FINALIZE:Lcom/android/mms/transaction/TransactionService$MainState;

    .line 192
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/mms/transaction/TransactionService$MainState;

    sget-object v1, Lcom/android/mms/transaction/TransactionService$MainState;->INIT:Lcom/android/mms/transaction/TransactionService$MainState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/mms/transaction/TransactionService$MainState;->ON_CREATE:Lcom/android/mms/transaction/TransactionService$MainState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/mms/transaction/TransactionService$MainState;->ON_START:Lcom/android/mms/transaction/TransactionService$MainState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/mms/transaction/TransactionService$MainState;->ON_DESTROY:Lcom/android/mms/transaction/TransactionService$MainState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/mms/transaction/TransactionService$MainState;->FINALIZE:Lcom/android/mms/transaction/TransactionService$MainState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/mms/transaction/TransactionService$MainState;->$VALUES:[Lcom/android/mms/transaction/TransactionService$MainState;

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
    .line 192
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/mms/transaction/TransactionService$MainState;
    .locals 1

    .prologue
    .line 192
    const-class v0, Lcom/android/mms/transaction/TransactionService$MainState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/mms/transaction/TransactionService$MainState;

    return-object v0
.end method

.method public static values()[Lcom/android/mms/transaction/TransactionService$MainState;
    .locals 1

    .prologue
    .line 192
    sget-object v0, Lcom/android/mms/transaction/TransactionService$MainState;->$VALUES:[Lcom/android/mms/transaction/TransactionService$MainState;

    invoke-virtual {v0}, [Lcom/android/mms/transaction/TransactionService$MainState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/mms/transaction/TransactionService$MainState;

    return-object v0
.end method
