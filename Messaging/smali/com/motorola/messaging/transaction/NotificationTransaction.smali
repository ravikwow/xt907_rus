.class public Lcom/motorola/messaging/transaction/NotificationTransaction;
.super Lcom/motorola/messaging/transaction/MTTransaction;
.source "NotificationTransaction.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final DEBUG:Z

.field private static final LOCAL_LOG:Z


# instance fields
.field private mForceDownload:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 61
    sput-boolean v0, Lcom/motorola/messaging/transaction/NotificationTransaction;->DEBUG:Z

    .line 62
    sget-boolean v1, Lcom/motorola/messaging/transaction/NotificationTransaction;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v1, :cond_0

    :goto_0
    sput-boolean v0, Lcom/motorola/messaging/transaction/NotificationTransaction;->LOCAL_LOG:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/motorola/messaging/transaction/TransactionSettings;Lcom/motorola/messaging/pdu/NotificationInd;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceId"    # I
    .param p3, "connectionSettings"    # Lcom/motorola/messaging/transaction/TransactionSettings;
    .param p4, "ind"    # Lcom/motorola/messaging/pdu/NotificationInd;

    .prologue
    .line 87
    invoke-direct {p0, p1, p2, p3}, Lcom/motorola/messaging/transaction/MTTransaction;-><init>(Landroid/content/Context;ILcom/motorola/messaging/transaction/TransactionSettings;)V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/messaging/transaction/NotificationTransaction;->mForceDownload:Z

    .line 89
    invoke-virtual {p0, p4}, Lcom/motorola/messaging/transaction/MTTransaction;->loadDownloadData(Lcom/motorola/messaging/pdu/NotificationInd;)V

    .line 91
    sget-boolean v0, Lcom/motorola/messaging/transaction/NotificationTransaction;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 92
    const-string v0, "NotificationTransaction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new NotificationTransaction, uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/messaging/transaction/Transaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", transId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/messaging/transaction/Transaction;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", contentLocation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/messaging/transaction/Transaction;->mContentLocation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/motorola/messaging/transaction/TransactionSettings;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceId"    # I
    .param p3, "connectionSettings"    # Lcom/motorola/messaging/transaction/TransactionSettings;
    .param p4, "uriString"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-direct {p0, p1, p2, p3}, Lcom/motorola/messaging/transaction/MTTransaction;-><init>(Landroid/content/Context;ILcom/motorola/messaging/transaction/TransactionSettings;)V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/messaging/transaction/NotificationTransaction;->mForceDownload:Z

    .line 71
    invoke-virtual {p0, p4}, Lcom/motorola/messaging/transaction/MTTransaction;->loadDownloadData(Ljava/lang/String;)V

    .line 73
    sget-boolean v0, Lcom/motorola/messaging/transaction/NotificationTransaction;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 74
    const-string v0, "NotificationTransaction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new NotificationTransaction, uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/messaging/transaction/Transaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", transId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/messaging/transaction/Transaction;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", contentLocation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/messaging/transaction/Transaction;->mContentLocation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/motorola/messaging/transaction/NotificationTransaction;)V
    .locals 1
    .param p1, "transaction"    # Lcom/motorola/messaging/transaction/NotificationTransaction;

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/motorola/messaging/transaction/MTTransaction;-><init>(Lcom/motorola/messaging/transaction/Transaction;)V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/messaging/transaction/NotificationTransaction;->mForceDownload:Z

    .line 101
    iget-boolean v0, p1, Lcom/motorola/messaging/transaction/NotificationTransaction;->mForceDownload:Z

    iput-boolean v0, p0, Lcom/motorola/messaging/transaction/NotificationTransaction;->mForceDownload:Z

    .line 102
    return-void
.end method


# virtual methods
.method public forceDownload()V
    .locals 2

    .prologue
    .line 263
    const-string v0, "NotificationTransaction"

    const-string v1, "Force download: ignore auto-retrieve settings"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/messaging/transaction/NotificationTransaction;->mForceDownload:Z

    .line 265
    return-void
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 269
    const/4 v0, 0x0

    return v0
.end method

.method public process()V
    .locals 2

    .prologue
    .line 110
    invoke-static {}, Lcom/motorola/messaging/concurrent/TaskManager;->getInstance()Lcom/motorola/messaging/concurrent/TaskManager;

    move-result-object v0

    const-string v1, "notification_transaction"

    invoke-virtual {v0, p0, v1}, Lcom/motorola/messaging/concurrent/TaskManager;->runHighPriorityTask(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public run()V
    .locals 11

    .prologue
    const/4 v6, 0x1

    .line 114
    sget-boolean v7, Lcom/motorola/messaging/transaction/NotificationTransaction;->LOCAL_LOG:Z

    if-eqz v7, :cond_0

    .line 115
    const-string v7, "NotificationTransaction"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MMS-THREAD - run START, thread: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->getId()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/motorola/messaging/transaction/Transaction;->mStartedTime:J

    .line 119
    iget-object v7, p0, Lcom/motorola/messaging/transaction/Transaction;->mDownloadManager:Lcom/motorola/messaging/transaction/DownloadManager;

    invoke-virtual {v7}, Lcom/motorola/messaging/transaction/DownloadManager;->isAuto()Z

    move-result v7

    if-nez v7, :cond_1

    iget-boolean v7, p0, Lcom/motorola/messaging/transaction/NotificationTransaction;->mForceDownload:Z

    if-eqz v7, :cond_3

    :cond_1
    move v0, v6

    .line 125
    .local v0, "autoDownload":Z
    :goto_0
    const/16 v4, 0x83

    .line 127
    .local v4, "status":I
    :try_start_0
    iget-object v7, p0, Lcom/motorola/messaging/transaction/Transaction;->mTransactionState:Lcom/motorola/messaging/transaction/TransactionState;

    invoke-virtual {v7}, Lcom/motorola/messaging/transaction/TransactionState;->getState()Lcom/motorola/messaging/transaction/Transaction$State;

    move-result-object v7

    sget-object v8, Lcom/motorola/messaging/transaction/Transaction$State;->FAILED:Lcom/motorola/messaging/transaction/Transaction$State;

    if-ne v7, v8, :cond_4

    .line 128
    new-instance v6, Lcom/motorola/messaging/util/MmsException;

    const-string v7, "MMS-STATUS - Transaction aborted"

    invoke-direct {v6, v7}, Lcom/motorola/messaging/util/MmsException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    :catch_0
    move-exception v5

    .line 198
    .local v5, "t":Ljava/lang/Throwable;
    :try_start_1
    const-string v6, "NotificationTransaction"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MMS-STATUS - exception, stack="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v5}, Lcom/motorola/messaging/logger/Logger;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-virtual {p0, v5}, Lcom/motorola/messaging/transaction/MTTransaction;->treatMTException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 201
    if-nez v0, :cond_2

    iget-object v6, p0, Lcom/motorola/messaging/transaction/Transaction;->mTransactionState:Lcom/motorola/messaging/transaction/TransactionState;

    invoke-virtual {v6}, Lcom/motorola/messaging/transaction/TransactionState;->getState()Lcom/motorola/messaging/transaction/Transaction$State;

    move-result-object v6

    sget-object v7, Lcom/motorola/messaging/transaction/Transaction$State;->INITIALIZED:Lcom/motorola/messaging/transaction/Transaction$State;

    if-ne v6, v7, :cond_2

    .line 203
    iget-object v6, p0, Lcom/motorola/messaging/transaction/Transaction;->mTransactionState:Lcom/motorola/messaging/transaction/TransactionState;

    sget-object v7, Lcom/motorola/messaging/transaction/Transaction$State;->SUCCESS:Lcom/motorola/messaging/transaction/Transaction$State;

    invoke-virtual {v6, v7}, Lcom/motorola/messaging/transaction/TransactionState;->setState(Lcom/motorola/messaging/transaction/Transaction$State;)V

    .line 206
    .end local v5    # "t":Ljava/lang/Throwable;
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/motorola/messaging/transaction/Transaction;->finishTransaction()V

    .line 208
    return-void

    .line 119
    .end local v0    # "autoDownload":Z
    .end local v4    # "status":I
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 131
    .restart local v0    # "autoDownload":Z
    .restart local v4    # "status":I
    :cond_4
    :try_start_2
    invoke-virtual {p0}, Lcom/motorola/messaging/transaction/Transaction;->hasValidApn()Z

    move-result v7

    if-nez v7, :cond_6

    .line 132
    new-instance v6, Lcom/motorola/messaging/util/MmsException;

    const-string v7, "MMS-STATUS - Transaction aborted, invalid APN"

    invoke-direct {v6, v7}, Lcom/motorola/messaging/util/MmsException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 201
    :catchall_0
    move-exception v6

    if-nez v0, :cond_5

    iget-object v7, p0, Lcom/motorola/messaging/transaction/Transaction;->mTransactionState:Lcom/motorola/messaging/transaction/TransactionState;

    invoke-virtual {v7}, Lcom/motorola/messaging/transaction/TransactionState;->getState()Lcom/motorola/messaging/transaction/Transaction$State;

    move-result-object v7

    sget-object v8, Lcom/motorola/messaging/transaction/Transaction$State;->INITIALIZED:Lcom/motorola/messaging/transaction/Transaction$State;

    if-ne v7, v8, :cond_5

    .line 203
    iget-object v7, p0, Lcom/motorola/messaging/transaction/Transaction;->mTransactionState:Lcom/motorola/messaging/transaction/TransactionState;

    sget-object v8, Lcom/motorola/messaging/transaction/Transaction$State;->SUCCESS:Lcom/motorola/messaging/transaction/Transaction$State;

    invoke-virtual {v7, v8}, Lcom/motorola/messaging/transaction/TransactionState;->setState(Lcom/motorola/messaging/transaction/Transaction$State;)V

    .line 206
    :cond_5
    invoke-virtual {p0}, Lcom/motorola/messaging/transaction/Transaction;->finishTransaction()V

    .line 201
    throw v6

    .line 135
    :cond_6
    if-nez v0, :cond_8

    .line 136
    :try_start_3
    sget-boolean v6, Lcom/motorola/messaging/transaction/NotificationTransaction;->LOCAL_LOG:Z

    if-eqz v6, :cond_7

    .line 137
    const-string v6, "NotificationTransaction"

    const-string v7, "run - autoDownload disabled"

    invoke-static {v6, v7}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :cond_7
    iget-object v6, p0, Lcom/motorola/messaging/transaction/Transaction;->mUri:Landroid/net/Uri;

    const/16 v7, 0x80

    invoke-virtual {p0, v6, v7}, Lcom/motorola/messaging/transaction/MTTransaction;->setDownloadState(Landroid/net/Uri;I)V

    .line 141
    invoke-virtual {p0, v4}, Lcom/motorola/messaging/transaction/NotificationTransaction;->sendNotifyRespInd(I)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 201
    if-nez v0, :cond_2

    iget-object v6, p0, Lcom/motorola/messaging/transaction/Transaction;->mTransactionState:Lcom/motorola/messaging/transaction/TransactionState;

    invoke-virtual {v6}, Lcom/motorola/messaging/transaction/TransactionState;->getState()Lcom/motorola/messaging/transaction/Transaction$State;

    move-result-object v6

    sget-object v7, Lcom/motorola/messaging/transaction/Transaction$State;->INITIALIZED:Lcom/motorola/messaging/transaction/Transaction$State;

    if-ne v6, v7, :cond_2

    .line 203
    iget-object v6, p0, Lcom/motorola/messaging/transaction/Transaction;->mTransactionState:Lcom/motorola/messaging/transaction/TransactionState;

    sget-object v7, Lcom/motorola/messaging/transaction/Transaction$State;->SUCCESS:Lcom/motorola/messaging/transaction/Transaction$State;

    invoke-virtual {v6, v7}, Lcom/motorola/messaging/transaction/TransactionState;->setState(Lcom/motorola/messaging/transaction/Transaction$State;)V

    goto :goto_1

    .line 145
    :cond_8
    :try_start_4
    sget-boolean v7, Lcom/motorola/messaging/transaction/NotificationTransaction;->LOCAL_LOG:Z

    if-eqz v7, :cond_9

    .line 146
    const-string v7, "NotificationTransaction"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MMS-STATUS - Starting automatic downloading: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :cond_9
    iget-object v7, p0, Lcom/motorola/messaging/transaction/Transaction;->mUri:Landroid/net/Uri;

    const/16 v8, 0x81

    invoke-virtual {p0, v7, v8}, Lcom/motorola/messaging/transaction/MTTransaction;->setDownloadState(Landroid/net/Uri;I)V

    .line 150
    sget-boolean v7, Lcom/motorola/messaging/transaction/NotificationTransaction;->LOCAL_LOG:Z

    if-eqz v7, :cond_a

    .line 151
    const-string v7, "NotificationTransaction"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Content-Location: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/motorola/messaging/transaction/Transaction;->mContentLocation:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 154
    :cond_a
    const/4 v3, 0x0

    .line 158
    .local v3, "retrieveConfData":[B
    :try_start_5
    iget-object v7, p0, Lcom/motorola/messaging/transaction/Transaction;->mContentLocation:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/motorola/messaging/transaction/Transaction;->getPdu(Ljava/lang/String;)[B

    move-result-object v3

    .line 159
    sget-boolean v7, Lcom/motorola/messaging/transaction/NotificationTransaction;->LOCAL_LOG:Z

    if-eqz v7, :cond_b

    .line 161
    const-string v7, "MT MMS"

    invoke-static {v7, v3}, Lcom/motorola/messaging/dom/smil/SmilHelper;->showPdu(Ljava/lang/String;[B)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 167
    :cond_b
    :goto_2
    if-eqz v3, :cond_e

    .line 168
    :try_start_6
    new-instance v7, Lcom/motorola/messaging/pdu/PduParser;

    invoke-direct {v7, v3}, Lcom/motorola/messaging/pdu/PduParser;-><init>([B)V

    invoke-virtual {v7}, Lcom/motorola/messaging/pdu/PduParser;->parse()Lcom/motorola/messaging/pdu/GenericPdu;

    move-result-object v2

    check-cast v2, Lcom/motorola/messaging/pdu/RetrieveConf;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 169
    .local v2, "retrieveConf":Lcom/motorola/messaging/pdu/RetrieveConf;
    if-nez v2, :cond_c

    .line 201
    if-nez v0, :cond_2

    iget-object v6, p0, Lcom/motorola/messaging/transaction/Transaction;->mTransactionState:Lcom/motorola/messaging/transaction/TransactionState;

    invoke-virtual {v6}, Lcom/motorola/messaging/transaction/TransactionState;->getState()Lcom/motorola/messaging/transaction/Transaction$State;

    move-result-object v6

    sget-object v7, Lcom/motorola/messaging/transaction/Transaction$State;->INITIALIZED:Lcom/motorola/messaging/transaction/Transaction$State;

    if-ne v6, v7, :cond_2

    .line 203
    iget-object v6, p0, Lcom/motorola/messaging/transaction/Transaction;->mTransactionState:Lcom/motorola/messaging/transaction/TransactionState;

    sget-object v7, Lcom/motorola/messaging/transaction/Transaction$State;->SUCCESS:Lcom/motorola/messaging/transaction/Transaction$State;

    invoke-virtual {v6, v7}, Lcom/motorola/messaging/transaction/TransactionState;->setState(Lcom/motorola/messaging/transaction/Transaction$State;)V

    goto/16 :goto_1

    .line 163
    .end local v2    # "retrieveConf":Lcom/motorola/messaging/pdu/RetrieveConf;
    :catch_1
    move-exception v1

    .line 164
    .local v1, "e":Ljava/io/IOException;
    :try_start_7
    iget-object v7, p0, Lcom/motorola/messaging/transaction/Transaction;->mTransactionState:Lcom/motorola/messaging/transaction/TransactionState;

    sget-object v8, Lcom/motorola/messaging/transaction/Transaction$State;->FAILED:Lcom/motorola/messaging/transaction/Transaction$State;

    invoke-virtual {v7, v8}, Lcom/motorola/messaging/transaction/TransactionState;->setState(Lcom/motorola/messaging/transaction/Transaction$State;)V

    goto :goto_2

    .line 173
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "retrieveConf":Lcom/motorola/messaging/pdu/RetrieveConf;
    :cond_c
    invoke-virtual {p0, v2}, Lcom/motorola/messaging/transaction/MTTransaction;->treatNetworkRetrieveStatus(Lcom/motorola/messaging/pdu/RetrieveConf;)Z
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v7

    if-eq v7, v6, :cond_d

    .line 201
    if-nez v0, :cond_2

    iget-object v6, p0, Lcom/motorola/messaging/transaction/Transaction;->mTransactionState:Lcom/motorola/messaging/transaction/TransactionState;

    invoke-virtual {v6}, Lcom/motorola/messaging/transaction/TransactionState;->getState()Lcom/motorola/messaging/transaction/Transaction$State;

    move-result-object v6

    sget-object v7, Lcom/motorola/messaging/transaction/Transaction$State;->INITIALIZED:Lcom/motorola/messaging/transaction/Transaction$State;

    if-ne v6, v7, :cond_2

    .line 203
    iget-object v6, p0, Lcom/motorola/messaging/transaction/Transaction;->mTransactionState:Lcom/motorola/messaging/transaction/TransactionState;

    sget-object v7, Lcom/motorola/messaging/transaction/Transaction$State;->SUCCESS:Lcom/motorola/messaging/transaction/Transaction$State;

    invoke-virtual {v6, v7}, Lcom/motorola/messaging/transaction/TransactionState;->setState(Lcom/motorola/messaging/transaction/Transaction$State;)V

    goto/16 :goto_1

    .line 177
    :cond_d
    :try_start_8
    invoke-virtual {v2}, Lcom/motorola/messaging/pdu/GenericPdu;->getMessageType()I

    move-result v6

    const/16 v7, 0x84

    if-eq v6, v7, :cond_f

    .line 178
    const-string v6, "NotificationTransaction"

    const-string v7, "Invalid M-RETRIEVE.CONF PDU."

    invoke-static {v6, v7}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object v6, p0, Lcom/motorola/messaging/transaction/Transaction;->mTransactionState:Lcom/motorola/messaging/transaction/TransactionState;

    sget-object v7, Lcom/motorola/messaging/transaction/Transaction$State;->FAILED:Lcom/motorola/messaging/transaction/Transaction$State;

    invoke-virtual {v6, v7}, Lcom/motorola/messaging/transaction/TransactionState;->setState(Lcom/motorola/messaging/transaction/Transaction$State;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 180
    const/16 v4, 0x84

    .line 192
    .end local v2    # "retrieveConf":Lcom/motorola/messaging/pdu/RetrieveConf;
    :cond_e
    :goto_3
    :try_start_9
    invoke-virtual {p0, v4}, Lcom/motorola/messaging/transaction/NotificationTransaction;->updateTransactionState(I)V

    .line 193
    invoke-virtual {p0, v4}, Lcom/motorola/messaging/transaction/NotificationTransaction;->sendNotifyRespInd(I)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 201
    :goto_4
    if-nez v0, :cond_2

    iget-object v6, p0, Lcom/motorola/messaging/transaction/Transaction;->mTransactionState:Lcom/motorola/messaging/transaction/TransactionState;

    invoke-virtual {v6}, Lcom/motorola/messaging/transaction/TransactionState;->getState()Lcom/motorola/messaging/transaction/Transaction$State;

    move-result-object v6

    sget-object v7, Lcom/motorola/messaging/transaction/Transaction$State;->INITIALIZED:Lcom/motorola/messaging/transaction/Transaction$State;

    if-ne v6, v7, :cond_2

    .line 203
    iget-object v6, p0, Lcom/motorola/messaging/transaction/Transaction;->mTransactionState:Lcom/motorola/messaging/transaction/TransactionState;

    sget-object v7, Lcom/motorola/messaging/transaction/Transaction$State;->SUCCESS:Lcom/motorola/messaging/transaction/Transaction$State;

    invoke-virtual {v6, v7}, Lcom/motorola/messaging/transaction/TransactionState;->setState(Lcom/motorola/messaging/transaction/Transaction$State;)V

    goto/16 :goto_1

    .line 183
    .restart local v2    # "retrieveConf":Lcom/motorola/messaging/pdu/RetrieveConf;
    :cond_f
    :try_start_a
    invoke-virtual {p0, v2}, Lcom/motorola/messaging/transaction/MTTransaction;->persistMTMMS(Lcom/motorola/messaging/pdu/RetrieveConf;)Landroid/net/Uri;

    move-result-object v6

    iput-object v6, p0, Lcom/motorola/messaging/transaction/Transaction;->mUri:Landroid/net/Uri;

    .line 184
    const/16 v4, 0x81

    goto :goto_3

    .line 194
    .end local v2    # "retrieveConf":Lcom/motorola/messaging/pdu/RetrieveConf;
    :catch_2
    move-exception v5

    .line 195
    .restart local v5    # "t":Ljava/lang/Throwable;
    const-string v6, "NotificationTransaction"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MMS-STATUS - Ignore exception after download, stack="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v5}, Lcom/motorola/messaging/logger/Logger;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_4
.end method

.method protected sendNotifyRespInd(I)V
    .locals 3
    .param p1, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/util/MmsException;,
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 240
    sget-boolean v1, Lcom/motorola/messaging/transaction/NotificationTransaction;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 241
    const-string v1, "NotificationTransaction"

    const-string v2, "sendNotifyRespInd - START"

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    :cond_0
    new-instance v0, Lcom/motorola/messaging/pdu/NotifyRespInd;

    sget v1, Lcom/motorola/messaging/pdu/PduHeaders;->CURRENT_MMS_VERSION:I

    iget-object v2, p0, Lcom/motorola/messaging/transaction/Transaction;->mId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/motorola/messaging/pdu/NotifyRespInd;-><init>(I[BI)V

    .line 251
    .local v0, "notifyRespInd":Lcom/motorola/messaging/pdu/NotifyRespInd;
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getNotifyWapMmscEnable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 252
    new-instance v1, Lcom/motorola/messaging/pdu/PduComposer;

    iget-object v2, p0, Lcom/motorola/messaging/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/motorola/messaging/pdu/PduComposer;-><init>(Landroid/content/Context;Lcom/motorola/messaging/pdu/GenericPdu;)V

    invoke-virtual {v1}, Lcom/motorola/messaging/pdu/PduComposer;->make()[B

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/messaging/transaction/Transaction;->mContentLocation:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/motorola/messaging/transaction/Transaction;->sendPdu([BLjava/lang/String;)[B

    .line 257
    :goto_0
    sget-boolean v1, Lcom/motorola/messaging/transaction/NotificationTransaction;->LOCAL_LOG:Z

    if-eqz v1, :cond_1

    .line 258
    const-string v1, "NotificationTransaction"

    const-string v2, "sendNotifyRespInd - END"

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    :cond_1
    return-void

    .line 254
    :cond_2
    new-instance v1, Lcom/motorola/messaging/pdu/PduComposer;

    iget-object v2, p0, Lcom/motorola/messaging/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/motorola/messaging/pdu/PduComposer;-><init>(Landroid/content/Context;Lcom/motorola/messaging/pdu/GenericPdu;)V

    invoke-virtual {v1}, Lcom/motorola/messaging/pdu/PduComposer;->make()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/motorola/messaging/transaction/Transaction;->sendPdu([B)[B

    goto :goto_0
.end method

.method updateTransactionState(I)V
    .locals 3
    .param p1, "status"    # I

    .prologue
    .line 211
    sget-boolean v0, Lcom/motorola/messaging/transaction/NotificationTransaction;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 212
    const-string v0, "NotificationTransaction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "status=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 235
    :pswitch_0
    const-string v0, "NotificationTransaction"

    const-string v1, "MMS-STATUS run - status unknown"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :cond_1
    :goto_0
    return-void

    .line 218
    :pswitch_1
    sget-boolean v0, Lcom/motorola/messaging/transaction/NotificationTransaction;->LOCAL_LOG:Z

    if-eqz v0, :cond_2

    .line 219
    const-string v0, "NotificationTransaction"

    const-string v1, "run - status - STATUS_RETRIEVED"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    :cond_2
    iget-object v0, p0, Lcom/motorola/messaging/transaction/Transaction;->mTransactionState:Lcom/motorola/messaging/transaction/TransactionState;

    sget-object v1, Lcom/motorola/messaging/transaction/Transaction$State;->SUCCESS:Lcom/motorola/messaging/transaction/Transaction$State;

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/transaction/TransactionState;->setState(Lcom/motorola/messaging/transaction/Transaction$State;)V

    goto :goto_0

    .line 225
    :pswitch_2
    sget-boolean v0, Lcom/motorola/messaging/transaction/NotificationTransaction;->LOCAL_LOG:Z

    if-eqz v0, :cond_3

    .line 226
    const-string v0, "NotificationTransaction"

    const-string v1, "run - status - STATUS_DEFERRED"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    :cond_3
    iget-object v0, p0, Lcom/motorola/messaging/transaction/Transaction;->mTransactionState:Lcom/motorola/messaging/transaction/TransactionState;

    invoke-virtual {v0}, Lcom/motorola/messaging/transaction/TransactionState;->getState()Lcom/motorola/messaging/transaction/Transaction$State;

    move-result-object v0

    sget-object v1, Lcom/motorola/messaging/transaction/Transaction$State;->INITIALIZED:Lcom/motorola/messaging/transaction/Transaction$State;

    if-ne v0, v1, :cond_1

    .line 230
    iget-object v0, p0, Lcom/motorola/messaging/transaction/Transaction;->mTransactionState:Lcom/motorola/messaging/transaction/TransactionState;

    sget-object v1, Lcom/motorola/messaging/transaction/Transaction$State;->SUCCESS:Lcom/motorola/messaging/transaction/Transaction$State;

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/transaction/TransactionState;->setState(Lcom/motorola/messaging/transaction/Transaction$State;)V

    goto :goto_0

    .line 216
    nop

    :pswitch_data_0
    .packed-switch 0x81
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
