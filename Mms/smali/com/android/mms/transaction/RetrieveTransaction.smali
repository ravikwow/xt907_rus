.class public Lcom/android/mms/transaction/RetrieveTransaction;
.super Lcom/android/mms/transaction/MTTransaction;
.source "RetrieveTransaction.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final DEBUG:Z

.field private static final LOCAL_LOG:Z

.field static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private mLocked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 68
    sput-boolean v1, Lcom/android/mms/transaction/RetrieveTransaction;->DEBUG:Z

    .line 69
    sget-boolean v0, Lcom/android/mms/transaction/RetrieveTransaction;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "Mms:transaction"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/mms/transaction/RetrieveTransaction;->LOCAL_LOG:Z

    .line 73
    new-array v0, v3, [Ljava/lang/String;

    const-string v3, "ct_l"

    aput-object v3, v0, v2

    const-string v2, "locked"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/transaction/RetrieveTransaction;->PROJECTION:[Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    .line 69
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceId"    # I
    .param p3, "connectionSettings"    # Lcom/android/mms/transaction/TransactionSettings;
    .param p4, "uri"    # Ljava/lang/String;

    .prologue
    .line 84
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/transaction/MTTransaction;-><init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;)V

    .line 85
    invoke-virtual {p0, p4}, Lcom/android/mms/transaction/RetrieveTransaction;->loadDownloadData(Ljava/lang/String;)V

    .line 87
    sget-boolean v0, Lcom/android/mms/transaction/RetrieveTransaction;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 88
    const-string v0, "RetrieveTransaction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new RetrieveTransaction, uri="

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

    .line 92
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/android/mms/transaction/RetrieveTransaction;)V
    .locals 1
    .param p1, "transaction"    # Lcom/android/mms/transaction/RetrieveTransaction;

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/MTTransaction;-><init>(Lcom/android/mms/transaction/Transaction;)V

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mLocked:Z

    .line 98
    return-void
.end method

.method private static isDuplicateMessage(Landroid/content/Context;Lcom/google/android/mms/pdu/RetrieveConf;)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "rc"    # Lcom/google/android/mms/pdu/RetrieveConf;

    .prologue
    const/4 v11, 0x2

    const/4 v6, 0x1

    const/4 v10, 0x0

    .line 248
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/RetrieveConf;->getMessageId()[B

    move-result-object v9

    .line 249
    .local v9, "rawMessageId":[B
    if-eqz v9, :cond_1

    .line 250
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([B)V

    .line 251
    .local v8, "messageId":Ljava/lang/String;
    const-string v4, "(m_id = ? AND m_type = ?)"

    .line 253
    .local v4, "selection":Ljava/lang/String;
    new-array v5, v11, [Ljava/lang/String;

    aput-object v8, v5, v10

    const/16 v0, 0x84

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    .line 256
    .local v5, "selectionArgs":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v3, v10

    const-string v0, "sub"

    aput-object v0, v3, v6

    const-string v0, "sub_cs"

    aput-object v0, v3, v11

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 261
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 263
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 266
    invoke-static {v7, p1}, Lcom/android/mms/transaction/RetrieveTransaction;->isDuplicateMessageExtra(Landroid/database/Cursor;Lcom/google/android/mms/pdu/RetrieveConf;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 269
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 273
    .end local v4    # "selection":Ljava/lang/String;
    .end local v5    # "selectionArgs":[Ljava/lang/String;
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v8    # "messageId":Ljava/lang/String;
    :goto_0
    return v0

    .line 269
    .restart local v4    # "selection":Ljava/lang/String;
    .restart local v5    # "selectionArgs":[Ljava/lang/String;
    .restart local v7    # "cursor":Landroid/database/Cursor;
    .restart local v8    # "messageId":Ljava/lang/String;
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .end local v4    # "selection":Ljava/lang/String;
    .end local v5    # "selectionArgs":[Ljava/lang/String;
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v8    # "messageId":Ljava/lang/String;
    :cond_1
    move v0, v10

    .line 273
    goto :goto_0

    .line 269
    .restart local v4    # "selection":Ljava/lang/String;
    .restart local v5    # "selectionArgs":[Ljava/lang/String;
    .restart local v7    # "cursor":Landroid/database/Cursor;
    .restart local v8    # "messageId":Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static isDuplicateMessageExtra(Landroid/database/Cursor;Lcom/google/android/mms/pdu/RetrieveConf;)Z
    .locals 10
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "rc"    # Lcom/google/android/mms/pdu/RetrieveConf;

    .prologue
    const/4 v8, 0x1

    .line 278
    const/4 v2, 0x0

    .line 279
    .local v2, "encodedSubjectReceived":Lcom/google/android/mms/pdu/EncodedStringValue;
    const/4 v3, 0x0

    .line 280
    .local v3, "encodedSubjectStored":Lcom/google/android/mms/pdu/EncodedStringValue;
    const/4 v6, 0x0

    .line 281
    .local v6, "subjectReceived":Ljava/lang/String;
    const/4 v7, 0x0

    .line 282
    .local v7, "subjectStored":Ljava/lang/String;
    const/4 v4, 0x0

    .line 284
    .local v4, "subject":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/RetrieveConf;->getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v2

    .line 285
    if-eqz v2, :cond_0

    .line 286
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v6

    .line 289
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v9

    if-nez v9, :cond_6

    .line 290
    const-string v9, "sub"

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 291
    .local v5, "subjectIdx":I
    const-string v9, "sub_cs"

    invoke-interface {p0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 292
    .local v1, "charsetIdx":I
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 293
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 294
    .local v0, "charset":I
    if-eqz v4, :cond_1

    .line 295
    new-instance v3, Lcom/google/android/mms/pdu/EncodedStringValue;

    .end local v3    # "encodedSubjectStored":Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-static {v4}, Lcom/google/android/mms/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-direct {v3, v0, v9}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    .line 298
    .restart local v3    # "encodedSubjectStored":Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_1
    if-nez v3, :cond_3

    if-nez v2, :cond_3

    .line 313
    .end local v0    # "charset":I
    .end local v1    # "charsetIdx":I
    .end local v5    # "subjectIdx":I
    :cond_2
    :goto_1
    return v8

    .line 301
    .restart local v0    # "charset":I
    .restart local v1    # "charsetIdx":I
    .restart local v5    # "subjectIdx":I
    :cond_3
    if-eqz v3, :cond_5

    if-eqz v2, :cond_5

    .line 302
    invoke-virtual {v3}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v7

    .line 303
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 305
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    goto :goto_1

    .line 306
    :cond_4
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 289
    :cond_5
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 313
    .end local v0    # "charset":I
    .end local v1    # "charsetIdx":I
    .end local v5    # "subjectIdx":I
    :cond_6
    const/4 v8, 0x0

    goto :goto_1
.end method

.method private static updateContentLocation(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Z)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "contentLocation"    # Ljava/lang/String;
    .param p3, "locked"    # Z

    .prologue
    const/4 v4, 0x0

    .line 343
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x2

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 344
    .local v3, "values":Landroid/content/ContentValues;
    const-string v0, "ct_l"

    invoke-virtual {v3, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    const-string v0, "locked"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 346
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 348
    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    .prologue
    .line 352
    const/4 v0, 0x1

    return v0
.end method

.method public process()V
    .locals 2

    .prologue
    .line 128
    invoke-static {}, Lcom/android/mms/concurrent/TaskManager;->getInstance()Lcom/android/mms/concurrent/TaskManager;

    move-result-object v0

    const-string v1, "retrieve_transaction"

    invoke-virtual {v0, p0, v1}, Lcom/android/mms/concurrent/TaskManager;->runHighPriorityTask(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public run()V
    .locals 13

    .prologue
    const/4 v11, 0x1

    .line 134
    :try_start_0
    sget-boolean v2, Lcom/android/mms/transaction/RetrieveTransaction;->LOCAL_LOG:Z

    if-eqz v2, :cond_0

    .line 135
    const-string v2, "RetrieveTransaction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MMS-THREAD - run START, thread: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " - "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/mms/transaction/Transaction;->mStartedTime:J

    .line 143
    iget-object v2, p0, Lcom/android/mms/transaction/Transaction;->mUri:Landroid/net/Uri;

    const/16 v3, 0x81

    invoke-virtual {p0, v2, v3}, Lcom/android/mms/transaction/RetrieveTransaction;->setDownloadState(Landroid/net/Uri;I)V

    .line 145
    iget-object v2, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v2}, Lcom/android/mms/transaction/TransactionState;->getState()Lcom/android/mms/transaction/Transaction$State;

    move-result-object v2

    sget-object v3, Lcom/android/mms/transaction/Transaction$State;->FAILED:Lcom/android/mms/transaction/Transaction$State;

    if-ne v2, v3, :cond_1

    .line 146
    new-instance v2, Lcom/google/android/mms/MmsException;

    const-string v3, "MMS-STATUS - Transaction aborted"

    invoke-direct {v2, v3}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    :catch_0
    move-exception v10

    .line 237
    .local v10, "t":Ljava/lang/Throwable;
    :try_start_1
    const-string v2, "RetrieveTransaction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MMS-STATUS - exception, stack="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    invoke-virtual {p0, v10}, Lcom/android/mms/transaction/RetrieveTransaction;->treatMTException(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 243
    invoke-virtual {p0}, Lcom/android/mms/transaction/RetrieveTransaction;->finishTransaction()V

    .line 245
    .end local v10    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 149
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/android/mms/transaction/RetrieveTransaction;->hasValidApn()Z

    move-result v2

    if-nez v2, :cond_2

    .line 150
    new-instance v2, Lcom/google/android/mms/MmsException;

    const-string v3, "MMS-STATUS - Transaction aborted, invalid APN"

    invoke-direct {v2, v3}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 243
    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Lcom/android/mms/transaction/RetrieveTransaction;->finishTransaction()V

    throw v2

    .line 154
    :cond_2
    :try_start_3
    sget-boolean v2, Lcom/android/mms/transaction/RetrieveTransaction;->LOCAL_LOG:Z

    if-eqz v2, :cond_3

    .line 155
    const-string v2, "RetrieveTransaction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MMS-STATUS - Starting downloading: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_3
    iget-object v2, p0, Lcom/android/mms/transaction/Transaction;->mContentLocation:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/mms/transaction/RetrieveTransaction;->getPdu(Ljava/lang/String;)[B

    move-result-object v9

    .line 160
    .local v9, "resp":[B
    if-nez v9, :cond_4

    .line 161
    new-instance v2, Lcom/google/android/mms/MmsException;

    const-string v3, "Invalid M-Retrieve.conf PDU."

    invoke-direct {v2, v3}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 163
    :cond_4
    sget-boolean v2, Lcom/android/mms/transaction/RetrieveTransaction;->LOCAL_LOG:Z

    if-eqz v2, :cond_5

    .line 165
    const-string v2, "MT MMS"

    invoke-static {v2, v9}, Lcom/android/mms/model/SmilHelper;->showPdu(Ljava/lang/String;[B)V

    .line 169
    :cond_5
    new-instance v2, Lcom/google/android/mms/pdu/PduParser;

    invoke-direct {v2, v9}, Lcom/google/android/mms/pdu/PduParser;-><init>([B)V

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduParser;->parse()Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v1

    check-cast v1, Lcom/google/android/mms/pdu/RetrieveConf;

    .line 170
    .local v1, "retrieveConf":Lcom/google/android/mms/pdu/RetrieveConf;
    if-nez v1, :cond_6

    .line 171
    new-instance v2, Lcom/google/android/mms/MmsException;

    const-string v3, "Invalid M-Retrieve.conf PDU."

    invoke-direct {v2, v3}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 174
    :cond_6
    invoke-virtual {p0, v1}, Lcom/android/mms/transaction/RetrieveTransaction;->treatNetworkRetrieveStatus(Lcom/google/android/mms/pdu/RetrieveConf;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v2

    if-eq v2, v11, :cond_7

    .line 243
    invoke-virtual {p0}, Lcom/android/mms/transaction/RetrieveTransaction;->finishTransaction()V

    goto :goto_0

    .line 178
    :cond_7
    const/4 v4, 0x0

    .line 179
    .local v4, "msgUri":Landroid/net/Uri;
    :try_start_4
    iget-object v2, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/android/mms/transaction/RetrieveTransaction;->isDuplicateMessage(Landroid/content/Context;Lcom/google/android/mms/pdu/RetrieveConf;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 182
    iget-object v2, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    sget-object v3, Lcom/android/mms/transaction/Transaction$State;->FAILED:Lcom/android/mms/transaction/Transaction$State;

    invoke-virtual {v2, v3}, Lcom/android/mms/transaction/TransactionState;->setState(Lcom/android/mms/transaction/Transaction$State;)V

    .line 183
    iget-object v2, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    iget-object v3, p0, Lcom/android/mms/transaction/Transaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 185
    iget-object v2, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v6, p0, Lcom/android/mms/transaction/Transaction;->mUri:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v11, 0x0

    invoke-static {v2, v3, v6, v7, v11}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 217
    :goto_1
    iget-object v2, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v6, p0, Lcom/android/mms/transaction/Transaction;->mUri:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v11, 0x0

    invoke-static {v2, v3, v6, v7, v11}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 220
    if-eqz v4, :cond_8

    .line 223
    invoke-static {}, Lcom/android/mms/util/Recycler;->getMmsRecycler()Lcom/android/mms/util/Recycler$MmsRecycler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v4}, Lcom/android/mms/util/Recycler$MmsRecycler;->deleteOldMessagesInSameThreadAsMessage(Landroid/content/Context;Landroid/net/Uri;)V

    .line 224
    iget-object v2, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/mms/widget/MmsWidgetProvider;->notifyDatasetChanged(Landroid/content/Context;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 230
    :cond_8
    :try_start_5
    invoke-virtual {p0, v1}, Lcom/android/mms/transaction/RetrieveTransaction;->sendAcknowledgeInd(Lcom/google/android/mms/pdu/RetrieveConf;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 243
    :goto_2
    invoke-virtual {p0}, Lcom/android/mms/transaction/RetrieveTransaction;->finishTransaction()V

    goto/16 :goto_0

    .line 189
    :cond_9
    :try_start_6
    iget-object v2, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v0

    .line 190
    .local v0, "persister":Lcom/google/android/mms/pdu/PduPersister;
    sget-object v2, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    iget-object v6, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getIsGroupMmsEnabled(Landroid/content/Context;)Z

    move-result v4

    .end local v4    # "msgUri":Landroid/net/Uri;
    const/4 v5, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->isCcBccEnabled()Z

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;ZZLjava/util/HashMap;Z)Landroid/net/Uri;

    move-result-object v4

    .line 195
    .restart local v4    # "msgUri":Landroid/net/Uri;
    new-instance v5, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v5, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 196
    .local v5, "values":Landroid/content/ContentValues;
    const-string v2, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v11, 0x3e8

    div-long/2addr v6, v11

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 197
    iget-object v2, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 200
    invoke-static {}, Lcom/android/mms/checkin/CheckinLogger;->getInstance()Lcom/android/mms/checkin/CheckinLogger;

    move-result-object v8

    .line 201
    .local v8, "checkin":Lcom/android/mms/checkin/CheckinLogger;
    if-eqz v8, :cond_a

    .line 202
    iget-object v2, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    const/4 v3, 0x4

    invoke-virtual {v1}, Lcom/google/android/mms/pdu/RetrieveConf;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v6

    invoke-virtual {v8, v2, v3, v6}, Lcom/android/mms/checkin/CheckinLogger;->logAddMmsReceivedItem(Landroid/content/Context;II)V

    .line 207
    :cond_a
    iget-object v2, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    sget-object v3, Lcom/android/mms/transaction/Transaction$State;->SUCCESS:Lcom/android/mms/transaction/Transaction$State;

    invoke-virtual {v2, v3}, Lcom/android/mms/transaction/TransactionState;->setState(Lcom/android/mms/transaction/Transaction$State;)V

    .line 208
    iget-object v2, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v2, v4}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 213
    iget-object v2, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/transaction/Transaction;->mContentLocation:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mLocked:Z

    invoke-static {v2, v4, v3, v6}, Lcom/android/mms/transaction/RetrieveTransaction;->updateContentLocation(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 231
    .end local v0    # "persister":Lcom/google/android/mms/pdu/PduPersister;
    .end local v5    # "values":Landroid/content/ContentValues;
    .end local v8    # "checkin":Lcom/android/mms/checkin/CheckinLogger;
    :catch_1
    move-exception v10

    .line 232
    .restart local v10    # "t":Ljava/lang/Throwable;
    const-string v2, "RetrieveTransaction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MMS-STATUS - Ignore exception after download, stack="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_2
.end method

.method protected sendAcknowledgeInd(Lcom/google/android/mms/pdu/RetrieveConf;)V
    .locals 5
    .param p1, "rc"    # Lcom/google/android/mms/pdu/RetrieveConf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;,
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 321
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/RetrieveConf;->getTransactionId()[B

    move-result-object v2

    .line 322
    .local v2, "tranId":[B
    if-eqz v2, :cond_0

    .line 324
    new-instance v0, Lcom/google/android/mms/pdu/AcknowledgeInd;

    const/16 v3, 0x12

    invoke-direct {v0, v3, v2}, Lcom/google/android/mms/pdu/AcknowledgeInd;-><init>(I[B)V

    .line 328
    .local v0, "acknowledgeInd":Lcom/google/android/mms/pdu/AcknowledgeInd;
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getLocalNumber()Ljava/lang/String;

    move-result-object v1

    .line 329
    .local v1, "lineNumber":Ljava/lang/String;
    new-instance v3, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v3, v1}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/google/android/mms/pdu/AcknowledgeInd;->setFrom(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 332
    invoke-static {}, Lcom/android/mms/MmsConfig;->getNotifyWapMMSC()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 333
    new-instance v3, Lcom/google/android/mms/pdu/PduComposer;

    iget-object v4, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v0}, Lcom/google/android/mms/pdu/PduComposer;-><init>(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)V

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/PduComposer;->make()[B

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/transaction/Transaction;->mContentLocation:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/android/mms/transaction/RetrieveTransaction;->sendPdu([BLjava/lang/String;)[B

    .line 338
    .end local v0    # "acknowledgeInd":Lcom/google/android/mms/pdu/AcknowledgeInd;
    .end local v1    # "lineNumber":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 335
    .restart local v0    # "acknowledgeInd":Lcom/google/android/mms/pdu/AcknowledgeInd;
    .restart local v1    # "lineNumber":Ljava/lang/String;
    :cond_1
    new-instance v3, Lcom/google/android/mms/pdu/PduComposer;

    iget-object v4, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v0}, Lcom/google/android/mms/pdu/PduComposer;-><init>(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)V

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/PduComposer;->make()[B

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/mms/transaction/RetrieveTransaction;->sendPdu([B)[B

    goto :goto_0
.end method
