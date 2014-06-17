.class final Lcom/android/mms/transaction/TransactionService$ServiceHandler;
.super Lcom/android/mms/transaction/MsgHandler;
.source "TransactionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/TransactionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/transaction/TransactionService;


# direct methods
.method public constructor <init>(Lcom/android/mms/transaction/TransactionService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1683
    iput-object p1, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    .line 1684
    invoke-direct {p0, p2}, Lcom/android/mms/transaction/MsgHandler;-><init>(Landroid/os/Looper;)V

    .line 1685
    return-void
.end method

.method private checkMmsConnectivity(Z)V
    .locals 3
    .param p1, "keep"    # Z

    .prologue
    const/4 v2, -0x1

    .line 1934
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    # invokes: Lcom/android/mms/transaction/TransactionService;->finishIfNeeded(I)Z
    invoke-static {v0, v2}, Lcom/android/mms/transaction/TransactionService;->access$2300(Lcom/android/mms/transaction/TransactionService;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1949
    :cond_0
    :goto_0
    return-void

    .line 1938
    :cond_1
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    # invokes: Lcom/android/mms/transaction/TransactionService;->hasTransactions()Z
    invoke-static {v0}, Lcom/android/mms/transaction/TransactionService;->access$1400(Lcom/android/mms/transaction/TransactionService;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1939
    const-string v0, "TransactionService"

    const-string v1, "MMS-STATUS - No transactions, it is not necessary to check MMS APN/transactions"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1942
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    sget-object v1, Lcom/android/mms/transaction/Transaction$Failure;->NONE:Lcom/android/mms/transaction/Transaction$Failure;

    # invokes: Lcom/android/mms/transaction/TransactionService;->finishService(ILcom/android/mms/transaction/Transaction$Failure;)V
    invoke-static {v0, v2, v1}, Lcom/android/mms/transaction/TransactionService;->access$2400(Lcom/android/mms/transaction/TransactionService;ILcom/android/mms/transaction/Transaction$Failure;)V

    goto :goto_0

    .line 1946
    :cond_2
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {v0, p1}, Lcom/android/mms/transaction/TransactionService;->beginMmsConnectivity(Z)Lcom/android/mms/transaction/TransactionService$MMSNetworkState;

    move-result-object v0

    sget-object v1, Lcom/android/mms/transaction/TransactionService$MMSNetworkState;->FAILED:Lcom/android/mms/transaction/TransactionService$MMSNetworkState;

    if-ne v0, v1, :cond_0

    .line 1947
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    sget-object v1, Lcom/android/mms/transaction/Transaction$Failure;->APN_CONNECTION:Lcom/android/mms/transaction/Transaction$Failure;

    # invokes: Lcom/android/mms/transaction/TransactionService;->finishService(ILcom/android/mms/transaction/Transaction$Failure;)V
    invoke-static {v0, v2, v1}, Lcom/android/mms/transaction/TransactionService;->access$2400(Lcom/android/mms/transaction/TransactionService;ILcom/android/mms/transaction/Transaction$Failure;)V

    goto :goto_0
.end method

.method private checkPending(I)V
    .locals 4
    .param p1, "type"    # I

    .prologue
    .line 1915
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    const/4 v1, -0x1

    # invokes: Lcom/android/mms/transaction/TransactionService;->finishIfNeeded(I)Z
    invoke-static {v0, v1}, Lcom/android/mms/transaction/TransactionService;->access$2300(Lcom/android/mms/transaction/TransactionService;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1916
    if-nez p1, :cond_0

    .line 1919
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    const-wide/16 v1, -0x2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateNewMessageIndicator(Landroid/content/Context;JZ)V

    .line 1929
    :cond_0
    :goto_0
    return-void

    .line 1926
    :cond_1
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    # invokes: Lcom/android/mms/transaction/TransactionService;->hasTransactions()Z
    invoke-static {v0}, Lcom/android/mms/transaction/TransactionService;->access$1400(Lcom/android/mms/transaction/TransactionService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1927
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->processPendingTransaction()V

    goto :goto_0
.end method

.method private processPendingFailedTransactions()V
    .locals 4

    .prologue
    .line 1952
    # getter for: Lcom/android/mms/transaction/TransactionService;->LOCAL_LOG:Z
    invoke-static {}, Lcom/android/mms/transaction/TransactionService;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1953
    const-string v1, "TransactionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processPendingFailedTransaction - pending transactions = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    # getter for: Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/mms/transaction/TransactionService;->access$2500(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1969
    :cond_0
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    # getter for: Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/mms/transaction/TransactionService;->access$2500(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/transaction/Transaction;

    .line 1970
    .local v0, "t":Lcom/android/mms/transaction/Transaction;
    invoke-virtual {v0}, Lcom/android/mms/transaction/Transaction;->getType()I

    move-result v1

    if-nez v1, :cond_1

    .line 1971
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    # invokes: Lcom/android/mms/transaction/TransactionService;->discardPending()V
    invoke-static {v1}, Lcom/android/mms/transaction/TransactionService;->access$2600(Lcom/android/mms/transaction/TransactionService;)V

    .line 1975
    :goto_0
    return-void

    .line 1973
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->processPendingTransaction()V

    goto :goto_0
.end method

.method private processPendingTransaction()V
    .locals 9

    .prologue
    .line 1978
    # getter for: Lcom/android/mms/transaction/TransactionService;->LOCAL_LOG:Z
    invoke-static {}, Lcom/android/mms/transaction/TransactionService;->access$100()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1979
    const-string v5, "TransactionService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "processPendingTransaction - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    # invokes: Lcom/android/mms/transaction/TransactionService;->getTreadInfo()Ljava/lang/String;
    invoke-static {v7}, Lcom/android/mms/transaction/TransactionService;->access$500(Lcom/android/mms/transaction/TransactionService;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1983
    :cond_0
    const/4 v4, 0x0

    .line 1984
    .local v4, "transaction":Lcom/android/mms/transaction/Transaction;
    const/4 v2, 0x0

    .line 1985
    .local v2, "numProcessTransaction":I
    iget-object v5, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    # getter for: Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/mms/transaction/TransactionService;->access$2700(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v6

    monitor-enter v6

    .line 1986
    :try_start_0
    iget-object v5, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    # getter for: Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/mms/transaction/TransactionService;->access$2500(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eqz v5, :cond_1

    .line 1987
    iget-object v5, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    # getter for: Lcom/android/mms/transaction/TransactionService;->mPending:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/mms/transaction/TransactionService;->access$2500(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/android/mms/transaction/Transaction;

    move-object v4, v0

    .line 1988
    # getter for: Lcom/android/mms/transaction/TransactionService;->LOCAL_LOG:Z
    invoke-static {}, Lcom/android/mms/transaction/TransactionService;->access$100()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1989
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

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1994
    :cond_1
    iget-object v5, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    # getter for: Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/mms/transaction/TransactionService;->access$2700(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1995
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1997
    if-eqz v4, :cond_3

    .line 1999
    :try_start_1
    invoke-virtual {v4}, Lcom/android/mms/transaction/Transaction;->getServiceId()I

    move-result v3

    .line 2000
    .local v3, "serviceId":I
    invoke-direct {p0, v4}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->processTransaction(Lcom/android/mms/transaction/Transaction;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 2001
    const/4 v4, 0x0

    .line 2002
    const-string v5, "TransactionService"

    const-string v6, "MMS-STATUS - process transaction failure"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2004
    iget-object v5, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    sget-object v6, Lcom/android/mms/transaction/Transaction$Failure;->INTERNAL:Lcom/android/mms/transaction/Transaction$Failure;

    # invokes: Lcom/android/mms/transaction/TransactionService;->finishService(ILcom/android/mms/transaction/Transaction$Failure;)V
    invoke-static {v5, v3, v6}, Lcom/android/mms/transaction/TransactionService;->access$2400(Lcom/android/mms/transaction/TransactionService;ILcom/android/mms/transaction/Transaction$Failure;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2017
    .end local v3    # "serviceId":I
    :cond_2
    :goto_0
    return-void

    .line 1995
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 2006
    :catch_0
    move-exception v1

    .line 2007
    .local v1, "e":Ljava/io/IOException;
    const-string v5, "TransactionService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Connection failed. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2010
    .end local v1    # "e":Ljava/io/IOException;
    :cond_3
    if-nez v2, :cond_2

    .line 2012
    const-string v5, "TransactionService"

    const-string v6, "MMS-STATUS - pending transaction not found!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2014
    iget-object v5, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    const/4 v6, -0x1

    sget-object v7, Lcom/android/mms/transaction/Transaction$Failure;->INTERNAL:Lcom/android/mms/transaction/Transaction$Failure;

    # invokes: Lcom/android/mms/transaction/TransactionService;->finishService(ILcom/android/mms/transaction/Transaction$Failure;)V
    invoke-static {v5, v6, v7}, Lcom/android/mms/transaction/TransactionService;->access$2400(Lcom/android/mms/transaction/TransactionService;ILcom/android/mms/transaction/Transaction$Failure;)V

    goto :goto_0
.end method

.method private processTransaction(Lcom/android/mms/transaction/Transaction;)Z
    .locals 10
    .param p1, "transaction"    # Lcom/android/mms/transaction/Transaction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 2062
    # getter for: Lcom/android/mms/transaction/TransactionService;->LOCAL_LOG:Z
    invoke-static {}, Lcom/android/mms/transaction/TransactionService;->access$100()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2063
    const-string v7, "TransactionService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "processTransaction - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    # invokes: Lcom/android/mms/transaction/TransactionService;->getTreadInfo()Ljava/lang/String;
    invoke-static {v9}, Lcom/android/mms/transaction/TransactionService;->access$500(Lcom/android/mms/transaction/TransactionService;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2066
    :cond_0
    if-nez p1, :cond_1

    .line 2145
    :goto_0
    return v5

    .line 2070
    :cond_1
    iget-object v7, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    # getter for: Lcom/android/mms/transaction/TransactionService;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v7}, Lcom/android/mms/transaction/TransactionService;->access$2800(Lcom/android/mms/transaction/TransactionService;)Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    .line 2071
    .local v1, "networkType":I
    const-string v7, "TransactionService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MMS-STATUS - Process transaction, network="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2074
    iget-object v7, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    # getter for: Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/mms/transaction/TransactionService;->access$2700(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v7

    monitor-enter v7

    .line 2080
    :try_start_0
    iget-object v8, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    # invokes: Lcom/android/mms/transaction/TransactionService;->isDuplicate(Lcom/android/mms/transaction/Transaction;)Z
    invoke-static {v8, p1}, Lcom/android/mms/transaction/TransactionService;->access$2900(Lcom/android/mms/transaction/TransactionService;Lcom/android/mms/transaction/Transaction;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2081
    monitor-exit v7

    move v5, v6

    goto :goto_0

    .line 2084
    :cond_2
    iget-object v8, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    # invokes: Lcom/android/mms/transaction/TransactionService;->addToPending(Lcom/android/mms/transaction/Transaction;)V
    invoke-static {v8, p1}, Lcom/android/mms/transaction/TransactionService;->access$3000(Lcom/android/mms/transaction/TransactionService;Lcom/android/mms/transaction/Transaction;)V

    .line 2085
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2092
    invoke-virtual {p1}, Lcom/android/mms/transaction/Transaction;->getState()Lcom/android/mms/transaction/TransactionState;

    move-result-object v3

    .line 2093
    .local v3, "state":Lcom/android/mms/transaction/TransactionState;
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/android/mms/transaction/TransactionState;->getState()Lcom/android/mms/transaction/Transaction$State;

    move-result-object v7

    sget-object v8, Lcom/android/mms/transaction/Transaction$State;->FAILED:Lcom/android/mms/transaction/Transaction$State;

    if-eq v7, v8, :cond_7

    .line 2095
    iget-object v7, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {v7, v5}, Lcom/android/mms/transaction/TransactionService;->beginMmsConnectivity(Z)Lcom/android/mms/transaction/TransactionService$MMSNetworkState;

    move-result-object v2

    .line 2096
    .local v2, "result":Lcom/android/mms/transaction/TransactionService$MMSNetworkState;
    sget-object v5, Lcom/android/mms/transaction/TransactionService$MMSNetworkState;->IN_PROGRESS:Lcom/android/mms/transaction/TransactionService$MMSNetworkState;

    if-ne v2, v5, :cond_3

    move v5, v6

    .line 2098
    goto :goto_0

    .line 2085
    .end local v2    # "result":Lcom/android/mms/transaction/TransactionService$MMSNetworkState;
    .end local v3    # "state":Lcom/android/mms/transaction/TransactionState;
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 2099
    .restart local v2    # "result":Lcom/android/mms/transaction/TransactionService$MMSNetworkState;
    .restart local v3    # "state":Lcom/android/mms/transaction/TransactionState;
    :cond_3
    sget-object v5, Lcom/android/mms/transaction/TransactionService$MMSNetworkState;->SUSPENDED:Lcom/android/mms/transaction/TransactionService$MMSNetworkState;

    if-eq v2, v5, :cond_4

    sget-object v5, Lcom/android/mms/transaction/TransactionService$MMSNetworkState;->FAILED:Lcom/android/mms/transaction/TransactionService$MMSNetworkState;

    if-ne v2, v5, :cond_6

    :cond_4
    iget-object v5, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    # invokes: Lcom/android/mms/transaction/TransactionService;->ignoreApnFailure()Z
    invoke-static {v5}, Lcom/android/mms/transaction/TransactionService;->access$1500(Lcom/android/mms/transaction/TransactionService;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2102
    invoke-virtual {p1}, Lcom/android/mms/transaction/Transaction;->getType()I

    move-result v5

    if-nez v5, :cond_5

    .line 2106
    iget-object v5, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    const-wide/16 v7, -0x2

    invoke-static {v5, v7, v8, v6}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateNewMessageIndicator(Landroid/content/Context;JZ)V

    :cond_5
    move v5, v6

    .line 2112
    goto :goto_0

    .line 2113
    :cond_6
    sget-object v5, Lcom/android/mms/transaction/TransactionService$MMSNetworkState;->CONNECTED:Lcom/android/mms/transaction/TransactionService$MMSNetworkState;

    if-eq v2, v5, :cond_7

    .line 2118
    sget-object v5, Lcom/android/mms/transaction/Transaction$Failure;->APN_CONNECTION:Lcom/android/mms/transaction/Transaction$Failure;

    invoke-virtual {p1, v5}, Lcom/android/mms/transaction/Transaction;->notifyFailure(Lcom/android/mms/transaction/Transaction$Failure;)V

    .line 2120
    invoke-static {}, Lcom/android/mms/checkin/CheckinLogger;->getInstance()Lcom/android/mms/checkin/CheckinLogger;

    move-result-object v0

    .line 2121
    .local v0, "checkin":Lcom/android/mms/checkin/CheckinLogger;
    if-eqz v0, :cond_7

    .line 2122
    const-string v4, "apnSwFail"

    .line 2123
    .local v4, "status":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    const/4 v7, 0x2

    invoke-virtual {v0, v5, v7, v4}, Lcom/android/mms/checkin/CheckinLogger;->logAddMmsTransactionItem(Landroid/content/Context;ILjava/lang/String;)V

    .line 2128
    .end local v0    # "checkin":Lcom/android/mms/checkin/CheckinLogger;
    .end local v2    # "result":Lcom/android/mms/transaction/TransactionService$MMSNetworkState;
    .end local v4    # "status":Ljava/lang/String;
    :cond_7
    invoke-virtual {p1}, Lcom/android/mms/transaction/Transaction;->getConnectionSettings()Lcom/android/mms/transaction/TransactionSettings;

    move-result-object v5

    if-nez v5, :cond_8

    .line 2132
    invoke-direct {p0, v1, p1}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->refreshApn(ILcom/android/mms/transaction/Transaction;)V

    .line 2135
    :cond_8
    iget-object v5, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    # getter for: Lcom/android/mms/transaction/TransactionService;->mProcessing:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/mms/transaction/TransactionService;->access$2700(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v7

    monitor-enter v7

    .line 2136
    :try_start_2
    iget-object v5, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    # invokes: Lcom/android/mms/transaction/TransactionService;->moveToProcessing(Lcom/android/mms/transaction/Transaction;)V
    invoke-static {v5, p1}, Lcom/android/mms/transaction/TransactionService;->access$3100(Lcom/android/mms/transaction/TransactionService;Lcom/android/mms/transaction/Transaction;)V

    .line 2137
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2139
    const-string v5, "TransactionService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MMS-STATUS - Starting transaction: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2141
    iget-object v5, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    # getter for: Lcom/android/mms/transaction/TransactionService;->mManager:Lcom/android/mms/transaction/TransactionManager;
    invoke-static {v5}, Lcom/android/mms/transaction/TransactionService;->access$3200(Lcom/android/mms/transaction/TransactionService;)Lcom/android/mms/transaction/TransactionManager;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/android/mms/transaction/TransactionManager;->onTransactionProcess(Lcom/android/mms/transaction/Transaction;)V

    .line 2142
    iget-object v5, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    # getter for: Lcom/android/mms/transaction/TransactionService;->mManager:Lcom/android/mms/transaction/TransactionManager;
    invoke-static {v5}, Lcom/android/mms/transaction/TransactionService;->access$3200(Lcom/android/mms/transaction/TransactionService;)Lcom/android/mms/transaction/TransactionManager;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/android/mms/transaction/Transaction;->setManager(Lcom/android/mms/transaction/TransactionManager;)V

    .line 2143
    iget-object v5, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {p1, v5}, Lcom/android/mms/transaction/Transaction;->attach(Lcom/android/mms/transaction/Observer;)V

    .line 2144
    invoke-virtual {p1}, Lcom/android/mms/transaction/Transaction;->process()V

    move v5, v6

    .line 2145
    goto/16 :goto_0

    .line 2137
    :catchall_1
    move-exception v5

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v5
.end method

.method private refreshApn(ILcom/android/mms/transaction/Transaction;)V
    .locals 7
    .param p1, "networkType"    # I
    .param p2, "transaction"    # Lcom/android/mms/transaction/Transaction;

    .prologue
    .line 2023
    # getter for: Lcom/android/mms/transaction/TransactionService;->LOCAL_LOG:Z
    invoke-static {}, Lcom/android/mms/transaction/TransactionService;->access$100()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2024
    const-string v4, "TransactionService"

    const-string v5, "MMS-STATUS - Retrieve APN settings"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2029
    :cond_0
    iget-object v4, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    # getter for: Lcom/android/mms/transaction/TransactionService;->mNetworkManager:Lcom/android/mms/transaction/NetworkManager;
    invoke-static {v4}, Lcom/android/mms/transaction/TransactionService;->access$1100(Lcom/android/mms/transaction/TransactionService;)Lcom/android/mms/transaction/NetworkManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/transaction/NetworkManager;->getConnectedMmsNetwork()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 2030
    .local v2, "info":Landroid/net/NetworkInfo;
    if-nez v2, :cond_1

    .line 2031
    const-string v4, "TransactionService"

    const-string v5, "MMS-STATUS - Retrieve APN settings failed, no MMS APN connected"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2050
    :goto_0
    return-void

    .line 2034
    :cond_1
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    .line 2036
    .local v0, "activeApnName":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 2037
    const-string v4, "TransactionService"

    const-string v5, "MMS-STATUS - no APN name"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2038
    sget-object v3, Lcom/android/mms/transaction/TransactionSettings$RetrieveType;->DEFAULT:Lcom/android/mms/transaction/TransactionSettings$RetrieveType;

    .line 2044
    .local v3, "retrieveType":Lcom/android/mms/transaction/TransactionSettings$RetrieveType;
    :goto_1
    new-instance v1, Lcom/android/mms/transaction/TransactionSettings;

    iget-object v4, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-direct {v1, v4, v3, v0}, Lcom/android/mms/transaction/TransactionSettings;-><init>(Landroid/content/Context;Lcom/android/mms/transaction/TransactionSettings$RetrieveType;Ljava/lang/String;)V

    .line 2046
    .local v1, "apnSettings":Lcom/android/mms/transaction/TransactionSettings;
    invoke-virtual {p2, v1}, Lcom/android/mms/transaction/Transaction;->setConnectionSettings(Lcom/android/mms/transaction/TransactionSettings;)V

    .line 2047
    invoke-virtual {p2, p1}, Lcom/android/mms/transaction/Transaction;->setNetworkType(I)V

    .line 2048
    invoke-virtual {p2, v2}, Lcom/android/mms/transaction/Transaction;->setNetworkInfo(Landroid/net/NetworkInfo;)V

    goto :goto_0

    .line 2040
    .end local v1    # "apnSettings":Lcom/android/mms/transaction/TransactionSettings;
    .end local v3    # "retrieveType":Lcom/android/mms/transaction/TransactionSettings$RetrieveType;
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

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2041
    sget-object v3, Lcom/android/mms/transaction/TransactionSettings$RetrieveType;->SINGLE:Lcom/android/mms/transaction/TransactionSettings$RetrieveType;

    .restart local v3    # "retrieveType":Lcom/android/mms/transaction/TransactionSettings$RetrieveType;
    goto :goto_1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1695
    # getter for: Lcom/android/mms/transaction/TransactionService;->LOCAL_LOG:Z
    invoke-static {}, Lcom/android/mms/transaction/TransactionService;->access$100()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1696
    const-string v3, "TransactionService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMessage - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    # invokes: Lcom/android/mms/transaction/TransactionService;->getTreadInfo()Ljava/lang/String;
    invoke-static {v5}, Lcom/android/mms/transaction/TransactionService;->access$500(Lcom/android/mms/transaction/TransactionService;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1698
    const-string v3, "TransactionService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMessage - Handling incoming message:, mainState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    # getter for: Lcom/android/mms/transaction/TransactionService;->mMainState:Lcom/android/mms/transaction/TransactionService$MainState;
    invoke-static {v5}, Lcom/android/mms/transaction/TransactionService;->access$600(Lcom/android/mms/transaction/TransactionService;)Lcom/android/mms/transaction/TransactionService$MainState;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", handleState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    # getter for: Lcom/android/mms/transaction/TransactionService;->mHandleState:Lcom/android/mms/transaction/TransactionService$HandleState;
    invoke-static {v5}, Lcom/android/mms/transaction/TransactionService;->access$700(Lcom/android/mms/transaction/TransactionService;)Lcom/android/mms/transaction/TransactionService$HandleState;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", msg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1705
    :cond_0
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x64

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    # getter for: Lcom/android/mms/transaction/TransactionService;->mOnDestroyCalled:Z
    invoke-static {v3}, Lcom/android/mms/transaction/TransactionService;->access$800(Lcom/android/mms/transaction/TransactionService;)Z

    move-result v3

    if-ne v3, v7, :cond_2

    .line 1706
    const-string v3, "TransactionService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MMS-STATUS - Discard new event after onDestroy: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1910
    :cond_1
    :goto_0
    return-void

    .line 1712
    :cond_2
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 1907
    const-string v3, "TransactionService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MMS-STATUS - unknown what="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1714
    :sswitch_0
    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    # invokes: Lcom/android/mms/transaction/TransactionService;->releaseWakeLock()V
    invoke-static {v3}, Lcom/android/mms/transaction/TransactionService;->access$900(Lcom/android/mms/transaction/TransactionService;)V

    .line 1715
    invoke-virtual {p0}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->quit()V

    .line 1716
    # getter for: Lcom/android/mms/transaction/TransactionService;->LOCAL_LOG:Z
    invoke-static {}, Lcom/android/mms/transaction/TransactionService;->access$100()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1717
    const-string v3, "TransactionService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MMS-THREAD - handleMessage, exit transaction service, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    # invokes: Lcom/android/mms/transaction/TransactionService;->getTreadInfo()Ljava/lang/String;
    invoke-static {v5}, Lcom/android/mms/transaction/TransactionService;->access$500(Lcom/android/mms/transaction/TransactionService;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", num threads = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->activeCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1723
    :cond_3
    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    sget-object v4, Lcom/android/mms/transaction/TransactionService$HandleState;->QUIT:Lcom/android/mms/transaction/TransactionService$HandleState;

    # setter for: Lcom/android/mms/transaction/TransactionService;->mHandleState:Lcom/android/mms/transaction/TransactionService$HandleState;
    invoke-static {v3, v4}, Lcom/android/mms/transaction/TransactionService;->access$702(Lcom/android/mms/transaction/TransactionService;Lcom/android/mms/transaction/TransactionService$HandleState;)Lcom/android/mms/transaction/TransactionService$HandleState;

    goto :goto_0

    .line 1732
    :sswitch_1
    # getter for: Lcom/android/mms/transaction/TransactionService;->LOCAL_LOG:Z
    invoke-static {}, Lcom/android/mms/transaction/TransactionService;->access$100()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1733
    const-string v3, "TransactionService"

    const-string v4, "handleMessage - EVENT_HANDLE_CHECK_DATABASE"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1736
    :cond_4
    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    iget v4, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/mms/transaction/TransactionService;->processPendingDatabaseOperations(I)V
    invoke-static {v3, v4}, Lcom/android/mms/transaction/TransactionService;->access$1000(Lcom/android/mms/transaction/TransactionService;I)V

    goto :goto_0

    .line 1740
    :sswitch_2
    # getter for: Lcom/android/mms/transaction/TransactionService;->LOCAL_LOG:Z
    invoke-static {}, Lcom/android/mms/transaction/TransactionService;->access$100()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1741
    const-string v3, "TransactionService"

    const-string v4, "handleMessage - EVENT_CHECK_PENDING"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1744
    :cond_5
    invoke-virtual {p0, v8}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->cancel(I)V

    .line 1745
    invoke-direct {p0, v6}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->checkMmsConnectivity(Z)V

    goto/16 :goto_0

    .line 1749
    :sswitch_3
    # getter for: Lcom/android/mms/transaction/TransactionService;->LOCAL_LOG:Z
    invoke-static {}, Lcom/android/mms/transaction/TransactionService;->access$100()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1750
    const-string v3, "TransactionService"

    const-string v4, "handleMessage - EVENT_CONTINUE_MMS_CONNECTIVITY"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1754
    :cond_6
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->cancel(I)V

    .line 1755
    invoke-direct {p0, v7}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->checkMmsConnectivity(Z)V

    goto/16 :goto_0

    .line 1765
    :sswitch_4
    # getter for: Lcom/android/mms/transaction/TransactionService;->LOCAL_LOG:Z
    invoke-static {}, Lcom/android/mms/transaction/TransactionService;->access$100()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1766
    const-string v3, "TransactionService"

    const-string v4, "handleMessage - EVENT_MMS_APN_CONNECTED"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1769
    :cond_7
    # getter for: Lcom/android/mms/transaction/TransactionService;->LOCAL_LOG:Z
    invoke-static {}, Lcom/android/mms/transaction/TransactionService;->access$100()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1770
    invoke-static {}, Lcom/android/mms/transaction/NetworkManager;->showAllNetworkInfo()V

    .line 1783
    :cond_8
    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    # getter for: Lcom/android/mms/transaction/TransactionService;->mNetworkManager:Lcom/android/mms/transaction/NetworkManager;
    invoke-static {v3}, Lcom/android/mms/transaction/TransactionService;->access$1100(Lcom/android/mms/transaction/TransactionService;)Lcom/android/mms/transaction/NetworkManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/transaction/NetworkManager;->isMmsApnConnected()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1787
    const-string v3, "TransactionService"

    const-string v4, "MMS-STATUS MMS APN connected!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1788
    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    # setter for: Lcom/android/mms/transaction/TransactionService;->mNumApnConnectionFailures:I
    invoke-static {v3, v6}, Lcom/android/mms/transaction/TransactionService;->access$1202(Lcom/android/mms/transaction/TransactionService;I)I

    .line 1789
    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    # invokes: Lcom/android/mms/transaction/TransactionService;->handleConnectivityStarted()V
    invoke-static {v3}, Lcom/android/mms/transaction/TransactionService;->access$1300(Lcom/android/mms/transaction/TransactionService;)V

    .line 1791
    const/4 v3, 0x7

    invoke-virtual {p0, v3}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->cancel(I)V

    .line 1792
    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    # invokes: Lcom/android/mms/transaction/TransactionService;->hasTransactions()Z
    invoke-static {v3}, Lcom/android/mms/transaction/TransactionService;->access$1400(Lcom/android/mms/transaction/TransactionService;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1793
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->processPendingTransaction()V

    goto/16 :goto_0

    .line 1799
    :sswitch_5
    const-string v3, "TransactionService"

    const-string v4, "MMS-STATUS - APN switch timeout"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1808
    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    # invokes: Lcom/android/mms/transaction/TransactionService;->ignoreApnFailure()Z
    invoke-static {v3}, Lcom/android/mms/transaction/TransactionService;->access$1500(Lcom/android/mms/transaction/TransactionService;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1812
    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    # invokes: Lcom/android/mms/transaction/TransactionService;->isPermanentAPNFailure()Z
    invoke-static {v3}, Lcom/android/mms/transaction/TransactionService;->access$1600(Lcom/android/mms/transaction/TransactionService;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1813
    const-string v3, "TransactionService"

    const-string v4, "MMS-STATUS - Can not switch APN to MMS"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1814
    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    # setter for: Lcom/android/mms/transaction/TransactionService;->mNumApnConnectionFailures:I
    invoke-static {v3, v6}, Lcom/android/mms/transaction/TransactionService;->access$1202(Lcom/android/mms/transaction/TransactionService;I)I

    .line 1815
    invoke-static {}, Lcom/android/mms/checkin/CheckinLogger;->getInstance()Lcom/android/mms/checkin/CheckinLogger;

    move-result-object v0

    .line 1816
    .local v0, "checkin":Lcom/android/mms/checkin/CheckinLogger;
    if-eqz v0, :cond_9

    .line 1817
    const-string v1, "apnSwFail"

    .line 1818
    .local v1, "status":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    const/4 v4, 0x2

    invoke-virtual {v0, v3, v4, v1}, Lcom/android/mms/checkin/CheckinLogger;->logAddMmsTransactionItem(Landroid/content/Context;ILjava/lang/String;)V

    .line 1820
    .end local v1    # "status":Ljava/lang/String;
    :cond_9
    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    # invokes: Lcom/android/mms/transaction/TransactionService;->hasPending()Z
    invoke-static {v3}, Lcom/android/mms/transaction/TransactionService;->access$1700(Lcom/android/mms/transaction/TransactionService;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1821
    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    sget-object v4, Lcom/android/mms/transaction/Transaction$Failure;->APN_CONNECTION_TIMEOUT:Lcom/android/mms/transaction/Transaction$Failure;

    # invokes: Lcom/android/mms/transaction/TransactionService;->notifyFailure(Lcom/android/mms/transaction/Transaction$Failure;)V
    invoke-static {v3, v4}, Lcom/android/mms/transaction/TransactionService;->access$1800(Lcom/android/mms/transaction/TransactionService;Lcom/android/mms/transaction/Transaction$Failure;)V

    .line 1822
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->processPendingTransaction()V

    goto/16 :goto_0

    .line 1825
    .end local v0    # "checkin":Lcom/android/mms/checkin/CheckinLogger;
    :cond_a
    const-string v3, "TransactionService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MMS-STATUS - Try to switch APN again, num retries="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    # getter for: Lcom/android/mms/transaction/TransactionService;->mNumApnConnectionFailures:I
    invoke-static {v5}, Lcom/android/mms/transaction/TransactionService;->access$1200(Lcom/android/mms/transaction/TransactionService;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1828
    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    # getter for: Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;
    invoke-static {v3}, Lcom/android/mms/transaction/TransactionService;->access$400(Lcom/android/mms/transaction/TransactionService;)Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    move-result-object v3

    const-wide/16 v4, 0x7d0

    invoke-virtual {v3, v8, v4, v5}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->sendDelayed(IJ)V

    goto/16 :goto_0

    .line 1835
    :sswitch_6
    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    # invokes: Lcom/android/mms/transaction/TransactionService;->hasProcessing()Z
    invoke-static {v3}, Lcom/android/mms/transaction/TransactionService;->access$1900(Lcom/android/mms/transaction/TransactionService;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1836
    const-string v3, "TransactionService"

    const-string v4, "MMS-STATUS - Voice call too long while processing MMS message"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1842
    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    sget-object v4, Lcom/android/mms/transaction/Transaction$Failure;->VOICE_CALL_TOO_LONG:Lcom/android/mms/transaction/Transaction$Failure;

    # invokes: Lcom/android/mms/transaction/TransactionService;->abortProcessing(ZLcom/android/mms/transaction/Transaction$Failure;)V
    invoke-static {v3, v6, v4}, Lcom/android/mms/transaction/TransactionService;->access$2000(Lcom/android/mms/transaction/TransactionService;ZLcom/android/mms/transaction/Transaction$Failure;)V

    goto/16 :goto_0

    .line 1845
    :cond_b
    const-string v3, "TransactionService"

    const-string v4, "MMS-STATUS - Voice call too long but no MMS message being processed"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1852
    :sswitch_7
    invoke-static {}, Lcom/android/mms/transaction/NetworkManager;->onCallDropped()V

    .line 1853
    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    # invokes: Lcom/android/mms/transaction/TransactionService;->hasTransactions()Z
    invoke-static {v3}, Lcom/android/mms/transaction/TransactionService;->access$1400(Lcom/android/mms/transaction/TransactionService;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1854
    # getter for: Lcom/android/mms/transaction/TransactionService;->LOCAL_LOG:Z
    invoke-static {}, Lcom/android/mms/transaction/TransactionService;->access$100()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1855
    const-string v3, "TransactionService"

    const-string v4, "MMS-STATUS - Pending transactions will be processed after 30 seconds"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1862
    :cond_c
    const/16 v3, 0x9

    const-wide/16 v4, 0x7530

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->sendDelayed(IJ)V

    goto/16 :goto_0

    .line 1869
    :sswitch_8
    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    sget-object v4, Lcom/android/mms/transaction/Transaction$Failure;->VOICE_CALL_TOO_LONG:Lcom/android/mms/transaction/Transaction$Failure;

    # invokes: Lcom/android/mms/transaction/TransactionService;->resumeTransaction(Lcom/android/mms/transaction/Transaction$Failure;)V
    invoke-static {v3, v4}, Lcom/android/mms/transaction/TransactionService;->access$2100(Lcom/android/mms/transaction/TransactionService;Lcom/android/mms/transaction/Transaction$Failure;)V

    .line 1870
    const/4 v3, -0x1

    invoke-direct {p0, v3}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->checkPending(I)V

    goto/16 :goto_0

    .line 1874
    :sswitch_9
    # getter for: Lcom/android/mms/transaction/TransactionService;->LOCAL_LOG:Z
    invoke-static {}, Lcom/android/mms/transaction/TransactionService;->access$100()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1875
    const-string v3, "TransactionService"

    const-string v4, "handleMessage - EVENT_CREATE_TRANSACTION"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1878
    :cond_d
    iget-object v4, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/mms/transaction/TransactionBundle;

    # invokes: Lcom/android/mms/transaction/TransactionService;->handleCreateTransaction(ILcom/android/mms/transaction/TransactionBundle;)V
    invoke-static {v4, v5, v3}, Lcom/android/mms/transaction/TransactionService;->access$2200(Lcom/android/mms/transaction/TransactionService;ILcom/android/mms/transaction/TransactionBundle;)V

    goto/16 :goto_0

    .line 1882
    :sswitch_a
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 1883
    .local v2, "type":I
    # getter for: Lcom/android/mms/transaction/TransactionService;->LOCAL_LOG:Z
    invoke-static {}, Lcom/android/mms/transaction/TransactionService;->access$100()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1884
    const-string v3, "TransactionService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMessage - EVENT_HANDLE_NEXT_PENDING_TRANSACTION, transaction type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1888
    :cond_e
    invoke-direct {p0, v2}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->checkPending(I)V

    goto/16 :goto_0

    .line 1892
    .end local v2    # "type":I
    :sswitch_b
    # getter for: Lcom/android/mms/transaction/TransactionService;->LOCAL_LOG:Z
    invoke-static {}, Lcom/android/mms/transaction/TransactionService;->access$100()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1893
    const-string v3, "TransactionService"

    const-string v4, "handleMessage - EVENT_PROCESS_PENDING_FAILED_TRANSACTIONS"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1896
    :cond_f
    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    # invokes: Lcom/android/mms/transaction/TransactionService;->hasPending()Z
    invoke-static {v3}, Lcom/android/mms/transaction/TransactionService;->access$1700(Lcom/android/mms/transaction/TransactionService;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1897
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->processPendingFailedTransactions()V

    goto/16 :goto_0

    .line 1899
    :cond_10
    # getter for: Lcom/android/mms/transaction/TransactionService;->LOCAL_LOG:Z
    invoke-static {}, Lcom/android/mms/transaction/TransactionService;->access$100()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1900
    const-string v3, "TransactionService"

    const-string v4, "handleMessage - no pending failed transactions to process"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1712
    nop

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
