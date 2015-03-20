.class public final Lcom/motorola/messaging/transaction/Transaction$TransactionTimeout;
.super Ljava/lang/Object;
.source "Transaction.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/transaction/Transaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TransactionTimeout"
.end annotation


# instance fields
.field private final DEBUG:Z

.field private final LOCAL_LOG:Z

.field mHandler:Landroid/os/Handler;

.field mTimeout:J

.field mTransaction:Lcom/motorola/messaging/transaction/Transaction;

.field mType:I


# direct methods
.method public constructor <init>(Landroid/os/Handler;ILcom/motorola/messaging/transaction/Transaction;J)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "type"    # I
    .param p3, "transaction"    # Lcom/motorola/messaging/transaction/Transaction;
    .param p4, "timeout"    # J

    .prologue
    const/4 v0, 0x1

    .line 677
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 669
    iput-boolean v0, p0, Lcom/motorola/messaging/transaction/Transaction$TransactionTimeout;->DEBUG:Z

    .line 670
    iget-boolean v1, p0, Lcom/motorola/messaging/transaction/Transaction$TransactionTimeout;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v1, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/motorola/messaging/transaction/Transaction$TransactionTimeout;->LOCAL_LOG:Z

    .line 678
    iput-object p1, p0, Lcom/motorola/messaging/transaction/Transaction$TransactionTimeout;->mHandler:Landroid/os/Handler;

    .line 679
    iput p2, p0, Lcom/motorola/messaging/transaction/Transaction$TransactionTimeout;->mType:I

    .line 680
    iput-wide p4, p0, Lcom/motorola/messaging/transaction/Transaction$TransactionTimeout;->mTimeout:J

    .line 681
    iput-object p3, p0, Lcom/motorola/messaging/transaction/Transaction$TransactionTimeout;->mTransaction:Lcom/motorola/messaging/transaction/Transaction;

    .line 682
    return-void

    .line 670
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public restart()V
    .locals 0

    .prologue
    .line 693
    invoke-virtual {p0}, Lcom/motorola/messaging/transaction/Transaction$TransactionTimeout;->stop()V

    .line 694
    invoke-virtual {p0}, Lcom/motorola/messaging/transaction/Transaction$TransactionTimeout;->start()V

    .line 695
    return-void
.end method

.method public run()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 698
    iget-boolean v2, p0, Lcom/motorola/messaging/transaction/Transaction$TransactionTimeout;->LOCAL_LOG:Z

    if-eqz v2, :cond_0

    .line 699
    const-string v2, "TransactionTimeout"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MMS-STATUS transaction timeout expired, type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/motorola/messaging/transaction/Transaction$TransactionTimeout;->mType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", timeout="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/motorola/messaging/transaction/Transaction$TransactionTimeout;->mTimeout:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", transaction="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/messaging/transaction/Transaction$TransactionTimeout;->mTransaction:Lcom/motorola/messaging/transaction/Transaction;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    :cond_0
    sget-object v0, Lcom/motorola/messaging/transaction/Transaction$Failure;->TRANSACTION_TIMEOUT:Lcom/motorola/messaging/transaction/Transaction$Failure;

    .line 706
    .local v0, "failure":Lcom/motorola/messaging/transaction/Transaction$Failure;
    iget v2, p0, Lcom/motorola/messaging/transaction/Transaction$TransactionTimeout;->mType:I

    if-ne v2, v1, :cond_1

    .line 707
    sget-object v0, Lcom/motorola/messaging/transaction/Transaction$Failure;->NO_RESPONSE_TIMEOUT:Lcom/motorola/messaging/transaction/Transaction$Failure;

    .line 710
    :cond_1
    iget-object v2, p0, Lcom/motorola/messaging/transaction/Transaction$TransactionTimeout;->mTransaction:Lcom/motorola/messaging/transaction/Transaction;

    iget v3, p0, Lcom/motorola/messaging/transaction/Transaction$TransactionTimeout;->mType:I

    if-eqz v3, :cond_2

    :goto_0
    invoke-virtual {v2, v0, v1}, Lcom/motorola/messaging/transaction/Transaction;->abortTransaction(Lcom/motorola/messaging/transaction/Transaction$Failure;Z)V

    .line 713
    return-void

    .line 710
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public start()V
    .locals 6

    .prologue
    .line 685
    iget-object v0, p0, Lcom/motorola/messaging/transaction/Transaction$TransactionTimeout;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/motorola/messaging/transaction/Transaction$TransactionTimeout;->mTransaction:Lcom/motorola/messaging/transaction/Transaction;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/motorola/messaging/transaction/Transaction$TransactionTimeout;->mTimeout:J

    add-long/2addr v2, v4

    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 686
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 689
    iget-object v0, p0, Lcom/motorola/messaging/transaction/Transaction$TransactionTimeout;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/motorola/messaging/transaction/Transaction$TransactionTimeout;->mTransaction:Lcom/motorola/messaging/transaction/Transaction;

    invoke-virtual {v0, p0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 690
    return-void
.end method
