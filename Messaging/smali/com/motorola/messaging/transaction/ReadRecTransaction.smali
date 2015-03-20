.class public Lcom/motorola/messaging/transaction/ReadRecTransaction;
.super Lcom/motorola/messaging/transaction/Transaction;
.source "ReadRecTransaction.java"


# static fields
.field private static final DEBUG:Z

.field private static final LOCAL_LOG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 47
    sput-boolean v0, Lcom/motorola/messaging/transaction/ReadRecTransaction;->DEBUG:Z

    .line 48
    sget-boolean v1, Lcom/motorola/messaging/transaction/ReadRecTransaction;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v1, :cond_0

    :goto_0
    sput-boolean v0, Lcom/motorola/messaging/transaction/ReadRecTransaction;->LOCAL_LOG:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/motorola/messaging/transaction/TransactionSettings;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "transId"    # I
    .param p3, "connectionSettings"    # Lcom/motorola/messaging/transaction/TransactionSettings;
    .param p4, "uri"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/motorola/messaging/transaction/Transaction;-><init>(Landroid/content/Context;ILcom/motorola/messaging/transaction/TransactionSettings;)V

    .line 53
    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/transaction/Transaction;->mUri:Landroid/net/Uri;

    .line 54
    iput-object p4, p0, Lcom/motorola/messaging/transaction/Transaction;->mId:Ljava/lang/String;

    .line 56
    iget-object v0, p0, Lcom/motorola/messaging/transaction/Transaction;->mId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/messaging/transaction/Transaction;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_1

    .line 57
    :cond_0
    sget-object v0, Lcom/motorola/messaging/transaction/Transaction$Failure;->INTERNAL:Lcom/motorola/messaging/transaction/Transaction$Failure;

    invoke-virtual {p0, v0}, Lcom/motorola/messaging/transaction/Transaction;->notifyFailure(Lcom/motorola/messaging/transaction/Transaction$Failure;)V

    .line 60
    :cond_1
    sget-boolean v0, Lcom/motorola/messaging/transaction/ReadRecTransaction;->LOCAL_LOG:Z

    if-eqz v0, :cond_2

    .line 61
    const-string v0, "ReadRecTransaction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new ReadRecTransaction, uri="

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

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :cond_2
    return-void
.end method

.method public constructor <init>(Lcom/motorola/messaging/transaction/ReadRecTransaction;)V
    .locals 0
    .param p1, "transaction"    # Lcom/motorola/messaging/transaction/ReadRecTransaction;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/motorola/messaging/transaction/Transaction;-><init>(Lcom/motorola/messaging/transaction/Transaction;)V

    .line 69
    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x3

    return v0
.end method

.method public process()V
    .locals 7

    .prologue
    .line 77
    iget-object v5, p0, Lcom/motorola/messaging/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/motorola/messaging/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/motorola/messaging/pdu/PduPersister;

    move-result-object v1

    .line 81
    .local v1, "persister":Lcom/motorola/messaging/pdu/PduPersister;
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/motorola/messaging/transaction/Transaction;->mStartedTime:J

    .line 83
    iget-object v5, p0, Lcom/motorola/messaging/transaction/Transaction;->mTransactionState:Lcom/motorola/messaging/transaction/TransactionState;

    invoke-virtual {v5}, Lcom/motorola/messaging/transaction/TransactionState;->getState()Lcom/motorola/messaging/transaction/Transaction$State;

    move-result-object v5

    sget-object v6, Lcom/motorola/messaging/transaction/Transaction$State;->FAILED:Lcom/motorola/messaging/transaction/Transaction$State;

    if-ne v5, v6, :cond_0

    .line 84
    new-instance v5, Lcom/motorola/messaging/util/MmsException;

    const-string v6, "MMS-STATUS - Transaction aborted"

    invoke-direct {v5, v6}, Lcom/motorola/messaging/util/MmsException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/HttpException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/motorola/messaging/util/MmsException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    const-string v5, "ReadRecTransaction"

    const-string v6, "Failed to send M-Read-Rec.Ind. (IO error)"

    invoke-static {v5, v6, v0}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    invoke-virtual {p0}, Lcom/motorola/messaging/transaction/Transaction;->finishTransaction()V

    .line 112
    return-void

    .line 87
    :cond_0
    :try_start_2
    invoke-virtual {p0}, Lcom/motorola/messaging/transaction/Transaction;->hasValidApn()Z

    move-result v5

    if-nez v5, :cond_1

    .line 88
    new-instance v5, Lcom/motorola/messaging/util/MmsException;

    const-string v6, "MMS-STATUS - Transaction aborted, invalid APN"

    invoke-direct {v5, v6}, Lcom/motorola/messaging/util/MmsException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/apache/http/HttpException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/motorola/messaging/util/MmsException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 103
    :catch_1
    move-exception v0

    .line 104
    .local v0, "e":Lorg/apache/http/HttpException;
    :try_start_3
    const-string v5, "ReadRecTransaction"

    const-string v6, "Failed to send M-Read-Rec.Ind. (http error)"

    invoke-static {v5, v6, v0}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 110
    .end local v0    # "e":Lorg/apache/http/HttpException;
    :catchall_0
    move-exception v5

    invoke-virtual {p0}, Lcom/motorola/messaging/transaction/Transaction;->finishTransaction()V

    throw v5

    .line 92
    :cond_1
    :try_start_4
    iget-object v5, p0, Lcom/motorola/messaging/transaction/Transaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v5}, Lcom/motorola/messaging/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/motorola/messaging/pdu/GenericPdu;

    move-result-object v3

    check-cast v3, Lcom/motorola/messaging/pdu/ReadRecInd;

    .line 95
    .local v3, "readRecInd":Lcom/motorola/messaging/pdu/ReadRecInd;
    new-instance v5, Lcom/motorola/messaging/pdu/PduComposer;

    iget-object v6, p0, Lcom/motorola/messaging/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6, v3}, Lcom/motorola/messaging/pdu/PduComposer;-><init>(Landroid/content/Context;Lcom/motorola/messaging/pdu/GenericPdu;)V

    invoke-virtual {v5}, Lcom/motorola/messaging/pdu/PduComposer;->make()[B

    move-result-object v2

    .line 96
    .local v2, "postingData":[B
    invoke-virtual {p0, v2}, Lcom/motorola/messaging/transaction/Transaction;->sendPdu([B)[B

    .line 98
    iget-object v5, p0, Lcom/motorola/messaging/transaction/Transaction;->mUri:Landroid/net/Uri;

    sget-object v6, Lcom/motorola/messaging/provider/Telephony$Mms$Sent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v5, v6}, Lcom/motorola/messaging/pdu/PduPersister;->move(Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    .line 99
    .local v4, "uri":Landroid/net/Uri;
    iget-object v5, p0, Lcom/motorola/messaging/transaction/Transaction;->mTransactionState:Lcom/motorola/messaging/transaction/TransactionState;

    sget-object v6, Lcom/motorola/messaging/transaction/Transaction$State;->SUCCESS:Lcom/motorola/messaging/transaction/Transaction$State;

    invoke-virtual {v5, v6}, Lcom/motorola/messaging/transaction/TransactionState;->setState(Lcom/motorola/messaging/transaction/Transaction$State;)V

    .line 100
    iget-object v5, p0, Lcom/motorola/messaging/transaction/Transaction;->mTransactionState:Lcom/motorola/messaging/transaction/TransactionState;

    invoke-virtual {v5, v4}, Lcom/motorola/messaging/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/apache/http/HttpException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/motorola/messaging/util/MmsException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 105
    .end local v2    # "postingData":[B
    .end local v3    # "readRecInd":Lcom/motorola/messaging/pdu/ReadRecInd;
    .end local v4    # "uri":Landroid/net/Uri;
    :catch_2
    move-exception v0

    .line 106
    .local v0, "e":Lcom/motorola/messaging/util/MmsException;
    :try_start_5
    const-string v5, "ReadRecTransaction"

    const-string v6, "Failed to load message from Outbox."

    invoke-static {v5, v6, v0}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 107
    .end local v0    # "e":Lcom/motorola/messaging/util/MmsException;
    :catch_3
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v5, "ReadRecTransaction"

    const-string v6, "MMS-STATUS - Unexpected RuntimeException."

    invoke-static {v5, v6, v0}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0
.end method
