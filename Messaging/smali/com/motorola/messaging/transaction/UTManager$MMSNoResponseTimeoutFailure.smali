.class Lcom/motorola/messaging/transaction/UTManager$MMSNoResponseTimeoutFailure;
.super Lcom/motorola/messaging/transaction/UTManager;
.source "UTManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/transaction/UTManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MMSNoResponseTimeoutFailure"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/messaging/transaction/UTManager$MMSNoResponseTimeoutFailure$UTHttpUtils;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 593
    invoke-direct {p0}, Lcom/motorola/messaging/transaction/UTManager;-><init>()V

    .line 596
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/messaging/transaction/UTManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/messaging/transaction/UTManager$1;

    .prologue
    .line 593
    invoke-direct {p0}, Lcom/motorola/messaging/transaction/UTManager$MMSNoResponseTimeoutFailure;-><init>()V

    return-void
.end method


# virtual methods
.method public getHttpUtils(Landroid/content/Context;Lcom/motorola/messaging/transaction/Transaction;)Lcom/motorola/messaging/transaction/HttpUtils;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "transaction"    # Lcom/motorola/messaging/transaction/Transaction;

    .prologue
    .line 611
    new-instance v0, Lcom/motorola/messaging/transaction/UTManager$MMSNoResponseTimeoutFailure$UTHttpUtils;

    invoke-direct {v0, p1, p2}, Lcom/motorola/messaging/transaction/UTManager$MMSNoResponseTimeoutFailure$UTHttpUtils;-><init>(Landroid/content/Context;Lcom/motorola/messaging/transaction/Transaction;)V

    return-object v0
.end method
