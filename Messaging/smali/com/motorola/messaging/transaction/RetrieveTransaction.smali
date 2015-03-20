.class public Lcom/motorola/messaging/transaction/RetrieveTransaction;
.super Lcom/motorola/messaging/transaction/MTTransaction;
.source "RetrieveTransaction.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final DEBUG:Z

.field private static final LOCAL_LOG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 57
    sput-boolean v0, Lcom/motorola/messaging/transaction/RetrieveTransaction;->DEBUG:Z

    .line 58
    sget-boolean v1, Lcom/motorola/messaging/transaction/RetrieveTransaction;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v1, :cond_0

    :goto_0
    sput-boolean v0, Lcom/motorola/messaging/transaction/RetrieveTransaction;->LOCAL_LOG:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/motorola/messaging/transaction/TransactionSettings;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceId"    # I
    .param p3, "connectionSettings"    # Lcom/motorola/messaging/transaction/TransactionSettings;
    .param p4, "uriString"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/motorola/messaging/transaction/MTTransaction;-><init>(Landroid/content/Context;ILcom/motorola/messaging/transaction/TransactionSettings;)V

    .line 65
    invoke-virtual {p0, p4}, Lcom/motorola/messaging/transaction/MTTransaction;->loadDownloadData(Ljava/lang/String;)V

    .line 67
    sget-boolean v0, Lcom/motorola/messaging/transaction/RetrieveTransaction;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 68
    const-string v0, "RetrieveTransaction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new RetrieveTransaction, uri="

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

    .line 73
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/motorola/messaging/transaction/RetrieveTransaction;)V
    .locals 0
    .param p1, "transaction"    # Lcom/motorola/messaging/transaction/RetrieveTransaction;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/motorola/messaging/transaction/MTTransaction;-><init>(Lcom/motorola/messaging/transaction/Transaction;)V

    .line 77
    return-void
.end method

.method private static isDuplicateMessage(Landroid/content/Context;Lcom/motorola/messaging/pdu/RetrieveConf;)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "rc"    # Lcom/motorola/messaging/pdu/RetrieveConf;

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 168
    invoke-virtual {p1}, Lcom/motorola/messaging/pdu/RetrieveConf;->getMessageId()[B

    move-result-object v9

    .line 169
    .local v9, "rawMessageId":[B
    if-eqz v9, :cond_1

    .line 170
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([B)V

    .line 171
    .local v8, "messageId":Ljava/lang/String;
    const-string v4, "(m_id = ? AND m_type = ?)"

    .line 173
    .local v4, "selection":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/String;

    aput-object v8, v5, v11

    const/16 v0, 0x84

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v10

    .line 175
    .local v5, "selectionArgs":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/motorola/messaging/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    new-array v3, v10, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v3, v11

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/motorola/messaging/provider/SqliteManager;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 179
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 181
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_0

    .line 186
    invoke-static {v7}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    move v0, v10

    .line 190
    .end local v4    # "selection":Ljava/lang/String;
    .end local v5    # "selectionArgs":[Ljava/lang/String;
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v8    # "messageId":Ljava/lang/String;
    :goto_0
    return v0

    .line 186
    .restart local v4    # "selection":Ljava/lang/String;
    .restart local v5    # "selectionArgs":[Ljava/lang/String;
    .restart local v7    # "cursor":Landroid/database/Cursor;
    .restart local v8    # "messageId":Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-static {v7}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    throw v0

    :cond_0
    invoke-static {v7}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    .end local v4    # "selection":Ljava/lang/String;
    .end local v5    # "selectionArgs":[Ljava/lang/String;
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v8    # "messageId":Ljava/lang/String;
    :cond_1
    move v0, v11

    .line 190
    goto :goto_0
.end method

.method private static updateContentLocation(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "contentLocation"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 215
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 216
    .local v3, "values":Landroid/content/ContentValues;
    const-string v0, "ct_l"

    invoke-virtual {v3, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/motorola/messaging/provider/SqliteManager;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 219
    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x1

    return v0
.end method

.method public process()V
    .locals 2

    .prologue
    .line 85
    invoke-static {}, Lcom/motorola/messaging/concurrent/TaskManager;->getInstance()Lcom/motorola/messaging/concurrent/TaskManager;

    move-result-object v0

    const-string v1, "retrieve_transaction"

    invoke-virtual {v0, p0, v1}, Lcom/motorola/messaging/concurrent/TaskManager;->runHighPriorityTask(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public run()V
    .locals 9

    .prologue
    .line 90
    :try_start_0
    sget-boolean v4, Lcom/motorola/messaging/transaction/RetrieveTransaction;->LOCAL_LOG:Z

    if-eqz v4, :cond_0

    .line 91
    const-string v4, "RetrieveTransaction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MMS-THREAD - run START, thread: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/motorola/messaging/transaction/Transaction;->mStartedTime:J

    .line 97
    iget-object v4, p0, Lcom/motorola/messaging/transaction/Transaction;->mUri:Landroid/net/Uri;

    const/16 v5, 0x81

    invoke-virtual {p0, v4, v5}, Lcom/motorola/messaging/transaction/MTTransaction;->setDownloadState(Landroid/net/Uri;I)V

    .line 99
    iget-object v4, p0, Lcom/motorola/messaging/transaction/Transaction;->mTransactionState:Lcom/motorola/messaging/transaction/TransactionState;

    invoke-virtual {v4}, Lcom/motorola/messaging/transaction/TransactionState;->getState()Lcom/motorola/messaging/transaction/Transaction$State;

    move-result-object v4

    sget-object v5, Lcom/motorola/messaging/transaction/Transaction$State;->FAILED:Lcom/motorola/messaging/transaction/Transaction$State;

    if-ne v4, v5, :cond_2

    .line 100
    new-instance v4, Lcom/motorola/messaging/util/MmsException;

    const-string v5, "MMS-STATUS - Transaction aborted"

    invoke-direct {v4, v5}, Lcom/motorola/messaging/util/MmsException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    :catch_0
    move-exception v3

    .line 160
    .local v3, "t":Ljava/lang/Throwable;
    :try_start_1
    const-string v4, "RetrieveTransaction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MMS-STATUS - exception, stack="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Lcom/motorola/messaging/logger/Logger;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0, v3}, Lcom/motorola/messaging/transaction/MTTransaction;->treatMTException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    .end local v3    # "t":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/motorola/messaging/transaction/Transaction;->finishTransaction()V

    .line 165
    return-void

    .line 103
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Lcom/motorola/messaging/transaction/Transaction;->hasValidApn()Z

    move-result v4

    if-nez v4, :cond_3

    .line 104
    new-instance v4, Lcom/motorola/messaging/util/MmsException;

    const-string v5, "MMS-STATUS - Transaction aborted, invalid APN"

    invoke-direct {v4, v5}, Lcom/motorola/messaging/util/MmsException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 163
    :catchall_0
    move-exception v4

    invoke-virtual {p0}, Lcom/motorola/messaging/transaction/Transaction;->finishTransaction()V

    throw v4

    .line 107
    :cond_3
    :try_start_3
    sget-boolean v4, Lcom/motorola/messaging/transaction/RetrieveTransaction;->LOCAL_LOG:Z

    if-eqz v4, :cond_4

    .line 108
    const-string v4, "RetrieveTransaction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MMS-STATUS - Starting downloading: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :cond_4
    iget-object v4, p0, Lcom/motorola/messaging/transaction/Transaction;->mContentLocation:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/motorola/messaging/transaction/Transaction;->getPdu(Ljava/lang/String;)[B

    move-result-object v1

    .line 113
    .local v1, "resp":[B
    if-nez v1, :cond_5

    .line 114
    new-instance v4, Lcom/motorola/messaging/util/MmsException;

    const-string v5, "Invalid M-Retrieve.conf PDU."

    invoke-direct {v4, v5}, Lcom/motorola/messaging/util/MmsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 117
    :cond_5
    sget-boolean v4, Lcom/motorola/messaging/transaction/RetrieveTransaction;->LOCAL_LOG:Z

    if-eqz v4, :cond_6

    .line 119
    const-string v4, "MT MMS"

    invoke-static {v4, v1}, Lcom/motorola/messaging/dom/smil/SmilHelper;->showPdu(Ljava/lang/String;[B)V

    .line 123
    :cond_6
    new-instance v4, Lcom/motorola/messaging/pdu/PduParser;

    invoke-direct {v4, v1}, Lcom/motorola/messaging/pdu/PduParser;-><init>([B)V

    invoke-virtual {v4}, Lcom/motorola/messaging/pdu/PduParser;->parse()Lcom/motorola/messaging/pdu/GenericPdu;

    move-result-object v2

    check-cast v2, Lcom/motorola/messaging/pdu/RetrieveConf;

    .line 124
    .local v2, "retrieveConf":Lcom/motorola/messaging/pdu/RetrieveConf;
    if-nez v2, :cond_7

    .line 125
    new-instance v4, Lcom/motorola/messaging/util/MmsException;

    const-string v5, "Invalid M-Retrieve.conf PDU."

    invoke-direct {v4, v5}, Lcom/motorola/messaging/util/MmsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 128
    :cond_7
    invoke-virtual {p0, v2}, Lcom/motorola/messaging/transaction/MTTransaction;->treatNetworkRetrieveStatus(Lcom/motorola/messaging/pdu/RetrieveConf;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 132
    const/4 v0, 0x0

    .line 133
    .local v0, "msgUri":Landroid/net/Uri;
    iget-object v4, p0, Lcom/motorola/messaging/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-static {v4, v2}, Lcom/motorola/messaging/transaction/RetrieveTransaction;->isDuplicateMessage(Landroid/content/Context;Lcom/motorola/messaging/pdu/RetrieveConf;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 136
    iget-object v4, p0, Lcom/motorola/messaging/transaction/Transaction;->mTransactionState:Lcom/motorola/messaging/transaction/TransactionState;

    sget-object v5, Lcom/motorola/messaging/transaction/Transaction$State;->FAILED:Lcom/motorola/messaging/transaction/Transaction$State;

    invoke-virtual {v4, v5}, Lcom/motorola/messaging/transaction/TransactionState;->setState(Lcom/motorola/messaging/transaction/Transaction$State;)V

    .line 137
    iget-object v4, p0, Lcom/motorola/messaging/transaction/Transaction;->mTransactionState:Lcom/motorola/messaging/transaction/TransactionState;

    iget-object v5, p0, Lcom/motorola/messaging/transaction/Transaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Lcom/motorola/messaging/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 139
    iget-object v4, p0, Lcom/motorola/messaging/transaction/Transaction;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/motorola/messaging/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/motorola/messaging/transaction/Transaction;->mUri:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v4, v5, v6, v7, v8}, Lcom/motorola/messaging/provider/SqliteManager;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 155
    :goto_1
    :try_start_4
    invoke-virtual {p0, v2}, Lcom/motorola/messaging/transaction/RetrieveTransaction;->sendAcknowledgeInd(Lcom/motorola/messaging/pdu/RetrieveConf;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 156
    :catch_1
    move-exception v3

    .line 157
    .restart local v3    # "t":Ljava/lang/Throwable;
    :try_start_5
    const-string v4, "RetrieveTransaction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MMS-STATUS - Ignore exception after download, stack="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Lcom/motorola/messaging/logger/Logger;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 141
    .end local v3    # "t":Ljava/lang/Throwable;
    :cond_8
    invoke-virtual {p0, v2}, Lcom/motorola/messaging/transaction/MTTransaction;->persistMTMMS(Lcom/motorola/messaging/pdu/RetrieveConf;)Landroid/net/Uri;

    move-result-object v0

    .line 144
    iget-object v4, p0, Lcom/motorola/messaging/transaction/Transaction;->mTransactionState:Lcom/motorola/messaging/transaction/TransactionState;

    sget-object v5, Lcom/motorola/messaging/transaction/Transaction$State;->SUCCESS:Lcom/motorola/messaging/transaction/Transaction$State;

    invoke-virtual {v4, v5}, Lcom/motorola/messaging/transaction/TransactionState;->setState(Lcom/motorola/messaging/transaction/Transaction$State;)V

    .line 145
    iget-object v4, p0, Lcom/motorola/messaging/transaction/Transaction;->mTransactionState:Lcom/motorola/messaging/transaction/TransactionState;

    invoke-virtual {v4, v0}, Lcom/motorola/messaging/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 148
    iget-object v4, p0, Lcom/motorola/messaging/transaction/Transaction;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/motorola/messaging/transaction/Transaction;->mContentLocation:Ljava/lang/String;

    invoke-static {v4, v0, v5}, Lcom/motorola/messaging/transaction/RetrieveTransaction;->updateContentLocation(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method protected sendAcknowledgeInd(Lcom/motorola/messaging/pdu/RetrieveConf;)V
    .locals 4
    .param p1, "rc"    # Lcom/motorola/messaging/pdu/RetrieveConf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/util/MmsException;,
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 198
    invoke-virtual {p1}, Lcom/motorola/messaging/pdu/RetrieveConf;->getTransactionId()[B

    move-result-object v1

    .line 199
    .local v1, "tranId":[B
    if-eqz v1, :cond_0

    .line 201
    new-instance v0, Lcom/motorola/messaging/pdu/AcknowledgeInd;

    sget v2, Lcom/motorola/messaging/pdu/PduHeaders;->CURRENT_MMS_VERSION:I

    invoke-direct {v0, v2, v1}, Lcom/motorola/messaging/pdu/AcknowledgeInd;-><init>(I[B)V

    .line 205
    .local v0, "acknowledgeInd":Lcom/motorola/messaging/pdu/AcknowledgeInd;
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getNotifyWapMmscEnable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 206
    new-instance v2, Lcom/motorola/messaging/pdu/PduComposer;

    iget-object v3, p0, Lcom/motorola/messaging/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v0}, Lcom/motorola/messaging/pdu/PduComposer;-><init>(Landroid/content/Context;Lcom/motorola/messaging/pdu/GenericPdu;)V

    invoke-virtual {v2}, Lcom/motorola/messaging/pdu/PduComposer;->make()[B

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/messaging/transaction/Transaction;->mContentLocation:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/motorola/messaging/transaction/Transaction;->sendPdu([BLjava/lang/String;)[B

    .line 211
    .end local v0    # "acknowledgeInd":Lcom/motorola/messaging/pdu/AcknowledgeInd;
    :cond_0
    :goto_0
    return-void

    .line 208
    .restart local v0    # "acknowledgeInd":Lcom/motorola/messaging/pdu/AcknowledgeInd;
    :cond_1
    new-instance v2, Lcom/motorola/messaging/pdu/PduComposer;

    iget-object v3, p0, Lcom/motorola/messaging/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v0}, Lcom/motorola/messaging/pdu/PduComposer;-><init>(Landroid/content/Context;Lcom/motorola/messaging/pdu/GenericPdu;)V

    invoke-virtual {v2}, Lcom/motorola/messaging/pdu/PduComposer;->make()[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/motorola/messaging/transaction/Transaction;->sendPdu([B)[B

    goto :goto_0
.end method
