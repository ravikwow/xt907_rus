.class public final enum Lcom/android/mms/transaction/Transaction$State;
.super Ljava/lang/Enum;
.source "Transaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/Transaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/mms/transaction/Transaction$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/mms/transaction/Transaction$State;

.field public static final enum FAILED:Lcom/android/mms/transaction/Transaction$State;

.field public static final enum INITIALIZED:Lcom/android/mms/transaction/Transaction$State;

.field public static final enum SUCCESS:Lcom/android/mms/transaction/Transaction$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 56
    new-instance v0, Lcom/android/mms/transaction/Transaction$State;

    const-string v1, "INITIALIZED"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/transaction/Transaction$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/transaction/Transaction$State;->INITIALIZED:Lcom/android/mms/transaction/Transaction$State;

    .line 57
    new-instance v0, Lcom/android/mms/transaction/Transaction$State;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v3}, Lcom/android/mms/transaction/Transaction$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/transaction/Transaction$State;->SUCCESS:Lcom/android/mms/transaction/Transaction$State;

    .line 58
    new-instance v0, Lcom/android/mms/transaction/Transaction$State;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v4}, Lcom/android/mms/transaction/Transaction$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/transaction/Transaction$State;->FAILED:Lcom/android/mms/transaction/Transaction$State;

    .line 55
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/mms/transaction/Transaction$State;

    sget-object v1, Lcom/android/mms/transaction/Transaction$State;->INITIALIZED:Lcom/android/mms/transaction/Transaction$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/mms/transaction/Transaction$State;->SUCCESS:Lcom/android/mms/transaction/Transaction$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/mms/transaction/Transaction$State;->FAILED:Lcom/android/mms/transaction/Transaction$State;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/mms/transaction/Transaction$State;->$VALUES:[Lcom/android/mms/transaction/Transaction$State;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/mms/transaction/Transaction$State;
    .locals 1

    .prologue
    .line 55
    const-class v0, Lcom/android/mms/transaction/Transaction$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/mms/transaction/Transaction$State;

    return-object v0
.end method

.method public static values()[Lcom/android/mms/transaction/Transaction$State;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/android/mms/transaction/Transaction$State;->$VALUES:[Lcom/android/mms/transaction/Transaction$State;

    invoke-virtual {v0}, [Lcom/android/mms/transaction/Transaction$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/mms/transaction/Transaction$State;

    return-object v0
.end method
