.class public Lcom/android/mms/transaction/SendTransaction;
.super Lcom/android/mms/transaction/Transaction;
.source "SendTransaction.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final DEBUG:Z

.field private static final LOCAL_LOG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 71
    sput-boolean v0, Lcom/android/mms/transaction/SendTransaction;->DEBUG:Z

    .line 72
    sget-boolean v1, Lcom/android/mms/transaction/SendTransaction;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "Mms:transaction"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/mms/transaction/SendTransaction;->LOCAL_LOG:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "transId"    # I
    .param p3, "connectionSettings"    # Lcom/android/mms/transaction/TransactionSettings;
    .param p4, "uri"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/transaction/Transaction;-><init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;)V

    .line 81
    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/Transaction;->mUri:Landroid/net/Uri;

    .line 82
    iput-object p4, p0, Lcom/android/mms/transaction/Transaction;->mId:Ljava/lang/String;

    .line 84
    iget-object v0, p0, Lcom/android/mms/transaction/Transaction;->mId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/transaction/Transaction;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_1

    .line 85
    :cond_0
    sget-object v0, Lcom/android/mms/transaction/Transaction$Failure;->INTERNAL:Lcom/android/mms/transaction/Transaction$Failure;

    invoke-virtual {p0, v0}, Lcom/android/mms/transaction/SendTransaction;->notifyFailure(Lcom/android/mms/transaction/Transaction$Failure;)V

    .line 88
    :cond_1
    sget-boolean v0, Lcom/android/mms/transaction/SendTransaction;->LOCAL_LOG:Z

    if-eqz v0, :cond_2

    .line 89
    const-string v0, "SendTransaction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new SendTransaction, uri="

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

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_2
    return-void
.end method

.method public constructor <init>(Lcom/android/mms/transaction/SendTransaction;)V
    .locals 0
    .param p1, "transaction"    # Lcom/android/mms/transaction/SendTransaction;

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/Transaction;-><init>(Lcom/android/mms/transaction/Transaction;)V

    .line 96
    return-void
.end method

.method private addPlusPrefix(Lcom/google/android/mms/pdu/SendReq;Ljava/lang/String;)V
    .locals 9
    .param p1, "sendReq"    # Lcom/google/android/mms/pdu/SendReq;
    .param p2, "lineNumber"    # Ljava/lang/String;

    .prologue
    .line 429
    sget-boolean v6, Lcom/android/mms/transaction/SendTransaction;->LOCAL_LOG:Z

    if-eqz v6, :cond_0

    .line 430
    const-string v6, "SendTransaction"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addPlusPrefix, lineNumber="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsCountryCode()Ljava/lang/String;

    move-result-object v1

    .line 434
    .local v1, "mmsCountryCode":Ljava/lang/String;
    if-eqz p2, :cond_2

    .line 435
    if-eqz v1, :cond_1

    .line 437
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 438
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 443
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "+"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 444
    new-instance v6, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v6, p2}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Lcom/google/android/mms/pdu/SendReq;->setFrom(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 445
    sget-boolean v6, Lcom/android/mms/transaction/SendTransaction;->LOCAL_LOG:Z

    if-eqz v6, :cond_2

    .line 446
    const-string v6, "SendTransaction"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addPlusPrefix, lineNumber="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/SendReq;->getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v4

    .line 453
    .local v4, "recipientNumbers":[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v4, :cond_6

    .line 454
    array-length v2, v4

    .line 455
    .local v2, "nNumberCount":I
    if-lez v2, :cond_6

    .line 456
    new-array v3, v2, [Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 457
    .local v3, "newNumbers":[Lcom/google/android/mms/pdu/EncodedStringValue;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_5

    .line 458
    aget-object v6, v4, v0

    invoke-virtual {v6}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v5

    .line 463
    .local v5, "toNumber":Ljava/lang/String;
    invoke-static {v5}, Lcom/android/mms/ui/MessageUtils;->isMessagableNumber(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "+"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x9

    if-le v6, v7, :cond_4

    .line 466
    if-eqz v1, :cond_3

    invoke-virtual {v5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 468
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 470
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "+"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 471
    sget-boolean v6, Lcom/android/mms/transaction/SendTransaction;->LOCAL_LOG:Z

    if-eqz v6, :cond_4

    .line 472
    const-string v6, "SendTransaction"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addPlusPrefix, toNumber="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    :cond_4
    new-instance v6, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v6, v5}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    aput-object v6, v3, v0

    .line 457
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 478
    .end local v5    # "toNumber":Ljava/lang/String;
    :cond_5
    invoke-virtual {p1, v3}, Lcom/google/android/mms/pdu/SendReq;->setTo([Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 482
    .end local v0    # "i":I
    .end local v2    # "nNumberCount":I
    .end local v3    # "newNumbers":[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_6
    return-void
.end method

.method private needsAutomaticResize(Landroid/net/Uri;)Z
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 374
    iget-object v0, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-array v3, v9, [Ljava/lang/String;

    const-string v2, "image_resize_status"

    aput-object v2, v3, v10

    move-object v2, p1

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 379
    .local v7, "c":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 380
    .local v8, "imageResizeStatus":I
    if-eqz v7, :cond_1

    .line 382
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 386
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 390
    :cond_1
    if-ne v8, v9, :cond_3

    .line 391
    .local v9, "result":Z
    :goto_0
    sget-boolean v0, Lcom/android/mms/transaction/SendTransaction;->LOCAL_LOG:Z

    if-eqz v0, :cond_2

    .line 392
    const-string v0, "SendTransaction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "needsAutomaticResize, uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    :cond_2
    return v9

    .line 386
    .end local v9    # "result":Z
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_3
    move v9, v10

    .line 390
    goto :goto_0
.end method

.method private sendMmsSendingStatusBroadcast(Landroid/content/Context;Z)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "success"    # Z

    .prologue
    .line 346
    iget-object v2, p0, Lcom/android/mms/transaction/Transaction;->mUri:Landroid/net/Uri;

    if-nez v2, :cond_0

    .line 360
    :goto_0
    return-void

    .line 350
    :cond_0
    iget-object v2, p0, Lcom/android/mms/transaction/Transaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 354
    .local v1, "messageId":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.motorola.messaging.intent.SEND_STATUS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 355
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "type"

    const-string v3, "MMS_SENT"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 356
    const-string v2, "status"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 357
    const-string v2, "id"

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 359
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private setAutomaticResize()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 363
    sget-boolean v0, Lcom/android/mms/transaction/SendTransaction;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 364
    const-string v0, "SendTransaction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAutomaticResize, uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/transaction/Transaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :cond_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 368
    .local v3, "values":Landroid/content/ContentValues;
    const-string v0, "image_resize_status"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 369
    iget-object v0, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/transaction/Transaction;->mUri:Landroid/net/Uri;

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 371
    return-void
.end method

.method private treatNetworkResponseStatus(I)Z
    .locals 4
    .param p1, "respStatus"    # I

    .prologue
    .line 400
    const/16 v1, 0x80

    if-ne p1, v1, :cond_1

    const/4 v0, 0x1

    .line 402
    .local v0, "result":Z
    :goto_0
    if-nez v0, :cond_0

    .line 403
    const-string v1, "SendTransaction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MMS-STATUS - MMSC error, response status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    sget-object v1, Lcom/android/mms/transaction/Transaction$Failure;->NETWORK:Lcom/android/mms/transaction/Transaction$Failure;

    invoke-virtual {p0, v1}, Lcom/android/mms/transaction/SendTransaction;->notifyFailure(Lcom/android/mms/transaction/Transaction$Failure;)V

    .line 406
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/SendTransaction;->updateStatus(I)V

    .line 409
    :cond_0
    return v0

    .line 400
    .end local v0    # "result":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateStatus(I)V
    .locals 6
    .param p1, "status"    # I

    .prologue
    const/4 v4, 0x0

    .line 413
    sget-boolean v0, Lcom/android/mms/transaction/SendTransaction;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 414
    const-string v0, "SendTransaction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateStatus, status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :cond_0
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 418
    .local v3, "values":Landroid/content/ContentValues;
    const-string v0, "resp_st"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 419
    iget-object v0, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/transaction/Transaction;->mUri:Landroid/net/Uri;

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 421
    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    .prologue
    .line 425
    const/4 v0, 0x2

    return v0
.end method

.method public process()V
    .locals 2

    .prologue
    .line 100
    invoke-static {}, Lcom/android/mms/concurrent/TaskManager;->getInstance()Lcom/android/mms/concurrent/TaskManager;

    move-result-object v0

    const-string v1, "send_transaction"

    invoke-virtual {v0, p0, v1}, Lcom/android/mms/concurrent/TaskManager;->runHighPriorityTask(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public run()V
    .locals 29

    .prologue
    .line 104
    sget-boolean v2, Lcom/android/mms/transaction/SendTransaction;->LOCAL_LOG:Z

    if-eqz v2, :cond_0

    .line 105
    const-string v2, "SendTransaction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MMS-THREAD run - START, thread: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_0
    sget-boolean v2, Lcom/android/mms/transaction/SendTransaction;->LOCAL_LOG:Z

    if-eqz v2, :cond_1

    .line 111
    const-string v2, "SendTransaction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MMS-STATUS - Starting transmission, transaction="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_1
    const/16 v22, 0x0

    .line 117
    .local v22, "sendReq":Lcom/google/android/mms/pdu/SendReq;
    const/16 v18, 0x0

    .line 120
    .local v18, "resize":Z
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/mms/transaction/Transaction;->mStartedTime:J

    .line 122
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v2}, Lcom/android/mms/transaction/TransactionState;->getState()Lcom/android/mms/transaction/Transaction$State;

    move-result-object v2

    sget-object v3, Lcom/android/mms/transaction/Transaction$State;->FAILED:Lcom/android/mms/transaction/Transaction$State;

    if-ne v2, v3, :cond_5

    .line 123
    const-string v2, "SendTransaction"

    const-string v3, "MMS-STATUS - Transaction aborted"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 323
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v2}, Lcom/android/mms/transaction/TransactionState;->getState()Lcom/android/mms/transaction/Transaction$State;

    move-result-object v2

    sget-object v4, Lcom/android/mms/transaction/Transaction$State;->SUCCESS:Lcom/android/mms/transaction/Transaction$State;

    if-ne v2, v4, :cond_4

    const/4 v2, 0x1

    :goto_0
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lcom/android/mms/transaction/SendTransaction;->sendMmsSendingStatusBroadcast(Landroid/content/Context;Z)V

    .line 326
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mUri:Landroid/net/Uri;

    if-eqz v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SendTransaction;->getFailedReason()Lcom/android/mms/transaction/Transaction$Failure;

    move-result-object v2

    sget-object v3, Lcom/android/mms/transaction/Transaction$Failure;->TRANSACTION_TIMEOUT:Lcom/android/mms/transaction/Transaction$Failure;

    if-ne v2, v3, :cond_2

    if-nez v18, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsMaximumPictureSizeForRetry()I

    move-result v2

    if-eqz v2, :cond_2

    .line 330
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, v22

    invoke-static {v2, v0}, Lcom/android/mms/ui/UriImage;->canResize(Landroid/content/Context;Lcom/google/android/mms/pdu/SendReq;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 331
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/SendTransaction;->setAutomaticResize()V

    .line 335
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SendTransaction;->finishTransaction()V

    .line 343
    :cond_3
    :goto_1
    return-void

    .line 323
    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    .line 127
    :cond_5
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SendTransaction;->hasValidApn()Z

    move-result v2

    if-nez v2, :cond_8

    .line 128
    const-string v2, "SendTransaction"

    const-string v3, "MMS-STATUS - Transaction aborted, invalid APN"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    sget-object v2, Lcom/android/mms/transaction/Transaction$Failure;->TEMPORARY:Lcom/android/mms/transaction/Transaction$Failure;

    const-string v3, "Invalid APN"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/mms/transaction/SendTransaction;->notifyFailure(Lcom/android/mms/transaction/Transaction$Failure;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 323
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v2}, Lcom/android/mms/transaction/TransactionState;->getState()Lcom/android/mms/transaction/Transaction$State;

    move-result-object v2

    sget-object v4, Lcom/android/mms/transaction/Transaction$State;->SUCCESS:Lcom/android/mms/transaction/Transaction$State;

    if-ne v2, v4, :cond_7

    const/4 v2, 0x1

    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lcom/android/mms/transaction/SendTransaction;->sendMmsSendingStatusBroadcast(Landroid/content/Context;Z)V

    .line 326
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mUri:Landroid/net/Uri;

    if-eqz v2, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SendTransaction;->getFailedReason()Lcom/android/mms/transaction/Transaction$Failure;

    move-result-object v2

    sget-object v3, Lcom/android/mms/transaction/Transaction$Failure;->TRANSACTION_TIMEOUT:Lcom/android/mms/transaction/Transaction$Failure;

    if-ne v2, v3, :cond_6

    if-nez v18, :cond_6

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsMaximumPictureSizeForRetry()I

    move-result v2

    if-eqz v2, :cond_6

    .line 330
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, v22

    invoke-static {v2, v0}, Lcom/android/mms/ui/UriImage;->canResize(Landroid/content/Context;Lcom/google/android/mms/pdu/SendReq;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 331
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/SendTransaction;->setAutomaticResize()V

    .line 335
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SendTransaction;->finishTransaction()V

    goto :goto_1

    .line 323
    :cond_7
    const/4 v2, 0x0

    goto :goto_2

    .line 134
    :cond_8
    :try_start_2
    invoke-static {}, Lcom/android/mms/util/RateController;->getInstance()Lcom/android/mms/util/RateController;

    move-result-object v16

    .line 135
    .local v16, "rateCtlr":Lcom/android/mms/util/RateController;
    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/util/RateController;->isLimitSurpassed()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/util/RateController;->isAllowedByUser()Z

    move-result v2

    if-nez v2, :cond_b

    .line 136
    const-string v2, "SendTransaction"

    const-string v3, "MMS-STATUS - Sending rate limit surpassed"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    sget-object v2, Lcom/android/mms/transaction/Transaction$Failure;->TEMPORARY:Lcom/android/mms/transaction/Transaction$Failure;

    const-string v3, "Sending rate limit surpassed"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/mms/transaction/SendTransaction;->notifyFailure(Lcom/android/mms/transaction/Transaction$Failure;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 323
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v2}, Lcom/android/mms/transaction/TransactionState;->getState()Lcom/android/mms/transaction/Transaction$State;

    move-result-object v2

    sget-object v4, Lcom/android/mms/transaction/Transaction$State;->SUCCESS:Lcom/android/mms/transaction/Transaction$State;

    if-ne v2, v4, :cond_a

    const/4 v2, 0x1

    :goto_3
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lcom/android/mms/transaction/SendTransaction;->sendMmsSendingStatusBroadcast(Landroid/content/Context;Z)V

    .line 326
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mUri:Landroid/net/Uri;

    if-eqz v2, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SendTransaction;->getFailedReason()Lcom/android/mms/transaction/Transaction$Failure;

    move-result-object v2

    sget-object v3, Lcom/android/mms/transaction/Transaction$Failure;->TRANSACTION_TIMEOUT:Lcom/android/mms/transaction/Transaction$Failure;

    if-ne v2, v3, :cond_9

    if-nez v18, :cond_9

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsMaximumPictureSizeForRetry()I

    move-result v2

    if-eqz v2, :cond_9

    .line 330
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, v22

    invoke-static {v2, v0}, Lcom/android/mms/ui/UriImage;->canResize(Landroid/content/Context;Lcom/google/android/mms/pdu/SendReq;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 331
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/SendTransaction;->setAutomaticResize()V

    .line 335
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SendTransaction;->finishTransaction()V

    goto/16 :goto_1

    .line 323
    :cond_a
    const/4 v2, 0x0

    goto :goto_3

    .line 143
    :cond_b
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v15

    .line 144
    .local v15, "persister":Lcom/google/android/mms/pdu/PduPersister;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v15, v2}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/google/android/mms/pdu/SendReq;

    move-object/from16 v22, v0

    .line 146
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsMaximumPictureSizeForRetry()I

    move-result v2

    if-eqz v2, :cond_c

    .line 147
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/mms/transaction/SendTransaction;->needsAutomaticResize(Landroid/net/Uri;)Z

    move-result v18

    .line 148
    const/4 v2, 0x1

    move/from16 v0, v18

    if-ne v0, v2, :cond_c

    .line 149
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mUri:Landroid/net/Uri;

    move-object/from16 v0, v22

    invoke-static {v2, v3, v0}, Lcom/android/mms/ui/UriImage;->resizeImage(Landroid/content/Context;Landroid/net/Uri;Lcom/google/android/mms/pdu/SendReq;)V

    .line 154
    :cond_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v6, 0x3e8

    div-long v10, v2, v6

    .line 155
    .local v10, "date":J
    move-object/from16 v0, v22

    invoke-virtual {v0, v10, v11}, Lcom/google/android/mms/pdu/SendReq;->setDate(J)V

    .line 158
    new-instance v5, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v5, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 159
    .local v5, "values":Landroid/content/ContentValues;
    const-string v2, "date"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 160
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mUri:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 163
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsFromFormat()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 194
    sget-object v2, Lcom/android/mms/transaction/Transaction$Failure;->INTERNAL:Lcom/android/mms/transaction/Transaction$Failure;

    const-string v3, "invalid from format"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/mms/transaction/SendTransaction;->notifyFailure(Lcom/android/mms/transaction/Transaction$Failure;Ljava/lang/String;)V

    .line 201
    :cond_d
    :goto_4
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mUri:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-wide v26

    .line 202
    .local v26, "tokenKey":J
    const/4 v8, 0x0

    .line 203
    .local v8, "conf":Lcom/google/android/mms/pdu/SendConf;
    const/16 v19, 0x81

    .line 205
    .local v19, "respStatus":I
    const/4 v2, 0x1

    :try_start_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsNoProgressTimeout()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/mms/transaction/SendTransaction;->startTimeout(II)V

    .line 207
    const/4 v2, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsTransmissionTimeout()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/mms/transaction/SendTransaction;->startTimeout(II)V

    .line 209
    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/util/SendingProgressTokenManager;->get(Ljava/lang/Object;)J

    move-result-wide v2

    new-instance v4, Lcom/google/android/mms/pdu/PduComposer;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, v22

    invoke-direct {v4, v6, v0}, Lcom/google/android/mms/pdu/PduComposer;-><init>(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)V

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduComposer;->make()[B

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/mms/transaction/SendTransaction;->sendPdu(J[B)[B

    move-result-object v21

    .line 212
    .local v21, "response":[B
    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/util/SendingProgressTokenManager;->remove(Ljava/lang/Object;)V

    .line 213
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SendTransaction;->stopTimeouts()V

    .line 215
    if-nez v21, :cond_15

    .line 216
    const-string v2, "SendTransaction"

    const-string v3, "MMS-STATUS - sendPdu failed"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Lorg/apache/http/HttpException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 323
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v2}, Lcom/android/mms/transaction/TransactionState;->getState()Lcom/android/mms/transaction/Transaction$State;

    move-result-object v2

    sget-object v4, Lcom/android/mms/transaction/Transaction$State;->SUCCESS:Lcom/android/mms/transaction/Transaction$State;

    if-ne v2, v4, :cond_14

    const/4 v2, 0x1

    :goto_5
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lcom/android/mms/transaction/SendTransaction;->sendMmsSendingStatusBroadcast(Landroid/content/Context;Z)V

    .line 326
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mUri:Landroid/net/Uri;

    if-eqz v2, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SendTransaction;->getFailedReason()Lcom/android/mms/transaction/Transaction$Failure;

    move-result-object v2

    sget-object v3, Lcom/android/mms/transaction/Transaction$Failure;->TRANSACTION_TIMEOUT:Lcom/android/mms/transaction/Transaction$Failure;

    if-ne v2, v3, :cond_e

    if-nez v18, :cond_e

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsMaximumPictureSizeForRetry()I

    move-result v2

    if-eqz v2, :cond_e

    .line 330
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, v22

    invoke-static {v2, v0}, Lcom/android/mms/ui/UriImage;->canResize(Landroid/content/Context;Lcom/google/android/mms/pdu/SendReq;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 331
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/SendTransaction;->setAutomaticResize()V

    .line 335
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SendTransaction;->finishTransaction()V

    goto/16 :goto_1

    .line 171
    .end local v8    # "conf":Lcom/google/android/mms/pdu/SendConf;
    .end local v19    # "respStatus":I
    .end local v21    # "response":[B
    .end local v26    # "tokenKey":J
    :pswitch_1
    :try_start_5
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getLocalNumber()Ljava/lang/String;

    move-result-object v13

    .line 172
    .local v13, "lineNumber":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 173
    const-string v2, "+"

    invoke-virtual {v13, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 174
    const/4 v2, 0x1

    invoke-virtual {v13, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 177
    :cond_f
    new-instance v2, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v2, v13}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/google/android/mms/pdu/SendReq;->setFrom(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 178
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsNumberPlusPrefixEnabled()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_d

    .line 179
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v13}, Lcom/android/mms/transaction/SendTransaction;->addPlusPrefix(Lcom/google/android/mms/pdu/SendReq;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_4

    .line 313
    .end local v5    # "values":Landroid/content/ContentValues;
    .end local v10    # "date":J
    .end local v13    # "lineNumber":Ljava/lang/String;
    .end local v15    # "persister":Lcom/google/android/mms/pdu/PduPersister;
    .end local v16    # "rateCtlr":Lcom/android/mms/util/RateController;
    :catch_0
    move-exception v25

    .line 314
    .local v25, "t":Ljava/lang/Throwable;
    :try_start_6
    const-string v2, "SendTransaction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MMS-STATUS generic exception - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SendTransaction;->stopTimeouts()V

    .line 319
    const/16 v2, 0x81

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/mms/transaction/SendTransaction;->updateStatus(I)V

    .line 320
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/SendTransaction;->treatException(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 323
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v2}, Lcom/android/mms/transaction/TransactionState;->getState()Lcom/android/mms/transaction/Transaction$State;

    move-result-object v2

    sget-object v4, Lcom/android/mms/transaction/Transaction$State;->SUCCESS:Lcom/android/mms/transaction/Transaction$State;

    if-ne v2, v4, :cond_2e

    const/4 v2, 0x1

    :goto_6
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lcom/android/mms/transaction/SendTransaction;->sendMmsSendingStatusBroadcast(Landroid/content/Context;Z)V

    .line 326
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mUri:Landroid/net/Uri;

    if-eqz v2, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SendTransaction;->getFailedReason()Lcom/android/mms/transaction/Transaction$Failure;

    move-result-object v2

    sget-object v3, Lcom/android/mms/transaction/Transaction$Failure;->TRANSACTION_TIMEOUT:Lcom/android/mms/transaction/Transaction$Failure;

    if-ne v2, v3, :cond_10

    if-nez v18, :cond_10

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsMaximumPictureSizeForRetry()I

    move-result v2

    if-eqz v2, :cond_10

    .line 330
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, v22

    invoke-static {v2, v0}, Lcom/android/mms/ui/UriImage;->canResize(Landroid/content/Context;Lcom/google/android/mms/pdu/SendReq;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 331
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/SendTransaction;->setAutomaticResize()V

    .line 335
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SendTransaction;->finishTransaction()V

    goto/16 :goto_1

    .line 187
    .end local v25    # "t":Ljava/lang/Throwable;
    .restart local v5    # "values":Landroid/content/ContentValues;
    .restart local v10    # "date":J
    .restart local v13    # "lineNumber":Ljava/lang/String;
    .restart local v15    # "persister":Lcom/google/android/mms/pdu/PduPersister;
    .restart local v16    # "rateCtlr":Lcom/android/mms/util/RateController;
    :cond_11
    :try_start_7
    sget-object v2, Lcom/android/mms/transaction/Transaction$Failure;->TEMPORARY:Lcom/android/mms/transaction/Transaction$Failure;

    const-string v3, "invalid from"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/mms/transaction/SendTransaction;->notifyFailure(Lcom/android/mms/transaction/Transaction$Failure;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 323
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v2}, Lcom/android/mms/transaction/TransactionState;->getState()Lcom/android/mms/transaction/Transaction$State;

    move-result-object v2

    sget-object v4, Lcom/android/mms/transaction/Transaction$State;->SUCCESS:Lcom/android/mms/transaction/Transaction$State;

    if-ne v2, v4, :cond_13

    const/4 v2, 0x1

    :goto_7
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lcom/android/mms/transaction/SendTransaction;->sendMmsSendingStatusBroadcast(Landroid/content/Context;Z)V

    .line 326
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mUri:Landroid/net/Uri;

    if-eqz v2, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SendTransaction;->getFailedReason()Lcom/android/mms/transaction/Transaction$Failure;

    move-result-object v2

    sget-object v3, Lcom/android/mms/transaction/Transaction$Failure;->TRANSACTION_TIMEOUT:Lcom/android/mms/transaction/Transaction$Failure;

    if-ne v2, v3, :cond_12

    if-nez v18, :cond_12

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsMaximumPictureSizeForRetry()I

    move-result v2

    if-eqz v2, :cond_12

    .line 330
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, v22

    invoke-static {v2, v0}, Lcom/android/mms/ui/UriImage;->canResize(Landroid/content/Context;Lcom/google/android/mms/pdu/SendReq;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 331
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/SendTransaction;->setAutomaticResize()V

    .line 335
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SendTransaction;->finishTransaction()V

    goto/16 :goto_1

    .line 323
    :cond_13
    const/4 v2, 0x0

    goto :goto_7

    .end local v13    # "lineNumber":Ljava/lang/String;
    .restart local v8    # "conf":Lcom/google/android/mms/pdu/SendConf;
    .restart local v19    # "respStatus":I
    .restart local v21    # "response":[B
    .restart local v26    # "tokenKey":J
    :cond_14
    const/4 v2, 0x0

    goto/16 :goto_5

    .line 220
    :cond_15
    :try_start_8
    const-string v2, "Mms:transaction"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 221
    new-instance v20, Ljava/lang/String;

    invoke-direct/range {v20 .. v21}, Ljava/lang/String;-><init>([B)V

    .line 222
    .local v20, "respStr":Ljava/lang/String;
    const-string v2, "SendTransaction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SendTransaction] run: send mms msg ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), resp="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    .end local v20    # "respStr":Ljava/lang/String;
    :cond_16
    new-instance v2, Lcom/google/android/mms/pdu/PduParser;

    move-object/from16 v0, v21

    invoke-direct {v2, v0}, Lcom/google/android/mms/pdu/PduParser;-><init>([B)V

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduParser;->parse()Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/google/android/mms/pdu/SendConf;

    move-object v8, v0

    .line 227
    if-nez v8, :cond_19

    .line 228
    const-string v2, "SendTransaction"

    const-string v3, "No M-Send.conf received."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Lorg/apache/http/HttpException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 323
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v2}, Lcom/android/mms/transaction/TransactionState;->getState()Lcom/android/mms/transaction/Transaction$State;

    move-result-object v2

    sget-object v4, Lcom/android/mms/transaction/Transaction$State;->SUCCESS:Lcom/android/mms/transaction/Transaction$State;

    if-ne v2, v4, :cond_18

    const/4 v2, 0x1

    :goto_8
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lcom/android/mms/transaction/SendTransaction;->sendMmsSendingStatusBroadcast(Landroid/content/Context;Z)V

    .line 326
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mUri:Landroid/net/Uri;

    if-eqz v2, :cond_17

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SendTransaction;->getFailedReason()Lcom/android/mms/transaction/Transaction$Failure;

    move-result-object v2

    sget-object v3, Lcom/android/mms/transaction/Transaction$Failure;->TRANSACTION_TIMEOUT:Lcom/android/mms/transaction/Transaction$Failure;

    if-ne v2, v3, :cond_17

    if-nez v18, :cond_17

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsMaximumPictureSizeForRetry()I

    move-result v2

    if-eqz v2, :cond_17

    .line 330
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, v22

    invoke-static {v2, v0}, Lcom/android/mms/ui/UriImage;->canResize(Landroid/content/Context;Lcom/google/android/mms/pdu/SendReq;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 331
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/SendTransaction;->setAutomaticResize()V

    .line 335
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SendTransaction;->finishTransaction()V

    goto/16 :goto_1

    .line 323
    :cond_18
    const/4 v2, 0x0

    goto :goto_8

    .line 234
    :cond_19
    :try_start_9
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/mms/pdu/SendReq;->getTransactionId()[B

    move-result-object v17

    .line 235
    .local v17, "reqId":[B
    invoke-virtual {v8}, Lcom/google/android/mms/pdu/SendConf;->getTransactionId()[B

    move-result-object v9

    .line 236
    .local v9, "confId":[B
    if-eqz v9, :cond_1a

    if-nez v17, :cond_1d

    .line 237
    :cond_1a
    const-string v2, "SendTransaction"

    const-string v3, "MMS-STATUS - Null transaction id"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Lorg/apache/http/HttpException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 323
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v2}, Lcom/android/mms/transaction/TransactionState;->getState()Lcom/android/mms/transaction/Transaction$State;

    move-result-object v2

    sget-object v4, Lcom/android/mms/transaction/Transaction$State;->SUCCESS:Lcom/android/mms/transaction/Transaction$State;

    if-ne v2, v4, :cond_1c

    const/4 v2, 0x1

    :goto_9
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lcom/android/mms/transaction/SendTransaction;->sendMmsSendingStatusBroadcast(Landroid/content/Context;Z)V

    .line 326
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mUri:Landroid/net/Uri;

    if-eqz v2, :cond_1b

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SendTransaction;->getFailedReason()Lcom/android/mms/transaction/Transaction$Failure;

    move-result-object v2

    sget-object v3, Lcom/android/mms/transaction/Transaction$Failure;->TRANSACTION_TIMEOUT:Lcom/android/mms/transaction/Transaction$Failure;

    if-ne v2, v3, :cond_1b

    if-nez v18, :cond_1b

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsMaximumPictureSizeForRetry()I

    move-result v2

    if-eqz v2, :cond_1b

    .line 330
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, v22

    invoke-static {v2, v0}, Lcom/android/mms/ui/UriImage;->canResize(Landroid/content/Context;Lcom/google/android/mms/pdu/SendReq;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 331
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/SendTransaction;->setAutomaticResize()V

    .line 335
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SendTransaction;->finishTransaction()V

    goto/16 :goto_1

    .line 323
    :cond_1c
    const/4 v2, 0x0

    goto :goto_9

    .line 241
    :cond_1d
    :try_start_a
    move-object/from16 v0, v17

    invoke-static {v0, v9}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_20

    .line 243
    const-string v2, "SendTransaction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MMS-STATUS - Inconsistent Transaction-ID: req="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", conf="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v9}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    sget-object v2, Lcom/android/mms/transaction/Transaction$Failure;->INTERNAL:Lcom/android/mms/transaction/Transaction$Failure;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/mms/transaction/SendTransaction;->notifyFailure(Lcom/android/mms/transaction/Transaction$Failure;)V
    :try_end_a
    .catch Lorg/apache/http/HttpException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 323
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v2}, Lcom/android/mms/transaction/TransactionState;->getState()Lcom/android/mms/transaction/Transaction$State;

    move-result-object v2

    sget-object v4, Lcom/android/mms/transaction/Transaction$State;->SUCCESS:Lcom/android/mms/transaction/Transaction$State;

    if-ne v2, v4, :cond_1f

    const/4 v2, 0x1

    :goto_a
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lcom/android/mms/transaction/SendTransaction;->sendMmsSendingStatusBroadcast(Landroid/content/Context;Z)V

    .line 326
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mUri:Landroid/net/Uri;

    if-eqz v2, :cond_1e

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SendTransaction;->getFailedReason()Lcom/android/mms/transaction/Transaction$Failure;

    move-result-object v2

    sget-object v3, Lcom/android/mms/transaction/Transaction$Failure;->TRANSACTION_TIMEOUT:Lcom/android/mms/transaction/Transaction$Failure;

    if-ne v2, v3, :cond_1e

    if-nez v18, :cond_1e

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsMaximumPictureSizeForRetry()I

    move-result v2

    if-eqz v2, :cond_1e

    .line 330
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, v22

    invoke-static {v2, v0}, Lcom/android/mms/ui/UriImage;->canResize(Landroid/content/Context;Lcom/google/android/mms/pdu/SendReq;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 331
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/SendTransaction;->setAutomaticResize()V

    .line 335
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SendTransaction;->finishTransaction()V

    goto/16 :goto_1

    .line 323
    :cond_1f
    const/4 v2, 0x0

    goto :goto_a

    .line 256
    :cond_20
    :try_start_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v15, v2}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/google/android/mms/pdu/SendReq;

    move-object/from16 v22, v0
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_1
    .catch Lorg/apache/http/HttpException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 269
    :try_start_c
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/mms/pdu/SendReq;->getDate()J

    move-result-wide v23

    .line 270
    .local v23, "storedDate":J
    cmp-long v2, v23, v10

    if-eqz v2, :cond_25

    .line 272
    const-string v2, "SendTransaction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MMS-STATUS - Inconsistent uri: mUri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", storedDate="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v23

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", sentDate="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    sget-object v2, Lcom/android/mms/transaction/Transaction$Failure;->INTERNAL:Lcom/android/mms/transaction/Transaction$Failure;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/mms/transaction/SendTransaction;->notifyFailure(Lcom/android/mms/transaction/Transaction$Failure;)V
    :try_end_c
    .catch Lorg/apache/http/HttpException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 323
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v2}, Lcom/android/mms/transaction/TransactionState;->getState()Lcom/android/mms/transaction/Transaction$State;

    move-result-object v2

    sget-object v4, Lcom/android/mms/transaction/Transaction$State;->SUCCESS:Lcom/android/mms/transaction/Transaction$State;

    if-ne v2, v4, :cond_24

    const/4 v2, 0x1

    :goto_b
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lcom/android/mms/transaction/SendTransaction;->sendMmsSendingStatusBroadcast(Landroid/content/Context;Z)V

    .line 326
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mUri:Landroid/net/Uri;

    if-eqz v2, :cond_21

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SendTransaction;->getFailedReason()Lcom/android/mms/transaction/Transaction$Failure;

    move-result-object v2

    sget-object v3, Lcom/android/mms/transaction/Transaction$Failure;->TRANSACTION_TIMEOUT:Lcom/android/mms/transaction/Transaction$Failure;

    if-ne v2, v3, :cond_21

    if-nez v18, :cond_21

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsMaximumPictureSizeForRetry()I

    move-result v2

    if-eqz v2, :cond_21

    .line 330
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, v22

    invoke-static {v2, v0}, Lcom/android/mms/ui/UriImage;->canResize(Landroid/content/Context;Lcom/google/android/mms/pdu/SendReq;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 331
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/SendTransaction;->setAutomaticResize()V

    .line 335
    :cond_21
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SendTransaction;->finishTransaction()V

    goto/16 :goto_1

    .line 257
    .end local v23    # "storedDate":J
    :catch_1
    move-exception v12

    .line 259
    .local v12, "e":Ljava/lang/Throwable;
    :try_start_d
    const-string v2, "SendTransaction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MMS-STATUS - Inconsistent uri: mUri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " after sending. Original message was probably deleted."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    sget-object v2, Lcom/android/mms/transaction/Transaction$Failure;->INTERNAL:Lcom/android/mms/transaction/Transaction$Failure;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/mms/transaction/SendTransaction;->notifyFailure(Lcom/android/mms/transaction/Transaction$Failure;)V
    :try_end_d
    .catch Lorg/apache/http/HttpException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 323
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v2}, Lcom/android/mms/transaction/TransactionState;->getState()Lcom/android/mms/transaction/Transaction$State;

    move-result-object v2

    sget-object v4, Lcom/android/mms/transaction/Transaction$State;->SUCCESS:Lcom/android/mms/transaction/Transaction$State;

    if-ne v2, v4, :cond_23

    const/4 v2, 0x1

    :goto_c
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lcom/android/mms/transaction/SendTransaction;->sendMmsSendingStatusBroadcast(Landroid/content/Context;Z)V

    .line 326
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mUri:Landroid/net/Uri;

    if-eqz v2, :cond_22

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SendTransaction;->getFailedReason()Lcom/android/mms/transaction/Transaction$Failure;

    move-result-object v2

    sget-object v3, Lcom/android/mms/transaction/Transaction$Failure;->TRANSACTION_TIMEOUT:Lcom/android/mms/transaction/Transaction$Failure;

    if-ne v2, v3, :cond_22

    if-nez v18, :cond_22

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsMaximumPictureSizeForRetry()I

    move-result v2

    if-eqz v2, :cond_22

    .line 330
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, v22

    invoke-static {v2, v0}, Lcom/android/mms/ui/UriImage;->canResize(Landroid/content/Context;Lcom/google/android/mms/pdu/SendReq;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 331
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/SendTransaction;->setAutomaticResize()V

    .line 335
    :cond_22
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SendTransaction;->finishTransaction()V

    goto/16 :goto_1

    .line 323
    :cond_23
    const/4 v2, 0x0

    goto :goto_c

    .end local v12    # "e":Ljava/lang/Throwable;
    .restart local v23    # "storedDate":J
    :cond_24
    const/4 v2, 0x0

    goto/16 :goto_b

    .line 283
    :cond_25
    :try_start_e
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/mms/transaction/SendTransaction;->getResponseStatus(Lcom/google/android/mms/pdu/SendConf;)I

    move-result v19

    .line 284
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/SendTransaction;->treatNetworkResponseStatus(I)Z
    :try_end_e
    .catch Lorg/apache/http/HttpException; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2a

    .line 323
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v2}, Lcom/android/mms/transaction/TransactionState;->getState()Lcom/android/mms/transaction/Transaction$State;

    move-result-object v2

    sget-object v4, Lcom/android/mms/transaction/Transaction$State;->SUCCESS:Lcom/android/mms/transaction/Transaction$State;

    if-ne v2, v4, :cond_27

    const/4 v2, 0x1

    :goto_d
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lcom/android/mms/transaction/SendTransaction;->sendMmsSendingStatusBroadcast(Landroid/content/Context;Z)V

    .line 326
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mUri:Landroid/net/Uri;

    if-eqz v2, :cond_26

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SendTransaction;->getFailedReason()Lcom/android/mms/transaction/Transaction$Failure;

    move-result-object v2

    sget-object v3, Lcom/android/mms/transaction/Transaction$Failure;->TRANSACTION_TIMEOUT:Lcom/android/mms/transaction/Transaction$Failure;

    if-ne v2, v3, :cond_26

    if-nez v18, :cond_26

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsMaximumPictureSizeForRetry()I

    move-result v2

    if-eqz v2, :cond_26

    .line 330
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, v22

    invoke-static {v2, v0}, Lcom/android/mms/ui/UriImage;->canResize(Landroid/content/Context;Lcom/google/android/mms/pdu/SendReq;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 331
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/SendTransaction;->setAutomaticResize()V

    .line 335
    :cond_26
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SendTransaction;->finishTransaction()V

    goto/16 :goto_1

    .line 323
    :cond_27
    const/4 v2, 0x0

    goto :goto_d

    .line 287
    .end local v9    # "confId":[B
    .end local v17    # "reqId":[B
    .end local v21    # "response":[B
    .end local v23    # "storedDate":J
    :catch_2
    move-exception v25

    .line 288
    .local v25, "t":Lorg/apache/http/HttpException;
    :try_start_f
    const-string v2, "SendTransaction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MMS-STATUS - exception, stack="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v25 .. v25}, Lorg/apache/http/HttpException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SendTransaction;->stopTimeouts()V

    .line 293
    const/16 v2, 0x81

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/mms/transaction/SendTransaction;->updateStatus(I)V

    .line 294
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/SendTransaction;->treatException(Ljava/lang/Throwable;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 323
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v2}, Lcom/android/mms/transaction/TransactionState;->getState()Lcom/android/mms/transaction/Transaction$State;

    move-result-object v2

    sget-object v4, Lcom/android/mms/transaction/Transaction$State;->SUCCESS:Lcom/android/mms/transaction/Transaction$State;

    if-ne v2, v4, :cond_29

    const/4 v2, 0x1

    :goto_e
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lcom/android/mms/transaction/SendTransaction;->sendMmsSendingStatusBroadcast(Landroid/content/Context;Z)V

    .line 326
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mUri:Landroid/net/Uri;

    if-eqz v2, :cond_28

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SendTransaction;->getFailedReason()Lcom/android/mms/transaction/Transaction$Failure;

    move-result-object v2

    sget-object v3, Lcom/android/mms/transaction/Transaction$Failure;->TRANSACTION_TIMEOUT:Lcom/android/mms/transaction/Transaction$Failure;

    if-ne v2, v3, :cond_28

    if-nez v18, :cond_28

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsMaximumPictureSizeForRetry()I

    move-result v2

    if-eqz v2, :cond_28

    .line 330
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, v22

    invoke-static {v2, v0}, Lcom/android/mms/ui/UriImage;->canResize(Landroid/content/Context;Lcom/google/android/mms/pdu/SendReq;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 331
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/SendTransaction;->setAutomaticResize()V

    .line 335
    :cond_28
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SendTransaction;->finishTransaction()V

    goto/16 :goto_1

    .line 323
    :cond_29
    const/4 v2, 0x0

    goto :goto_e

    .line 298
    .end local v25    # "t":Lorg/apache/http/HttpException;
    .restart local v9    # "confId":[B
    .restart local v17    # "reqId":[B
    .restart local v21    # "response":[B
    .restart local v23    # "storedDate":J
    :cond_2a
    :try_start_10
    new-instance v5, Landroid/content/ContentValues;

    .end local v5    # "values":Landroid/content/ContentValues;
    const/4 v2, 0x3

    invoke-direct {v5, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 299
    .restart local v5    # "values":Landroid/content/ContentValues;
    const-string v2, "resp_st"

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 300
    invoke-virtual {v8}, Lcom/google/android/mms/pdu/SendConf;->getMessageId()[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v14

    .line 301
    .local v14, "messageId":Ljava/lang/String;
    const-string v2, "m_id"

    invoke-virtual {v5, v2, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    if-eqz v18, :cond_2b

    .line 303
    const-string v2, "image_resize_status"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 305
    :cond_2b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mUri:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 309
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mUri:Landroid/net/Uri;

    sget-object v3, Landroid/provider/Telephony$Mms$Sent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v15, v2, v3}, Lcom/google/android/mms/pdu/PduPersister;->move(Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v28

    .line 311
    .local v28, "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    sget-object v3, Lcom/android/mms/transaction/Transaction$State;->SUCCESS:Lcom/android/mms/transaction/Transaction$State;

    invoke-virtual {v2, v3}, Lcom/android/mms/transaction/TransactionState;->setState(Lcom/android/mms/transaction/Transaction$State;)V

    .line 312
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_0
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 323
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v2}, Lcom/android/mms/transaction/TransactionState;->getState()Lcom/android/mms/transaction/Transaction$State;

    move-result-object v2

    sget-object v4, Lcom/android/mms/transaction/Transaction$State;->SUCCESS:Lcom/android/mms/transaction/Transaction$State;

    if-ne v2, v4, :cond_2d

    const/4 v2, 0x1

    :goto_f
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lcom/android/mms/transaction/SendTransaction;->sendMmsSendingStatusBroadcast(Landroid/content/Context;Z)V

    .line 326
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mUri:Landroid/net/Uri;

    if-eqz v2, :cond_2c

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SendTransaction;->getFailedReason()Lcom/android/mms/transaction/Transaction$Failure;

    move-result-object v2

    sget-object v3, Lcom/android/mms/transaction/Transaction$Failure;->TRANSACTION_TIMEOUT:Lcom/android/mms/transaction/Transaction$Failure;

    if-ne v2, v3, :cond_2c

    if-nez v18, :cond_2c

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsMaximumPictureSizeForRetry()I

    move-result v2

    if-eqz v2, :cond_2c

    .line 330
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, v22

    invoke-static {v2, v0}, Lcom/android/mms/ui/UriImage;->canResize(Landroid/content/Context;Lcom/google/android/mms/pdu/SendReq;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 331
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/SendTransaction;->setAutomaticResize()V

    .line 335
    :cond_2c
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SendTransaction;->finishTransaction()V

    .line 338
    sget-boolean v2, Lcom/android/mms/transaction/SendTransaction;->LOCAL_LOG:Z

    if-eqz v2, :cond_3

    .line 339
    const-string v2, "SendTransaction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MMS-THREAD - run END, thread: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 323
    :cond_2d
    const/4 v2, 0x0

    goto :goto_f

    .end local v5    # "values":Landroid/content/ContentValues;
    .end local v8    # "conf":Lcom/google/android/mms/pdu/SendConf;
    .end local v9    # "confId":[B
    .end local v10    # "date":J
    .end local v14    # "messageId":Ljava/lang/String;
    .end local v15    # "persister":Lcom/google/android/mms/pdu/PduPersister;
    .end local v16    # "rateCtlr":Lcom/android/mms/util/RateController;
    .end local v17    # "reqId":[B
    .end local v19    # "respStatus":I
    .end local v21    # "response":[B
    .end local v23    # "storedDate":J
    .end local v26    # "tokenKey":J
    .end local v28    # "uri":Landroid/net/Uri;
    .local v25, "t":Ljava/lang/Throwable;
    :cond_2e
    const/4 v2, 0x0

    goto/16 :goto_6

    .end local v25    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    move-object v3, v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v2}, Lcom/android/mms/transaction/TransactionState;->getState()Lcom/android/mms/transaction/Transaction$State;

    move-result-object v2

    sget-object v6, Lcom/android/mms/transaction/Transaction$State;->SUCCESS:Lcom/android/mms/transaction/Transaction$State;

    if-ne v2, v6, :cond_30

    const/4 v2, 0x1

    :goto_10
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v2}, Lcom/android/mms/transaction/SendTransaction;->sendMmsSendingStatusBroadcast(Landroid/content/Context;Z)V

    .line 326
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mUri:Landroid/net/Uri;

    if-eqz v2, :cond_2f

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SendTransaction;->getFailedReason()Lcom/android/mms/transaction/Transaction$Failure;

    move-result-object v2

    sget-object v4, Lcom/android/mms/transaction/Transaction$Failure;->TRANSACTION_TIMEOUT:Lcom/android/mms/transaction/Transaction$Failure;

    if-ne v2, v4, :cond_2f

    if-nez v18, :cond_2f

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsMaximumPictureSizeForRetry()I

    move-result v2

    if-eqz v2, :cond_2f

    .line 330
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, v22

    invoke-static {v2, v0}, Lcom/android/mms/ui/UriImage;->canResize(Landroid/content/Context;Lcom/google/android/mms/pdu/SendReq;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 331
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/SendTransaction;->setAutomaticResize()V

    .line 335
    :cond_2f
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SendTransaction;->finishTransaction()V

    throw v3

    .line 323
    :cond_30
    const/4 v2, 0x0

    goto :goto_10

    .line 163
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
