.class final enum Lcom/motorola/messaging/transaction/TransactionService$MainState;
.super Ljava/lang/Enum;
.source "TransactionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/transaction/TransactionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "MainState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/motorola/messaging/transaction/TransactionService$MainState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/messaging/transaction/TransactionService$MainState;

.field public static final enum FINALIZE:Lcom/motorola/messaging/transaction/TransactionService$MainState;

.field public static final enum INIT:Lcom/motorola/messaging/transaction/TransactionService$MainState;

.field public static final enum ON_CREATE:Lcom/motorola/messaging/transaction/TransactionService$MainState;

.field public static final enum ON_DESTROY:Lcom/motorola/messaging/transaction/TransactionService$MainState;

.field public static final enum ON_START:Lcom/motorola/messaging/transaction/TransactionService$MainState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 147
    new-instance v0, Lcom/motorola/messaging/transaction/TransactionService$MainState;

    const-string v1, "INIT"

    invoke-direct {v0, v1, v2}, Lcom/motorola/messaging/transaction/TransactionService$MainState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/messaging/transaction/TransactionService$MainState;->INIT:Lcom/motorola/messaging/transaction/TransactionService$MainState;

    .line 148
    new-instance v0, Lcom/motorola/messaging/transaction/TransactionService$MainState;

    const-string v1, "ON_CREATE"

    invoke-direct {v0, v1, v3}, Lcom/motorola/messaging/transaction/TransactionService$MainState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/messaging/transaction/TransactionService$MainState;->ON_CREATE:Lcom/motorola/messaging/transaction/TransactionService$MainState;

    .line 149
    new-instance v0, Lcom/motorola/messaging/transaction/TransactionService$MainState;

    const-string v1, "ON_START"

    invoke-direct {v0, v1, v4}, Lcom/motorola/messaging/transaction/TransactionService$MainState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/messaging/transaction/TransactionService$MainState;->ON_START:Lcom/motorola/messaging/transaction/TransactionService$MainState;

    .line 150
    new-instance v0, Lcom/motorola/messaging/transaction/TransactionService$MainState;

    const-string v1, "ON_DESTROY"

    invoke-direct {v0, v1, v5}, Lcom/motorola/messaging/transaction/TransactionService$MainState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/messaging/transaction/TransactionService$MainState;->ON_DESTROY:Lcom/motorola/messaging/transaction/TransactionService$MainState;

    .line 151
    new-instance v0, Lcom/motorola/messaging/transaction/TransactionService$MainState;

    const-string v1, "FINALIZE"

    invoke-direct {v0, v1, v6}, Lcom/motorola/messaging/transaction/TransactionService$MainState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/messaging/transaction/TransactionService$MainState;->FINALIZE:Lcom/motorola/messaging/transaction/TransactionService$MainState;

    .line 146
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/motorola/messaging/transaction/TransactionService$MainState;

    sget-object v1, Lcom/motorola/messaging/transaction/TransactionService$MainState;->INIT:Lcom/motorola/messaging/transaction/TransactionService$MainState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/motorola/messaging/transaction/TransactionService$MainState;->ON_CREATE:Lcom/motorola/messaging/transaction/TransactionService$MainState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/motorola/messaging/transaction/TransactionService$MainState;->ON_START:Lcom/motorola/messaging/transaction/TransactionService$MainState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/motorola/messaging/transaction/TransactionService$MainState;->ON_DESTROY:Lcom/motorola/messaging/transaction/TransactionService$MainState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/motorola/messaging/transaction/TransactionService$MainState;->FINALIZE:Lcom/motorola/messaging/transaction/TransactionService$MainState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/motorola/messaging/transaction/TransactionService$MainState;->$VALUES:[Lcom/motorola/messaging/transaction/TransactionService$MainState;

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
    .line 146
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/messaging/transaction/TransactionService$MainState;
    .locals 1

    .prologue
    .line 146
    const-class v0, Lcom/motorola/messaging/transaction/TransactionService$MainState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/transaction/TransactionService$MainState;

    return-object v0
.end method

.method public static values()[Lcom/motorola/messaging/transaction/TransactionService$MainState;
    .locals 1

    .prologue
    .line 146
    sget-object v0, Lcom/motorola/messaging/transaction/TransactionService$MainState;->$VALUES:[Lcom/motorola/messaging/transaction/TransactionService$MainState;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/messaging/transaction/TransactionService$MainState;

    return-object v0
.end method
