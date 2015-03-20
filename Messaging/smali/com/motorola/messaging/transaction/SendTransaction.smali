.class public Lcom/motorola/messaging/transaction/SendTransaction;
.super Lcom/motorola/messaging/transaction/Transaction;
.source "SendTransaction.java"

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

    .line 64
    sput-boolean v0, Lcom/motorola/messaging/transaction/SendTransaction;->DEBUG:Z

    .line 65
    sget-boolean v1, Lcom/motorola/messaging/transaction/SendTransaction;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v1, :cond_0

    :goto_0
    sput-boolean v0, Lcom/motorola/messaging/transaction/SendTransaction;->LOCAL_LOG:Z

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
    .line 71
    invoke-direct {p0, p1, p2, p3}, Lcom/motorola/messaging/transaction/Transaction;-><init>(Landroid/content/Context;ILcom/motorola/messaging/transaction/TransactionSettings;)V

    .line 72
    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/transaction/Transaction;->mUri:Landroid/net/Uri;

    .line 73
    iput-object p4, p0, Lcom/motorola/messaging/transaction/Transaction;->mId:Ljava/lang/String;

    .line 75
    iget-object v0, p0, Lcom/motorola/messaging/transaction/Transaction;->mId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/messaging/transaction/Transaction;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_1

    .line 76
    :cond_0
    sget-object v0, Lcom/motorola/messaging/transaction/Transaction$Failure;->INTERNAL:Lcom/motorola/messaging/transaction/Transaction$Failure;

    invoke-virtual {p0, v0}, Lcom/motorola/messaging/transaction/Transaction;->notifyFailure(Lcom/motorola/messaging/transaction/Transaction$Failure;)V

    .line 79
    :cond_1
    sget-boolean v0, Lcom/motorola/messaging/transaction/SendTransaction;->LOCAL_LOG:Z

    if-eqz v0, :cond_2

    .line 80
    const-string v0, "SendTransaction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new SendTransaction, uri="

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

    .line 84
    :cond_2
    return-void
.end method

.method public constructor <init>(Lcom/motorola/messaging/transaction/SendTransaction;)V
    .locals 0
    .param p1, "transaction"    # Lcom/motorola/messaging/transaction/SendTransaction;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/motorola/messaging/transaction/Transaction;-><init>(Lcom/motorola/messaging/transaction/Transaction;)V

    .line 88
    return-void
.end method

.method private addPlusPrefix(Lcom/motorola/messaging/pdu/SendReq;Ljava/lang/String;)V
    .locals 9
    .param p1, "sendReq"    # Lcom/motorola/messaging/pdu/SendReq;
    .param p2, "lineNumber"    # Ljava/lang/String;

    .prologue
    .line 392
    sget-boolean v6, Lcom/motorola/messaging/transaction/SendTransaction;->LOCAL_LOG:Z

    if-eqz v6, :cond_0

    .line 393
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

    invoke-static {v6, v7}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    :cond_0
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getMmsCountryCode()Ljava/lang/String;

    move-result-object v1

    .line 398
    .local v1, "mmsCountryCode":Ljava/lang/String;
    if-eqz p2, :cond_2

    .line 399
    if-eqz v1, :cond_1

    .line 401
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 402
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 407
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

    .line 408
    new-instance v6, Lcom/motorola/messaging/pdu/EncodedStringValue;

    invoke-direct {v6, p2}, Lcom/motorola/messaging/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Lcom/motorola/messaging/pdu/GenericPdu;->setFrom(Lcom/motorola/messaging/pdu/EncodedStringValue;)V

    .line 409
    sget-boolean v6, Lcom/motorola/messaging/transaction/SendTransaction;->LOCAL_LOG:Z

    if-eqz v6, :cond_2

    .line 410
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

    invoke-static {v6, v7}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    :cond_2
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getMmsUseCCForRecipients()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 417
    invoke-virtual {p1}, Lcom/motorola/messaging/pdu/SendReq;->getCc()[Lcom/motorola/messaging/pdu/EncodedStringValue;

    move-result-object v4

    .line 421
    .local v4, "recipientNumbers":[Lcom/motorola/messaging/pdu/EncodedStringValue;
    :goto_0
    if-eqz v4, :cond_7

    .line 422
    array-length v2, v4

    .line 423
    .local v2, "nNumberCount":I
    if-lez v2, :cond_7

    .line 424
    new-array v3, v2, [Lcom/motorola/messaging/pdu/EncodedStringValue;

    .line 425
    .local v3, "newNumbers":[Lcom/motorola/messaging/pdu/EncodedStringValue;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_6

    .line 426
    aget-object v6, v4, v0

    invoke-virtual {v6}, Lcom/motorola/messaging/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v5

    .line 429
    .local v5, "toNumber":Ljava/lang/String;
    invoke-static {v5}, Lcom/motorola/messaging/contact/ContactUtils;->isMessagableNumber(Ljava/lang/String;)Z

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

    .line 430
    if-eqz v1, :cond_3

    invoke-virtual {v5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 431
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 433
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

    .line 434
    sget-boolean v6, Lcom/motorola/messaging/transaction/SendTransaction;->LOCAL_LOG:Z

    if-eqz v6, :cond_4

    .line 435
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

    invoke-static {v6, v7}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    :cond_4
    new-instance v6, Lcom/motorola/messaging/pdu/EncodedStringValue;

    invoke-direct {v6, v5}, Lcom/motorola/messaging/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    aput-object v6, v3, v0

    .line 425
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 419
    .end local v0    # "i":I
    .end local v2    # "nNumberCount":I
    .end local v3    # "newNumbers":[Lcom/motorola/messaging/pdu/EncodedStringValue;
    .end local v4    # "recipientNumbers":[Lcom/motorola/messaging/pdu/EncodedStringValue;
    .end local v5    # "toNumber":Ljava/lang/String;
    :cond_5
    invoke-virtual {p1}, Lcom/motorola/messaging/pdu/MultimediaMessagePdu;->getTo()[Lcom/motorola/messaging/pdu/EncodedStringValue;

    move-result-object v4

    .restart local v4    # "recipientNumbers":[Lcom/motorola/messaging/pdu/EncodedStringValue;
    goto :goto_0

    .line 440
    .restart local v0    # "i":I
    .restart local v2    # "nNumberCount":I
    .restart local v3    # "newNumbers":[Lcom/motorola/messaging/pdu/EncodedStringValue;
    :cond_6
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getMmsUseCCForRecipients()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 441
    invoke-virtual {p1, v3}, Lcom/motorola/messaging/pdu/SendReq;->setCc([Lcom/motorola/messaging/pdu/EncodedStringValue;)V

    .line 447
    .end local v0    # "i":I
    .end local v2    # "nNumberCount":I
    .end local v3    # "newNumbers":[Lcom/motorola/messaging/pdu/EncodedStringValue;
    :cond_7
    :goto_2
    return-void

    .line 443
    .restart local v0    # "i":I
    .restart local v2    # "nNumberCount":I
    .restart local v3    # "newNumbers":[Lcom/motorola/messaging/pdu/EncodedStringValue;
    :cond_8
    invoke-virtual {p1, v3}, Lcom/motorola/messaging/pdu/SendReq;->setTo([Lcom/motorola/messaging/pdu/EncodedStringValue;)V

    goto :goto_2
.end method

.method private needsAutomaticResize(Landroid/net/Uri;)Z
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 340
    iget-object v0, p0, Lcom/motorola/messaging/transaction/Transaction;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/motorola/messaging/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-array v3, v9, [Ljava/lang/String;

    const-string v2, "image_resize_status"

    aput-object v2, v3, v10

    move-object v2, p1

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Lcom/motorola/messaging/provider/SqliteManager;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 343
    .local v7, "c":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 344
    .local v8, "imageResizeStatus":I
    if-eqz v7, :cond_1

    .line 346
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 350
    :cond_0
    invoke-static {v7}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    .line 354
    :cond_1
    if-ne v8, v9, :cond_3

    .line 355
    .local v9, "result":Z
    :goto_0
    sget-boolean v0, Lcom/motorola/messaging/transaction/SendTransaction;->LOCAL_LOG:Z

    if-eqz v0, :cond_2

    .line 356
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

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    :cond_2
    return v9

    .line 350
    .end local v9    # "result":Z
    :catchall_0
    move-exception v0

    invoke-static {v7}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    throw v0

    :cond_3
    move v9, v10

    .line 354
    goto :goto_0
.end method

.method private sendMmsSendingStatusBroadcast(Landroid/content/Context;Z)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "success"    # Z

    .prologue
    .line 314
    iget-object v2, p0, Lcom/motorola/messaging/transaction/Transaction;->mUri:Landroid/net/Uri;

    if-nez v2, :cond_0

    .line 326
    :goto_0
    return-void

    .line 318
    :cond_0
    iget-object v2, p0, Lcom/motorola/messaging/transaction/Transaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 321
    .local v1, "messageId":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.motorola.contracts.messaging.intent.SEND_STATUS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 322
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "type"

    const-string v3, "MMS_SENT"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 323
    const-string v2, "status"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 324
    const-string v2, "id"

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 325
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private setAutomaticResize()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 329
    sget-boolean v0, Lcom/motorola/messaging/transaction/SendTransaction;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 330
    const-string v0, "SendTransaction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAutomaticResize, uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/messaging/transaction/Transaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    :cond_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 334
    .local v3, "values":Landroid/content/ContentValues;
    const-string v0, "image_resize_status"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 335
    iget-object v0, p0, Lcom/motorola/messaging/transaction/Transaction;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/motorola/messaging/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/messaging/transaction/Transaction;->mUri:Landroid/net/Uri;

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/motorola/messaging/provider/SqliteManager;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 337
    return-void
.end method

.method private treatNetworkResponseStatus(I)Z
    .locals 4
    .param p1, "respStatus"    # I

    .prologue
    .line 365
    const/16 v1, 0x80

    if-ne p1, v1, :cond_1

    const/4 v0, 0x1

    .line 367
    .local v0, "result":Z
    :goto_0
    if-nez v0, :cond_0

    .line 368
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

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    sget-object v1, Lcom/motorola/messaging/transaction/Transaction$Failure;->NETWORK:Lcom/motorola/messaging/transaction/Transaction$Failure;

    invoke-virtual {p0, v1}, Lcom/motorola/messaging/transaction/Transaction;->notifyFailure(Lcom/motorola/messaging/transaction/Transaction$Failure;)V

    .line 370
    invoke-direct {p0, p1}, Lcom/motorola/messaging/transaction/SendTransaction;->updateStatus(I)V

    .line 373
    :cond_0
    return v0

    .line 365
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

    .line 377
    sget-boolean v0, Lcom/motorola/messaging/transaction/SendTransaction;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 378
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

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    :cond_0
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 382
    .local v3, "values":Landroid/content/ContentValues;
    const-string v0, "resp_st"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 383
    iget-object v0, p0, Lcom/motorola/messaging/transaction/Transaction;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/motorola/messaging/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/messaging/transaction/Transaction;->mUri:Landroid/net/Uri;

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/motorola/messaging/provider/SqliteManager;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 384
    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    .prologue
    .line 388
    const/4 v0, 0x2

    return v0
.end method

.method public process()V
    .locals 2

    .prologue
    .line 92
    invoke-static {}, Lcom/motorola/messaging/concurrent/TaskManager;->getInstance()Lcom/motorola/messaging/concurrent/TaskManager;

    move-result-object v0

    const-string v1, "send_transaction"

    invoke-virtual {v0, p0, v1}, Lcom/motorola/messaging/concurrent/TaskManager;->runHighPriorityTask(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public run()V
    .locals 29

    .prologue
    .line 96
    sget-boolean v2, Lcom/motorola/messaging/transaction/SendTransaction;->LOCAL_LOG:Z

    if-eqz v2, :cond_0

    .line 97
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

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_0
    sget-boolean v2, Lcom/motorola/messaging/transaction/SendTransaction;->LOCAL_LOG:Z

    if-eqz v2, :cond_1

    .line 101
    const-string v2, "SendTransaction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MMS-STATUS - Starting transmission, transaction="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", gsm mode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->isGSM()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", world="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->isWorldPhone()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :cond_1
    const/16 v20, 0x0

    .line 108
    .local v20, "sendReq":Lcom/motorola/messaging/pdu/SendReq;
    const/16 v16, 0x0

    .line 111
    .local v16, "resize":Z
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/motorola/messaging/transaction/Transaction;->mStartedTime:J

    .line 113
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/messaging/transaction/Transaction;->mTransactionState:Lcom/motorola/messaging/transaction/TransactionState;

    invoke-virtual {v2}, Lcom/motorola/messaging/transaction/TransactionState;->getState()Lcom/motorola/messaging/transaction/Transaction$State;

    move-result-object v2

    sget-object v3, Lcom/motorola/messaging/transaction/Transaction$State;->FAILED:Lcom/motorola/messaging/transaction/Transaction$State;

    if-ne v2, v3, :cond_4

    .line 114
    const-string v2, "SendTransaction"

    const-string v3, "MMS-STATUS - Transaction aborted"

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/messaging/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/messaging/transaction/Transaction;->mTransactionState:Lcom/motorola/messaging/transaction/TransactionState;

    invoke-virtual {v2}, Lcom/motorola/messaging/transaction/TransactionState;->getState()Lcom/motorola/messaging/transaction/Transaction$State;

    move-result-object v2

    sget-object v4, Lcom/motorola/messaging/transaction/Transaction$State;->SUCCESS:Lcom/motorola/messaging/transaction/Transaction$State;

    if-ne v2, v4, :cond_17

    const/4 v2, 0x1

    :goto_0
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lcom/motorola/messaging/transaction/SendTransaction;->sendMmsSendingStatusBroadcast(Landroid/content/Context;Z)V

    .line 295
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/messaging/transaction/Transaction;->mUri:Landroid/net/Uri;

    if-eqz v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/messaging/transaction/Transaction;->getFailedReason()Lcom/motorola/messaging/transaction/Transaction$Failure;

    move-result-object v2

    sget-object v3, Lcom/motorola/messaging/transaction/Transaction$Failure;->TRANSACTION_TIMEOUT:Lcom/motorola/messaging/transaction/Transaction$Failure;

    if-ne v2, v3, :cond_2

    if-nez v16, :cond_2

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getMmsMaximumPictureSizeForRetry()I

    move-result v2

    if-eqz v2, :cond_2

    .line 300
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/messaging/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, v20

    invoke-static {v2, v0}, Lcom/motorola/messaging/util/MessageUtils;->canResize(Landroid/content/Context;Lcom/motorola/messaging/pdu/SendReq;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 301
    invoke-direct/range {p0 .. p0}, Lcom/motorola/messaging/transaction/SendTransaction;->setAutomaticResize()V

    .line 305
    :cond_2
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/messaging/transaction/Transaction;->finishTransaction()V

    .line 311
    :cond_3
    :goto_2
    return-void

    .line 118
    :cond_4
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/messaging/transaction/Transaction;->hasValidApn()Z

    move-result v2

    if-nez v2, :cond_5

    .line 119
    const-string v2, "SendTransaction"

    const-string v3, "MMS-STATUS - Transaction aborted, invalid APN"

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    sget-object v2, Lcom/motorola/messaging/transaction/Transaction$Failure;->TEMPORARY:Lcom/motorola/messaging/transaction/Transaction$Failure;

    const-string v3, "Invalid APN"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/motorola/messaging/transaction/Transaction;->notifyFailure(Lcom/motorola/messaging/transaction/Transaction$Failure;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 293
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/messaging/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/messaging/transaction/Transaction;->mTransactionState:Lcom/motorola/messaging/transaction/TransactionState;

    invoke-virtual {v2}, Lcom/motorola/messaging/transaction/TransactionState;->getState()Lcom/motorola/messaging/transaction/Transaction$State;

    move-result-object v2

    sget-object v4, Lcom/motorola/messaging/transaction/Transaction$State;->SUCCESS:Lcom/motorola/messaging/transaction/Transaction$State;

    if-ne v2, v4, :cond_18

    const/4 v2, 0x1

    :goto_3
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lcom/motorola/messaging/transaction/SendTransaction;->sendMmsSendingStatusBroadcast(Landroid/content/Context;Z)V

    .line 295
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/messaging/transaction/Transaction;->mUri:Landroid/net/Uri;

    if-eqz v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/messaging/transaction/Transaction;->getFailedReason()Lcom/motorola/messaging/transaction/Transaction$Failure;

    move-result-object v2

    sget-object v3, Lcom/motorola/messaging/transaction/Transaction$Failure;->TRANSACTION_TIMEOUT:Lcom/motorola/messaging/transaction/Transaction$Failure;

    if-ne v2, v3, :cond_2

    if-nez v16, :cond_2

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getMmsMaximumPictureSizeForRetry()I

    move-result v2

    if-eqz v2, :cond_2

    .line 300
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/messaging/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, v20

    invoke-static {v2, v0}, Lcom/motorola/messaging/util/MessageUtils;->canResize(Landroid/content/Context;Lcom/motorola/messaging/pdu/SendReq;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 301
    invoke-direct/range {p0 .. p0}, Lcom/motorola/messaging/transaction/SendTransaction;->setAutomaticResize()V

    goto :goto_1

    .line 124
    :cond_5
    :try_start_2
    invoke-static {}, Lcom/motorola/messaging/transaction/RateController;->getInstance()Lcom/motorola/messaging/transaction/RateController;

    move-result-object v14

    .line 125
    .local v14, "rateCtlr":Lcom/motorola/messaging/transaction/RateController;
    invoke-virtual {v14}, Lcom/motorola/messaging/transaction/RateController;->isLimitSurpassed()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v14}, Lcom/motorola/messaging/transaction/RateController;->isAllowedByUser()Z

    move-result v2

    if-nez v2, :cond_6

    .line 126
    const-string v2, "SendTransaction"

    const-string v3, "MMS-STATUS - Sending rate limit surpassed"

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    sget-object v2, Lcom/motorola/messaging/transaction/Transaction$Failure;->TEMPORARY:Lcom/motorola/messaging/transaction/Transaction$Failure;

    const-string v3, "Sending rate limit surpassed"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/motorola/messaging/transaction/Transaction;->notifyFailure(Lcom/motorola/messaging/transaction/Transaction$Failure;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 293
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/messaging/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/messaging/transaction/Transaction;->mTransactionState:Lcom/motorola/messaging/transaction/TransactionState;

    invoke-virtual {v2}, Lcom/motorola/messaging/transaction/TransactionState;->getState()Lcom/motorola/messaging/transaction/Transaction$State;

    move-result-object v2

    sget-object v4, Lcom/motorola/messaging/transaction/Transaction$State;->SUCCESS:Lcom/motorola/messaging/transaction/Transaction$State;

    if-ne v2, v4, :cond_19

    const/4 v2, 0x1

    :goto_4
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lcom/motorola/messaging/transaction/SendTransaction;->sendMmsSendingStatusBroadcast(Landroid/content/Context;Z)V

    .line 295
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/messaging/transaction/Transaction;->mUri:Landroid/net/Uri;

    if-eqz v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/messaging/transaction/Transaction;->getFailedReason()Lcom/motorola/messaging/transaction/Transaction$Failure;

    move-result-object v2

    sget-object v3, Lcom/motorola/messaging/transaction/Transaction$Failure;->TRANSACTION_TIMEOUT:Lcom/motorola/messaging/transaction/Transaction$Failure;

    if-ne v2, v3, :cond_2

    if-nez v16, :cond_2

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getMmsMaximumPictureSizeForRetry()I

    move-result v2

    if-eqz v2, :cond_2

    .line 300
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/messaging/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, v20

    invoke-static {v2, v0}, Lcom/motorola/messaging/util/MessageUtils;->canResize(Landroid/content/Context;Lcom/motorola/messaging/pdu/SendReq;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 301
    invoke-direct/range {p0 .. p0}, Lcom/motorola/messaging/transaction/SendTransaction;->setAutomaticResize()V

    goto/16 :goto_1

    .line 132
    :cond_6
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/messaging/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/motorola/messaging/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/motorola/messaging/pdu/PduPersister;

    move-result-object v13

    .line 133
    .local v13, "persister":Lcom/motorola/messaging/pdu/PduPersister;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/messaging/transaction/Transaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v13, v2}, Lcom/motorola/messaging/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/motorola/messaging/pdu/GenericPdu;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/motorola/messaging/pdu/SendReq;

    move-object/from16 v20, v0

    .line 135
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getMmsMaximumPictureSizeForRetry()I

    move-result v2

    if-eqz v2, :cond_7

    .line 136
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/messaging/transaction/Transaction;->mUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/motorola/messaging/transaction/SendTransaction;->needsAutomaticResize(Landroid/net/Uri;)Z

    move-result v16

    .line 137
    const/4 v2, 0x1

    move/from16 v0, v16

    if-ne v0, v2, :cond_7

    .line 138
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/messaging/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/messaging/transaction/Transaction;->mUri:Landroid/net/Uri;

    move-object/from16 v0, v20

    invoke-static {v2, v3, v0}, Lcom/motorola/messaging/util/MessageUtils;->resizeImage(Landroid/content/Context;Landroid/net/Uri;Lcom/motorola/messaging/pdu/SendReq;)V

    .line 143
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/messaging/transaction/Transaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .line 144
    .local v12, "msgId":Ljava/lang/Long;
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-string v4, "mms"

    invoke-static {v2, v3, v4}, Lcom/motorola/messaging/composer/MessageItem;->clearCache(JLjava/lang/String;)V

    .line 147
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v6, 0x3e8

    div-long v21, v2, v6

    .line 148
    .local v21, "sentDate":J
    invoke-virtual/range {v20 .. v22}, Lcom/motorola/messaging/pdu/MultimediaMessagePdu;->setDate(J)V

    .line 151
    new-instance v5, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v5, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 152
    .local v5, "values":Landroid/content/ContentValues;
    const-string v2, "date"

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 153
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/messaging/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/messaging/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/motorola/messaging/transaction/Transaction;->mUri:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/motorola/messaging/provider/SqliteManager;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 156
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getMmsFromFormat()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 185
    sget-object v2, Lcom/motorola/messaging/transaction/Transaction$Failure;->INTERNAL:Lcom/motorola/messaging/transaction/Transaction$Failure;

    const-string v3, "invalid from format"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/motorola/messaging/transaction/Transaction;->notifyFailure(Lcom/motorola/messaging/transaction/Transaction$Failure;Ljava/lang/String;)V

    .line 190
    :cond_8
    :goto_5
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/messaging/transaction/Transaction;->mUri:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-wide v26

    .line 192
    .local v26, "tokenKey":J
    const/16 v19, 0x0

    .line 193
    .local v19, "sendConf":Lcom/motorola/messaging/pdu/SendConf;
    const/16 v17, 0x81

    .line 195
    .local v17, "respStatus":I
    const/4 v2, 0x1

    :try_start_4
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getMmsNoProgressTimeout()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/motorola/messaging/transaction/Transaction;->startTimeout(II)V

    .line 196
    const/4 v2, 0x0

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getMmsTransmissionTimeout()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/motorola/messaging/transaction/Transaction;->startTimeout(II)V

    .line 197
    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/messaging/transaction/SendingProgressTokenManager;->get(Ljava/lang/Object;)J

    move-result-wide v2

    new-instance v4, Lcom/motorola/messaging/pdu/PduComposer;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/motorola/messaging/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, v20

    invoke-direct {v4, v6, v0}, Lcom/motorola/messaging/pdu/PduComposer;-><init>(Landroid/content/Context;Lcom/motorola/messaging/pdu/GenericPdu;)V

    invoke-virtual {v4}, Lcom/motorola/messaging/pdu/PduComposer;->make()[B

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/motorola/messaging/transaction/Transaction;->sendPdu(J[B)[B

    move-result-object v18

    .line 199
    .local v18, "response":[B
    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/messaging/transaction/SendingProgressTokenManager;->remove(Ljava/lang/Object;)V

    .line 200
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/messaging/transaction/Transaction;->stopTimeouts()V

    .line 202
    if-nez v18, :cond_b

    .line 203
    const-string v2, "SendTransaction"

    const-string v3, "MMS-STATUS - sendPdu failed"

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/apache/http/HttpException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 293
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/messaging/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/messaging/transaction/Transaction;->mTransactionState:Lcom/motorola/messaging/transaction/TransactionState;

    invoke-virtual {v2}, Lcom/motorola/messaging/transaction/TransactionState;->getState()Lcom/motorola/messaging/transaction/Transaction$State;

    move-result-object v2

    sget-object v4, Lcom/motorola/messaging/transaction/Transaction$State;->SUCCESS:Lcom/motorola/messaging/transaction/Transaction$State;

    if-ne v2, v4, :cond_1b

    const/4 v2, 0x1

    :goto_6
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lcom/motorola/messaging/transaction/SendTransaction;->sendMmsSendingStatusBroadcast(Landroid/content/Context;Z)V

    .line 295
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/messaging/transaction/Transaction;->mUri:Landroid/net/Uri;

    if-eqz v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/messaging/transaction/Transaction;->getFailedReason()Lcom/motorola/messaging/transaction/Transaction$Failure;

    move-result-object v2

    sget-object v3, Lcom/motorola/messaging/transaction/Transaction$Failure;->TRANSACTION_TIMEOUT:Lcom/motorola/messaging/transaction/Transaction$Failure;

    if-ne v2, v3, :cond_2

    if-nez v16, :cond_2

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getMmsMaximumPictureSizeForRetry()I

    move-result v2

    if-eqz v2, :cond_2

    .line 300
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/messaging/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, v20

    invoke-static {v2, v0}, Lcom/motorola/messaging/util/MessageUtils;->canResize(Landroid/content/Context;Lcom/motorola/messaging/pdu/SendReq;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 301
    invoke-direct/range {p0 .. p0}, Lcom/motorola/messaging/transaction/SendTransaction;->setAutomaticResize()V

    goto/16 :goto_1

    .line 162
    .end local v17    # "respStatus":I
    .end local v18    # "response":[B
    .end local v19    # "sendConf":Lcom/motorola/messaging/pdu/SendConf;
    .end local v26    # "tokenKey":J
    :pswitch_1
    :try_start_5
    invoke-static {}, Lcom/motorola/messaging/contact/ContactUtils;->getOwnMSISDN()Ljava/lang/String;

    move-result-object v10

    .line 163
    .local v10, "lineNumber":Ljava/lang/String;
    const-string v2, "SendTransaction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MMS-STATUS - Set from="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 165
    const-string v2, "+"

    invoke-virtual {v10, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 166
    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 169
    :cond_9
    new-instance v2, Lcom/motorola/messaging/pdu/EncodedStringValue;

    invoke-direct {v2, v10}, Lcom/motorola/messaging/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/motorola/messaging/pdu/GenericPdu;->setFrom(Lcom/motorola/messaging/pdu/EncodedStringValue;)V

    .line 170
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getMmsNumberPlusPrefixEnabled()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    .line 171
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v10}, Lcom/motorola/messaging/transaction/SendTransaction;->addPlusPrefix(Lcom/motorola/messaging/pdu/SendReq;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_5

    .line 286
    .end local v5    # "values":Landroid/content/ContentValues;
    .end local v10    # "lineNumber":Ljava/lang/String;
    .end local v12    # "msgId":Ljava/lang/Long;
    .end local v13    # "persister":Lcom/motorola/messaging/pdu/PduPersister;
    .end local v14    # "rateCtlr":Lcom/motorola/messaging/transaction/RateController;
    .end local v21    # "sentDate":J
    :catch_0
    move-exception v25

    .line 287
    .local v25, "t":Ljava/lang/Throwable;
    :try_start_6
    const-string v2, "SendTransaction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MMS-STATUS generic exception - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v25 .. v25}, Lcom/motorola/messaging/logger/Logger;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/messaging/transaction/Transaction;->stopTimeouts()V

    .line 289
    const/16 v2, 0x81

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/motorola/messaging/transaction/SendTransaction;->updateStatus(I)V

    .line 290
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/transaction/Transaction;->treatException(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 293
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/messaging/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/messaging/transaction/Transaction;->mTransactionState:Lcom/motorola/messaging/transaction/TransactionState;

    invoke-virtual {v2}, Lcom/motorola/messaging/transaction/TransactionState;->getState()Lcom/motorola/messaging/transaction/Transaction$State;

    move-result-object v2

    sget-object v4, Lcom/motorola/messaging/transaction/Transaction$State;->SUCCESS:Lcom/motorola/messaging/transaction/Transaction$State;

    if-ne v2, v4, :cond_16

    const/4 v2, 0x1

    :goto_7
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lcom/motorola/messaging/transaction/SendTransaction;->sendMmsSendingStatusBroadcast(Landroid/content/Context;Z)V

    .line 295
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/messaging/transaction/Transaction;->mUri:Landroid/net/Uri;

    if-eqz v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/messaging/transaction/Transaction;->getFailedReason()Lcom/motorola/messaging/transaction/Transaction$Failure;

    move-result-object v2

    sget-object v3, Lcom/motorola/messaging/transaction/Transaction$Failure;->TRANSACTION_TIMEOUT:Lcom/motorola/messaging/transaction/Transaction$Failure;

    if-ne v2, v3, :cond_2

    if-nez v16, :cond_2

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getMmsMaximumPictureSizeForRetry()I

    move-result v2

    if-eqz v2, :cond_2

    .line 300
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/messaging/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, v20

    invoke-static {v2, v0}, Lcom/motorola/messaging/util/MessageUtils;->canResize(Landroid/content/Context;Lcom/motorola/messaging/pdu/SendReq;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 301
    invoke-direct/range {p0 .. p0}, Lcom/motorola/messaging/transaction/SendTransaction;->setAutomaticResize()V

    goto/16 :goto_1

    .line 178
    .end local v25    # "t":Ljava/lang/Throwable;
    .restart local v5    # "values":Landroid/content/ContentValues;
    .restart local v10    # "lineNumber":Ljava/lang/String;
    .restart local v12    # "msgId":Ljava/lang/Long;
    .restart local v13    # "persister":Lcom/motorola/messaging/pdu/PduPersister;
    .restart local v14    # "rateCtlr":Lcom/motorola/messaging/transaction/RateController;
    .restart local v21    # "sentDate":J
    :cond_a
    :try_start_7
    sget-object v2, Lcom/motorola/messaging/transaction/Transaction$Failure;->TEMPORARY:Lcom/motorola/messaging/transaction/Transaction$Failure;

    const-string v3, "invalid from"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/motorola/messaging/transaction/Transaction;->notifyFailure(Lcom/motorola/messaging/transaction/Transaction$Failure;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 293
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/messaging/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/messaging/transaction/Transaction;->mTransactionState:Lcom/motorola/messaging/transaction/TransactionState;

    invoke-virtual {v2}, Lcom/motorola/messaging/transaction/TransactionState;->getState()Lcom/motorola/messaging/transaction/Transaction$State;

    move-result-object v2

    sget-object v4, Lcom/motorola/messaging/transaction/Transaction$State;->SUCCESS:Lcom/motorola/messaging/transaction/Transaction$State;

    if-ne v2, v4, :cond_23

    const/4 v2, 0x1

    :goto_8
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lcom/motorola/messaging/transaction/SendTransaction;->sendMmsSendingStatusBroadcast(Landroid/content/Context;Z)V

    .line 295
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/messaging/transaction/Transaction;->mUri:Landroid/net/Uri;

    if-eqz v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/messaging/transaction/Transaction;->getFailedReason()Lcom/motorola/messaging/transaction/Transaction$Failure;

    move-result-object v2

    sget-object v3, Lcom/motorola/messaging/transaction/Transaction$Failure;->TRANSACTION_TIMEOUT:Lcom/motorola/messaging/transaction/Transaction$Failure;

    if-ne v2, v3, :cond_2

    if-nez v16, :cond_2

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getMmsMaximumPictureSizeForRetry()I

    move-result v2

    if-eqz v2, :cond_2

    .line 300
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/messaging/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, v20

    invoke-static {v2, v0}, Lcom/motorola/messaging/util/MessageUtils;->canResize(Landroid/content/Context;Lcom/motorola/messaging/pdu/SendReq;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 301
    invoke-direct/range {p0 .. p0}, Lcom/motorola/messaging/transaction/SendTransaction;->setAutomaticResize()V

    goto/16 :goto_1

    .line 207
    .end local v10    # "lineNumber":Ljava/lang/String;
    .restart local v17    # "respStatus":I
    .restart local v18    # "response":[B
    .restart local v19    # "sendConf":Lcom/motorola/messaging/pdu/SendConf;
    .restart local v26    # "tokenKey":J
    :cond_b
    :try_start_8
    new-instance v2, Lcom/motorola/messaging/pdu/PduParser;

    move-object/from16 v0, v18

    invoke-direct {v2, v0}, Lcom/motorola/messaging/pdu/PduParser;-><init>([B)V

    invoke-virtual {v2}, Lcom/motorola/messaging/pdu/PduParser;->parse()Lcom/motorola/messaging/pdu/GenericPdu;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/motorola/messaging/pdu/SendConf;

    move-object/from16 v19, v0

    .line 208
    if-nez v19, :cond_c

    .line 209
    const-string v2, "SendTransaction"

    const-string v3, "MMS-STATUS - No M-Send.conf received"

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Lorg/apache/http/HttpException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 293
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/messaging/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/messaging/transaction/Transaction;->mTransactionState:Lcom/motorola/messaging/transaction/TransactionState;

    invoke-virtual {v2}, Lcom/motorola/messaging/transaction/TransactionState;->getState()Lcom/motorola/messaging/transaction/Transaction$State;

    move-result-object v2

    sget-object v4, Lcom/motorola/messaging/transaction/Transaction$State;->SUCCESS:Lcom/motorola/messaging/transaction/Transaction$State;

    if-ne v2, v4, :cond_1c

    const/4 v2, 0x1

    :goto_9
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lcom/motorola/messaging/transaction/SendTransaction;->sendMmsSendingStatusBroadcast(Landroid/content/Context;Z)V

    .line 295
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/messaging/transaction/Transaction;->mUri:Landroid/net/Uri;

    if-eqz v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/messaging/transaction/Transaction;->getFailedReason()Lcom/motorola/messaging/transaction/Transaction$Failure;

    move-result-object v2

    sget-object v3, Lcom/motorola/messaging/transaction/Transaction$Failure;->TRANSACTION_TIMEOUT:Lcom/motorola/messaging/transaction/Transaction$Failure;

    if-ne v2, v3, :cond_2

    if-nez v16, :cond_2

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getMmsMaximumPictureSizeForRetry()I

    move-result v2

    if-eqz v2, :cond_2

    .line 300
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/messaging/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, v20

    invoke-static {v2, v0}, Lcom/motorola/messaging/util/MessageUtils;->canResize(Landroid/content/Context;Lcom/motorola/messaging/pdu/SendReq;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 301
    invoke-direct/range {p0 .. p0}, Lcom/motorola/messaging/transaction/SendTransaction;->setAutomaticResize()V

    goto/16 :goto_1

    .line 215
    :cond_c
    :try_start_9
    invoke-virtual/range {v20 .. v20}, Lcom/motorola/messaging/pdu/SendReq;->getTransactionId()[B

    move-result-object v15

    .line 216
    .local v15, "reqId":[B
    invoke-virtual/range {v19 .. v19}, Lcom/motorola/messaging/pdu/SendConf;->getTransactionId()[B

    move-result-object v8

    .line 218
    .local v8, "confId":[B
    if-eqz v8, :cond_d

    if-nez v15, :cond_e

    .line 219
    :cond_d
    const-string v2, "SendTransaction"

    const-string v3, "MMS-STATUS - Null transaction id"

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Lorg/apache/http/HttpException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 293
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/messaging/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/messaging/transaction/Transaction;->mTransactionState:Lcom/motorola/messaging/transaction/TransactionState;

    invoke-virtual {v2}, Lcom/motorola/messaging/transaction/TransactionState;->getState()Lcom/motorola/messaging/transaction/Transaction$State;

    move-result-object v2

    sget-object v4, Lcom/motorola/messaging/transaction/Transaction$State;->SUCCESS:Lcom/motorola/messaging/transaction/Transaction$State;

    if-ne v2, v4, :cond_1d

    const/4 v2, 0x1

    :goto_a
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lcom/motorola/messaging/transaction/SendTransaction;->sendMmsSendingStatusBroadcast(Landroid/content/Context;Z)V

    .line 295
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/messaging/transaction/Transaction;->mUri:Landroid/net/Uri;

    if-eqz v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/messaging/transaction/Transaction;->getFailedReason()Lcom/motorola/messaging/transaction/Transaction$Failure;

    move-result-object v2

    sget-object v3, Lcom/motorola/messaging/transaction/Transaction$Failure;->TRANSACTION_TIMEOUT:Lcom/motorola/messaging/transaction/Transaction$Failure;

    if-ne v2, v3, :cond_2

    if-nez v16, :cond_2

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getMmsMaximumPictureSizeForRetry()I

    move-result v2

    if-eqz v2, :cond_2

    .line 300
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/messaging/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, v20

    invoke-static {v2, v0}, Lcom/motorola/messaging/util/MessageUtils;->canResize(Landroid/content/Context;Lcom/motorola/messaging/pdu/SendReq;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 301
    invoke-direct/range {p0 .. p0}, Lcom/motorola/messaging/transaction/SendTransaction;->setAutomaticResize()V

    goto/16 :goto_1

    .line 223
    :cond_e
    :try_start_a
    invoke-static {v15, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_f

    .line 225
    const-string v2, "SendTransaction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MMS-STATUS - Inconsistent Transaction-ID: req="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v15}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", conf="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v8}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/motorola/messaging/transaction/Transaction;->mUri:Landroid/net/Uri;

    .line 228
    sget-object v2, Lcom/motorola/messaging/transaction/Transaction$Failure;->INTERNAL:Lcom/motorola/messaging/transaction/Transaction$Failure;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/motorola/messaging/transaction/Transaction;->notifyFailure(Lcom/motorola/messaging/transaction/Transaction$Failure;)V
    :try_end_a
    .catch Lorg/apache/http/HttpException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 293
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/messaging/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/messaging/transaction/Transaction;->mTransactionState:Lcom/motorola/messaging/transaction/TransactionState;

    invoke-virtual {v2}, Lcom/motorola/messaging/transaction/TransactionState;->getState()Lcom/motorola/messaging/transaction/Transaction$State;

    move-result-object v2

    sget-object v4, Lcom/motorola/messaging/transaction/Transaction$State;->SUCCESS:Lcom/motorola/messaging/transaction/Transaction$State;

    if-ne v2, v4, :cond_1e

    const/4 v2, 0x1

    :goto_b
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lcom/motorola/messaging/transaction/SendTransaction;->sendMmsSendingStatusBroadcast(Landroid/content/Context;Z)V

    .line 295
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/messaging/transaction/Transaction;->mUri:Landroid/net/Uri;

    if-eqz v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/messaging/transaction/Transaction;->getFailedReason()Lcom/motorola/messaging/transaction/Transaction$Failure;

    move-result-object v2

    sget-object v3, Lcom/motorola/messaging/transaction/Transaction$Failure;->TRANSACTION_TIMEOUT:Lcom/motorola/messaging/transaction/Transaction$Failure;

    if-ne v2, v3, :cond_2

    if-nez v16, :cond_2

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getMmsMaximumPictureSizeForRetry()I

    move-result v2

    if-eqz v2, :cond_2

    .line 300
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/messaging/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, v20

    invoke-static {v2, v0}, Lcom/motorola/messaging/util/MessageUtils;->canResize(Landroid/content/Context;Lcom/motorola/messaging/pdu/SendReq;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 301
    invoke-direct/range {p0 .. p0}, Lcom/motorola/messaging/transaction/SendTransaction;->setAutomaticResize()V

    goto/16 :goto_1

    .line 235
    :cond_f
    :try_start_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/messaging/transaction/Transaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v13, v2}, Lcom/motorola/messaging/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/motorola/messaging/pdu/GenericPdu;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/motorola/messaging/pdu/SendReq;

    move-object/from16 v20, v0
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_1
    .catch Lorg/apache/http/HttpException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 245
    :try_start_c
    invoke-virtual/range {v20 .. v20}, Lcom/motorola/messaging/pdu/MultimediaMessagePdu;->getDate()J

    move-result-wide v23

    .line 246
    .local v23, "storedDate":J
    cmp-long v2, v23, v21

    if-eqz v2, :cond_10

    .line 248
    const-string v2, "SendTransaction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MMS-STATUS - Inconsistent uri: mUri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/motorola/messaging/transaction/Transaction;->mUri:Landroid/net/Uri;

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

    move-wide/from16 v0, v21

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/motorola/messaging/transaction/Transaction;->mUri:Landroid/net/Uri;

    .line 251
    sget-object v2, Lcom/motorola/messaging/transaction/Transaction$Failure;->INTERNAL:Lcom/motorola/messaging/transaction/Transaction$Failure;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/motorola/messaging/transaction/Transaction;->notifyFailure(Lcom/motorola/messaging/transaction/Transaction$Failure;)V
    :try_end_c
    .catch Lorg/apache/http/HttpException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 293
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/messaging/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/messaging/transaction/Transaction;->mTransactionState:Lcom/motorola/messaging/transaction/TransactionState;

    invoke-virtual {v2}, Lcom/motorola/messaging/transaction/TransactionState;->getState()Lcom/motorola/messaging/transaction/Transaction$State;

    move-result-object v2

    sget-object v4, Lcom/motorola/messaging/transaction/Transaction$State;->SUCCESS:Lcom/motorola/messaging/transaction/Transaction$State;

    if-ne v2, v4, :cond_20

    const/4 v2, 0x1

    :goto_c
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lcom/motorola/messaging/transaction/SendTransaction;->sendMmsSendingStatusBroadcast(Landroid/content/Context;Z)V

    .line 295
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/messaging/transaction/Transaction;->mUri:Landroid/net/Uri;

    if-eqz v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/messaging/transaction/Transaction;->getFailedReason()Lcom/motorola/messaging/transaction/Transaction$Failure;

    move-result-object v2

    sget-object v3, Lcom/motorola/messaging/transaction/Transaction$Failure;->TRANSACTION_TIMEOUT:Lcom/motorola/messaging/transaction/Transaction$Failure;

    if-ne v2, v3, :cond_2

    if-nez v16, :cond_2

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getMmsMaximumPictureSizeForRetry()I

    move-result v2

    if-eqz v2, :cond_2

    .line 300
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/messaging/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, v20

    invoke-static {v2, v0}, Lcom/motorola/messaging/util/MessageUtils;->canResize(Landroid/content/Context;Lcom/motorola/messaging/pdu/SendReq;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 301
    invoke-direct/range {p0 .. p0}, Lcom/motorola/messaging/transaction/SendTransaction;->setAutomaticResize()V

    goto/16 :goto_1

    .line 236
    .end local v23    # "storedDate":J
    :catch_1
    move-exception v9

    .line 238
    .local v9, "e":Ljava/lang/Throwable;
    :try_start_d
    const-string v2, "SendTransaction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MMS-STATUS - Inconsistent uri: mUri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/motorola/messaging/transaction/Transaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " after sending. Original message was probably deleted."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/motorola/messaging/transaction/Transaction;->mUri:Landroid/net/Uri;

    .line 241
    sget-object v2, Lcom/motorola/messaging/transaction/Transaction$Failure;->INTERNAL:Lcom/motorola/messaging/transaction/Transaction$Failure;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/motorola/messaging/transaction/Transaction;->notifyFailure(Lcom/motorola/messaging/transaction/Transaction$Failure;)V
    :try_end_d
    .catch Lorg/apache/http/HttpException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 293
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/messaging/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/messaging/transaction/Transaction;->mTransactionState:Lcom/motorola/messaging/transaction/TransactionState;

    invoke-virtual {v2}, Lcom/motorola/messaging/transaction/TransactionState;->getState()Lcom/motorola/messaging/transaction/Transaction$State;

    move-result-object v2

    sget-object v4, Lcom/motorola/messaging/transaction/Transaction$State;->SUCCESS:Lcom/motorola/messaging/transaction/Transaction$State;

    if-ne v2, v4, :cond_1f

    const/4 v2, 0x1

    :goto_d
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lcom/motorola/messaging/transaction/SendTransaction;->sendMmsSendingStatusBroadcast(Landroid/content/Context;Z)V

    .line 295
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/messaging/transaction/Transaction;->mUri:Landroid/net/Uri;

    if-eqz v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/messaging/transaction/Transaction;->getFailedReason()Lcom/motorola/messaging/transaction/Transaction$Failure;

    move-result-object v2

    sget-object v3, Lcom/motorola/messaging/transaction/Transaction$Failure;->TRANSACTION_TIMEOUT:Lcom/motorola/messaging/transaction/Transaction$Failure;

    if-ne v2, v3, :cond_2

    if-nez v16, :cond_2

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getMmsMaximumPictureSizeForRetry()I

    move-result v2

    if-eqz v2, :cond_2

    .line 300
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/messaging/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, v20

    invoke-static {v2, v0}, Lcom/motorola/messaging/util/MessageUtils;->canResize(Landroid/content/Context;Lcom/motorola/messaging/pdu/SendReq;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 301
    invoke-direct/range {p0 .. p0}, Lcom/motorola/messaging/transaction/SendTransaction;->setAutomaticResize()V

    goto/16 :goto_1

    .line 258
    .end local v9    # "e":Ljava/lang/Throwable;
    .restart local v23    # "storedDate":J
    :cond_10
    :try_start_e
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/transaction/Transaction;->getResponseStatus(Lcom/motorola/messaging/pdu/SendConf;)I

    move-result v17

    .line 259
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/motorola/messaging/transaction/SendTransaction;->treatNetworkResponseStatus(I)Z
    :try_end_e
    .catch Lorg/apache/http/HttpException; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_11

    .line 293
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/messaging/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/messaging/transaction/Transaction;->mTransactionState:Lcom/motorola/messaging/transaction/TransactionState;

    invoke-virtual {v2}, Lcom/motorola/messaging/transaction/TransactionState;->getState()Lcom/motorola/messaging/transaction/Transaction$State;

    move-result-object v2

    sget-object v4, Lcom/motorola/messaging/transaction/Transaction$State;->SUCCESS:Lcom/motorola/messaging/transaction/Transaction$State;

    if-ne v2, v4, :cond_21

    const/4 v2, 0x1

    :goto_e
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lcom/motorola/messaging/transaction/SendTransaction;->sendMmsSendingStatusBroadcast(Landroid/content/Context;Z)V

    .line 295
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/messaging/transaction/Transaction;->mUri:Landroid/net/Uri;

    if-eqz v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/messaging/transaction/Transaction;->getFailedReason()Lcom/motorola/messaging/transaction/Transaction$Failure;

    move-result-object v2

    sget-object v3, Lcom/motorola/messaging/transaction/Transaction$Failure;->TRANSACTION_TIMEOUT:Lcom/motorola/messaging/transaction/Transaction$Failure;

    if-ne v2, v3, :cond_2

    if-nez v16, :cond_2

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getMmsMaximumPictureSizeForRetry()I

    move-result v2

    if-eqz v2, :cond_2

    .line 300
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/messaging/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, v20

    invoke-static {v2, v0}, Lcom/motorola/messaging/util/MessageUtils;->canResize(Landroid/content/Context;Lcom/motorola/messaging/pdu/SendReq;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 301
    invoke-direct/range {p0 .. p0}, Lcom/motorola/messaging/transaction/SendTransaction;->setAutomaticResize()V

    goto/16 :goto_1

    .line 262
    .end local v8    # "confId":[B
    .end local v15    # "reqId":[B
    .end local v18    # "response":[B
    .end local v23    # "storedDate":J
    :catch_2
    move-exception v25

    .line 263
    .local v25, "t":Lorg/apache/http/HttpException;
    :try_start_f
    const-string v2, "SendTransaction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MMS-STATUS - exception, stack="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v25 .. v25}, Lcom/motorola/messaging/logger/Logger;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/messaging/transaction/Transaction;->stopTimeouts()V

    .line 265
    const/16 v2, 0x81

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/motorola/messaging/transaction/SendTransaction;->updateStatus(I)V

    .line 266
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/transaction/Transaction;->treatException(Ljava/lang/Throwable;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 293
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/messaging/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/messaging/transaction/Transaction;->mTransactionState:Lcom/motorola/messaging/transaction/TransactionState;

    invoke-virtual {v2}, Lcom/motorola/messaging/transaction/TransactionState;->getState()Lcom/motorola/messaging/transaction/Transaction$State;

    move-result-object v2

    sget-object v4, Lcom/motorola/messaging/transaction/Transaction$State;->SUCCESS:Lcom/motorola/messaging/transaction/Transaction$State;

    if-ne v2, v4, :cond_1a

    const/4 v2, 0x1

    :goto_f
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lcom/motorola/messaging/transaction/SendTransaction;->sendMmsSendingStatusBroadcast(Landroid/content/Context;Z)V

    .line 295
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/messaging/transaction/Transaction;->mUri:Landroid/net/Uri;

    if-eqz v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/messaging/transaction/Transaction;->getFailedReason()Lcom/motorola/messaging/transaction/Transaction$Failure;

    move-result-object v2

    sget-object v3, Lcom/motorola/messaging/transaction/Transaction$Failure;->TRANSACTION_TIMEOUT:Lcom/motorola/messaging/transaction/Transaction$Failure;

    if-ne v2, v3, :cond_2

    if-nez v16, :cond_2

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getMmsMaximumPictureSizeForRetry()I

    move-result v2

    if-eqz v2, :cond_2

    .line 300
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/messaging/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, v20

    invoke-static {v2, v0}, Lcom/motorola/messaging/util/MessageUtils;->canResize(Landroid/content/Context;Lcom/motorola/messaging/pdu/SendReq;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 301
    invoke-direct/range {p0 .. p0}, Lcom/motorola/messaging/transaction/SendTransaction;->setAutomaticResize()V

    goto/16 :goto_1

    .line 270
    .end local v25    # "t":Lorg/apache/http/HttpException;
    .restart local v8    # "confId":[B
    .restart local v15    # "reqId":[B
    .restart local v18    # "response":[B
    .restart local v23    # "storedDate":J
    :cond_11
    :try_start_10
    new-instance v5, Landroid/content/ContentValues;

    .end local v5    # "values":Landroid/content/ContentValues;
    const/4 v2, 0x3

    invoke-direct {v5, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 271
    .restart local v5    # "values":Landroid/content/ContentValues;
    const-string v2, "resp_st"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 272
    invoke-virtual/range {v19 .. v19}, Lcom/motorola/messaging/pdu/SendConf;->getMessageId()[B

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/messaging/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v11

    .line 273
    .local v11, "messageId":Ljava/lang/String;
    const-string v2, "m_id"

    invoke-virtual {v5, v2, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    if-eqz v16, :cond_12

    .line 275
    const-string v2, "image_resize_status"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 278
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/messaging/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/messaging/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/motorola/messaging/transaction/Transaction;->mUri:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/motorola/messaging/provider/SqliteManager;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 282
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/messaging/transaction/Transaction;->mUri:Landroid/net/Uri;

    sget-object v3, Lcom/motorola/messaging/provider/Telephony$Mms$Sent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v13, v2, v3}, Lcom/motorola/messaging/pdu/PduPersister;->move(Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v28

    .line 284
    .local v28, "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/messaging/transaction/Transaction;->mTransactionState:Lcom/motorola/messaging/transaction/TransactionState;

    sget-object v3, Lcom/motorola/messaging/transaction/Transaction$State;->SUCCESS:Lcom/motorola/messaging/transaction/Transaction$State;

    invoke-virtual {v2, v3}, Lcom/motorola/messaging/transaction/TransactionState;->setState(Lcom/motorola/messaging/transaction/Transaction$State;)V

    .line 285
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/messaging/transaction/Transaction;->mTransactionState:Lcom/motorola/messaging/transaction/TransactionState;

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lcom/motorola/messaging/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_0
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 293
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/messaging/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/messaging/transaction/Transaction;->mTransactionState:Lcom/motorola/messaging/transaction/TransactionState;

    invoke-virtual {v2}, Lcom/motorola/messaging/transaction/TransactionState;->getState()Lcom/motorola/messaging/transaction/Transaction$State;

    move-result-object v2

    sget-object v4, Lcom/motorola/messaging/transaction/Transaction$State;->SUCCESS:Lcom/motorola/messaging/transaction/Transaction$State;

    if-ne v2, v4, :cond_22

    const/4 v2, 0x1

    :goto_10
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lcom/motorola/messaging/transaction/SendTransaction;->sendMmsSendingStatusBroadcast(Landroid/content/Context;Z)V

    .line 295
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/messaging/transaction/Transaction;->mUri:Landroid/net/Uri;

    if-eqz v2, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/messaging/transaction/Transaction;->getFailedReason()Lcom/motorola/messaging/transaction/Transaction$Failure;

    move-result-object v2

    sget-object v3, Lcom/motorola/messaging/transaction/Transaction$Failure;->TRANSACTION_TIMEOUT:Lcom/motorola/messaging/transaction/Transaction$Failure;

    if-ne v2, v3, :cond_13

    if-nez v16, :cond_13

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getMmsMaximumPictureSizeForRetry()I

    move-result v2

    if-eqz v2, :cond_13

    .line 300
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/messaging/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, v20

    invoke-static {v2, v0}, Lcom/motorola/messaging/util/MessageUtils;->canResize(Landroid/content/Context;Lcom/motorola/messaging/pdu/SendReq;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 301
    invoke-direct/range {p0 .. p0}, Lcom/motorola/messaging/transaction/SendTransaction;->setAutomaticResize()V

    .line 305
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/messaging/transaction/Transaction;->finishTransaction()V

    .line 308
    sget-boolean v2, Lcom/motorola/messaging/transaction/SendTransaction;->LOCAL_LOG:Z

    if-eqz v2, :cond_3

    .line 309
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

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 293
    .end local v5    # "values":Landroid/content/ContentValues;
    .end local v8    # "confId":[B
    .end local v11    # "messageId":Ljava/lang/String;
    .end local v12    # "msgId":Ljava/lang/Long;
    .end local v13    # "persister":Lcom/motorola/messaging/pdu/PduPersister;
    .end local v14    # "rateCtlr":Lcom/motorola/messaging/transaction/RateController;
    .end local v15    # "reqId":[B
    .end local v17    # "respStatus":I
    .end local v18    # "response":[B
    .end local v19    # "sendConf":Lcom/motorola/messaging/pdu/SendConf;
    .end local v21    # "sentDate":J
    .end local v23    # "storedDate":J
    .end local v26    # "tokenKey":J
    .end local v28    # "uri":Landroid/net/Uri;
    :catchall_0
    move-exception v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/motorola/messaging/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/messaging/transaction/Transaction;->mTransactionState:Lcom/motorola/messaging/transaction/TransactionState;

    invoke-virtual {v3}, Lcom/motorola/messaging/transaction/TransactionState;->getState()Lcom/motorola/messaging/transaction/Transaction$State;

    move-result-object v3

    sget-object v6, Lcom/motorola/messaging/transaction/Transaction$State;->SUCCESS:Lcom/motorola/messaging/transaction/Transaction$State;

    if-ne v3, v6, :cond_15

    const/4 v3, 0x1

    :goto_11
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v3}, Lcom/motorola/messaging/transaction/SendTransaction;->sendMmsSendingStatusBroadcast(Landroid/content/Context;Z)V

    .line 295
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/messaging/transaction/Transaction;->mUri:Landroid/net/Uri;

    if-eqz v3, :cond_14

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/messaging/transaction/Transaction;->getFailedReason()Lcom/motorola/messaging/transaction/Transaction$Failure;

    move-result-object v3

    sget-object v4, Lcom/motorola/messaging/transaction/Transaction$Failure;->TRANSACTION_TIMEOUT:Lcom/motorola/messaging/transaction/Transaction$Failure;

    if-ne v3, v4, :cond_14

    if-nez v16, :cond_14

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getMmsMaximumPictureSizeForRetry()I

    move-result v3

    if-eqz v3, :cond_14

    .line 300
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/messaging/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, v20

    invoke-static {v3, v0}, Lcom/motorola/messaging/util/MessageUtils;->canResize(Landroid/content/Context;Lcom/motorola/messaging/pdu/SendReq;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 301
    invoke-direct/range {p0 .. p0}, Lcom/motorola/messaging/transaction/SendTransaction;->setAutomaticResize()V

    .line 305
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/messaging/transaction/Transaction;->finishTransaction()V

    .line 293
    throw v2

    :cond_15
    const/4 v3, 0x0

    goto :goto_11

    .local v25, "t":Ljava/lang/Throwable;
    :cond_16
    const/4 v2, 0x0

    goto/16 :goto_7

    .end local v25    # "t":Ljava/lang/Throwable;
    :cond_17
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_18
    const/4 v2, 0x0

    goto/16 :goto_3

    .restart local v14    # "rateCtlr":Lcom/motorola/messaging/transaction/RateController;
    :cond_19
    const/4 v2, 0x0

    goto/16 :goto_4

    .restart local v5    # "values":Landroid/content/ContentValues;
    .restart local v12    # "msgId":Ljava/lang/Long;
    .restart local v13    # "persister":Lcom/motorola/messaging/pdu/PduPersister;
    .restart local v17    # "respStatus":I
    .restart local v19    # "sendConf":Lcom/motorola/messaging/pdu/SendConf;
    .restart local v21    # "sentDate":J
    .local v25, "t":Lorg/apache/http/HttpException;
    .restart local v26    # "tokenKey":J
    :cond_1a
    const/4 v2, 0x0

    goto/16 :goto_f

    .end local v25    # "t":Lorg/apache/http/HttpException;
    .restart local v18    # "response":[B
    :cond_1b
    const/4 v2, 0x0

    goto/16 :goto_6

    :cond_1c
    const/4 v2, 0x0

    goto/16 :goto_9

    .restart local v8    # "confId":[B
    .restart local v15    # "reqId":[B
    :cond_1d
    const/4 v2, 0x0

    goto/16 :goto_a

    :cond_1e
    const/4 v2, 0x0

    goto/16 :goto_b

    .restart local v9    # "e":Ljava/lang/Throwable;
    :cond_1f
    const/4 v2, 0x0

    goto/16 :goto_d

    .end local v9    # "e":Ljava/lang/Throwable;
    .restart local v23    # "storedDate":J
    :cond_20
    const/4 v2, 0x0

    goto/16 :goto_c

    :cond_21
    const/4 v2, 0x0

    goto/16 :goto_e

    .restart local v11    # "messageId":Ljava/lang/String;
    .restart local v28    # "uri":Landroid/net/Uri;
    :cond_22
    const/4 v2, 0x0

    goto/16 :goto_10

    .end local v8    # "confId":[B
    .end local v11    # "messageId":Ljava/lang/String;
    .end local v15    # "reqId":[B
    .end local v17    # "respStatus":I
    .end local v18    # "response":[B
    .end local v19    # "sendConf":Lcom/motorola/messaging/pdu/SendConf;
    .end local v23    # "storedDate":J
    .end local v26    # "tokenKey":J
    .end local v28    # "uri":Landroid/net/Uri;
    .restart local v10    # "lineNumber":Ljava/lang/String;
    :cond_23
    const/4 v2, 0x0

    goto/16 :goto_8

    .line 156
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
