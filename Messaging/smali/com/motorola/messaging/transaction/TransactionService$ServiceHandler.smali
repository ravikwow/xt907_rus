.class final Lcom/motorola/messaging/transaction/TransactionService$ServiceHandler;
.super Lcom/motorola/messaging/transaction/MsgHandler;
.source "TransactionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/transaction/TransactionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/transaction/TransactionService;


# direct methods
.method public constructor <init>(Lcom/motorola/messaging/transaction/TransactionService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1492
    iput-object p1, p0, Lcom/motorola/messaging/transaction/TransactionService$ServiceHandler;->this$0:Lcom/motorola/messaging/transaction/TransactionService;

    .line 1493
    invoke-direct {p0, p2}, Lcom/motorola/messaging/transaction/MsgHandler;-><init>(Landroid/os/Looper;)V

    .line 1494
    return-void
.end method

.method private checkMmsConnectivity(Z)V
    .locals 3
    .param p1, "keep"    # Z

    .prologue
    const/4 v2, -0x1

    .line 1710
    iget-object v0, p0, Lcom/motorola/messaging/transaction/TransactionService$ServiceHandler;->this$0:Lcom/motorola/messaging/transaction/TransactionService;

    # invokes: Lcom/motorola/messaging/transaction/TransactionService;->finishIfNeeded(I)Z
    invoke-static {v0, v2}, Lcom/motorola/messaging/transaction/TransactionService;->access$2300(Lcom/motorola/messaging/transaction/TransactionService;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1723
    :cond_0
    :goto_0
    return-void

    .line 1714
    :cond_1
    iget-object v0, p0, Lcom/motorola/messaging/transaction/TransactionService$ServiceHandler;->this$0:Lcom/motorola/messaging/transaction/TransactionService;

    # invokes: Lcom/motorola/messaging/transaction/TransactionService;->hasTransactions()Z
    invoke-static {v0}, Lcom/motorola/messaging/transaction/TransactionService;->access$1400(Lcom/motorola/messaging/transaction/TransactionService;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1715
    const-string v0, "TransactionService"

    const-string v1, "MMS-STATUS - No transactions, it is not necessary to check MMS APN/transactions"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1716
    iget-object v0, p0, Lcom/motorola/messaging/transaction/TransactionService$ServiceHandler;->this$0:Lcom/motorola/messaging/transaction/TransactionService;

    sget-object v1, Lcom/motorola/messaging/transaction/Transaction$Failure;->NONE:Lcom/motorola/messaging/transaction/Transaction$Failure;

    # invokes: Lcom/motorola/messaging/transaction/TransactionService;->finishService(ILcom/motorola/messaging/transaction/Transaction$Failure;)V
    invoke-static {v0, v2, v1}, Lcom/motorola/messaging/transaction/TransactionService;->access$2400(Lcom/motorola/messaging/transaction/TransactionService;ILcom/motorola/messaging/transaction/Transaction$Failure;)V

    goto :goto_0

    .line 1720
    :cond_2
    iget-object v0, p0, Lcom/motorola/messaging/transaction/TransactionService$ServiceHandler;->this$0:Lcom/motorola/messaging/transaction/TransactionService;

    invoke-virtual {v0, p1}, Lcom/motorola/messaging/transaction/TransactionService;->beginMmsConnectivity(Z)Lcom/motorola/messaging/transaction/TransactionService$MMSNetworkState;

    move-result-object v0

    sget-object v1, Lcom/motorola/messaging/transaction/TransactionService$MMSNetworkState;->FAILED:Lcom/motorola/messaging/transaction/TransactionService$MMSNetworkState;

    if-ne v0, v1, :cond_0

    .line 1721
    iget-object v0, p0, Lcom/motorola/messaging/transaction/TransactionService$ServiceHandler;->this$0:Lcom/motorola/messaging/transaction/TransactionService;

    sget-object v1, Lcom/motorola/messaging/transaction/Transaction$Failure;->APN_CONNECTION:Lcom/motorola/messaging/transaction/Transaction$Failure;

    # invokes: Lcom/motorola/messaging/transaction/TransactionService;->finishService(ILcom/motorola/messaging/transaction/Transaction$Failure;)V
    invoke-static {v0, v2, v1}, Lcom/motorola/messaging/transaction/TransactionService;->access$2400(Lcom/motorola/messaging/transaction/TransactionService;ILcom/motorola/messaging/transaction/Transaction$Failure;)V

    goto :goto_0
.end method

.method private checkPending(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 1695
    iget-object v0, p0, Lcom/motorola/messaging/transaction/TransactionService$ServiceHandler;->this$0:Lcom/motorola/messaging/transaction/TransactionService;

    const/4 v1, -0x1

    # invokes: Lcom/motorola/messaging/transaction/TransactionService;->finishIfNeeded(I)Z
    invoke-static {v0, v1}, Lcom/motorola/messaging/transaction/TransactionService;->access$2300(Lcom/motorola/messaging/transaction/TransactionService;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1696
    if-nez p1, :cond_0

    .line 1698
    iget-object v0, p0, Lcom/motorola/messaging/transaction/TransactionService$ServiceHandler;->this$0:Lcom/motorola/messaging/transaction/TransactionService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/motorola/messaging/util/MessagingNotification;->updateNewMessageIndicator(Landroid/content/Context;Z)V

    .line 1706
    :cond_0
    :goto_0
    return-void

    .line 1703
    :cond_1
    iget-object v0, p0, Lcom/motorola/messaging/transaction/TransactionService$ServiceHandler;->this$0:Lcom/motorola/messaging/transaction/TransactionService;

    # invokes: Lcom/motorola/messaging/transaction/TransactionService;->hasTransactions()Z
    invoke-static {v0}, Lcom/motorola/messaging/transaction/TransactionService;->access$1400(Lcom/motorola/messaging/transaction/TransactionService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1704
    invoke-direct {p0}, Lcom/motorola/messaging/transaction/TransactionService$ServiceHandler;->processPendingTransaction()V

    goto :goto_0
.end method

.method private processPendingFailedTransactions()V
    .locals 4

    .prologue
    .line 1726
    # getter for: Lcom/motorola/messaging/transaction/TransactionService;->LOCAL_LOG:Z
    invoke-static {}, Lcom/motorola/messaging/transaction/TransactionService;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1727
    const-string v1, "TransactionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processPendingFailedTransaction - pending transactions = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/messaging/transaction/TransactionService$ServiceHandler;->this$0:Lcom/motorola/messaging/transaction/TransactionService;

    # getter for: Lcom/motorola/messaging/transaction/TransactionService;->mPending:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/motorola/messaging/transaction/TransactionService;->access$2500(Lcom/motorola/messaging/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1735
    :cond_0
    iget-object v1, p0, Lcom/motorola/messaging/transaction/TransactionService$ServiceHandler;->this$0:Lcom/motorola/messaging/transaction/TransactionService;

    # getter for: Lcom/motorola/messaging/transaction/TransactionService;->mPending:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/motorola/messaging/transaction/TransactionService;->access$2500(Lcom/motorola/messaging/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/transaction/Transaction;

    .line 1736
    .local v0, "t":Lcom/motorola/messaging/transaction/Transaction;
    invoke-virtual {v0}, Lcom/motorola/messaging/transaction/Transaction;->getType()I

    move-result v1

    if-nez v1, :cond_1

    .line 1737
    iget-object v1, p0, Lcom/motorola/messaging/transaction/TransactionService$ServiceHandler;->this$0:Lcom/motorola/messaging/transaction/TransactionService;

    # invokes: Lcom/motorola/messaging/transaction/TransactionService;->discardPending()V
    invoke-static {v1}, Lcom/motorola/messaging/transaction/TransactionService;->access$2600(Lcom/motorola/messaging/transaction/TransactionService;)V

    .line 1741
    :goto_0
    return-void

    .line 1739
    :cond_1
    invoke-direct {p0}, Lcom/motorola/messaging/transaction/TransactionService$ServiceHandler;->processPendingTransaction()V

    goto :goto_0
.end method

.method private processPendingTransaction()V
    .locals 9

    .prologue
    .line 1744
    # getter for: Lcom/motorola/messaging/transaction/TransactionService;->LOCAL_LOG:Z
    invoke-static {}, Lcom/motorola/messaging/transaction/TransactionService;->access$100()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1745
    const-string v5, "TransactionService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "processPendingTransaction - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/motorola/messaging/transaction/TransactionService$ServiceHandler;->this$0:Lcom/motorola/messaging/transaction/TransactionService;

    # invokes: Lcom/motorola/messaging/transaction/TransactionService;->getTreadInfo()Ljava/lang/String;
    invoke-static {v7}, Lcom/motorola/messaging/transaction/TransactionService;->access$500(Lcom/motorola/messaging/transaction/TransactionService;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1748
    :cond_0
    const/4 v4, 0x0

    .line 1749
    .local v4, "transaction":Lcom/motorola/messaging/transaction/Transaction;
    const/4 v2, 0x0

    .line 1750
    .local v2, "numProcessTransaction":I
    iget-object v5, p0, Lcom/motorola/messaging/transaction/TransactionService$ServiceHandler;->this$0:Lcom/motorola/messaging/transaction/TransactionService;

    # getter for: Lcom/motorola/messaging/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/motorola/messaging/transaction/TransactionService;->access$2700(Lcom/motorola/messaging/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v6

    monitor-enter v6

    .line 1751
    :try_start_0
    iget-object v5, p0, Lcom/motorola/messaging/transaction/TransactionService$ServiceHandler;->this$0:Lcom/motorola/messaging/transaction/TransactionService;

    # getter for: Lcom/motorola/messaging/transaction/TransactionService;->mPending:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/motorola/messaging/transaction/TransactionService;->access$2500(Lcom/motorola/messaging/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eqz v5, :cond_1

    .line 1752
    iget-object v5, p0, Lcom/motorola/messaging/transaction/TransactionService$ServiceHandler;->this$0:Lcom/motorola/messaging/transaction/TransactionService;

    # getter for: Lcom/motorola/messaging/transaction/TransactionService;->mPending:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/motorola/messaging/transaction/TransactionService;->access$2500(Lcom/motorola/messaging/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/motorola/messaging/transaction/Transaction;

    move-object v4, v0

    .line 1753
    # getter for: Lcom/motorola/messaging/transaction/TransactionService;->LOCAL_LOG:Z
    invoke-static {}, Lcom/motorola/messaging/transaction/TransactionService;->access$100()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1754
    const-string v5, "TransactionService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "processPendingTransaction - Removing from pending, transaction: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1757
    :cond_1
    iget-object v5, p0, Lcom/motorola/messaging/transaction/TransactionService$ServiceHandler;->this$0:Lcom/motorola/messaging/transaction/TransactionService;

    # getter for: Lcom/motorola/messaging/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/motorola/messaging/transaction/TransactionService;->access$2700(Lcom/motorola/messaging/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1758
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1760
    if-eqz v4, :cond_3

    .line 1762
    :try_start_1
    invoke-virtual {v4}, Lcom/motorola/messaging/transaction/Transaction;->getServiceId()I

    move-result v3

    .line 1763
    .local v3, "serviceId":I
    invoke-direct {p0, v4}, Lcom/motorola/messaging/transaction/TransactionService$ServiceHandler;->processTransaction(Lcom/motorola/messaging/transaction/Transaction;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1764
    const/4 v4, 0x0

    .line 1765
    const-string v5, "TransactionService"

    const-string v6, "MMS-STATUS - process transaction failure"

    invoke-static {v5, v6}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1766
    iget-object v5, p0, Lcom/motorola/messaging/transaction/TransactionService$ServiceHandler;->this$0:Lcom/motorola/messaging/transaction/TransactionService;

    sget-object v6, Lcom/motorola/messaging/transaction/Transaction$Failure;->INTERNAL:Lcom/motorola/messaging/transaction/Transaction$Failure;

    # invokes: Lcom/motorola/messaging/transaction/TransactionService;->finishService(ILcom/motorola/messaging/transaction/Transaction$Failure;)V
    invoke-static {v5, v3, v6}, Lcom/motorola/messaging/transaction/TransactionService;->access$2400(Lcom/motorola/messaging/transaction/TransactionService;ILcom/motorola/messaging/transaction/Transaction$Failure;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1779
    .end local v3    # "serviceId":I
    :cond_2
    :goto_0
    return-void

    .line 1758
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 1768
    :catch_0
    move-exception v1

    .line 1769
    .local v1, "e":Ljava/io/IOException;
    const-string v5, "TransactionService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Connection failed. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1773
    .end local v1    # "e":Ljava/io/IOException;
    :cond_3
    if-nez v2, :cond_2

    .line 1775
    const-string v5, "TransactionService"

    const-string v6, "MMS-STATUS - pending transaction not found!"

    invoke-static {v5, v6}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1776
    iget-object v5, p0, Lcom/motorola/messaging/transaction/TransactionService$ServiceHandler;->this$0:Lcom/motorola/messaging/transaction/TransactionService;

    const/4 v6, -0x1

    sget-object v7, Lcom/motorola/messaging/transaction/Transaction$Failure;->INTERNAL:Lcom/motorola/messaging/transaction/Transaction$Failure;

    # invokes: Lcom/motorola/messaging/transaction/TransactionService;->finishService(ILcom/motorola/messaging/transaction/Transaction$Failure;)V
    invoke-static {v5, v6, v7}, Lcom/motorola/messaging/transaction/TransactionService;->access$2400(Lcom/motorola/messaging/transaction/TransactionService;ILcom/motorola/messaging/transaction/Transaction$Failure;)V

    goto :goto_0
.end method

.method private processTransaction(Lcom/motorola/messaging/transaction/Transaction;)Z
    .locals 9
    .param p1, "transaction"    # Lcom/motorola/messaging/transaction/Transaction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 1824
    # getter for: Lcom/motorola/messaging/transaction/TransactionService;->LOCAL_LOG:Z
    invoke-static {}, Lcom/motorola/messaging/transaction/TransactionService;->access$100()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1825
    const-string v6, "TransactionService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "processTransaction - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/motorola/messaging/transaction/TransactionService$ServiceHandler;->this$0:Lcom/motorola/messaging/transaction/TransactionService;

    # invokes: Lcom/motorola/messaging/transaction/TransactionService;->getTreadInfo()Ljava/lang/String;
    invoke-static {v8}, Lcom/motorola/messaging/transaction/TransactionService;->access$500(Lcom/motorola/messaging/transaction/TransactionService;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1828
    :cond_0
    if-nez p1, :cond_1

    .line 1896
    :goto_0
    return v4

    .line 1832
    :cond_1
    iget-object v6, p0, Lcom/motorola/messaging/transaction/TransactionService$ServiceHandler;->this$0:Lcom/motorola/messaging/transaction/TransactionService;

    # getter for: Lcom/motorola/messaging/transaction/TransactionService;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v6}, Lcom/motorola/messaging/transaction/TransactionService;->access$2800(Lcom/motorola/messaging/transaction/TransactionService;)Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    .line 1833
    .local v1, "networkType":I
    const-string v6, "TransactionService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MMS-STATUS - Process transaction, gsm mode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->isGSM()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", network="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/motorola/messaging/logger/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1837
    iget-object v6, p0, Lcom/motorola/messaging/transaction/TransactionService$ServiceHandler;->this$0:Lcom/motorola/messaging/transaction/TransactionService;

    # getter for: Lcom/motorola/messaging/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/motorola/messaging/transaction/TransactionService;->access$2700(Lcom/motorola/messaging/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v6

    monitor-enter v6

    .line 1842
    :try_start_0
    iget-object v7, p0, Lcom/motorola/messaging/transaction/TransactionService$ServiceHandler;->this$0:Lcom/motorola/messaging/transaction/TransactionService;

    # invokes: Lcom/motorola/messaging/transaction/TransactionService;->isDuplicate(Lcom/motorola/messaging/transaction/Transaction;)Z
    invoke-static {v7, p1}, Lcom/motorola/messaging/transaction/TransactionService;->access$2900(Lcom/motorola/messaging/transaction/TransactionService;Lcom/motorola/messaging/transaction/Transaction;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1843
    monitor-exit v6

    move v4, v5

    goto :goto_0

    .line 1846
    :cond_2
    iget-object v7, p0, Lcom/motorola/messaging/transaction/TransactionService$ServiceHandler;->this$0:Lcom/motorola/messaging/transaction/TransactionService;

    # invokes: Lcom/motorola/messaging/transaction/TransactionService;->addToPending(Lcom/motorola/messaging/transaction/Transaction;)V
    invoke-static {v7, p1}, Lcom/motorola/messaging/transaction/TransactionService;->access$3000(Lcom/motorola/messaging/transaction/TransactionService;Lcom/motorola/messaging/transaction/Transaction;)V

    .line 1847
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1854
    invoke-virtual {p1}, Lcom/motorola/messaging/transaction/Transaction;->getState()Lcom/motorola/messaging/transaction/TransactionState;

    move-result-object v3

    .line 1855
    .local v3, "state":Lcom/motorola/messaging/transaction/TransactionState;
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/motorola/messaging/transaction/TransactionState;->getState()Lcom/motorola/messaging/transaction/Transaction$State;

    move-result-object v6

    sget-object v7, Lcom/motorola/messaging/transaction/Transaction$State;->FAILED:Lcom/motorola/messaging/transaction/Transaction$State;

    if-eq v6, v7, :cond_7

    .line 1856
    iget-object v6, p0, Lcom/motorola/messaging/transaction/TransactionService$ServiceHandler;->this$0:Lcom/motorola/messaging/transaction/TransactionService;

    invoke-virtual {v6, v4}, Lcom/motorola/messaging/transaction/TransactionService;->beginMmsConnectivity(Z)Lcom/motorola/messaging/transaction/TransactionService$MMSNetworkState;

    move-result-object v2

    .line 1857
    .local v2, "result":Lcom/motorola/messaging/transaction/TransactionService$MMSNetworkState;
    sget-object v4, Lcom/motorola/messaging/transaction/TransactionService$MMSNetworkState;->IN_PROGRESS:Lcom/motorola/messaging/transaction/TransactionService$MMSNetworkState;

    if-ne v2, v4, :cond_3

    move v4, v5

    .line 1858
    goto :goto_0

    .line 1847
    .end local v2    # "result":Lcom/motorola/messaging/transaction/TransactionService$MMSNetworkState;
    .end local v3    # "state":Lcom/motorola/messaging/transaction/TransactionState;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 1860
    .restart local v2    # "result":Lcom/motorola/messaging/transaction/TransactionService$MMSNetworkState;
    .restart local v3    # "state":Lcom/motorola/messaging/transaction/TransactionState;
    :cond_3
    sget-object v4, Lcom/motorola/messaging/transaction/TransactionService$MMSNetworkState;->SUSPENDED:Lcom/motorola/messaging/transaction/TransactionService$MMSNetworkState;

    if-eq v2, v4, :cond_4

    sget-object v4, Lcom/motorola/messaging/transaction/TransactionService$MMSNetworkState;->FAILED:Lcom/motorola/messaging/transaction/TransactionService$MMSNetworkState;

    if-ne v2, v4, :cond_6

    :cond_4
    iget-object v4, p0, Lcom/motorola/messaging/transaction/TransactionService$ServiceHandler;->this$0:Lcom/motorola/messaging/transaction/TransactionService;

    # invokes: Lcom/motorola/messaging/transaction/TransactionService;->ignoreApnFailure()Z
    invoke-static {v4}, Lcom/motorola/messaging/transaction/TransactionService;->access$1500(Lcom/motorola/messaging/transaction/TransactionService;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1862
    invoke-virtual {p1}, Lcom/motorola/messaging/transaction/Transaction;->getType()I

    move-result v4

    if-nez v4, :cond_5

    .line 1865
    iget-object v4, p0, Lcom/motorola/messaging/transaction/TransactionService$ServiceHandler;->this$0:Lcom/motorola/messaging/transaction/TransactionService;

    invoke-static {v4, v5}, Lcom/motorola/messaging/util/MessagingNotification;->updateNewMessageIndicator(Landroid/content/Context;Z)V

    :cond_5
    move v4, v5

    .line 1868
    goto/16 :goto_0

    .line 1870
    :cond_6
    sget-object v4, Lcom/motorola/messaging/transaction/TransactionService$MMSNetworkState;->CONNECTED:Lcom/motorola/messaging/transaction/TransactionService$MMSNetworkState;

    if-eq v2, v4, :cond_7

    .line 1873
    sget-object v4, Lcom/motorola/messaging/transaction/Transaction$Failure;->APN_CONNECTION:Lcom/motorola/messaging/transaction/Transaction$Failure;

    invoke-virtual {p1, v4}, Lcom/motorola/messaging/transaction/Transaction;->notifyFailure(Lcom/motorola/messaging/transaction/Transaction$Failure;)V

    .line 1874
    new-instance v0, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;

    const/4 v4, 0x2

    const-string v6, "MMS_TRANSACTION"

    invoke-direct {v0, v4, v6}, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;-><init>(ILjava/lang/String;)V

    .line 1875
    .local v0, "event":Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;
    const-string v4, "status"

    const-string v6, "apnSwFail"

    invoke-virtual {v0, v4, v6}, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;->addField(Ljava/lang/String;Ljava/lang/String;)V

    .line 1876
    const-string v4, "result"

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    invoke-virtual {v0, v4, v6}, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;->addField(Ljava/lang/String;I)V

    .line 1877
    invoke-virtual {v0}, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;->log()V

    .line 1881
    .end local v0    # "event":Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;
    .end local v2    # "result":Lcom/motorola/messaging/transaction/TransactionService$MMSNetworkState;
    :cond_7
    invoke-virtual {p1}, Lcom/motorola/messaging/transaction/Transaction;->getConnectionSettings()Lcom/motorola/messaging/transaction/TransactionSettings;

    move-result-object v4

    if-nez v4, :cond_8

    .line 1884
    invoke-direct {p0, v1, p1}, Lcom/motorola/messaging/transaction/TransactionService$ServiceHandler;->refreshApn(ILcom/motorola/messaging/transaction/Transaction;)V

    .line 1887
    :cond_8
    iget-object v4, p0, Lcom/motorola/messaging/transaction/TransactionService$ServiceHandler;->this$0:Lcom/motorola/messaging/transaction/TransactionService;

    # getter for: Lcom/motorola/messaging/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/motorola/messaging/transaction/TransactionService;->access$2700(Lcom/motorola/messaging/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v6

    monitor-enter v6

    .line 1888
    :try_start_2
    iget-object v4, p0, Lcom/motorola/messaging/transaction/TransactionService$ServiceHandler;->this$0:Lcom/motorola/messaging/transaction/TransactionService;

    # invokes: Lcom/motorola/messaging/transaction/TransactionService;->moveToProcessing(Lcom/motorola/messaging/transaction/Transaction;)V
    invoke-static {v4, p1}, Lcom/motorola/messaging/transaction/TransactionService;->access$3100(Lcom/motorola/messaging/transaction/TransactionService;Lcom/motorola/messaging/transaction/Transaction;)V

    .line 1889
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1891
    const-string v4, "TransactionService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MMS-STATUS - Starting transaction: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/motorola/messaging/logger/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1892
    iget-object v4, p0, Lcom/motorola/messaging/transaction/TransactionService$ServiceHandler;->this$0:Lcom/motorola/messaging/transaction/TransactionService;

    # getter for: Lcom/motorola/messaging/transaction/TransactionService;->mManager:Lcom/motorola/messaging/transaction/TransactionManager;
    invoke-static {v4}, Lcom/motorola/messaging/transaction/TransactionService;->access$3200(Lcom/motorola/messaging/transaction/TransactionService;)Lcom/motorola/messaging/transaction/TransactionManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/motorola/messaging/transaction/TransactionManager;->onTransactionProcess(Lcom/motorola/messaging/transaction/Transaction;)V

    .line 1893
    iget-object v4, p0, Lcom/motorola/messaging/transaction/TransactionService$ServiceHandler;->this$0:Lcom/motorola/messaging/transaction/TransactionService;

    # getter for: Lcom/motorola/messaging/transaction/TransactionService;->mManager:Lcom/motorola/messaging/transaction/TransactionManager;
    invoke-static {v4}, Lcom/motorola/messaging/transaction/TransactionService;->access$3200(Lcom/motorola/messaging/transaction/TransactionService;)Lcom/motorola/messaging/transaction/TransactionManager;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/motorola/messaging/transaction/Transaction;->setManager(Lcom/motorola/messaging/transaction/TransactionManager;)V

    .line 1894
    iget-object v4, p0, Lcom/motorola/messaging/transaction/TransactionService$ServiceHandler;->this$0:Lcom/motorola/messaging/transaction/TransactionService;

    invoke-virtual {p1, v4}, Lcom/motorola/messaging/transaction/Observable;->attach(Lcom/motorola/messaging/transaction/Observer;)V

    .line 1895
    invoke-virtual {p1}, Lcom/motorola/messaging/transaction/Transaction;->process()V

    move v4, v5

    .line 1896
    goto/16 :goto_0

    .line 1889
    :catchall_1
    move-exception v4

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4
.end method

.method private refreshApn(ILcom/motorola/messaging/transaction/Transaction;)V
    .locals 7
    .param p1, "networkType"    # I
    .param p2, "transaction"    # Lcom/motorola/messaging/transaction/Transaction;

    .prologue
    .line 1785
    # getter for: Lcom/motorola/messaging/transaction/TransactionService;->LOCAL_LOG:Z
    invoke-static {}, Lcom/motorola/messaging/transaction/TransactionService;->access$100()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1786
    const-string v4, "TransactionService"

    const-string v5, "MMS-STATUS - Retrieve APN settings"

    invoke-static {v4, v5}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1791
    :cond_0
    iget-object v4, p0, Lcom/motorola/messaging/transaction/TransactionService$ServiceHandler;->this$0:Lcom/motorola/messaging/transaction/TransactionService;

    # getter for: Lcom/motorola/messaging/transaction/TransactionService;->mNetworkManager:Lcom/motorola/messaging/transaction/NetworkManager;
    invoke-static {v4}, Lcom/motorola/messaging/transaction/TransactionService;->access$1100(Lcom/motorola/messaging/transaction/TransactionService;)Lcom/motorola/messaging/transaction/NetworkManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/messaging/transaction/NetworkManager;->getConnectedMmsNetwork()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 1792
    .local v2, "info":Landroid/net/NetworkInfo;
    if-nez v2, :cond_1

    .line 1793
    const-string v4, "TransactionService"

    const-string v5, "MMS-STATUS - Retrieve APN settings failed, no MMS APN connected"

    invoke-static {v4, v5}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1813
    :goto_0
    return-void

    .line 1796
    :cond_1
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    .line 1798
    .local v0, "activeApnName":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 1799
    const-string v4, "TransactionService"

    const-string v5, "MMS-STATUS - no APN name"

    invoke-static {v4, v5}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1800
    sget-object v3, Lcom/motorola/messaging/transaction/TransactionSettings$RetrieveType;->DEFAULT:Lcom/motorola/messaging/transaction/TransactionSettings$RetrieveType;

    .line 1807
    .local v3, "retrieveType":Lcom/motorola/messaging/transaction/TransactionSettings$RetrieveType;
    :goto_1
    new-instance v1, Lcom/motorola/messaging/transaction/TransactionSettings;

    iget-object v4, p0, Lcom/motorola/messaging/transaction/TransactionService$ServiceHandler;->this$0:Lcom/motorola/messaging/transaction/TransactionService;

    invoke-direct {v1, v4, v3, v0}, Lcom/motorola/messaging/transaction/TransactionSettings;-><init>(Landroid/content/Context;Lcom/motorola/messaging/transaction/TransactionSettings$RetrieveType;Ljava/lang/String;)V

    .line 1809
    .local v1, "apnSettings":Lcom/motorola/messaging/transaction/TransactionSettings;
    invoke-virtual {p2, v1}, Lcom/motorola/messaging/transaction/Transaction;->setConnectionSettings(Lcom/motorola/messaging/transaction/TransactionSettings;)V

    .line 1810
    invoke-virtual {p2, p1}, Lcom/motorola/messaging/transaction/Transaction;->setNetworkType(I)V

    .line 1811
    invoke-virtual {p2, v2}, Lcom/motorola/messaging/transaction/Transaction;->setNetworkInfo(Landroid/net/NetworkInfo;)V

    goto :goto_0

    .line 1803
    .end local v1    # "apnSettings":Lcom/motorola/messaging/transaction/TransactionSettings;
    .end local v3    # "retrieveType":Lcom/motorola/messaging/transaction/TransactionSettings$RetrieveType;
    :cond_2
    const-string v4, "TransactionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MMS-STATUS - Active APN="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/motorola/messaging/logger/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1804
    sget-object v3, Lcom/motorola/messaging/transaction/TransactionSettings$RetrieveType;->SINGLE:Lcom/motorola/messaging/transaction/TransactionSettings$RetrieveType;

    .restart local v3    # "retrieveType":Lcom/motorola/messaging/transaction/TransactionSettings$RetrieveType;
    goto :goto_1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1504
    # getter for: Lcom/motorola/messaging/transaction/TransactionService;->LOCAL_LOG:Z
    invoke-static {}, Lcom/motorola/messaging/transaction/TransactionService;->access$100()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1505
    const-string v2, "TransactionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/messaging/transaction/TransactionService$ServiceHandler;->this$0:Lcom/motorola/messaging/transaction/TransactionService;

    # invokes: Lcom/motorola/messaging/transaction/TransactionService;->getTreadInfo()Ljava/lang/String;
    invoke-static {v4}, Lcom/motorola/messaging/transaction/TransactionService;->access$500(Lcom/motorola/messaging/transaction/TransactionService;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1507
    const-string v2, "TransactionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage - Handling incoming message:, mainState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/messaging/transaction/TransactionService$ServiceHandler;->this$0:Lcom/motorola/messaging/transaction/TransactionService;

    # getter for: Lcom/motorola/messaging/transaction/TransactionService;->mMainState:Lcom/motorola/messaging/transaction/TransactionService$MainState;
    invoke-static {v4}, Lcom/motorola/messaging/transaction/TransactionService;->access$600(Lcom/motorola/messaging/transaction/TransactionService;)Lcom/motorola/messaging/transaction/TransactionService$MainState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", handleState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/messaging/transaction/TransactionService$ServiceHandler;->this$0:Lcom/motorola/messaging/transaction/TransactionService;

    # getter for: Lcom/motorola/messaging/transaction/TransactionService;->mHandleState:Lcom/motorola/messaging/transaction/TransactionService$HandleState;
    invoke-static {v4}, Lcom/motorola/messaging/transaction/TransactionService;->access$700(Lcom/motorola/messaging/transaction/TransactionService;)Lcom/motorola/messaging/transaction/TransactionService$HandleState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", msg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1513
    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x64

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/motorola/messaging/transaction/TransactionService$ServiceHandler;->this$0:Lcom/motorola/messaging/transaction/TransactionService;

    # getter for: Lcom/motorola/messaging/transaction/TransactionService;->mOnDestroyCalled:Z
    invoke-static {v2}, Lcom/motorola/messaging/transaction/TransactionService;->access$800(Lcom/motorola/messaging/transaction/TransactionService;)Z

    move-result v2

    if-ne v2, v6, :cond_2

    .line 1514
    const-string v2, "TransactionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MMS-STATUS - Discard new event after onDestroy: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1691
    :cond_1
    :goto_0
    return-void

    .line 1518
    :cond_2
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 1688
    const-string v2, "TransactionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MMS-STATUS - unknown what="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1520
    :sswitch_0
    iget-object v2, p0, Lcom/motorola/messaging/transaction/TransactionService$ServiceHandler;->this$0:Lcom/motorola/messaging/transaction/TransactionService;

    # invokes: Lcom/motorola/messaging/transaction/TransactionService;->releaseWakeLock()V
    invoke-static {v2}, Lcom/motorola/messaging/transaction/TransactionService;->access$900(Lcom/motorola/messaging/transaction/TransactionService;)V

    .line 1521
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->quit()V

    .line 1522
    # getter for: Lcom/motorola/messaging/transaction/TransactionService;->LOCAL_LOG:Z
    invoke-static {}, Lcom/motorola/messaging/transaction/TransactionService;->access$100()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1523
    const-string v2, "TransactionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MMS-THREAD - handleMessage, exit transaction service, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/messaging/transaction/TransactionService$ServiceHandler;->this$0:Lcom/motorola/messaging/transaction/TransactionService;

    # invokes: Lcom/motorola/messaging/transaction/TransactionService;->getTreadInfo()Ljava/lang/String;
    invoke-static {v4}, Lcom/motorola/messaging/transaction/TransactionService;->access$500(Lcom/motorola/messaging/transaction/TransactionService;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", num threads = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->activeCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1528
    :cond_3
    iget-object v2, p0, Lcom/motorola/messaging/transaction/TransactionService$ServiceHandler;->this$0:Lcom/motorola/messaging/transaction/TransactionService;

    sget-object v3, Lcom/motorola/messaging/transaction/TransactionService$HandleState;->QUIT:Lcom/motorola/messaging/transaction/TransactionService$HandleState;

    # setter for: Lcom/motorola/messaging/transaction/TransactionService;->mHandleState:Lcom/motorola/messaging/transaction/TransactionService$HandleState;
    invoke-static {v2, v3}, Lcom/motorola/messaging/transaction/TransactionService;->access$702(Lcom/motorola/messaging/transaction/TransactionService;Lcom/motorola/messaging/transaction/TransactionService$HandleState;)Lcom/motorola/messaging/transaction/TransactionService$HandleState;

    goto :goto_0

    .line 1536
    :sswitch_1
    # getter for: Lcom/motorola/messaging/transaction/TransactionService;->LOCAL_LOG:Z
    invoke-static {}, Lcom/motorola/messaging/transaction/TransactionService;->access$100()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1537
    const-string v2, "TransactionService"

    const-string v3, "handleMessage - EVENT_HANDLE_CHECK_DATABASE"

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1539
    :cond_4
    iget-object v2, p0, Lcom/motorola/messaging/transaction/TransactionService$ServiceHandler;->this$0:Lcom/motorola/messaging/transaction/TransactionService;

    iget v3, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/motorola/messaging/transaction/TransactionService;->processPendingDatabaseOperations(I)V
    invoke-static {v2, v3}, Lcom/motorola/messaging/transaction/TransactionService;->access$1000(Lcom/motorola/messaging/transaction/TransactionService;I)V

    goto :goto_0

    .line 1543
    :sswitch_2
    # getter for: Lcom/motorola/messaging/transaction/TransactionService;->LOCAL_LOG:Z
    invoke-static {}, Lcom/motorola/messaging/transaction/TransactionService;->access$100()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1544
    const-string v2, "TransactionService"

    const-string v3, "handleMessage - EVENT_CHECK_PENDING"

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1547
    :cond_5
    invoke-virtual {p0, v7}, Lcom/motorola/messaging/transaction/MsgHandler;->cancel(I)V

    .line 1548
    invoke-direct {p0, v5}, Lcom/motorola/messaging/transaction/TransactionService$ServiceHandler;->checkMmsConnectivity(Z)V

    goto/16 :goto_0

    .line 1552
    :sswitch_3
    # getter for: Lcom/motorola/messaging/transaction/TransactionService;->LOCAL_LOG:Z
    invoke-static {}, Lcom/motorola/messaging/transaction/TransactionService;->access$100()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1553
    const-string v2, "TransactionService"

    const-string v3, "handleMessage - EVENT_CONTINUE_MMS_CONNECTIVITY"

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1556
    :cond_6
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/motorola/messaging/transaction/MsgHandler;->cancel(I)V

    .line 1557
    invoke-direct {p0, v6}, Lcom/motorola/messaging/transaction/TransactionService$ServiceHandler;->checkMmsConnectivity(Z)V

    goto/16 :goto_0

    .line 1567
    :sswitch_4
    # getter for: Lcom/motorola/messaging/transaction/TransactionService;->LOCAL_LOG:Z
    invoke-static {}, Lcom/motorola/messaging/transaction/TransactionService;->access$100()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1568
    const-string v2, "TransactionService"

    const-string v3, "handleMessage - EVENT_MMS_APN_CONNECTED"

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1571
    :cond_7
    # getter for: Lcom/motorola/messaging/transaction/TransactionService;->LOCAL_LOG:Z
    invoke-static {}, Lcom/motorola/messaging/transaction/TransactionService;->access$100()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1572
    invoke-static {}, Lcom/motorola/messaging/transaction/NetworkManager;->showAllNetworkInfo()V

    .line 1580
    :cond_8
    iget-object v2, p0, Lcom/motorola/messaging/transaction/TransactionService$ServiceHandler;->this$0:Lcom/motorola/messaging/transaction/TransactionService;

    # getter for: Lcom/motorola/messaging/transaction/TransactionService;->mNetworkManager:Lcom/motorola/messaging/transaction/NetworkManager;
    invoke-static {v2}, Lcom/motorola/messaging/transaction/TransactionService;->access$1100(Lcom/motorola/messaging/transaction/TransactionService;)Lcom/motorola/messaging/transaction/NetworkManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/messaging/transaction/NetworkManager;->isMmsApnConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1584
    const-string v2, "TransactionService"

    const-string v3, "MMS-STATUS MMS APN connected!"

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1585
    iget-object v2, p0, Lcom/motorola/messaging/transaction/TransactionService$ServiceHandler;->this$0:Lcom/motorola/messaging/transaction/TransactionService;

    # setter for: Lcom/motorola/messaging/transaction/TransactionService;->mNumApnConnectionFailures:I
    invoke-static {v2, v5}, Lcom/motorola/messaging/transaction/TransactionService;->access$1202(Lcom/motorola/messaging/transaction/TransactionService;I)I

    .line 1586
    iget-object v2, p0, Lcom/motorola/messaging/transaction/TransactionService$ServiceHandler;->this$0:Lcom/motorola/messaging/transaction/TransactionService;

    # invokes: Lcom/motorola/messaging/transaction/TransactionService;->handleConnectivityStarted()V
    invoke-static {v2}, Lcom/motorola/messaging/transaction/TransactionService;->access$1300(Lcom/motorola/messaging/transaction/TransactionService;)V

    .line 1587
    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Lcom/motorola/messaging/transaction/MsgHandler;->cancel(I)V

    .line 1588
    iget-object v2, p0, Lcom/motorola/messaging/transaction/TransactionService$ServiceHandler;->this$0:Lcom/motorola/messaging/transaction/TransactionService;

    # invokes: Lcom/motorola/messaging/transaction/TransactionService;->hasTransactions()Z
    invoke-static {v2}, Lcom/motorola/messaging/transaction/TransactionService;->access$1400(Lcom/motorola/messaging/transaction/TransactionService;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1589
    invoke-direct {p0}, Lcom/motorola/messaging/transaction/TransactionService$ServiceHandler;->processPendingTransaction()V

    goto/16 :goto_0

    .line 1595
    :sswitch_5
    const-string v2, "TransactionService"

    const-string v3, "MMS-STATUS - APN switch timeout"

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1602
    iget-object v2, p0, Lcom/motorola/messaging/transaction/TransactionService$ServiceHandler;->this$0:Lcom/motorola/messaging/transaction/TransactionService;

    # invokes: Lcom/motorola/messaging/transaction/TransactionService;->ignoreApnFailure()Z
    invoke-static {v2}, Lcom/motorola/messaging/transaction/TransactionService;->access$1500(Lcom/motorola/messaging/transaction/TransactionService;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1606
    iget-object v2, p0, Lcom/motorola/messaging/transaction/TransactionService$ServiceHandler;->this$0:Lcom/motorola/messaging/transaction/TransactionService;

    # invokes: Lcom/motorola/messaging/transaction/TransactionService;->isPermanentAPNFailure()Z
    invoke-static {v2}, Lcom/motorola/messaging/transaction/TransactionService;->access$1600(Lcom/motorola/messaging/transaction/TransactionService;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1607
    const-string v2, "TransactionService"

    const-string v3, "MMS-STATUS - Can not switch APN to MMS"

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1608
    iget-object v2, p0, Lcom/motorola/messaging/transaction/TransactionService$ServiceHandler;->this$0:Lcom/motorola/messaging/transaction/TransactionService;

    # setter for: Lcom/motorola/messaging/transaction/TransactionService;->mNumApnConnectionFailures:I
    invoke-static {v2, v5}, Lcom/motorola/messaging/transaction/TransactionService;->access$1202(Lcom/motorola/messaging/transaction/TransactionService;I)I

    .line 1609
    new-instance v0, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;

    const/4 v2, 0x2

    const-string v3, "MMS_TRANSACTION"

    invoke-direct {v0, v2, v3}, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;-><init>(ILjava/lang/String;)V

    .line 1610
    .local v0, "event":Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;
    const-string v2, "status"

    const-string v3, "apnSwFail"

    invoke-virtual {v0, v2, v3}, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;->addField(Ljava/lang/String;Ljava/lang/String;)V

    .line 1611
    const-string v2, "timeout"

    invoke-virtual {v0, v2, v6}, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;->addField(Ljava/lang/String;I)V

    .line 1612
    invoke-virtual {v0}, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;->log()V

    .line 1615
    iget-object v2, p0, Lcom/motorola/messaging/transaction/TransactionService$ServiceHandler;->this$0:Lcom/motorola/messaging/transaction/TransactionService;

    # invokes: Lcom/motorola/messaging/transaction/TransactionService;->hasPending()Z
    invoke-static {v2}, Lcom/motorola/messaging/transaction/TransactionService;->access$1700(Lcom/motorola/messaging/transaction/TransactionService;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1616
    iget-object v2, p0, Lcom/motorola/messaging/transaction/TransactionService$ServiceHandler;->this$0:Lcom/motorola/messaging/transaction/TransactionService;

    sget-object v3, Lcom/motorola/messaging/transaction/Transaction$Failure;->APN_CONNECTION_TIMEOUT:Lcom/motorola/messaging/transaction/Transaction$Failure;

    # invokes: Lcom/motorola/messaging/transaction/TransactionService;->notifyFailure(Lcom/motorola/messaging/transaction/Transaction$Failure;)V
    invoke-static {v2, v3}, Lcom/motorola/messaging/transaction/TransactionService;->access$1800(Lcom/motorola/messaging/transaction/TransactionService;Lcom/motorola/messaging/transaction/Transaction$Failure;)V

    .line 1617
    invoke-direct {p0}, Lcom/motorola/messaging/transaction/TransactionService$ServiceHandler;->processPendingTransaction()V

    goto/16 :goto_0

    .line 1621
    .end local v0    # "event":Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;
    :cond_9
    const-string v2, "TransactionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MMS-STATUS - Try to switch APN again, num retries="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/messaging/transaction/TransactionService$ServiceHandler;->this$0:Lcom/motorola/messaging/transaction/TransactionService;

    # getter for: Lcom/motorola/messaging/transaction/TransactionService;->mNumApnConnectionFailures:I
    invoke-static {v4}, Lcom/motorola/messaging/transaction/TransactionService;->access$1200(Lcom/motorola/messaging/transaction/TransactionService;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1623
    iget-object v2, p0, Lcom/motorola/messaging/transaction/TransactionService$ServiceHandler;->this$0:Lcom/motorola/messaging/transaction/TransactionService;

    # getter for: Lcom/motorola/messaging/transaction/TransactionService;->mServiceHandler:Lcom/motorola/messaging/transaction/TransactionService$ServiceHandler;
    invoke-static {v2}, Lcom/motorola/messaging/transaction/TransactionService;->access$400(Lcom/motorola/messaging/transaction/TransactionService;)Lcom/motorola/messaging/transaction/TransactionService$ServiceHandler;

    move-result-object v2

    const-wide/16 v3, 0x7d0

    invoke-virtual {v2, v7, v3, v4}, Lcom/motorola/messaging/transaction/MsgHandler;->sendDelayed(IJ)V

    goto/16 :goto_0

    .line 1629
    :sswitch_6
    iget-object v2, p0, Lcom/motorola/messaging/transaction/TransactionService$ServiceHandler;->this$0:Lcom/motorola/messaging/transaction/TransactionService;

    # invokes: Lcom/motorola/messaging/transaction/TransactionService;->hasProcessing()Z
    invoke-static {v2}, Lcom/motorola/messaging/transaction/TransactionService;->access$1900(Lcom/motorola/messaging/transaction/TransactionService;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1630
    const-string v2, "TransactionService"

    const-string v3, "MMS-STATUS - Voice call too long while processing MMS message"

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1633
    iget-object v2, p0, Lcom/motorola/messaging/transaction/TransactionService$ServiceHandler;->this$0:Lcom/motorola/messaging/transaction/TransactionService;

    sget-object v3, Lcom/motorola/messaging/transaction/Transaction$Failure;->VOICE_CALL_TOO_LONG:Lcom/motorola/messaging/transaction/Transaction$Failure;

    # invokes: Lcom/motorola/messaging/transaction/TransactionService;->abortProcessing(ZLcom/motorola/messaging/transaction/Transaction$Failure;)V
    invoke-static {v2, v5, v3}, Lcom/motorola/messaging/transaction/TransactionService;->access$2000(Lcom/motorola/messaging/transaction/TransactionService;ZLcom/motorola/messaging/transaction/Transaction$Failure;)V

    goto/16 :goto_0

    .line 1636
    :cond_a
    const-string v2, "TransactionService"

    const-string v3, "MMS-STATUS - Voice call too long but no MMS message being processed"

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1642
    :sswitch_7
    invoke-static {}, Lcom/motorola/messaging/transaction/NetworkManager;->onCallDropped()V

    .line 1643
    iget-object v2, p0, Lcom/motorola/messaging/transaction/TransactionService$ServiceHandler;->this$0:Lcom/motorola/messaging/transaction/TransactionService;

    # invokes: Lcom/motorola/messaging/transaction/TransactionService;->hasTransactions()Z
    invoke-static {v2}, Lcom/motorola/messaging/transaction/TransactionService;->access$1400(Lcom/motorola/messaging/transaction/TransactionService;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1644
    # getter for: Lcom/motorola/messaging/transaction/TransactionService;->LOCAL_LOG:Z
    invoke-static {}, Lcom/motorola/messaging/transaction/TransactionService;->access$100()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1645
    const-string v2, "TransactionService"

    const-string v3, "MMS-STATUS - Pending transactions will be processed after 30 seconds"

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1649
    :cond_b
    const/16 v2, 0x9

    const-wide/16 v3, 0x7530

    invoke-virtual {p0, v2, v3, v4}, Lcom/motorola/messaging/transaction/MsgHandler;->sendDelayed(IJ)V

    goto/16 :goto_0

    .line 1655
    :sswitch_8
    iget-object v2, p0, Lcom/motorola/messaging/transaction/TransactionService$ServiceHandler;->this$0:Lcom/motorola/messaging/transaction/TransactionService;

    sget-object v3, Lcom/motorola/messaging/transaction/Transaction$Failure;->VOICE_CALL_TOO_LONG:Lcom/motorola/messaging/transaction/Transaction$Failure;

    # invokes: Lcom/motorola/messaging/transaction/TransactionService;->resumeTransaction(Lcom/motorola/messaging/transaction/Transaction$Failure;)V
    invoke-static {v2, v3}, Lcom/motorola/messaging/transaction/TransactionService;->access$2100(Lcom/motorola/messaging/transaction/TransactionService;Lcom/motorola/messaging/transaction/Transaction$Failure;)V

    .line 1656
    const/4 v2, -0x1

    invoke-direct {p0, v2}, Lcom/motorola/messaging/transaction/TransactionService$ServiceHandler;->checkPending(I)V

    goto/16 :goto_0

    .line 1660
    :sswitch_9
    # getter for: Lcom/motorola/messaging/transaction/TransactionService;->LOCAL_LOG:Z
    invoke-static {}, Lcom/motorola/messaging/transaction/TransactionService;->access$100()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1661
    const-string v2, "TransactionService"

    const-string v3, "handleMessage - EVENT_CREATE_TRANSACTION"

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1663
    :cond_c
    iget-object v3, p0, Lcom/motorola/messaging/transaction/TransactionService$ServiceHandler;->this$0:Lcom/motorola/messaging/transaction/TransactionService;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/messaging/transaction/TransactionBundle;

    # invokes: Lcom/motorola/messaging/transaction/TransactionService;->handleCreateTransaction(ILcom/motorola/messaging/transaction/TransactionBundle;)V
    invoke-static {v3, v4, v2}, Lcom/motorola/messaging/transaction/TransactionService;->access$2200(Lcom/motorola/messaging/transaction/TransactionService;ILcom/motorola/messaging/transaction/TransactionBundle;)V

    goto/16 :goto_0

    .line 1667
    :sswitch_a
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 1668
    .local v1, "type":I
    # getter for: Lcom/motorola/messaging/transaction/TransactionService;->LOCAL_LOG:Z
    invoke-static {}, Lcom/motorola/messaging/transaction/TransactionService;->access$100()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1669
    const-string v2, "TransactionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage - EVENT_HANDLE_NEXT_PENDING_TRANSACTION, transaction type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1671
    :cond_d
    invoke-direct {p0, v1}, Lcom/motorola/messaging/transaction/TransactionService$ServiceHandler;->checkPending(I)V

    goto/16 :goto_0

    .line 1675
    .end local v1    # "type":I
    :sswitch_b
    # getter for: Lcom/motorola/messaging/transaction/TransactionService;->LOCAL_LOG:Z
    invoke-static {}, Lcom/motorola/messaging/transaction/TransactionService;->access$100()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1676
    const-string v2, "TransactionService"

    const-string v3, "handleMessage - EVENT_PROCESS_PENDING_FAILED_TRANSACTIONS"

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1678
    :cond_e
    iget-object v2, p0, Lcom/motorola/messaging/transaction/TransactionService$ServiceHandler;->this$0:Lcom/motorola/messaging/transaction/TransactionService;

    # invokes: Lcom/motorola/messaging/transaction/TransactionService;->hasPending()Z
    invoke-static {v2}, Lcom/motorola/messaging/transaction/TransactionService;->access$1700(Lcom/motorola/messaging/transaction/TransactionService;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1679
    invoke-direct {p0}, Lcom/motorola/messaging/transaction/TransactionService$ServiceHandler;->processPendingFailedTransactions()V

    goto/16 :goto_0

    .line 1681
    :cond_f
    # getter for: Lcom/motorola/messaging/transaction/TransactionService;->LOCAL_LOG:Z
    invoke-static {}, Lcom/motorola/messaging/transaction/TransactionService;->access$100()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1682
    const-string v2, "TransactionService"

    const-string v3, "handleMessage - no pending failed transactions to process"

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1518
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_7
        0x2 -> :sswitch_4
        0x3 -> :sswitch_3
        0x4 -> :sswitch_a
        0x5 -> :sswitch_1
        0x6 -> :sswitch_2
        0x7 -> :sswitch_5
        0x8 -> :sswitch_6
        0x9 -> :sswitch_8
        0xa -> :sswitch_1
        0xb -> :sswitch_9
        0xc -> :sswitch_b
        0x64 -> :sswitch_0
    .end sparse-switch
.end method
