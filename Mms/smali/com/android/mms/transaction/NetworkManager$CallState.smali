.class public final enum Lcom/android/mms/transaction/NetworkManager$CallState;
.super Ljava/lang/Enum;
.source "NetworkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/NetworkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CallState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/mms/transaction/NetworkManager$CallState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/mms/transaction/NetworkManager$CallState;

.field public static final enum IDLE:Lcom/android/mms/transaction/NetworkManager$CallState;

.field public static final enum NONE:Lcom/android/mms/transaction/NetworkManager$CallState;

.field public static final enum OFFHOOK:Lcom/android/mms/transaction/NetworkManager$CallState;

.field public static final enum RINGING:Lcom/android/mms/transaction/NetworkManager$CallState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 101
    new-instance v0, Lcom/android/mms/transaction/NetworkManager$CallState;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/transaction/NetworkManager$CallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/transaction/NetworkManager$CallState;->NONE:Lcom/android/mms/transaction/NetworkManager$CallState;

    new-instance v0, Lcom/android/mms/transaction/NetworkManager$CallState;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v3}, Lcom/android/mms/transaction/NetworkManager$CallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/transaction/NetworkManager$CallState;->IDLE:Lcom/android/mms/transaction/NetworkManager$CallState;

    new-instance v0, Lcom/android/mms/transaction/NetworkManager$CallState;

    const-string v1, "RINGING"

    invoke-direct {v0, v1, v4}, Lcom/android/mms/transaction/NetworkManager$CallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/transaction/NetworkManager$CallState;->RINGING:Lcom/android/mms/transaction/NetworkManager$CallState;

    new-instance v0, Lcom/android/mms/transaction/NetworkManager$CallState;

    const-string v1, "OFFHOOK"

    invoke-direct {v0, v1, v5}, Lcom/android/mms/transaction/NetworkManager$CallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/transaction/NetworkManager$CallState;->OFFHOOK:Lcom/android/mms/transaction/NetworkManager$CallState;

    .line 100
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/mms/transaction/NetworkManager$CallState;

    sget-object v1, Lcom/android/mms/transaction/NetworkManager$CallState;->NONE:Lcom/android/mms/transaction/NetworkManager$CallState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/mms/transaction/NetworkManager$CallState;->IDLE:Lcom/android/mms/transaction/NetworkManager$CallState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/mms/transaction/NetworkManager$CallState;->RINGING:Lcom/android/mms/transaction/NetworkManager$CallState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/mms/transaction/NetworkManager$CallState;->OFFHOOK:Lcom/android/mms/transaction/NetworkManager$CallState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/mms/transaction/NetworkManager$CallState;->$VALUES:[Lcom/android/mms/transaction/NetworkManager$CallState;

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
    .line 100
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/mms/transaction/NetworkManager$CallState;
    .locals 1

    .prologue
    .line 100
    const-class v0, Lcom/android/mms/transaction/NetworkManager$CallState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/mms/transaction/NetworkManager$CallState;

    return-object v0
.end method

.method public static values()[Lcom/android/mms/transaction/NetworkManager$CallState;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/android/mms/transaction/NetworkManager$CallState;->$VALUES:[Lcom/android/mms/transaction/NetworkManager$CallState;

    invoke-virtual {v0}, [Lcom/android/mms/transaction/NetworkManager$CallState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/mms/transaction/NetworkManager$CallState;

    return-object v0
.end method
