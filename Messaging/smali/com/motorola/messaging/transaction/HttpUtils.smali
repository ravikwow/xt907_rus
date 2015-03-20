.class public Lcom/motorola/messaging/transaction/HttpUtils;
.super Ljava/lang/Object;
.source "HttpUtils.java"


# static fields
.field private static final DEBUG:Z

.field private static final HDR_VALUE_ACCEPT:Ljava/lang/String;

.field private static final HDR_VALUE_ACCEPT_LANGUAGE:Ljava/lang/String;

.field private static final LOCAL_LOG:Z


# instance fields
.field private mAbort:Lorg/apache/http/client/methods/AbortableHttpRequest;

.field private mClient:Landroid/net/http/AndroidHttpClient;

.field private mContext:Landroid/content/Context;

.field private mProgress:Lcom/motorola/messaging/transaction/ProgressCallbackEntity;

.field private mTransaction:Lcom/motorola/messaging/transaction/Transaction;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 54
    sput-boolean v0, Lcom/motorola/messaging/transaction/HttpUtils;->DEBUG:Z

    .line 55
    sget-boolean v1, Lcom/motorola/messaging/transaction/HttpUtils;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v1, :cond_0

    :goto_0
    sput-boolean v0, Lcom/motorola/messaging/transaction/HttpUtils;->LOCAL_LOG:Z

    .line 83
    invoke-static {}, Lcom/motorola/messaging/transaction/HttpUtils;->getHttpAcceptLanguage()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/messaging/transaction/HttpUtils;->HDR_VALUE_ACCEPT_LANGUAGE:Ljava/lang/String;

    .line 89
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getMmsAcceptHeader()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/messaging/transaction/HttpUtils;->HDR_VALUE_ACCEPT:Ljava/lang/String;

    return-void

    .line 55
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/motorola/messaging/transaction/Transaction;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "transaction"    # Lcom/motorola/messaging/transaction/Transaction;

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/motorola/messaging/transaction/HttpUtils;->mContext:Landroid/content/Context;

    .line 93
    iput-object p2, p0, Lcom/motorola/messaging/transaction/HttpUtils;->mTransaction:Lcom/motorola/messaging/transaction/Transaction;

    .line 94
    return-void
.end method

.method private static addHeader(Lorg/apache/http/HttpRequest;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "req"    # Lorg/apache/http/HttpRequest;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 97
    sget-boolean v0, Lcom/motorola/messaging/transaction/HttpUtils;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 98
    const-string v0, "HttpUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addHeader, key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_0
    invoke-interface {p0, p1, p2}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method private static addLocaleToHttpAcceptLanguage(Ljava/lang/StringBuilder;Ljava/util/Locale;)V
    .locals 3
    .param p0, "builder"    # Ljava/lang/StringBuilder;
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 503
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 505
    .local v1, "language":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 506
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 510
    .local v0, "country":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 511
    const-string v2, "-"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    .end local v0    # "country":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private static final addUaprof(Lorg/apache/http/HttpRequest;)V
    .locals 5
    .param p0, "req"    # Lorg/apache/http/HttpRequest;

    .prologue
    .line 518
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getMmsXWapProfileURL()Ljava/lang/String;

    move-result-object v1

    .line 519
    .local v1, "uaprof":Ljava/lang/String;
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getMmsUaprofTagName()Ljava/lang/String;

    move-result-object v0

    .line 521
    .local v0, "tag":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 522
    const-string v2, "HttpUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MMS-STATUS - Add uaprof="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    invoke-static {p0, v0, v1}, Lcom/motorola/messaging/transaction/HttpUtils;->addHeader(Lorg/apache/http/HttpRequest;Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    :goto_0
    return-void

    .line 525
    :cond_0
    const-string v2, "HttpUtils"

    const-string v3, "uaprof not added."

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static createHttpClient(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;
    .locals 7
    .param p0, "userAgent"    # Ljava/lang/String;

    .prologue
    .line 463
    invoke-static {p0}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    .line 464
    .local v0, "client":Landroid/net/http/AndroidHttpClient;
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    .line 465
    .local v2, "params":Lorg/apache/http/params/HttpParams;
    const-string v4, "UTF-8"

    invoke-static {v2, v4}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 468
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getMmsConnectionTimeout()I

    move-result v1

    .line 469
    .local v1, "conTimeout":I
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getMmsNoResponseTimeout()I

    move-result v3

    .line 471
    .local v3, "soTimeout":I
    sget-boolean v4, Lcom/motorola/messaging/transaction/HttpUtils;->LOCAL_LOG:Z

    if-eqz v4, :cond_0

    .line 472
    const-string v4, "HttpUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createHttpClient, connection timeout="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", socket timeout="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", user agent="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    :cond_0
    invoke-static {v2, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 479
    invoke-static {v2, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 480
    return-object v0
.end method

.method private static getBody(Lorg/apache/http/HttpEntity;)[B
    .locals 14
    .param p0, "entity"    # Lorg/apache/http/HttpEntity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 357
    if-nez p0, :cond_1

    .line 358
    const/4 v0, 0x0

    .line 441
    :cond_0
    :goto_0
    return-object v0

    .line 361
    :cond_1
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v10

    long-to-int v8, v10

    .line 363
    .local v8, "size":I
    sget-boolean v10, Lcom/motorola/messaging/transaction/HttpUtils;->LOCAL_LOG:Z

    if-eqz v10, :cond_2

    .line 364
    const-string v10, "HttpUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "contentLength: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    :cond_2
    const/4 v2, 0x0

    .line 368
    .local v2, "dis":Ljava/io/DataInputStream;
    const/4 v0, 0x0

    .line 371
    .local v0, "body":[B
    if-lez v8, :cond_4

    .line 372
    :try_start_0
    new-array v0, v8, [B

    .line 373
    new-instance v3, Ljava/io/DataInputStream;

    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v3, v10}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 375
    .end local v2    # "dis":Ljava/io/DataInputStream;
    .local v3, "dis":Ljava/io/DataInputStream;
    :try_start_1
    invoke-virtual {v3, v0}, Ljava/io/DataInputStream;->readFully([B)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v2, v3

    .line 433
    .end local v3    # "dis":Ljava/io/DataInputStream;
    .restart local v2    # "dis":Ljava/io/DataInputStream;
    :cond_3
    :goto_1
    if-eqz v2, :cond_0

    .line 434
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FilterInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 436
    :catch_0
    move-exception v4

    .line 437
    .local v4, "e":Ljava/io/IOException;
    const-string v10, "HttpUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error closing input stream: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 376
    .end local v2    # "dis":Ljava/io/DataInputStream;
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v3    # "dis":Ljava/io/DataInputStream;
    :catch_1
    move-exception v4

    .line 377
    .local v4, "e":Ljava/io/EOFException;
    :try_start_3
    const-string v10, "HttpUtils"

    const-string v11, "Catched EOFException even if content-length is known"

    invoke-static {v10, v11}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v2, v3

    .line 378
    .end local v3    # "dis":Ljava/io/DataInputStream;
    .restart local v2    # "dis":Ljava/io/DataInputStream;
    goto :goto_1

    .line 379
    .end local v4    # "e":Ljava/io/EOFException;
    :cond_4
    if-gez v8, :cond_3

    .line 380
    :try_start_4
    sget-boolean v10, Lcom/motorola/messaging/transaction/HttpUtils;->LOCAL_LOG:Z

    if-eqz v10, :cond_5

    .line 381
    const-string v10, "HttpUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Suppose chunked transfer-encoding, chunked="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->isChunked()Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    :cond_5
    const/4 v6, 0x0

    .line 386
    .local v6, "readSize":I
    const/4 v9, 0x0

    .line 387
    .local v9, "totalSize":I
    const/16 v10, 0x2800

    new-array v1, v10, [B

    .line 388
    .local v1, "buf":[B
    const/4 v5, 0x0

    .line 389
    .local v5, "growingBody":[B
    new-instance v3, Ljava/io/DataInputStream;

    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v3, v10}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 390
    .end local v2    # "dis":Ljava/io/DataInputStream;
    .restart local v3    # "dis":Ljava/io/DataInputStream;
    const/4 v7, 0x1

    .line 393
    .local v7, "segNum":I
    const/4 v10, 0x0

    :try_start_5
    array-length v11, v1

    invoke-virtual {v3, v1, v10, v11}, Ljava/io/DataInputStream;->read([BII)I

    move-result v6

    .line 394
    move v9, v6

    .line 395
    new-array v5, v6, [B

    .line 396
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v1, v10, v5, v11, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 397
    move-object v0, v5

    .line 400
    :goto_2
    const/high16 v10, 0x100000

    if-gt v9, v10, :cond_6

    .line 401
    const/4 v10, 0x0

    array-length v11, v1

    invoke-virtual {v3, v1, v10, v11}, Ljava/io/DataInputStream;->read([BII)I

    move-result v6

    .line 402
    const/4 v10, -0x1

    if-ne v6, v10, :cond_8

    .line 414
    :cond_6
    sget-boolean v10, Lcom/motorola/messaging/transaction/HttpUtils;->LOCAL_LOG:Z

    if-eqz v10, :cond_7

    .line 415
    const-string v10, "HttpUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "segNum: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " readSize: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " totalSize: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    move-object v2, v3

    .line 429
    .end local v3    # "dis":Ljava/io/DataInputStream;
    .restart local v2    # "dis":Ljava/io/DataInputStream;
    goto/16 :goto_1

    .line 406
    .end local v2    # "dis":Ljava/io/DataInputStream;
    .restart local v3    # "dis":Ljava/io/DataInputStream;
    :cond_8
    add-int/lit8 v7, v7, 0x1

    .line 407
    add-int/2addr v9, v6

    .line 408
    new-array v5, v9, [B

    .line 409
    const/4 v10, 0x0

    const/4 v11, 0x0

    array-length v12, v0

    invoke-static {v0, v10, v5, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 410
    const/4 v10, 0x0

    array-length v11, v0

    invoke-static {v1, v10, v5, v11, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 411
    move-object v0, v5

    goto :goto_2

    .line 417
    :catch_2
    move-exception v4

    .line 418
    .local v4, "e":Ljava/io/IOException;
    if-eqz v0, :cond_9

    .line 419
    :try_start_6
    const-string v10, "HttpUtils"

    const-string v11, "Catched IOException, copy last buf"

    invoke-static {v10, v11}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    add-int/lit8 v7, v7, 0x1

    .line 421
    add-int/2addr v9, v6

    .line 422
    new-array v5, v9, [B

    .line 423
    const/4 v10, 0x0

    const/4 v11, 0x0

    array-length v12, v0

    invoke-static {v0, v10, v5, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 424
    const/4 v10, 0x0

    array-length v11, v0

    invoke-static {v1, v10, v5, v11, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 425
    move-object v0, v5

    move-object v2, v3

    .end local v3    # "dis":Ljava/io/DataInputStream;
    .restart local v2    # "dis":Ljava/io/DataInputStream;
    goto/16 :goto_1

    .line 427
    .end local v2    # "dis":Ljava/io/DataInputStream;
    .restart local v3    # "dis":Ljava/io/DataInputStream;
    :cond_9
    const-string v10, "HttpUtils"

    const-string v11, "Catched IOException"

    invoke-static {v10, v11}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object v2, v3

    .end local v3    # "dis":Ljava/io/DataInputStream;
    .restart local v2    # "dis":Ljava/io/DataInputStream;
    goto/16 :goto_1

    .line 432
    .end local v1    # "buf":[B
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "growingBody":[B
    .end local v6    # "readSize":I
    .end local v7    # "segNum":I
    .end local v9    # "totalSize":I
    :catchall_0
    move-exception v10

    .line 433
    :goto_3
    if-eqz v2, :cond_a

    .line 434
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FilterInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 432
    :cond_a
    :goto_4
    throw v10

    .line 436
    :catch_3
    move-exception v4

    .line 437
    .restart local v4    # "e":Ljava/io/IOException;
    const-string v11, "HttpUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error closing input stream: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 432
    .end local v2    # "dis":Ljava/io/DataInputStream;
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v3    # "dis":Ljava/io/DataInputStream;
    :catchall_1
    move-exception v10

    move-object v2, v3

    .end local v3    # "dis":Ljava/io/DataInputStream;
    .restart local v2    # "dis":Ljava/io/DataInputStream;
    goto :goto_3
.end method

.method private static getHttpAcceptLanguage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 488
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 489
    .local v1, "locale":Ljava/util/Locale;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 491
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-static {v0, v1}, Lcom/motorola/messaging/transaction/HttpUtils;->addLocaleToHttpAcceptLanguage(Ljava/lang/StringBuilder;Ljava/util/Locale;)V

    .line 492
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 493
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 494
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    :cond_0
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, v2}, Lcom/motorola/messaging/transaction/HttpUtils;->addLocaleToHttpAcceptLanguage(Ljava/lang/StringBuilder;Ljava/util/Locale;)V

    .line 498
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static handleGenericException(Ljava/lang/Exception;)V
    .locals 3
    .param p0, "exception"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 447
    const-string v1, "HttpUtils"

    invoke-static {p0}, Lcom/motorola/messaging/logger/Logger;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MMS-STATUS - generic exception, msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 449
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "HttpUtils"

    invoke-static {v1, v0}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static handleHttpException(Ljava/lang/Exception;)V
    .locals 3
    .param p0, "exception"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;
        }
    .end annotation

    .prologue
    .line 456
    const-string v1, "HttpUtils"

    invoke-static {p0}, Lcom/motorola/messaging/logger/Logger;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MMS-STATUS - http exception, msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 458
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "HttpUtils"

    invoke-static {v1, v0}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    new-instance v1, Lorg/apache/http/HttpException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static setProprietaryHttpHeader(Landroid/content/Context;Lorg/apache/http/HttpRequest;Ljava/lang/String;)V
    .locals 15
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "req"    # Lorg/apache/http/HttpRequest;
    .param p2, "parameters"    # Ljava/lang/String;

    .prologue
    .line 530
    sget-boolean v12, Lcom/motorola/messaging/transaction/HttpUtils;->LOCAL_LOG:Z

    if-eqz v12, :cond_0

    .line 531
    const-string v12, "HttpUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "setProprietaryHttpHeader IN, parameters="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    :cond_0
    const-string v12, "$mdn"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 535
    invoke-static {}, Lcom/motorola/messaging/contact/ContactUtils;->getOwnMSISDN()Ljava/lang/String;

    move-result-object v6

    .line 536
    .local v6, "mdn":Ljava/lang/String;
    const-string v12, "+"

    invoke-virtual {v6, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 537
    const/4 v12, 0x1

    invoke-virtual {v6, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 541
    :cond_1
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getMmsCountryCode()Ljava/lang/String;

    move-result-object v3

    .line 542
    .local v3, "countryCode":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 543
    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 544
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 548
    :cond_2
    const-string v12, "$mdn"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 551
    .end local v3    # "countryCode":Ljava/lang/String;
    .end local v6    # "mdn":Ljava/lang/String;
    :cond_3
    const-string v12, "$min"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 552
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getCdmaMin()Ljava/lang/String;

    move-result-object v2

    .line 553
    .local v2, "cdmaMin":Ljava/lang/String;
    const-string v12, "$min"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 556
    .end local v2    # "cdmaMin":Ljava/lang/String;
    :cond_4
    sget-boolean v12, Lcom/motorola/messaging/transaction/HttpUtils;->LOCAL_LOG:Z

    if-eqz v12, :cond_5

    .line 557
    const-string v12, "HttpUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "setProprietaryHttpHeader OUT, parameters="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    :cond_5
    const-string v12, "\\|"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 562
    .local v8, "paramList":[Ljava/lang/String;
    move-object v1, v8

    .local v1, "arr$":[Ljava/lang/String;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_7

    aget-object v9, v1, v4

    .line 563
    .local v9, "paramPair":Ljava/lang/String;
    const-string v12, ":"

    const/4 v13, 0x2

    invoke-virtual {v9, v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v10

    .line 564
    .local v10, "splitPair":[Ljava/lang/String;
    array-length v12, v10

    const/4 v13, 0x2

    if-ne v12, v13, :cond_6

    .line 565
    const/4 v12, 0x0

    aget-object v12, v10, v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 566
    .local v7, "name":Ljava/lang/String;
    const/4 v12, 0x1

    aget-object v12, v10, v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 567
    .local v11, "value":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_6

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 568
    move-object/from16 v0, p1

    invoke-static {v0, v7, v11}, Lcom/motorola/messaging/transaction/HttpUtils;->addHeader(Lorg/apache/http/HttpRequest;Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    .end local v7    # "name":Ljava/lang/String;
    .end local v11    # "value":Ljava/lang/String;
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 572
    .end local v9    # "paramPair":Ljava/lang/String;
    .end local v10    # "splitPair":[Ljava/lang/String;
    :cond_7
    return-void
.end method


# virtual methods
.method protected abort(Z)V
    .locals 4
    .param p1, "isUpload"    # Z

    .prologue
    const/4 v3, 0x0

    .line 326
    iget-object v0, p0, Lcom/motorola/messaging/transaction/HttpUtils;->mAbort:Lorg/apache/http/client/methods/AbortableHttpRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/messaging/transaction/HttpUtils;->mClient:Landroid/net/http/AndroidHttpClient;

    if-nez v0, :cond_1

    .line 354
    :cond_0
    :goto_0
    return-void

    .line 333
    :cond_1
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/motorola/messaging/transaction/HttpUtils;->mProgress:Lcom/motorola/messaging/transaction/ProgressCallbackEntity;

    if-eqz v0, :cond_3

    .line 334
    sget-boolean v0, Lcom/motorola/messaging/transaction/HttpUtils;->LOCAL_LOG:Z

    if-eqz v0, :cond_2

    .line 335
    const-string v0, "HttpUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Aborting http stream, progress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/messaging/transaction/HttpUtils;->mProgress:Lcom/motorola/messaging/transaction/ProgressCallbackEntity;

    invoke-virtual {v2}, Lcom/motorola/messaging/transaction/ProgressCallbackEntity;->getProgress()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    :cond_2
    iget-object v0, p0, Lcom/motorola/messaging/transaction/HttpUtils;->mProgress:Lcom/motorola/messaging/transaction/ProgressCallbackEntity;

    invoke-virtual {v0}, Lcom/motorola/messaging/transaction/ProgressCallbackEntity;->abort()V

    .line 341
    :cond_3
    sget-boolean v0, Lcom/motorola/messaging/transaction/HttpUtils;->LOCAL_LOG:Z

    if-eqz v0, :cond_4

    .line 342
    const-string v0, "HttpUtils"

    const-string v1, "Aborting HttpPost/HttpGet"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    :cond_4
    iget-object v0, p0, Lcom/motorola/messaging/transaction/HttpUtils;->mAbort:Lorg/apache/http/client/methods/AbortableHttpRequest;

    invoke-interface {v0}, Lorg/apache/http/client/methods/AbortableHttpRequest;->abort()V

    .line 346
    iput-object v3, p0, Lcom/motorola/messaging/transaction/HttpUtils;->mAbort:Lorg/apache/http/client/methods/AbortableHttpRequest;

    .line 348
    sget-boolean v0, Lcom/motorola/messaging/transaction/HttpUtils;->LOCAL_LOG:Z

    if-eqz v0, :cond_5

    .line 349
    const-string v0, "HttpUtils"

    const-string v1, "Close AndroidHttpClient"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    :cond_5
    iget-object v0, p0, Lcom/motorola/messaging/transaction/HttpUtils;->mClient:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 353
    iput-object v3, p0, Lcom/motorola/messaging/transaction/HttpUtils;->mClient:Landroid/net/http/AndroidHttpClient;

    goto :goto_0
.end method

.method protected httpConnection(JLjava/net/InetAddress;Ljava/lang/String;[BILcom/motorola/messaging/transaction/Transaction$TransactionTimeout;ZLjava/lang/String;I)[B
    .locals 24
    .param p1, "token"    # J
    .param p3, "inetAddr"    # Ljava/net/InetAddress;
    .param p4, "url"    # Ljava/lang/String;
    .param p5, "pdu"    # [B
    .param p6, "method"    # I
    .param p7, "timeout"    # Lcom/motorola/messaging/transaction/Transaction$TransactionTimeout;
    .param p8, "isProxySet"    # Z
    .param p9, "proxyHost"    # Ljava/lang/String;
    .param p10, "proxyPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    sget-boolean v2, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v2, :cond_0

    .line 124
    const-string v2, "HttpUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "httpConnection, app version="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getAppVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 130
    :cond_0
    if-nez p4, :cond_1

    .line 131
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "URL must not be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 134
    :cond_1
    const/4 v9, 0x0

    .line 136
    .local v9, "client":Landroid/net/http/AndroidHttpClient;
    :try_start_0
    new-instance v13, Ljava/net/URI;

    move-object/from16 v0, p4

    invoke-direct {v13, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 137
    .local v13, "hostUrl":Ljava/net/URI;
    sget-boolean v2, Lcom/motorola/messaging/transaction/HttpUtils;->LOCAL_LOG:Z

    if-eqz v2, :cond_2

    .line 138
    const-string v2, "HttpUtils"

    const-string v3, "httpConnection: params list"

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v3, "HttpUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\tmethod\t\t= "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v2, 0x1

    move/from16 v0, p6

    if-ne v0, v2, :cond_5

    const-string v2, "POST"

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v2, "HttpUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\ttoken\t\t= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p1

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string v2, "HttpUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\tip address\t= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v2, "HttpUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\turl\t\t= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v2, "HttpUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\thost\t\t= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v13}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v2, "HttpUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\tport\t\t= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v13}, Ljava/net/URI;->getPort()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v2, "HttpUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\tisProxySet\t= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string v2, "HttpUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\tproxyHost\t= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p9

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string v2, "HttpUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\tproxyPort\t= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p10

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :cond_2
    sget-boolean v2, Lcom/motorola/messaging/transaction/HttpUtils;->LOCAL_LOG:Z

    if-eqz v2, :cond_3

    .line 153
    const-string v2, "HttpUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HttpHost created for host="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v13}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :cond_3
    new-instance v22, Lorg/apache/http/HttpHost;

    invoke-virtual {v13}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13}, Ljava/net/URI;->getPort()I

    move-result v3

    const-string v4, "http"

    move-object/from16 v0, v22

    invoke-direct {v0, v2, v3, v4}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 162
    .local v22, "target":Lorg/apache/http/HttpHost;
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->shallGenerateUserAgent()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 165
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->generateUserAgent()Ljava/lang/String;

    move-result-object v23

    .line 174
    .local v23, "userAgent":Ljava/lang/String;
    :goto_1
    const-string v2, "HttpUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MMS-STATUS - Add User agent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-static/range {v23 .. v23}, Lcom/motorola/messaging/transaction/HttpUtils;->createHttpClient(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v9

    .line 176
    const/16 v17, 0x0

    .line 177
    .local v17, "req":Lorg/apache/http/HttpRequest;
    packed-switch p6, :pswitch_data_0

    .line 201
    const-string v2, "HttpUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown HTTP method: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Must be one of POST["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] or GET["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/apache/http/HttpException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    const/4 v8, 0x0

    .line 301
    if-eqz v9, :cond_4

    .line 302
    :goto_2
    invoke-virtual {v9}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 306
    .end local v13    # "hostUrl":Ljava/net/URI;
    .end local v17    # "req":Lorg/apache/http/HttpRequest;
    .end local v22    # "target":Lorg/apache/http/HttpHost;
    .end local v23    # "userAgent":Ljava/lang/String;
    :cond_4
    :goto_3
    return-object v8

    .line 139
    .restart local v13    # "hostUrl":Ljava/net/URI;
    :cond_5
    const/4 v2, 0x2

    move/from16 v0, p6

    if-ne v0, v2, :cond_6

    :try_start_1
    const-string v2, "GET"

    goto/16 :goto_0

    :cond_6
    const-string v2, "UNKNOWN"

    goto/16 :goto_0

    .line 167
    .restart local v22    # "target":Lorg/apache/http/HttpHost;
    :cond_7
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getMmsUserAgentFormat()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 168
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->generateUserAgentFromFormat()Ljava/lang/String;

    move-result-object v23

    .restart local v23    # "userAgent":Ljava/lang/String;
    goto :goto_1

    .line 171
    .end local v23    # "userAgent":Ljava/lang/String;
    :cond_8
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getMmsUserAgent()Ljava/lang/String;

    move-result-object v23

    .restart local v23    # "userAgent":Ljava/lang/String;
    goto :goto_1

    .line 179
    .restart local v17    # "req":Lorg/apache/http/HttpRequest;
    :pswitch_0
    new-instance v2, Lcom/motorola/messaging/transaction/ProgressCallbackEntity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/messaging/transaction/HttpUtils;->mContext:Landroid/content/Context;

    move-wide/from16 v4, p1

    move-object/from16 v6, p5

    move-object/from16 v7, p7

    invoke-direct/range {v2 .. v7}, Lcom/motorola/messaging/transaction/ProgressCallbackEntity;-><init>(Landroid/content/Context;J[BLcom/motorola/messaging/transaction/Transaction$TransactionTimeout;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/motorola/messaging/transaction/HttpUtils;->mProgress:Lcom/motorola/messaging/transaction/ProgressCallbackEntity;

    .line 181
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/messaging/transaction/HttpUtils;->mProgress:Lcom/motorola/messaging/transaction/ProgressCallbackEntity;

    const-string v3, "application/vnd.wap.mms-message"

    invoke-virtual {v2, v3}, Lorg/apache/http/entity/AbstractHttpEntity;->setContentType(Ljava/lang/String;)V

    .line 183
    sget-boolean v2, Lcom/motorola/messaging/transaction/HttpUtils;->LOCAL_LOG:Z

    if-eqz v2, :cond_9

    .line 184
    const-string v2, "HttpUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Post created for url="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    :cond_9
    new-instance v15, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, p4

    invoke-direct {v15, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 187
    .local v15, "post":Lorg/apache/http/client/methods/HttpPost;
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/motorola/messaging/transaction/HttpUtils;->mAbort:Lorg/apache/http/client/methods/AbortableHttpRequest;

    .line 188
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/messaging/transaction/HttpUtils;->mProgress:Lcom/motorola/messaging/transaction/ProgressCallbackEntity;

    invoke-virtual {v15, v2}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 189
    move-object/from16 v17, v15

    .line 208
    .end local v15    # "post":Lorg/apache/http/client/methods/HttpPost;
    :goto_4
    invoke-virtual {v9}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v14

    .line 209
    .local v14, "params":Lorg/apache/http/params/HttpParams;
    if-eqz p8, :cond_10

    .line 212
    sget-boolean v2, Lcom/motorola/messaging/transaction/HttpUtils;->LOCAL_LOG:Z

    if-eqz v2, :cond_a

    .line 213
    const-string v2, "HttpUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Proxy host="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p9

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    :cond_a
    new-instance v2, Lorg/apache/http/HttpHost;

    move-object/from16 v0, p9

    move/from16 v1, p10

    invoke-direct {v2, v0, v1}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    invoke-static {v14, v2}, Lorg/apache/http/conn/params/ConnRouteParams;->setDefaultProxy(Lorg/apache/http/params/HttpParams;Lorg/apache/http/HttpHost;)V

    .line 226
    :goto_5
    move-object/from16 v0, v17

    invoke-interface {v0, v14}, Lorg/apache/http/HttpRequest;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 229
    const-string v2, "Accept"

    sget-object v3, Lcom/motorola/messaging/transaction/HttpUtils;->HDR_VALUE_ACCEPT:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-static {v0, v2, v3}, Lcom/motorola/messaging/transaction/HttpUtils;->addHeader(Lorg/apache/http/HttpRequest;Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-static/range {v17 .. v17}, Lcom/motorola/messaging/transaction/HttpUtils;->addUaprof(Lorg/apache/http/HttpRequest;)V

    .line 233
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getProprietaryHttpHeader()Ljava/lang/String;

    move-result-object v16

    .line 235
    .local v16, "proprietaryHttpHeader":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    invoke-static {}, Lcom/motorola/messaging/transaction/NetworkManager;->isRequiredMMSC()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 236
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/messaging/transaction/HttpUtils;->mContext:Landroid/content/Context;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v2, v0, v1}, Lcom/motorola/messaging/transaction/HttpUtils;->setProprietaryHttpHeader(Landroid/content/Context;Lorg/apache/http/HttpRequest;Ljava/lang/String;)V

    .line 239
    :cond_b
    const-string v2, "Accept-Language"

    sget-object v3, Lcom/motorola/messaging/transaction/HttpUtils;->HDR_VALUE_ACCEPT_LANGUAGE:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-static {v0, v2, v3}, Lcom/motorola/messaging/transaction/HttpUtils;->addHeader(Lorg/apache/http/HttpRequest;Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/motorola/messaging/transaction/HttpUtils;->mClient:Landroid/net/http/AndroidHttpClient;

    .line 242
    const/16 v18, 0x0

    .line 244
    .local v18, "response":Lorg/apache/http/HttpResponse;
    sget-boolean v2, Lcom/motorola/messaging/transaction/HttpUtils;->LOCAL_LOG:Z

    if-eqz v2, :cond_c

    .line 245
    const-string v2, "HttpUtils"

    const-string v3, "MMS-STATUS - execute transaction - START"

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    :cond_c
    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v9, v0, v1}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v18

    .line 250
    sget-boolean v2, Lcom/motorola/messaging/transaction/HttpUtils;->LOCAL_LOG:Z

    if-eqz v2, :cond_d

    .line 251
    const-string v2, "HttpUtils"

    const-string v3, "MMS-STATUS - execute transaction - END"

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/messaging/transaction/HttpUtils;->mTransaction:Lcom/motorola/messaging/transaction/Transaction;

    invoke-virtual {v2}, Lcom/motorola/messaging/transaction/Transaction;->getState()Lcom/motorola/messaging/transaction/TransactionState;

    move-result-object v19

    .line 255
    .local v19, "state":Lcom/motorola/messaging/transaction/TransactionState;
    invoke-virtual/range {v19 .. v19}, Lcom/motorola/messaging/transaction/TransactionState;->getState()Lcom/motorola/messaging/transaction/Transaction$State;

    move-result-object v2

    sget-object v3, Lcom/motorola/messaging/transaction/Transaction$State;->FAILED:Lcom/motorola/messaging/transaction/Transaction$State;

    if-ne v2, v3, :cond_12

    .line 256
    new-instance v2, Ljava/io/IOException;

    const-string v3, "MMS-STATUS - Transaction requested to abort (Transaction.State.FAILED)"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lorg/apache/http/HttpException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 285
    .end local v13    # "hostUrl":Ljava/net/URI;
    .end local v14    # "params":Lorg/apache/http/params/HttpParams;
    .end local v16    # "proprietaryHttpHeader":Ljava/lang/String;
    .end local v17    # "req":Lorg/apache/http/HttpRequest;
    .end local v18    # "response":Lorg/apache/http/HttpResponse;
    .end local v19    # "state":Lcom/motorola/messaging/transaction/TransactionState;
    .end local v22    # "target":Lorg/apache/http/HttpHost;
    .end local v23    # "userAgent":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 286
    .local v10, "e":Ljava/net/URISyntaxException;
    :try_start_2
    invoke-static {v10}, Lcom/motorola/messaging/transaction/HttpUtils;->handleGenericException(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 301
    if-eqz v9, :cond_e

    .line 302
    .end local v10    # "e":Ljava/net/URISyntaxException;
    :goto_6
    invoke-virtual {v9}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 306
    :cond_e
    const/4 v8, 0x0

    goto/16 :goto_3

    .line 193
    .restart local v13    # "hostUrl":Ljava/net/URI;
    .restart local v17    # "req":Lorg/apache/http/HttpRequest;
    .restart local v22    # "target":Lorg/apache/http/HttpHost;
    .restart local v23    # "userAgent":Ljava/lang/String;
    :pswitch_1
    :try_start_3
    sget-boolean v2, Lcom/motorola/messaging/transaction/HttpUtils;->LOCAL_LOG:Z

    if-eqz v2, :cond_f

    .line 194
    const-string v2, "HttpUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get created for url="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :cond_f
    new-instance v12, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, p4

    invoke-direct {v12, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 197
    .local v12, "get":Lorg/apache/http/client/methods/HttpGet;
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/motorola/messaging/transaction/HttpUtils;->mAbort:Lorg/apache/http/client/methods/AbortableHttpRequest;

    .line 198
    move-object/from16 v17, v12

    .line 199
    goto/16 :goto_4

    .line 220
    .end local v12    # "get":Lorg/apache/http/client/methods/HttpGet;
    .restart local v14    # "params":Lorg/apache/http/params/HttpParams;
    :cond_10
    sget-boolean v2, Lcom/motorola/messaging/transaction/HttpUtils;->LOCAL_LOG:Z

    if-eqz v2, :cond_11

    .line 221
    const-string v2, "HttpUtils"

    const-string v3, "Set the proxy host to NO_HOST"

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    :cond_11
    sget-object v2, Lorg/apache/http/conn/params/ConnRouteParams;->NO_HOST:Lorg/apache/http/HttpHost;

    invoke-static {v14, v2}, Lorg/apache/http/conn/params/ConnRouteParams;->setDefaultProxy(Lorg/apache/http/params/HttpParams;Lorg/apache/http/HttpHost;)V
    :try_end_3
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lorg/apache/http/HttpException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_5

    .line 287
    .end local v13    # "hostUrl":Ljava/net/URI;
    .end local v14    # "params":Lorg/apache/http/params/HttpParams;
    .end local v17    # "req":Lorg/apache/http/HttpRequest;
    .end local v22    # "target":Lorg/apache/http/HttpHost;
    .end local v23    # "userAgent":Ljava/lang/String;
    :catch_1
    move-exception v10

    .line 288
    .local v10, "e":Ljava/lang/IllegalStateException;
    :try_start_4
    invoke-static {v10}, Lcom/motorola/messaging/transaction/HttpUtils;->handleGenericException(Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 301
    if-eqz v9, :cond_e

    goto :goto_6

    .line 259
    .end local v10    # "e":Ljava/lang/IllegalStateException;
    .restart local v13    # "hostUrl":Ljava/net/URI;
    .restart local v14    # "params":Lorg/apache/http/params/HttpParams;
    .restart local v16    # "proprietaryHttpHeader":Ljava/lang/String;
    .restart local v17    # "req":Lorg/apache/http/HttpRequest;
    .restart local v18    # "response":Lorg/apache/http/HttpResponse;
    .restart local v19    # "state":Lcom/motorola/messaging/transaction/TransactionState;
    .restart local v22    # "target":Lorg/apache/http/HttpHost;
    .restart local v23    # "userAgent":Ljava/lang/String;
    :cond_12
    :try_start_5
    invoke-interface/range {v18 .. v18}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v20

    .line 260
    .local v20, "status":Lorg/apache/http/StatusLine;
    invoke-interface/range {v20 .. v20}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v21

    .line 261
    .local v21, "statusCode":I
    const/16 v2, 0xc8

    move/from16 v0, v21

    if-eq v0, v2, :cond_14

    .line 262
    const-string v2, "HttpUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MMS-STATUS - HTTP error, statusCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {v20 .. v20}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", reasonPhrase="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {v20 .. v20}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    const/16 v2, 0x194

    move/from16 v0, v21

    if-ne v0, v2, :cond_13

    .line 267
    new-instance v2, Lorg/apache/http/HttpException;

    const-string v3, "404"

    invoke-direct {v2, v3}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_5
    .catch Ljava/net/URISyntaxException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Lorg/apache/http/HttpException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 289
    .end local v13    # "hostUrl":Ljava/net/URI;
    .end local v14    # "params":Lorg/apache/http/params/HttpParams;
    .end local v16    # "proprietaryHttpHeader":Ljava/lang/String;
    .end local v17    # "req":Lorg/apache/http/HttpRequest;
    .end local v18    # "response":Lorg/apache/http/HttpResponse;
    .end local v19    # "state":Lcom/motorola/messaging/transaction/TransactionState;
    .end local v20    # "status":Lorg/apache/http/StatusLine;
    .end local v21    # "statusCode":I
    .end local v22    # "target":Lorg/apache/http/HttpHost;
    .end local v23    # "userAgent":Ljava/lang/String;
    :catch_2
    move-exception v10

    .line 290
    .local v10, "e":Ljava/lang/IllegalArgumentException;
    :try_start_6
    invoke-static {v10}, Lcom/motorola/messaging/transaction/HttpUtils;->handleGenericException(Ljava/lang/Exception;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 301
    if-eqz v9, :cond_e

    goto/16 :goto_6

    .line 269
    .end local v10    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v13    # "hostUrl":Ljava/net/URI;
    .restart local v14    # "params":Lorg/apache/http/params/HttpParams;
    .restart local v16    # "proprietaryHttpHeader":Ljava/lang/String;
    .restart local v17    # "req":Lorg/apache/http/HttpRequest;
    .restart local v18    # "response":Lorg/apache/http/HttpResponse;
    .restart local v19    # "state":Lcom/motorola/messaging/transaction/TransactionState;
    .restart local v20    # "status":Lorg/apache/http/StatusLine;
    .restart local v21    # "statusCode":I
    .restart local v22    # "target":Lorg/apache/http/HttpHost;
    .restart local v23    # "userAgent":Ljava/lang/String;
    :cond_13
    :try_start_7
    new-instance v2, Lorg/apache/http/HttpException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HTTP error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {v20 .. v20}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_7
    .catch Ljava/net/URISyntaxException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/net/SocketException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Lorg/apache/http/HttpException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 291
    .end local v13    # "hostUrl":Ljava/net/URI;
    .end local v14    # "params":Lorg/apache/http/params/HttpParams;
    .end local v16    # "proprietaryHttpHeader":Ljava/lang/String;
    .end local v17    # "req":Lorg/apache/http/HttpRequest;
    .end local v18    # "response":Lorg/apache/http/HttpResponse;
    .end local v19    # "state":Lcom/motorola/messaging/transaction/TransactionState;
    .end local v20    # "status":Lorg/apache/http/StatusLine;
    .end local v21    # "statusCode":I
    .end local v22    # "target":Lorg/apache/http/HttpHost;
    .end local v23    # "userAgent":Ljava/lang/String;
    :catch_3
    move-exception v10

    .line 292
    .local v10, "e":Lorg/apache/http/conn/ConnectTimeoutException;
    :try_start_8
    invoke-static {v10}, Lcom/motorola/messaging/transaction/HttpUtils;->handleHttpException(Ljava/lang/Exception;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 301
    if-eqz v9, :cond_e

    goto/16 :goto_6

    .line 273
    .end local v10    # "e":Lorg/apache/http/conn/ConnectTimeoutException;
    .restart local v13    # "hostUrl":Ljava/net/URI;
    .restart local v14    # "params":Lorg/apache/http/params/HttpParams;
    .restart local v16    # "proprietaryHttpHeader":Ljava/lang/String;
    .restart local v17    # "req":Lorg/apache/http/HttpRequest;
    .restart local v18    # "response":Lorg/apache/http/HttpResponse;
    .restart local v19    # "state":Lcom/motorola/messaging/transaction/TransactionState;
    .restart local v20    # "status":Lorg/apache/http/StatusLine;
    .restart local v21    # "statusCode":I
    .restart local v22    # "target":Lorg/apache/http/HttpHost;
    .restart local v23    # "userAgent":Ljava/lang/String;
    :cond_14
    :try_start_9
    invoke-interface/range {v18 .. v18}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v11

    .line 274
    .local v11, "entity":Lorg/apache/http/HttpEntity;
    invoke-static {v11}, Lcom/motorola/messaging/transaction/HttpUtils;->getBody(Lorg/apache/http/HttpEntity;)[B

    move-result-object v8

    .line 275
    .local v8, "body":[B
    if-eqz v11, :cond_15

    .line 276
    invoke-interface {v11}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 279
    :cond_15
    sget-boolean v2, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v2, :cond_16

    .line 280
    const-string v2, "HttpUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "httpConnection (finished) thread: "

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

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/net/URISyntaxException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/net/SocketException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Lorg/apache/http/HttpException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 301
    :cond_16
    if-eqz v9, :cond_4

    goto/16 :goto_2

    .line 293
    .end local v8    # "body":[B
    .end local v11    # "entity":Lorg/apache/http/HttpEntity;
    .end local v13    # "hostUrl":Ljava/net/URI;
    .end local v14    # "params":Lorg/apache/http/params/HttpParams;
    .end local v16    # "proprietaryHttpHeader":Ljava/lang/String;
    .end local v17    # "req":Lorg/apache/http/HttpRequest;
    .end local v18    # "response":Lorg/apache/http/HttpResponse;
    .end local v19    # "state":Lcom/motorola/messaging/transaction/TransactionState;
    .end local v20    # "status":Lorg/apache/http/StatusLine;
    .end local v21    # "statusCode":I
    .end local v22    # "target":Lorg/apache/http/HttpHost;
    .end local v23    # "userAgent":Ljava/lang/String;
    :catch_4
    move-exception v10

    .line 294
    .local v10, "e":Ljava/net/SocketException;
    :try_start_a
    invoke-static {v10}, Lcom/motorola/messaging/transaction/HttpUtils;->handleGenericException(Ljava/lang/Exception;)V

    .line 301
    if-eqz v9, :cond_e

    goto/16 :goto_6

    .line 295
    .end local v10    # "e":Ljava/net/SocketException;
    :catch_5
    move-exception v10

    .line 296
    .local v10, "e":Lorg/apache/http/HttpException;
    invoke-static {v10}, Lcom/motorola/messaging/transaction/HttpUtils;->handleHttpException(Ljava/lang/Exception;)V

    .line 301
    if-eqz v9, :cond_e

    goto/16 :goto_6

    .line 297
    .end local v10    # "e":Lorg/apache/http/HttpException;
    :catch_6
    move-exception v10

    .line 298
    .local v10, "e":Ljava/lang/Exception;
    invoke-static {v10}, Lcom/motorola/messaging/transaction/HttpUtils;->handleGenericException(Ljava/lang/Exception;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 301
    if-eqz v9, :cond_e

    goto/16 :goto_6

    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v9, :cond_17

    .line 302
    invoke-virtual {v9}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 301
    :cond_17
    throw v2

    .line 177
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected shouldAbort(Z)Z
    .locals 5
    .param p1, "isUpload"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 310
    if-nez p1, :cond_1

    .line 322
    :cond_0
    :goto_0
    return v2

    .line 316
    :cond_1
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getMmsAbortProgressLimit()I

    move-result v1

    .line 317
    .local v1, "progressLimit":I
    iget-object v4, p0, Lcom/motorola/messaging/transaction/HttpUtils;->mProgress:Lcom/motorola/messaging/transaction/ProgressCallbackEntity;

    if-eqz v4, :cond_2

    if-eqz v1, :cond_2

    iget-object v4, p0, Lcom/motorola/messaging/transaction/HttpUtils;->mProgress:Lcom/motorola/messaging/transaction/ProgressCallbackEntity;

    invoke-virtual {v4}, Lcom/motorola/messaging/transaction/ProgressCallbackEntity;->getProgress()I

    move-result v4

    if-lt v4, v1, :cond_2

    move v0, v2

    .line 322
    .local v0, "canNotAbort":Z
    :goto_1
    if-eqz v0, :cond_0

    move v2, v3

    goto :goto_0

    .end local v0    # "canNotAbort":Z
    :cond_2
    move v0, v3

    .line 317
    goto :goto_1
.end method
