.class public Lcom/android/mms/transaction/ReadRecTransaction;
.super Lcom/android/mms/transaction/Transaction;
.source "ReadRecTransaction.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "transId"    # I
    .param p3, "connectionSettings"    # Lcom/android/mms/transaction/TransactionSettings;
    .param p4, "uri"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/transaction/Transaction;-><init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;)V

    .line 58
    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/Transaction;->mUri:Landroid/net/Uri;

    .line 59
    iput-object p4, p0, Lcom/android/mms/transaction/Transaction;->mId:Ljava/lang/String;

    .line 61
    iget-object v0, p0, Lcom/android/mms/transaction/Transaction;->mId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/transaction/Transaction;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_1

    .line 62
    :cond_0
    sget-object v0, Lcom/android/mms/transaction/Transaction$Failure;->INTERNAL:Lcom/android/mms/transaction/Transaction$Failure;

    invoke-virtual {p0, v0}, Lcom/android/mms/transaction/ReadRecTransaction;->notifyFailure(Lcom/android/mms/transaction/Transaction$Failure;)V

    .line 69
    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/android/mms/transaction/ReadRecTransaction;)V
    .locals 0
    .param p1, "transaction"    # Lcom/android/mms/transaction/ReadRecTransaction;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/Transaction;-><init>(Lcom/android/mms/transaction/Transaction;)V

    .line 73
    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x3

    return v0
.end method

.method public process()V
    .locals 2

    .prologue
    .line 81
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "ReadRecTransaction"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mThread:Ljava/lang/Thread;

    .line 82
    iget-object v0, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 83
    return-void
.end method

.method public run()V
    .locals 8

    .prologue
    .line 86
    iget-object v6, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v2

    .line 90
    .local v2, "persister":Lcom/google/android/mms/pdu/PduPersister;
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/mms/transaction/Transaction;->mStartedTime:J

    .line 92
    iget-object v6, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v6}, Lcom/android/mms/transaction/TransactionState;->getState()Lcom/android/mms/transaction/Transaction$State;

    move-result-object v6

    sget-object v7, Lcom/android/mms/transaction/Transaction$State;->FAILED:Lcom/android/mms/transaction/Transaction$State;

    if-ne v6, v7, :cond_0

    .line 93
    new-instance v6, Lcom/google/android/mms/MmsException;

    const-string v7, "MMS-STATUS - Transaction aborted"

    invoke-direct {v6, v7}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/HttpException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    :catch_0
    move-exception v6

    .line 130
    invoke-virtual {p0}, Lcom/android/mms/transaction/ReadRecTransaction;->finishTransaction()V

    .line 132
    :goto_0
    return-void

    .line 96
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/mms/transaction/ReadRecTransaction;->hasValidApn()Z

    move-result v6

    if-nez v6, :cond_1

    .line 97
    new-instance v6, Lcom/google/android/mms/MmsException;

    const-string v7, "MMS-STATUS - Transaction aborted, invalid APN"

    invoke-direct {v6, v7}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/http/HttpException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    :catch_1
    move-exception v0

    .line 120
    .local v0, "e":Lorg/apache/http/HttpException;
    :try_start_2
    const-string v6, "ReadRecTransaction"

    const-string v7, "Failed to send M-Read-Rec.Ind. (http error)"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 130
    invoke-virtual {p0}, Lcom/android/mms/transaction/ReadRecTransaction;->finishTransaction()V

    goto :goto_0

    .line 102
    .end local v0    # "e":Lorg/apache/http/HttpException;
    :cond_1
    :try_start_3
    iget-object v6, p0, Lcom/android/mms/transaction/Transaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v6}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v4

    check-cast v4, Lcom/google/android/mms/pdu/ReadRecInd;

    .line 105
    .local v4, "readRecInd":Lcom/google/android/mms/pdu/ReadRecInd;
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getLocalNumber()Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, "lineNumber":Ljava/lang/String;
    new-instance v6, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v6, v1}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Lcom/google/android/mms/pdu/ReadRecInd;->setFrom(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 109
    new-instance v6, Lcom/google/android/mms/pdu/PduComposer;

    iget-object v7, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7, v4}, Lcom/google/android/mms/pdu/PduComposer;-><init>(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)V

    invoke-virtual {v6}, Lcom/google/android/mms/pdu/PduComposer;->make()[B

    move-result-object v3

    .line 110
    .local v3, "postingData":[B
    invoke-virtual {p0, v3}, Lcom/android/mms/transaction/ReadRecTransaction;->sendPdu([B)[B

    .line 112
    iget-object v6, p0, Lcom/android/mms/transaction/Transaction;->mUri:Landroid/net/Uri;

    sget-object v7, Landroid/provider/Telephony$Mms$Sent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v6, v7}, Lcom/google/android/mms/pdu/PduPersister;->move(Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    .line 113
    .local v5, "uri":Landroid/net/Uri;
    iget-object v6, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    sget-object v7, Lcom/android/mms/transaction/Transaction$State;->SUCCESS:Lcom/android/mms/transaction/Transaction$State;

    invoke-virtual {v6, v7}, Lcom/android/mms/transaction/TransactionState;->setState(Lcom/android/mms/transaction/Transaction$State;)V

    .line 114
    iget-object v6, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v6, v5}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/apache/http/HttpException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 130
    invoke-virtual {p0}, Lcom/android/mms/transaction/ReadRecTransaction;->finishTransaction()V

    goto :goto_0

    .line 121
    .end local v1    # "lineNumber":Ljava/lang/String;
    .end local v3    # "postingData":[B
    .end local v4    # "readRecInd":Lcom/google/android/mms/pdu/ReadRecInd;
    .end local v5    # "uri":Landroid/net/Uri;
    :catch_2
    move-exception v6

    .line 130
    invoke-virtual {p0}, Lcom/android/mms/transaction/ReadRecTransaction;->finishTransaction()V

    goto :goto_0

    .line 125
    :catch_3
    move-exception v6

    .line 130
    invoke-virtual {p0}, Lcom/android/mms/transaction/ReadRecTransaction;->finishTransaction()V

    goto :goto_0

    :catchall_0
    move-exception v6

    invoke-virtual {p0}, Lcom/android/mms/transaction/ReadRecTransaction;->finishTransaction()V

    throw v6
.end method
