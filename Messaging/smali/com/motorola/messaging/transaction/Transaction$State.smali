.class public final enum Lcom/motorola/messaging/transaction/Transaction$State;
.super Ljava/lang/Enum;
.source "Transaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/transaction/Transaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/motorola/messaging/transaction/Transaction$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/messaging/transaction/Transaction$State;

.field public static final enum FAILED:Lcom/motorola/messaging/transaction/Transaction$State;

.field public static final enum INITIALIZED:Lcom/motorola/messaging/transaction/Transaction$State;

.field public static final enum SUCCESS:Lcom/motorola/messaging/transaction/Transaction$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 50
    new-instance v0, Lcom/motorola/messaging/transaction/Transaction$State;

    const-string v1, "INITIALIZED"

    invoke-direct {v0, v1, v2}, Lcom/motorola/messaging/transaction/Transaction$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/messaging/transaction/Transaction$State;->INITIALIZED:Lcom/motorola/messaging/transaction/Transaction$State;

    .line 51
    new-instance v0, Lcom/motorola/messaging/transaction/Transaction$State;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v3}, Lcom/motorola/messaging/transaction/Transaction$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/messaging/transaction/Transaction$State;->SUCCESS:Lcom/motorola/messaging/transaction/Transaction$State;

    .line 52
    new-instance v0, Lcom/motorola/messaging/transaction/Transaction$State;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v4}, Lcom/motorola/messaging/transaction/Transaction$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/messaging/transaction/Transaction$State;->FAILED:Lcom/motorola/messaging/transaction/Transaction$State;

    .line 49
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/motorola/messaging/transaction/Transaction$State;

    sget-object v1, Lcom/motorola/messaging/transaction/Transaction$State;->INITIALIZED:Lcom/motorola/messaging/transaction/Transaction$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/motorola/messaging/transaction/Transaction$State;->SUCCESS:Lcom/motorola/messaging/transaction/Transaction$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/motorola/messaging/transaction/Transaction$State;->FAILED:Lcom/motorola/messaging/transaction/Transaction$State;

    aput-object v1, v0, v4

    sput-object v0, Lcom/motorola/messaging/transaction/Transaction$State;->$VALUES:[Lcom/motorola/messaging/transaction/Transaction$State;

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
    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/messaging/transaction/Transaction$State;
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/motorola/messaging/transaction/Transaction$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/transaction/Transaction$State;

    return-object v0
.end method

.method public static values()[Lcom/motorola/messaging/transaction/Transaction$State;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/motorola/messaging/transaction/Transaction$State;->$VALUES:[Lcom/motorola/messaging/transaction/Transaction$State;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/messaging/transaction/Transaction$State;

    return-object v0
.end method
