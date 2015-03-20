.class public final enum Lcom/motorola/messaging/transaction/RetryScheduler$RetryType;
.super Ljava/lang/Enum;
.source "RetryScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/transaction/RetryScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RetryType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/motorola/messaging/transaction/RetryScheduler$RetryType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/messaging/transaction/RetryScheduler$RetryType;

.field public static final enum AUTOMATIC_RETRY:Lcom/motorola/messaging/transaction/RetryScheduler$RetryType;

.field public static final enum EVENT_DRIVEN_RETRY:Lcom/motorola/messaging/transaction/RetryScheduler$RetryType;

.field public static final enum NONE:Lcom/motorola/messaging/transaction/RetryScheduler$RetryType;

.field public static final enum NO_RETRY:Lcom/motorola/messaging/transaction/RetryScheduler$RetryType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 52
    new-instance v0, Lcom/motorola/messaging/transaction/RetryScheduler$RetryType;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/motorola/messaging/transaction/RetryScheduler$RetryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/messaging/transaction/RetryScheduler$RetryType;->NONE:Lcom/motorola/messaging/transaction/RetryScheduler$RetryType;

    .line 53
    new-instance v0, Lcom/motorola/messaging/transaction/RetryScheduler$RetryType;

    const-string v1, "NO_RETRY"

    invoke-direct {v0, v1, v3}, Lcom/motorola/messaging/transaction/RetryScheduler$RetryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/messaging/transaction/RetryScheduler$RetryType;->NO_RETRY:Lcom/motorola/messaging/transaction/RetryScheduler$RetryType;

    .line 54
    new-instance v0, Lcom/motorola/messaging/transaction/RetryScheduler$RetryType;

    const-string v1, "AUTOMATIC_RETRY"

    invoke-direct {v0, v1, v4}, Lcom/motorola/messaging/transaction/RetryScheduler$RetryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/messaging/transaction/RetryScheduler$RetryType;->AUTOMATIC_RETRY:Lcom/motorola/messaging/transaction/RetryScheduler$RetryType;

    .line 55
    new-instance v0, Lcom/motorola/messaging/transaction/RetryScheduler$RetryType;

    const-string v1, "EVENT_DRIVEN_RETRY"

    invoke-direct {v0, v1, v5}, Lcom/motorola/messaging/transaction/RetryScheduler$RetryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/messaging/transaction/RetryScheduler$RetryType;->EVENT_DRIVEN_RETRY:Lcom/motorola/messaging/transaction/RetryScheduler$RetryType;

    .line 51
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/motorola/messaging/transaction/RetryScheduler$RetryType;

    sget-object v1, Lcom/motorola/messaging/transaction/RetryScheduler$RetryType;->NONE:Lcom/motorola/messaging/transaction/RetryScheduler$RetryType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/motorola/messaging/transaction/RetryScheduler$RetryType;->NO_RETRY:Lcom/motorola/messaging/transaction/RetryScheduler$RetryType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/motorola/messaging/transaction/RetryScheduler$RetryType;->AUTOMATIC_RETRY:Lcom/motorola/messaging/transaction/RetryScheduler$RetryType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/motorola/messaging/transaction/RetryScheduler$RetryType;->EVENT_DRIVEN_RETRY:Lcom/motorola/messaging/transaction/RetryScheduler$RetryType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/motorola/messaging/transaction/RetryScheduler$RetryType;->$VALUES:[Lcom/motorola/messaging/transaction/RetryScheduler$RetryType;

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
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/messaging/transaction/RetryScheduler$RetryType;
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/motorola/messaging/transaction/RetryScheduler$RetryType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/transaction/RetryScheduler$RetryType;

    return-object v0
.end method

.method public static values()[Lcom/motorola/messaging/transaction/RetryScheduler$RetryType;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/motorola/messaging/transaction/RetryScheduler$RetryType;->$VALUES:[Lcom/motorola/messaging/transaction/RetryScheduler$RetryType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/messaging/transaction/RetryScheduler$RetryType;

    return-object v0
.end method
