.class public Lcom/android/mms/transaction/NotificationTransaction;
.super Lcom/android/mms/transaction/MTTransaction;
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
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 77
    sput-boolean v0, Lcom/android/mms/transaction/NotificationTransaction;->DEBUG:Z

    .line 78
    sget-boolean v1, Lcom/android/mms/transaction/NotificationTransaction;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "Mms:transaction"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/mms/transaction/NotificationTransaction;->LOCAL_LOG:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;Lcom/google/android/mms/pdu/NotificationInd;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceId"    # I
    .param p3, "connectionSettings"    # Lcom/android/mms/transaction/TransactionSettings;
    .param p4, "ind"    # Lcom/google/android/mms/pdu/NotificationInd;

    .prologue
    .line 102
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/transaction/MTTransaction;-><init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;)V

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/transaction/NotificationTransaction;->mForceDownload:Z

    .line 104
    invoke-virtual {p0, p4}, Lcom/android/mms/transaction/NotificationTransaction;->loadDownloadData(Lcom/google/android/mms/pdu/NotificationInd;)V

    .line 106
    sget-boolean v0, Lcom/android/mms/transaction/NotificationTransaction;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 107
    const-string v0, "NotificationTransaction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new NotificationTransaction, uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/transaction/Transaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", transId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/transaction/Transaction;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", contentLocation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/transaction/Transaction;->mContentLocation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceId"    # I
    .param p3, "connectionSettings"    # Lcom/android/mms/transaction/TransactionSettings;
    .param p4, "uriString"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/transaction/MTTransaction;-><init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;)V

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/transaction/NotificationTransaction;->mForceDownload:Z

    .line 87
    invoke-virtual {p0, p4}, Lcom/android/mms/transaction/NotificationTransaction;->loadDownloadData(Ljava/lang/String;)V

    .line 89
    sget-boolean v0, Lcom/android/mms/transaction/NotificationTransaction;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 90
    const-string v0, "NotificationTransaction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new NotificationTransaction, uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/transaction/Transaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", transId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/transaction/Transaction;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", contentLocation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/transaction/Transaction;->mContentLocation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/android/mms/transaction/NotificationTransaction;)V
    .locals 1
    .param p1, "transaction"    # Lcom/android/mms/transaction/NotificationTransaction;

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/MTTransaction;-><init>(Lcom/android/mms/transaction/Transaction;)V

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/transaction/NotificationTransaction;->mForceDownload:Z

    .line 115
    iget-boolean v0, p1, Lcom/android/mms/transaction/NotificationTransaction;->mForceDownload:Z

    iput-boolean v0, p0, Lcom/android/mms/transaction/NotificationTransaction;->mForceDownload:Z

    .line 116
    return-void
.end method

.method public static allowAutoDownload()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 129
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v2

    .line 130
    .local v2, "downloadManager":Lcom/android/mms/util/DownloadManager;
    invoke-virtual {v2}, Lcom/android/mms/util/DownloadManager;->isAuto()Z

    move-result v0

    .line 131
    .local v0, "autoDownload":Z
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/MmsApp;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    move v1, v3

    .line 133
    .local v1, "dataSuspended":Z
    :goto_0
    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    :goto_1
    return v3

    .end local v1    # "dataSuspended":Z
    :cond_0
    move v1, v4

    .line 131
    goto :goto_0

    .restart local v1    # "dataSuspended":Z
    :cond_1
    move v3, v4

    .line 133
    goto :goto_1
.end method

.method private sendNotifyRespInd(I)V
    .locals 3
    .param p1, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;,
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 284
    new-instance v0, Lcom/google/android/mms/pdu/NotifyRespInd;

    const/16 v1, 0x12

    iget-object v2, p0, Lcom/android/mms/transaction/Transaction;->mId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/mms/pdu/NotifyRespInd;-><init>(I[BI)V

    .line 290
    .local v0, "notifyRespInd":Lcom/google/android/mms/pdu/NotifyRespInd;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getNotifyWapMMSC()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 291
    new-instance v1, Lcom/google/android/mms/pdu/PduComposer;

    iget-object v2, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/google/android/mms/pdu/PduComposer;-><init>(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)V

    invoke-virtual {v1}, Lcom/google/android/mms/pdu/PduComposer;->make()[B

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/transaction/Transaction;->mContentLocation:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/transaction/NotificationTransaction;->sendPdu([BLjava/lang/String;)[B

    .line 296
    :goto_0
    sget-boolean v1, Lcom/android/mms/transaction/NotificationTransaction;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 297
    const-string v1, "NotificationTransaction"

    const-string v2, "sendNotifyRespInd - END"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_0
    return-void

    .line 293
    :cond_1
    new-instance v1, Lcom/google/android/mms/pdu/PduComposer;

    iget-object v2, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/google/android/mms/pdu/PduComposer;-><init>(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)V

    invoke-virtual {v1}, Lcom/google/android/mms/pdu/PduComposer;->make()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/mms/transaction/NotificationTransaction;->sendPdu([B)[B

    goto :goto_0
.end method


# virtual methods
.method public forceDownload()V
    .locals 2

    .prologue
    .line 302
    const-string v0, "NotificationTransaction"

    const-string v1, "Force download: ignore auto-retrieve settings"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/transaction/NotificationTransaction;->mForceDownload:Z

    .line 304
    return-void
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 308
    const/4 v0, 0x0

    return v0
.end method

.method public process()V
    .locals 2

    .prologue
    .line 124
    invoke-static {}, Lcom/android/mms/concurrent/TaskManager;->getInstance()Lcom/android/mms/concurrent/TaskManager;

    move-result-object v0

    const-string v1, "notification_transaction"

    invoke-virtual {v0, p0, v1}, Lcom/android/mms/concurrent/TaskManager;->runHighPriorityTask(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method public run()V
    .locals 18

    .prologue
    .line 137
    sget-boolean v3, Lcom/android/mms/transaction/NotificationTransaction;->LOCAL_LOG:Z

    if-eqz v3, :cond_0

    .line 138
    const-string v3, "NotificationTransaction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MMS-THREAD - run START, thread: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " - "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getId()J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_0
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v11

    .line 143
    .local v11, "downloadManager":Lcom/android/mms/util/DownloadManager;
    invoke-static {}, Lcom/android/mms/transaction/NotificationTransaction;->allowAutoDownload()Z

    move-result v9

    .line 145
    .local v9, "autoDownload":Z
    :try_start_0
    sget-boolean v3, Lcom/android/mms/transaction/NotificationTransaction;->LOCAL_LOG:Z

    if-eqz v3, :cond_1

    .line 146
    const-string v3, "NotificationTransaction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notification transaction launched: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_1
    const/16 v14, 0x83

    .line 153
    .local v14, "status":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v3}, Lcom/android/mms/transaction/TransactionState;->getState()Lcom/android/mms/transaction/Transaction$State;

    move-result-object v3

    sget-object v4, Lcom/android/mms/transaction/Transaction$State;->FAILED:Lcom/android/mms/transaction/Transaction$State;

    if-ne v3, v4, :cond_4

    .line 154
    new-instance v3, Lcom/google/android/mms/MmsException;

    const-string v4, "MMS-STATUS - Transaction aborted"

    invoke-direct {v3, v4}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    .end local v14    # "status":I
    :catch_0
    move-exception v15

    .line 264
    .local v15, "t":Ljava/lang/Throwable;
    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/mms/transaction/NotificationTransaction;->treatMTException(Ljava/lang/Throwable;)V

    .line 265
    const-string v3, "NotificationTransaction"

    invoke-static {v15}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 267
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 268
    if-nez v9, :cond_2

    .line 271
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    sget-object v4, Lcom/android/mms/transaction/Transaction$State;->SUCCESS:Lcom/android/mms/transaction/Transaction$State;

    invoke-virtual {v3, v4}, Lcom/android/mms/transaction/TransactionState;->setState(Lcom/android/mms/transaction/Transaction$State;)V

    .line 273
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v3}, Lcom/android/mms/transaction/TransactionState;->getState()Lcom/android/mms/transaction/Transaction$State;

    move-result-object v3

    sget-object v4, Lcom/android/mms/transaction/Transaction$State;->SUCCESS:Lcom/android/mms/transaction/Transaction$State;

    if-eq v3, v4, :cond_3

    .line 274
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    sget-object v4, Lcom/android/mms/transaction/Transaction$State;->FAILED:Lcom/android/mms/transaction/Transaction$State;

    invoke-virtual {v3, v4}, Lcom/android/mms/transaction/TransactionState;->setState(Lcom/android/mms/transaction/Transaction$State;)V

    .line 275
    const-string v3, "NotificationTransaction"

    const-string v4, "NotificationTransaction failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/NotificationTransaction;->finishTransaction()V

    .line 279
    .end local v15    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 157
    .restart local v14    # "status":I
    :cond_4
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/NotificationTransaction;->hasValidApn()Z

    move-result v3

    if-nez v3, :cond_7

    .line 158
    new-instance v3, Lcom/google/android/mms/MmsException;

    const-string v4, "MMS-STATUS - Transaction aborted, invalid APN"

    invoke-direct {v3, v4}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 267
    .end local v14    # "status":I
    :catchall_0
    move-exception v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/transaction/Transaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v7}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 268
    if-nez v9, :cond_5

    .line 271
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    sget-object v7, Lcom/android/mms/transaction/Transaction$State;->SUCCESS:Lcom/android/mms/transaction/Transaction$State;

    invoke-virtual {v4, v7}, Lcom/android/mms/transaction/TransactionState;->setState(Lcom/android/mms/transaction/Transaction$State;)V

    .line 273
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v4}, Lcom/android/mms/transaction/TransactionState;->getState()Lcom/android/mms/transaction/Transaction$State;

    move-result-object v4

    sget-object v7, Lcom/android/mms/transaction/Transaction$State;->SUCCESS:Lcom/android/mms/transaction/Transaction$State;

    if-eq v4, v7, :cond_6

    .line 274
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    sget-object v7, Lcom/android/mms/transaction/Transaction$State;->FAILED:Lcom/android/mms/transaction/Transaction$State;

    invoke-virtual {v4, v7}, Lcom/android/mms/transaction/TransactionState;->setState(Lcom/android/mms/transaction/Transaction$State;)V

    .line 275
    const-string v4, "NotificationTransaction"

    const-string v7, "NotificationTransaction failed."

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/NotificationTransaction;->finishTransaction()V

    throw v3

    .line 162
    .restart local v14    # "status":I
    :cond_7
    if-nez v9, :cond_b

    .line 163
    :try_start_3
    sget-boolean v3, Lcom/android/mms/transaction/NotificationTransaction;->LOCAL_LOG:Z

    if-eqz v3, :cond_8

    .line 164
    const-string v3, "NotificationTransaction"

    const-string v4, "run - autoDownload disabled"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mUri:Landroid/net/Uri;

    const/16 v4, 0x80

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/mms/transaction/NotificationTransaction;->setDownloadState(Landroid/net/Uri;I)V

    .line 168
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/mms/transaction/NotificationTransaction;->sendNotifyRespInd(I)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 267
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 268
    if-nez v9, :cond_9

    .line 271
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    sget-object v4, Lcom/android/mms/transaction/Transaction$State;->SUCCESS:Lcom/android/mms/transaction/Transaction$State;

    invoke-virtual {v3, v4}, Lcom/android/mms/transaction/TransactionState;->setState(Lcom/android/mms/transaction/Transaction$State;)V

    .line 273
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v3}, Lcom/android/mms/transaction/TransactionState;->getState()Lcom/android/mms/transaction/Transaction$State;

    move-result-object v3

    sget-object v4, Lcom/android/mms/transaction/Transaction$State;->SUCCESS:Lcom/android/mms/transaction/Transaction$State;

    if-eq v3, v4, :cond_a

    .line 274
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    sget-object v4, Lcom/android/mms/transaction/Transaction$State;->FAILED:Lcom/android/mms/transaction/Transaction$State;

    invoke-virtual {v3, v4}, Lcom/android/mms/transaction/TransactionState;->setState(Lcom/android/mms/transaction/Transaction$State;)V

    .line 275
    const-string v3, "NotificationTransaction"

    const-string v4, "NotificationTransaction failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/NotificationTransaction;->finishTransaction()V

    goto/16 :goto_0

    .line 172
    :cond_b
    :try_start_4
    sget-boolean v3, Lcom/android/mms/transaction/NotificationTransaction;->LOCAL_LOG:Z

    if-eqz v3, :cond_c

    .line 173
    const-string v3, "NotificationTransaction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MMS-STATUS - Starting automatic downloading: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mUri:Landroid/net/Uri;

    const/16 v4, 0x81

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/mms/transaction/NotificationTransaction;->setDownloadState(Landroid/net/Uri;I)V

    .line 178
    sget-boolean v3, Lcom/android/mms/transaction/NotificationTransaction;->LOCAL_LOG:Z

    if-eqz v3, :cond_d

    .line 179
    const-string v3, "NotificationTransaction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Content-Location: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/transaction/Transaction;->mContentLocation:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 182
    :cond_d
    const/4 v13, 0x0

    .line 186
    .local v13, "retrieveConfData":[B
    :try_start_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mContentLocation:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/mms/transaction/NotificationTransaction;->getPdu(Ljava/lang/String;)[B

    move-result-object v13

    .line 187
    sget-boolean v3, Lcom/android/mms/transaction/NotificationTransaction;->LOCAL_LOG:Z

    if-eqz v3, :cond_e

    .line 189
    const-string v3, "MT MMS"

    invoke-static {v3, v13}, Lcom/android/mms/model/SmilHelper;->showPdu(Ljava/lang/String;[B)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 195
    :cond_e
    :goto_1
    if-eqz v13, :cond_10

    .line 196
    :try_start_6
    new-instance v3, Lcom/google/android/mms/pdu/PduParser;

    invoke-direct {v3, v13}, Lcom/google/android/mms/pdu/PduParser;-><init>([B)V

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/PduParser;->parse()Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v2

    .line 197
    .local v2, "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    if-eqz v2, :cond_f

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v3

    const/16 v4, 0x84

    if-eq v3, v4, :cond_16

    .line 198
    :cond_f
    const-string v4, "NotificationTransaction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid M-RETRIEVE.CONF PDU. "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v2, :cond_15

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "message type: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    sget-object v4, Lcom/android/mms/transaction/Transaction$State;->FAILED:Lcom/android/mms/transaction/Transaction$State;

    invoke-virtual {v3, v4}, Lcom/android/mms/transaction/TransactionState;->setState(Lcom/android/mms/transaction/Transaction$State;)V

    .line 201
    const/16 v14, 0x84

    .line 235
    .end local v2    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    :cond_10
    :goto_3
    sget-boolean v3, Lcom/android/mms/transaction/NotificationTransaction;->LOCAL_LOG:Z

    if-eqz v3, :cond_11

    .line 236
    const-string v3, "NotificationTransaction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "status=0x"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v14}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_11
    packed-switch v14, :pswitch_data_0

    .line 258
    :cond_12
    :goto_4
    :pswitch_0
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/mms/transaction/NotificationTransaction;->sendNotifyRespInd(I)V

    .line 261
    invoke-static {}, Lcom/android/mms/util/Recycler;->getMmsRecycler()Lcom/android/mms/util/Recycler$MmsRecycler;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/transaction/Transaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4, v7}, Lcom/android/mms/util/Recycler$MmsRecycler;->deleteOldMessagesInSameThreadAsMessage(Landroid/content/Context;Landroid/net/Uri;)V

    .line 262
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/mms/widget/MmsWidgetProvider;->notifyDatasetChanged(Landroid/content/Context;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 267
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 268
    if-nez v9, :cond_13

    .line 271
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    sget-object v4, Lcom/android/mms/transaction/Transaction$State;->SUCCESS:Lcom/android/mms/transaction/Transaction$State;

    invoke-virtual {v3, v4}, Lcom/android/mms/transaction/TransactionState;->setState(Lcom/android/mms/transaction/Transaction$State;)V

    .line 273
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v3}, Lcom/android/mms/transaction/TransactionState;->getState()Lcom/android/mms/transaction/Transaction$State;

    move-result-object v3

    sget-object v4, Lcom/android/mms/transaction/Transaction$State;->SUCCESS:Lcom/android/mms/transaction/Transaction$State;

    if-eq v3, v4, :cond_14

    .line 274
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    sget-object v4, Lcom/android/mms/transaction/Transaction$State;->FAILED:Lcom/android/mms/transaction/Transaction$State;

    invoke-virtual {v3, v4}, Lcom/android/mms/transaction/TransactionState;->setState(Lcom/android/mms/transaction/Transaction$State;)V

    .line 275
    const-string v3, "NotificationTransaction"

    const-string v4, "NotificationTransaction failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/NotificationTransaction;->finishTransaction()V

    goto/16 :goto_0

    .line 191
    :catch_1
    move-exception v12

    .line 192
    .local v12, "e":Ljava/io/IOException;
    :try_start_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    sget-object v4, Lcom/android/mms/transaction/Transaction$State;->FAILED:Lcom/android/mms/transaction/Transaction$State;

    invoke-virtual {v3, v4}, Lcom/android/mms/transaction/TransactionState;->setState(Lcom/android/mms/transaction/Transaction$State;)V

    goto/16 :goto_1

    .line 198
    .end local v12    # "e":Ljava/io/IOException;
    .restart local v2    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    :cond_15
    const-string v3, "null pdu"

    goto/16 :goto_2

    .line 204
    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v1

    .line 205
    .local v1, "p":Lcom/google/android/mms/pdu/PduPersister;
    sget-object v3, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getIsGroupMmsEnabled(Landroid/content/Context;)Z

    move-result v5

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->isCcBccEnabled()Z

    move-result v7

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;ZZLjava/util/HashMap;Z)Landroid/net/Uri;

    move-result-object v5

    .line 210
    .local v5, "uri":Landroid/net/Uri;
    new-instance v6, Landroid/content/ContentValues;

    const/4 v3, 0x1

    invoke-direct {v6, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 211
    .local v6, "values":Landroid/content/ContentValues;
    const-string v3, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-wide/16 v16, 0x3e8

    div-long v7, v7, v16

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 212
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 217
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/transaction/Transaction;->mUri:Landroid/net/Uri;

    const/4 v8, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-static {v3, v4, v7, v8, v0}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 219
    const-string v3, "NotificationTransaction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NotificationTransaction received new mms message: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v7, Landroid/provider/Telephony$Threads;->OBSOLETE_THREADS_URI:Landroid/net/Uri;

    const/4 v8, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-static {v3, v4, v7, v8, v0}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 225
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/mms/transaction/Transaction;->mUri:Landroid/net/Uri;

    .line 226
    invoke-static {}, Lcom/android/mms/checkin/CheckinLogger;->getInstance()Lcom/android/mms/checkin/CheckinLogger;

    move-result-object v10

    .line 227
    .local v10, "checkin":Lcom/android/mms/checkin/CheckinLogger;
    if-eqz v10, :cond_17

    .line 228
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    const/4 v4, 0x4

    check-cast v2, Lcom/google/android/mms/pdu/RetrieveConf;

    .end local v2    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/RetrieveConf;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v7

    invoke-virtual {v10, v3, v4, v7}, Lcom/android/mms/checkin/CheckinLogger;->logAddMmsReceivedItem(Landroid/content/Context;II)V

    .line 231
    :cond_17
    const/16 v14, 0x81

    goto/16 :goto_3

    .line 242
    .end local v1    # "p":Lcom/google/android/mms/pdu/PduPersister;
    .end local v5    # "uri":Landroid/net/Uri;
    .end local v6    # "values":Landroid/content/ContentValues;
    .end local v10    # "checkin":Lcom/android/mms/checkin/CheckinLogger;
    :pswitch_1
    sget-boolean v3, Lcom/android/mms/transaction/NotificationTransaction;->LOCAL_LOG:Z

    if-eqz v3, :cond_18

    .line 243
    const-string v3, "NotificationTransaction"

    const-string v4, "run - status - STATUS_RETRIEVED"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    sget-object v4, Lcom/android/mms/transaction/Transaction$State;->SUCCESS:Lcom/android/mms/transaction/Transaction$State;

    invoke-virtual {v3, v4}, Lcom/android/mms/transaction/TransactionState;->setState(Lcom/android/mms/transaction/Transaction$State;)V

    goto/16 :goto_4

    .line 248
    :pswitch_2
    sget-boolean v3, Lcom/android/mms/transaction/NotificationTransaction;->LOCAL_LOG:Z

    if-eqz v3, :cond_19

    .line 249
    const-string v3, "NotificationTransaction"

    const-string v4, "run - status - STATUS_DEFERRED"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_19
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v3}, Lcom/android/mms/transaction/TransactionState;->getState()Lcom/android/mms/transaction/Transaction$State;

    move-result-object v3

    sget-object v4, Lcom/android/mms/transaction/Transaction$State;->INITIALIZED:Lcom/android/mms/transaction/Transaction$State;

    if-ne v3, v4, :cond_12

    .line 253
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    sget-object v4, Lcom/android/mms/transaction/Transaction$State;->SUCCESS:Lcom/android/mms/transaction/Transaction$State;

    invoke-virtual {v3, v4}, Lcom/android/mms/transaction/TransactionState;->setState(Lcom/android/mms/transaction/Transaction$State;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_4

    .line 240
    nop

    :pswitch_data_0
    .packed-switch 0x81
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
