.class public Lcom/android/mms/transaction/HttpUtils;
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

.field private mProgress:Lcom/android/mms/transaction/ProgressCallbackEntity;

.field private mTransaction:Lcom/android/mms/transaction/Transaction;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 61
    sput-boolean v0, Lcom/android/mms/transaction/HttpUtils;->DEBUG:Z

    .line 62
    sget-boolean v1, Lcom/android/mms/transaction/HttpUtils;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "Mms:transaction"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/mms/transaction/HttpUtils;->LOCAL_LOG:Z

    .line 90
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/transaction/HttpUtils;->getCurrentAcceptLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/transaction/HttpUtils;->HDR_VALUE_ACCEPT_LANGUAGE:Ljava/lang/String;

    .line 96
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsAcceptHeader()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/transaction/HttpUtils;->HDR_VALUE_ACCEPT:Ljava/lang/String;

    return-void

    .line 62
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 104
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/mms/transaction/Transaction;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "transaction"    # Lcom/android/mms/transaction/Transaction;

    .prologue
    .line 99
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/android/mms/transaction/HttpUtils;->mContext:Landroid/content/Context;

    .line 101
    iput-object p2, p0, Lcom/android/mms/transaction/HttpUtils;->mTransaction:Lcom/android/mms/transaction/Transaction;

    .line 102
    return-void
.end method

.method private static addLocaleToHttpAcceptLanguage(Ljava/lang/StringBuilder;Ljava/util/Locale;)V
    .locals 3
    .param p0, "builder"    # Ljava/lang/StringBuilder;
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 575
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/transaction/HttpUtils;->convertObsoleteLanguageCodeToNew(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 576
    .local v1, "language":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 577
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 579
    .local v0, "country":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 580
    const-string v2, "-"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    .end local v0    # "country":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private static convertObsoleteLanguageCodeToNew(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "langCode"    # Ljava/lang/String;

    .prologue
    .line 557
    if-nez p0, :cond_1

    .line 558
    const/4 p0, 0x0

    .line 570
    .end local p0    # "langCode":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 560
    .restart local p0    # "langCode":Ljava/lang/String;
    :cond_1
    const-string v0, "iw"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 562
    const-string p0, "he"

    goto :goto_0

    .line 563
    :cond_2
    const-string v0, "in"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 565
    const-string p0, "id"

    goto :goto_0

    .line 566
    :cond_3
    const-string v0, "ji"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 568
    const-string p0, "yi"

    goto :goto_0
.end method

.method private static createHttpClient(Landroid/content/Context;)Landroid/net/http/AndroidHttpClient;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 510
    invoke-static {}, Lcom/android/mms/MmsConfig;->getUserAgent()Ljava/lang/String;

    move-result-object v4

    .line 511
    .local v4, "userAgent":Ljava/lang/String;
    invoke-static {v4, p0}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;Landroid/content/Context;)Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    .line 512
    .local v0, "client":Landroid/net/http/AndroidHttpClient;
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    .line 513
    .local v2, "params":Lorg/apache/http/params/HttpParams;
    const-string v5, "UTF-8"

    invoke-static {v2, v5}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 516
    const/16 v1, 0x7530

    .line 517
    .local v1, "conTimeout":I
    invoke-static {}, Lcom/android/mms/MmsConfig;->getHttpSocketTimeout()I

    move-result v3

    .line 519
    .local v3, "soTimeout":I
    sget-boolean v5, Lcom/android/mms/transaction/HttpUtils;->LOCAL_LOG:Z

    if-eqz v5, :cond_0

    .line 520
    const-string v5, "Mms:transaction"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createHttpClient, connection timeout="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", socket timeout="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", user agent="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    :cond_0
    invoke-static {v2, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 526
    invoke-static {v2, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 527
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
    .line 400
    if-nez p0, :cond_1

    .line 401
    const/4 v0, 0x0

    .line 490
    :cond_0
    :goto_0
    return-object v0

    .line 404
    :cond_1
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v10

    long-to-int v8, v10

    .line 406
    .local v8, "size":I
    sget-boolean v10, Lcom/android/mms/transaction/HttpUtils;->LOCAL_LOG:Z

    if-eqz v10, :cond_2

    .line 407
    const-string v10, "Mms:transaction"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "contentLength: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :cond_2
    const/4 v2, 0x0

    .line 411
    .local v2, "dis":Ljava/io/DataInputStream;
    const/4 v0, 0x0

    .line 414
    .local v0, "body":[B
    if-lez v8, :cond_4

    .line 415
    :try_start_0
    new-array v0, v8, [B

    .line 416
    new-instance v3, Ljava/io/DataInputStream;

    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v3, v10}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 418
    .end local v2    # "dis":Ljava/io/DataInputStream;
    .local v3, "dis":Ljava/io/DataInputStream;
    :try_start_1
    invoke-virtual {v3, v0}, Ljava/io/DataInputStream;->readFully([B)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v2, v3

    .line 481
    .end local v3    # "dis":Ljava/io/DataInputStream;
    .restart local v2    # "dis":Ljava/io/DataInputStream;
    :cond_3
    :goto_1
    if-eqz v2, :cond_0

    .line 482
    :try_start_2
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 484
    :catch_0
    move-exception v4

    .line 485
    .local v4, "e":Ljava/io/IOException;
    const-string v10, "Mms:transaction"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error closing input stream: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 419
    .end local v2    # "dis":Ljava/io/DataInputStream;
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v3    # "dis":Ljava/io/DataInputStream;
    :catch_1
    move-exception v4

    .line 420
    .local v4, "e":Ljava/io/EOFException;
    :try_start_3
    const-string v10, "Mms:transaction"

    const-string v11, "Catched EOFException even if content-length is known"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v2, v3

    .line 422
    .end local v3    # "dis":Ljava/io/DataInputStream;
    .restart local v2    # "dis":Ljava/io/DataInputStream;
    goto :goto_1

    .line 423
    .end local v4    # "e":Ljava/io/EOFException;
    :cond_4
    if-gez v8, :cond_3

    .line 424
    :try_start_4
    sget-boolean v10, Lcom/android/mms/transaction/HttpUtils;->LOCAL_LOG:Z

    if-eqz v10, :cond_5

    .line 425
    const-string v10, "Mms:transaction"

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

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    :cond_5
    const/4 v6, 0x0

    .line 431
    .local v6, "readSize":I
    const/4 v9, 0x0

    .line 432
    .local v9, "totalSize":I
    const/16 v10, 0x2800

    new-array v1, v10, [B

    .line 433
    .local v1, "buf":[B
    const/4 v5, 0x0

    .line 434
    .local v5, "growingBody":[B
    new-instance v3, Ljava/io/DataInputStream;

    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v3, v10}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 435
    .end local v2    # "dis":Ljava/io/DataInputStream;
    .restart local v3    # "dis":Ljava/io/DataInputStream;
    const/4 v7, 0x1

    .line 438
    .local v7, "segNum":I
    const/4 v10, 0x0

    :try_start_5
    array-length v11, v1

    invoke-virtual {v3, v1, v10, v11}, Ljava/io/DataInputStream;->read([BII)I

    move-result v6

    .line 439
    move v9, v6

    .line 440
    new-array v5, v6, [B

    .line 441
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v1, v10, v5, v11, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 442
    move-object v0, v5

    .line 445
    :goto_2
    const/high16 v10, 0x100000

    if-gt v9, v10, :cond_6

    .line 446
    const/4 v10, 0x0

    array-length v11, v1

    invoke-virtual {v3, v1, v10, v11}, Ljava/io/DataInputStream;->read([BII)I

    move-result v6

    .line 447
    const/4 v10, -0x1

    if-ne v6, v10, :cond_8

    .line 460
    :cond_6
    sget-boolean v10, Lcom/android/mms/transaction/HttpUtils;->LOCAL_LOG:Z

    if-eqz v10, :cond_7

    .line 461
    const-string v10, "Mms:transaction"

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

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move-object v2, v3

    .line 477
    .end local v3    # "dis":Ljava/io/DataInputStream;
    .restart local v2    # "dis":Ljava/io/DataInputStream;
    goto/16 :goto_1

    .line 451
    .end local v2    # "dis":Ljava/io/DataInputStream;
    .restart local v3    # "dis":Ljava/io/DataInputStream;
    :cond_8
    add-int/lit8 v7, v7, 0x1

    .line 452
    add-int/2addr v9, v6

    .line 453
    new-array v5, v9, [B

    .line 454
    const/4 v10, 0x0

    const/4 v11, 0x0

    array-length v12, v0

    invoke-static {v0, v10, v5, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 455
    const/4 v10, 0x0

    array-length v11, v0

    invoke-static {v1, v10, v5, v11, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 457
    move-object v0, v5

    goto :goto_2

    .line 464
    :catch_2
    move-exception v4

    .line 465
    .local v4, "e":Ljava/io/IOException;
    if-eqz v0, :cond_9

    .line 466
    :try_start_6
    const-string v10, "Mms:transaction"

    const-string v11, "Catched IOException, copy last buf"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    add-int/lit8 v7, v7, 0x1

    .line 468
    add-int/2addr v9, v6

    .line 469
    new-array v5, v9, [B

    .line 470
    const/4 v10, 0x0

    const/4 v11, 0x0

    array-length v12, v0

    invoke-static {v0, v10, v5, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 471
    const/4 v10, 0x0

    array-length v11, v0

    invoke-static {v1, v10, v5, v11, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 473
    move-object v0, v5

    move-object v2, v3

    .end local v3    # "dis":Ljava/io/DataInputStream;
    .restart local v2    # "dis":Ljava/io/DataInputStream;
    goto/16 :goto_1

    .line 475
    .end local v2    # "dis":Ljava/io/DataInputStream;
    .restart local v3    # "dis":Ljava/io/DataInputStream;
    :cond_9
    const-string v10, "Mms:transaction"

    const-string v11, "Catched IOException"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object v2, v3

    .end local v3    # "dis":Ljava/io/DataInputStream;
    .restart local v2    # "dis":Ljava/io/DataInputStream;
    goto/16 :goto_1

    .line 480
    .end local v1    # "buf":[B
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "growingBody":[B
    .end local v6    # "readSize":I
    .end local v7    # "segNum":I
    .end local v9    # "totalSize":I
    :catchall_0
    move-exception v10

    .line 481
    :goto_3
    if-eqz v2, :cond_a

    .line 482
    :try_start_7
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 487
    :cond_a
    :goto_4
    throw v10

    .line 484
    :catch_3
    move-exception v4

    .line 485
    .restart local v4    # "e":Ljava/io/IOException;
    const-string v11, "Mms:transaction"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error closing input stream: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 480
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

.method public static getCurrentAcceptLanguage(Ljava/util/Locale;)Ljava/lang/String;
    .locals 2
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 539
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 540
    .local v0, "buffer":Ljava/lang/StringBuilder;
    invoke-static {v0, p0}, Lcom/android/mms/transaction/HttpUtils;->addLocaleToHttpAcceptLanguage(Ljava/lang/StringBuilder;Ljava/util/Locale;)V

    .line 542
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, p0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 543
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 544
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    :cond_0
    const-string v1, "en-US"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
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
    .line 495
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MMS-STATUS - generic exception, msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 497
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "Mms:transaction"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

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
    .line 503
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MMS-STATUS - http exception, msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 505
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "Mms:transaction"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    new-instance v1, Lorg/apache/http/HttpException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected abort(Z)V
    .locals 4
    .param p1, "isUpload"    # Z

    .prologue
    const/4 v3, 0x0

    .line 368
    iget-object v0, p0, Lcom/android/mms/transaction/HttpUtils;->mAbort:Lorg/apache/http/client/methods/AbortableHttpRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/transaction/HttpUtils;->mClient:Landroid/net/http/AndroidHttpClient;

    if-nez v0, :cond_1

    .line 397
    :cond_0
    :goto_0
    return-void

    .line 375
    :cond_1
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/mms/transaction/HttpUtils;->mProgress:Lcom/android/mms/transaction/ProgressCallbackEntity;

    if-eqz v0, :cond_3

    .line 376
    sget-boolean v0, Lcom/android/mms/transaction/HttpUtils;->LOCAL_LOG:Z

    if-eqz v0, :cond_2

    .line 377
    const-string v0, "Mms:transaction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Aborting http stream, progress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/transaction/HttpUtils;->mProgress:Lcom/android/mms/transaction/ProgressCallbackEntity;

    invoke-virtual {v2}, Lcom/android/mms/transaction/ProgressCallbackEntity;->getProgress()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    :cond_2
    iget-object v0, p0, Lcom/android/mms/transaction/HttpUtils;->mProgress:Lcom/android/mms/transaction/ProgressCallbackEntity;

    invoke-virtual {v0}, Lcom/android/mms/transaction/ProgressCallbackEntity;->abort()V

    .line 384
    :cond_3
    sget-boolean v0, Lcom/android/mms/transaction/HttpUtils;->LOCAL_LOG:Z

    if-eqz v0, :cond_4

    .line 385
    const-string v0, "Mms:transaction"

    const-string v1, "Aborting HttpPost/HttpGet"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :cond_4
    iget-object v0, p0, Lcom/android/mms/transaction/HttpUtils;->mAbort:Lorg/apache/http/client/methods/AbortableHttpRequest;

    invoke-interface {v0}, Lorg/apache/http/client/methods/AbortableHttpRequest;->abort()V

    .line 389
    iput-object v3, p0, Lcom/android/mms/transaction/HttpUtils;->mAbort:Lorg/apache/http/client/methods/AbortableHttpRequest;

    .line 391
    sget-boolean v0, Lcom/android/mms/transaction/HttpUtils;->LOCAL_LOG:Z

    if-eqz v0, :cond_5

    .line 392
    const-string v0, "Mms:transaction"

    const-string v1, "Close AndroidHttpClient"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :cond_5
    iget-object v0, p0, Lcom/android/mms/transaction/HttpUtils;->mClient:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 396
    iput-object v3, p0, Lcom/android/mms/transaction/HttpUtils;->mClient:Landroid/net/http/AndroidHttpClient;

    goto :goto_0
.end method

.method protected httpConnection(JLjava/net/InetAddress;Ljava/lang/String;[BILcom/android/mms/transaction/Transaction$TransactionTimeout;ZLjava/lang/String;I)[B
    .locals 37
    .param p1, "token"    # J
    .param p3, "inetAddr"    # Ljava/net/InetAddress;
    .param p4, "url"    # Ljava/lang/String;
    .param p5, "pdu"    # [B
    .param p6, "method"    # I
    .param p7, "timeout"    # Lcom/android/mms/transaction/Transaction$TransactionTimeout;
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
    .line 126
    const-string v3, "Mms:transaction"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 127
    const-string v3, "Mms:transaction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "httpConnection, app version="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/mms/MmsConfig;->getAppVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_0
    if-nez p4, :cond_1

    .line 134
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "URL must not be null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 137
    :cond_1
    const/4 v11, 0x0

    .line 139
    .local v11, "client":Landroid/net/http/AndroidHttpClient;
    :try_start_0
    new-instance v17, Ljava/net/URI;

    move-object/from16 v0, v17

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 140
    .local v17, "hostUrl":Ljava/net/URI;
    sget-boolean v3, Lcom/android/mms/transaction/HttpUtils;->LOCAL_LOG:Z

    if-eqz v3, :cond_2

    .line 141
    const-string v3, "Mms:transaction"

    const-string v4, "httpConnection: params list"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const-string v4, "Mms:transaction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\tmethod\t\t= "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v3, 0x1

    move/from16 v0, p6

    if-ne v0, v3, :cond_5

    const-string v3, "POST"

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const-string v3, "Mms:transaction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\ttoken\t\t= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const-string v3, "Mms:transaction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\tip address\t= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const-string v3, "Mms:transaction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\turl\t\t= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const-string v3, "Mms:transaction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\thost\t\t= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v17 .. v17}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const-string v3, "Mms:transaction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\tport\t\t= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v17 .. v17}, Ljava/net/URI;->getPort()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const-string v3, "Mms:transaction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\tisProxySet\t= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p8

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const-string v3, "Mms:transaction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\tproxyHost\t= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p9

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const-string v3, "Mms:transaction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\tproxyPort\t= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p10

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_2
    sget-boolean v3, Lcom/android/mms/transaction/HttpUtils;->LOCAL_LOG:Z

    if-eqz v3, :cond_3

    .line 157
    const-string v3, "Mms:transaction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HttpHost created for host="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v17 .. v17}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_3
    new-instance v33, Lorg/apache/http/HttpHost;

    invoke-virtual/range {v17 .. v17}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v17 .. v17}, Ljava/net/URI;->getPort()I

    move-result v4

    const-string v5, "http"

    move-object/from16 v0, v33

    invoke-direct {v0, v3, v4, v5}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 165
    .local v33, "target":Lorg/apache/http/HttpHost;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/HttpUtils;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/mms/transaction/HttpUtils;->createHttpClient(Landroid/content/Context;)Landroid/net/http/AndroidHttpClient;

    move-result-object v11

    .line 166
    const/16 v27, 0x0

    .line 167
    .local v27, "req":Lorg/apache/http/HttpRequest;
    packed-switch p6, :pswitch_data_0

    .line 190
    const-string v3, "Mms:transaction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown HTTP method: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". Must be one of POST["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] or GET["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/apache/http/HttpException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    const/4 v10, 0x0

    .line 343
    if-eqz v11, :cond_4

    .line 344
    invoke-virtual {v11}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 348
    .end local v17    # "hostUrl":Ljava/net/URI;
    .end local v27    # "req":Lorg/apache/http/HttpRequest;
    .end local v33    # "target":Lorg/apache/http/HttpHost;
    :cond_4
    :goto_1
    return-object v10

    .line 142
    .restart local v17    # "hostUrl":Ljava/net/URI;
    :cond_5
    const/4 v3, 0x2

    move/from16 v0, p6

    if-ne v0, v3, :cond_6

    :try_start_1
    const-string v3, "GET"

    goto/16 :goto_0

    :cond_6
    const-string v3, "UNKNOWN"

    goto/16 :goto_0

    .line 169
    .restart local v27    # "req":Lorg/apache/http/HttpRequest;
    .restart local v33    # "target":Lorg/apache/http/HttpHost;
    :pswitch_0
    new-instance v3, Lcom/android/mms/transaction/ProgressCallbackEntity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/HttpUtils;->mContext:Landroid/content/Context;

    move-wide/from16 v5, p1

    move-object/from16 v7, p5

    move-object/from16 v8, p7

    invoke-direct/range {v3 .. v8}, Lcom/android/mms/transaction/ProgressCallbackEntity;-><init>(Landroid/content/Context;J[BLcom/android/mms/transaction/Transaction$TransactionTimeout;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/mms/transaction/HttpUtils;->mProgress:Lcom/android/mms/transaction/ProgressCallbackEntity;

    .line 172
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/HttpUtils;->mProgress:Lcom/android/mms/transaction/ProgressCallbackEntity;

    const-string v4, "application/vnd.wap.mms-message"

    invoke-virtual {v3, v4}, Lcom/android/mms/transaction/ProgressCallbackEntity;->setContentType(Ljava/lang/String;)V

    .line 173
    sget-boolean v3, Lcom/android/mms/transaction/HttpUtils;->LOCAL_LOG:Z

    if-eqz v3, :cond_7

    .line 174
    const-string v3, "Mms:transaction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Post created for url="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_7
    new-instance v26, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, v26

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 177
    .local v26, "post":Lorg/apache/http/client/methods/HttpPost;
    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/transaction/HttpUtils;->mAbort:Lorg/apache/http/client/methods/AbortableHttpRequest;

    .line 178
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/HttpUtils;->mProgress:Lcom/android/mms/transaction/ProgressCallbackEntity;

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 179
    move-object/from16 v27, v26

    .line 197
    .end local v26    # "post":Lorg/apache/http/client/methods/HttpPost;
    :goto_2
    invoke-virtual {v11}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v25

    .line 198
    .local v25, "params":Lorg/apache/http/params/HttpParams;
    if-eqz p8, :cond_10

    .line 199
    sget-boolean v3, Lcom/android/mms/transaction/HttpUtils;->LOCAL_LOG:Z

    if-eqz v3, :cond_8

    .line 200
    const-string v3, "Mms:transaction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Proxy host="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p9

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_8
    new-instance v3, Lorg/apache/http/HttpHost;

    move-object/from16 v0, p9

    move/from16 v1, p10

    invoke-direct {v3, v0, v1}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v25

    invoke-static {v0, v3}, Lorg/apache/http/conn/params/ConnRouteParams;->setDefaultProxy(Lorg/apache/http/params/HttpParams;Lorg/apache/http/HttpHost;)V

    .line 214
    :goto_3
    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/apache/http/HttpRequest;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 217
    const-string v3, "Accept"

    sget-object v4, Lcom/android/mms/transaction/HttpUtils;->HDR_VALUE_ACCEPT:Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-interface {v0, v3, v4}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-static {}, Lcom/android/mms/MmsConfig;->getUaProfTagName()Ljava/lang/String;

    move-result-object v35

    .line 220
    .local v35, "xWapProfileTagName":Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getUaProfUrl()Ljava/lang/String;

    move-result-object v36

    .line 222
    .local v36, "xWapProfileUrl":Ljava/lang/String;
    if-eqz v36, :cond_a

    .line 223
    const-string v3, "Mms:transaction"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 224
    const-string v3, "Mms:transaction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HttpUtils] httpConn: xWapProfUrl="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_9
    move-object/from16 v0, v27

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-interface {v0, v1, v2}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    :cond_a
    invoke-static {}, Lcom/android/mms/MmsConfig;->getHttpParams()Ljava/lang/String;

    move-result-object v15

    .line 242
    .local v15, "extraHttpParams":Ljava/lang/String;
    if-eqz v15, :cond_13

    .line 243
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/HttpUtils;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v21

    .line 247
    .local v21, "line1Number":Ljava/lang/String;
    const-string v3, "+"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 248
    const/4 v3, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    .line 251
    :cond_b
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsCountryCode()Ljava/lang/String;

    move-result-object v12

    .line 252
    .local v12, "countryCode":Ljava/lang/String;
    if-eqz v12, :cond_c

    .line 253
    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 254
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 257
    :cond_c
    invoke-static {}, Lcom/android/mms/MmsConfig;->getHttpParamsLine1Key()Ljava/lang/String;

    move-result-object v20

    .line 258
    .local v20, "line1Key":Ljava/lang/String;
    const-string v3, "\\|"

    invoke-virtual {v15, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    .line 260
    .local v23, "paramList":[Ljava/lang/String;
    move-object/from16 v9, v23

    .local v9, "arr$":[Ljava/lang/String;
    array-length v0, v9

    move/from16 v19, v0

    .local v19, "len$":I
    const/16 v18, 0x0

    .local v18, "i$":I
    :goto_4
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_13

    aget-object v24, v9, v18

    .line 261
    .local v24, "paramPair":Ljava/lang/String;
    const-string v3, ":"

    const/4 v4, 0x2

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v29

    .line 263
    .local v29, "splitPair":[Ljava/lang/String;
    move-object/from16 v0, v29

    array-length v3, v0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_e

    .line 264
    const/4 v3, 0x0

    aget-object v3, v29, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    .line 265
    .local v22, "name":Ljava/lang/String;
    const/4 v3, 0x1

    aget-object v3, v29, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v34

    .line 267
    .local v34, "value":Ljava/lang/String;
    if-eqz v20, :cond_d

    .line 268
    move-object/from16 v0, v34

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v34

    .line 270
    :cond_d
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e

    invoke-static/range {v34 .. v34}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 272
    move-object/from16 v0, v27

    move-object/from16 v1, v22

    move-object/from16 v2, v34

    invoke-interface {v0, v1, v2}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    .end local v22    # "name":Ljava/lang/String;
    .end local v34    # "value":Ljava/lang/String;
    :cond_e
    add-int/lit8 v18, v18, 0x1

    goto :goto_4

    .line 182
    .end local v9    # "arr$":[Ljava/lang/String;
    .end local v12    # "countryCode":Ljava/lang/String;
    .end local v15    # "extraHttpParams":Ljava/lang/String;
    .end local v18    # "i$":I
    .end local v19    # "len$":I
    .end local v20    # "line1Key":Ljava/lang/String;
    .end local v21    # "line1Number":Ljava/lang/String;
    .end local v23    # "paramList":[Ljava/lang/String;
    .end local v24    # "paramPair":Ljava/lang/String;
    .end local v25    # "params":Lorg/apache/http/params/HttpParams;
    .end local v29    # "splitPair":[Ljava/lang/String;
    .end local v35    # "xWapProfileTagName":Ljava/lang/String;
    .end local v36    # "xWapProfileUrl":Ljava/lang/String;
    :pswitch_1
    sget-boolean v3, Lcom/android/mms/transaction/HttpUtils;->LOCAL_LOG:Z

    if-eqz v3, :cond_f

    .line 183
    const-string v3, "Mms:transaction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Get created for url="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_f
    new-instance v16, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, v16

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 186
    .local v16, "get":Lorg/apache/http/client/methods/HttpGet;
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/transaction/HttpUtils;->mAbort:Lorg/apache/http/client/methods/AbortableHttpRequest;

    .line 187
    move-object/from16 v27, v16

    .line 188
    goto/16 :goto_2

    .line 208
    .end local v16    # "get":Lorg/apache/http/client/methods/HttpGet;
    .restart local v25    # "params":Lorg/apache/http/params/HttpParams;
    :cond_10
    sget-boolean v3, Lcom/android/mms/transaction/HttpUtils;->LOCAL_LOG:Z

    if-eqz v3, :cond_11

    .line 209
    const-string v3, "Mms:transaction"

    const-string v4, "Set the proxy host to NO_HOST"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_11
    sget-object v3, Lorg/apache/http/conn/params/ConnRouteParams;->NO_HOST:Lorg/apache/http/HttpHost;

    move-object/from16 v0, v25

    invoke-static {v0, v3}, Lorg/apache/http/conn/params/ConnRouteParams;->setDefaultProxy(Lorg/apache/http/params/HttpParams;Lorg/apache/http/HttpHost;)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lorg/apache/http/HttpException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3

    .line 328
    .end local v17    # "hostUrl":Ljava/net/URI;
    .end local v25    # "params":Lorg/apache/http/params/HttpParams;
    .end local v27    # "req":Lorg/apache/http/HttpRequest;
    .end local v33    # "target":Lorg/apache/http/HttpHost;
    :catch_0
    move-exception v13

    .line 329
    .local v13, "e":Ljava/net/URISyntaxException;
    :try_start_2
    invoke-static {v13}, Lcom/android/mms/transaction/HttpUtils;->handleGenericException(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 343
    if-eqz v11, :cond_12

    .line 344
    invoke-virtual {v11}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 348
    .end local v13    # "e":Ljava/net/URISyntaxException;
    :cond_12
    :goto_5
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 277
    .restart local v15    # "extraHttpParams":Ljava/lang/String;
    .restart local v17    # "hostUrl":Ljava/net/URI;
    .restart local v25    # "params":Lorg/apache/http/params/HttpParams;
    .restart local v27    # "req":Lorg/apache/http/HttpRequest;
    .restart local v33    # "target":Lorg/apache/http/HttpHost;
    .restart local v35    # "xWapProfileTagName":Ljava/lang/String;
    .restart local v36    # "xWapProfileUrl":Ljava/lang/String;
    :cond_13
    :try_start_3
    const-string v3, "Accept-Language"

    sget-object v4, Lcom/android/mms/transaction/HttpUtils;->HDR_VALUE_ACCEPT_LANGUAGE:Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-interface {v0, v3, v4}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/mms/transaction/HttpUtils;->mClient:Landroid/net/http/AndroidHttpClient;

    .line 280
    const/16 v28, 0x0

    .line 282
    .local v28, "response":Lorg/apache/http/HttpResponse;
    sget-boolean v3, Lcom/android/mms/transaction/HttpUtils;->LOCAL_LOG:Z

    if-eqz v3, :cond_14

    .line 283
    const-string v3, "Mms:transaction"

    const-string v4, "MMS-STATUS - execute transaction - START"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :cond_14
    move-object/from16 v0, v33

    move-object/from16 v1, v27

    invoke-virtual {v11, v0, v1}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v28

    .line 288
    sget-boolean v3, Lcom/android/mms/transaction/HttpUtils;->LOCAL_LOG:Z

    if-eqz v3, :cond_15

    .line 289
    const-string v3, "Mms:transaction"

    const-string v4, "MMS-STATUS - execute transaction - END"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/HttpUtils;->mTransaction:Lcom/android/mms/transaction/Transaction;

    invoke-virtual {v3}, Lcom/android/mms/transaction/Transaction;->getState()Lcom/android/mms/transaction/TransactionState;

    move-result-object v30

    .line 293
    .local v30, "state":Lcom/android/mms/transaction/TransactionState;
    invoke-virtual/range {v30 .. v30}, Lcom/android/mms/transaction/TransactionState;->getState()Lcom/android/mms/transaction/Transaction$State;

    move-result-object v3

    sget-object v4, Lcom/android/mms/transaction/Transaction$State;->FAILED:Lcom/android/mms/transaction/Transaction$State;

    if-ne v3, v4, :cond_16

    .line 294
    new-instance v3, Ljava/io/IOException;

    const-string v4, "MMS-STATUS - Transaction requested to abort (Transaction.State.FAILED)"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_3
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lorg/apache/http/HttpException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 330
    .end local v15    # "extraHttpParams":Ljava/lang/String;
    .end local v17    # "hostUrl":Ljava/net/URI;
    .end local v25    # "params":Lorg/apache/http/params/HttpParams;
    .end local v27    # "req":Lorg/apache/http/HttpRequest;
    .end local v28    # "response":Lorg/apache/http/HttpResponse;
    .end local v30    # "state":Lcom/android/mms/transaction/TransactionState;
    .end local v33    # "target":Lorg/apache/http/HttpHost;
    .end local v35    # "xWapProfileTagName":Ljava/lang/String;
    .end local v36    # "xWapProfileUrl":Ljava/lang/String;
    :catch_1
    move-exception v13

    .line 331
    .local v13, "e":Ljava/lang/IllegalStateException;
    :try_start_4
    invoke-static {v13}, Lcom/android/mms/transaction/HttpUtils;->handleGenericException(Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 343
    if-eqz v11, :cond_12

    .line 344
    invoke-virtual {v11}, Landroid/net/http/AndroidHttpClient;->close()V

    goto :goto_5

    .line 298
    .end local v13    # "e":Ljava/lang/IllegalStateException;
    .restart local v15    # "extraHttpParams":Ljava/lang/String;
    .restart local v17    # "hostUrl":Ljava/net/URI;
    .restart local v25    # "params":Lorg/apache/http/params/HttpParams;
    .restart local v27    # "req":Lorg/apache/http/HttpRequest;
    .restart local v28    # "response":Lorg/apache/http/HttpResponse;
    .restart local v30    # "state":Lcom/android/mms/transaction/TransactionState;
    .restart local v33    # "target":Lorg/apache/http/HttpHost;
    .restart local v35    # "xWapProfileTagName":Ljava/lang/String;
    .restart local v36    # "xWapProfileUrl":Ljava/lang/String;
    :cond_16
    :try_start_5
    invoke-interface/range {v28 .. v28}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v31

    .line 299
    .local v31, "status":Lorg/apache/http/StatusLine;
    invoke-interface/range {v31 .. v31}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v32

    .line 300
    .local v32, "statusCode":I
    const/16 v3, 0xc8

    move/from16 v0, v32

    if-eq v0, v3, :cond_18

    .line 301
    const-string v3, "Mms:transaction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MMS-STATUS - HTTP error, statusCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {v31 .. v31}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", reasonPhrase="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {v31 .. v31}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    const/16 v3, 0x194

    move/from16 v0, v32

    if-ne v0, v3, :cond_17

    .line 308
    new-instance v3, Lorg/apache/http/HttpException;

    const-string v4, "404"

    invoke-direct {v3, v4}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_5
    .catch Ljava/net/URISyntaxException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Lorg/apache/http/HttpException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 332
    .end local v15    # "extraHttpParams":Ljava/lang/String;
    .end local v17    # "hostUrl":Ljava/net/URI;
    .end local v25    # "params":Lorg/apache/http/params/HttpParams;
    .end local v27    # "req":Lorg/apache/http/HttpRequest;
    .end local v28    # "response":Lorg/apache/http/HttpResponse;
    .end local v30    # "state":Lcom/android/mms/transaction/TransactionState;
    .end local v31    # "status":Lorg/apache/http/StatusLine;
    .end local v32    # "statusCode":I
    .end local v33    # "target":Lorg/apache/http/HttpHost;
    .end local v35    # "xWapProfileTagName":Ljava/lang/String;
    .end local v36    # "xWapProfileUrl":Ljava/lang/String;
    :catch_2
    move-exception v13

    .line 333
    .local v13, "e":Ljava/lang/IllegalArgumentException;
    :try_start_6
    invoke-static {v13}, Lcom/android/mms/transaction/HttpUtils;->handleGenericException(Ljava/lang/Exception;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 343
    if-eqz v11, :cond_12

    .line 344
    invoke-virtual {v11}, Landroid/net/http/AndroidHttpClient;->close()V

    goto/16 :goto_5

    .line 310
    .end local v13    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v15    # "extraHttpParams":Ljava/lang/String;
    .restart local v17    # "hostUrl":Ljava/net/URI;
    .restart local v25    # "params":Lorg/apache/http/params/HttpParams;
    .restart local v27    # "req":Lorg/apache/http/HttpRequest;
    .restart local v28    # "response":Lorg/apache/http/HttpResponse;
    .restart local v30    # "state":Lcom/android/mms/transaction/TransactionState;
    .restart local v31    # "status":Lorg/apache/http/StatusLine;
    .restart local v32    # "statusCode":I
    .restart local v33    # "target":Lorg/apache/http/HttpHost;
    .restart local v35    # "xWapProfileTagName":Ljava/lang/String;
    .restart local v36    # "xWapProfileUrl":Ljava/lang/String;
    :cond_17
    :try_start_7
    new-instance v3, Lorg/apache/http/HttpException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HTTP error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {v31 .. v31}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_7
    .catch Ljava/net/URISyntaxException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/net/SocketException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Lorg/apache/http/HttpException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 334
    .end local v15    # "extraHttpParams":Ljava/lang/String;
    .end local v17    # "hostUrl":Ljava/net/URI;
    .end local v25    # "params":Lorg/apache/http/params/HttpParams;
    .end local v27    # "req":Lorg/apache/http/HttpRequest;
    .end local v28    # "response":Lorg/apache/http/HttpResponse;
    .end local v30    # "state":Lcom/android/mms/transaction/TransactionState;
    .end local v31    # "status":Lorg/apache/http/StatusLine;
    .end local v32    # "statusCode":I
    .end local v33    # "target":Lorg/apache/http/HttpHost;
    .end local v35    # "xWapProfileTagName":Ljava/lang/String;
    .end local v36    # "xWapProfileUrl":Ljava/lang/String;
    :catch_3
    move-exception v13

    .line 335
    .local v13, "e":Lorg/apache/http/conn/ConnectTimeoutException;
    :try_start_8
    invoke-static {v13}, Lcom/android/mms/transaction/HttpUtils;->handleHttpException(Ljava/lang/Exception;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 343
    if-eqz v11, :cond_12

    .line 344
    invoke-virtual {v11}, Landroid/net/http/AndroidHttpClient;->close()V

    goto/16 :goto_5

    .line 315
    .end local v13    # "e":Lorg/apache/http/conn/ConnectTimeoutException;
    .restart local v15    # "extraHttpParams":Ljava/lang/String;
    .restart local v17    # "hostUrl":Ljava/net/URI;
    .restart local v25    # "params":Lorg/apache/http/params/HttpParams;
    .restart local v27    # "req":Lorg/apache/http/HttpRequest;
    .restart local v28    # "response":Lorg/apache/http/HttpResponse;
    .restart local v30    # "state":Lcom/android/mms/transaction/TransactionState;
    .restart local v31    # "status":Lorg/apache/http/StatusLine;
    .restart local v32    # "statusCode":I
    .restart local v33    # "target":Lorg/apache/http/HttpHost;
    .restart local v35    # "xWapProfileTagName":Ljava/lang/String;
    .restart local v36    # "xWapProfileUrl":Ljava/lang/String;
    :cond_18
    :try_start_9
    invoke-interface/range {v28 .. v28}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v14

    .line 316
    .local v14, "entity":Lorg/apache/http/HttpEntity;
    invoke-static {v14}, Lcom/android/mms/transaction/HttpUtils;->getBody(Lorg/apache/http/HttpEntity;)[B

    move-result-object v10

    .line 317
    .local v10, "body":[B
    if-eqz v14, :cond_19

    .line 318
    invoke-interface {v14}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 321
    :cond_19
    const-string v3, "Mms:transaction"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 322
    const-string v3, "Mms:transaction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "httpConnection (finished) thread: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/net/URISyntaxException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/net/SocketException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Lorg/apache/http/HttpException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 343
    :cond_1a
    if-eqz v11, :cond_4

    .line 344
    invoke-virtual {v11}, Landroid/net/http/AndroidHttpClient;->close()V

    goto/16 :goto_1

    .line 336
    .end local v10    # "body":[B
    .end local v14    # "entity":Lorg/apache/http/HttpEntity;
    .end local v15    # "extraHttpParams":Ljava/lang/String;
    .end local v17    # "hostUrl":Ljava/net/URI;
    .end local v25    # "params":Lorg/apache/http/params/HttpParams;
    .end local v27    # "req":Lorg/apache/http/HttpRequest;
    .end local v28    # "response":Lorg/apache/http/HttpResponse;
    .end local v30    # "state":Lcom/android/mms/transaction/TransactionState;
    .end local v31    # "status":Lorg/apache/http/StatusLine;
    .end local v32    # "statusCode":I
    .end local v33    # "target":Lorg/apache/http/HttpHost;
    .end local v35    # "xWapProfileTagName":Ljava/lang/String;
    .end local v36    # "xWapProfileUrl":Ljava/lang/String;
    :catch_4
    move-exception v13

    .line 337
    .local v13, "e":Ljava/net/SocketException;
    :try_start_a
    invoke-static {v13}, Lcom/android/mms/transaction/HttpUtils;->handleGenericException(Ljava/lang/Exception;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 343
    if-eqz v11, :cond_12

    .line 344
    invoke-virtual {v11}, Landroid/net/http/AndroidHttpClient;->close()V

    goto/16 :goto_5

    .line 338
    .end local v13    # "e":Ljava/net/SocketException;
    :catch_5
    move-exception v13

    .line 339
    .local v13, "e":Lorg/apache/http/HttpException;
    :try_start_b
    invoke-static {v13}, Lcom/android/mms/transaction/HttpUtils;->handleHttpException(Ljava/lang/Exception;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 343
    if-eqz v11, :cond_12

    .line 344
    invoke-virtual {v11}, Landroid/net/http/AndroidHttpClient;->close()V

    goto/16 :goto_5

    .line 340
    .end local v13    # "e":Lorg/apache/http/HttpException;
    :catch_6
    move-exception v13

    .line 341
    .local v13, "e":Ljava/lang/Exception;
    :try_start_c
    invoke-static {v13}, Lcom/android/mms/transaction/HttpUtils;->handleGenericException(Ljava/lang/Exception;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 343
    if-eqz v11, :cond_12

    .line 344
    invoke-virtual {v11}, Landroid/net/http/AndroidHttpClient;->close()V

    goto/16 :goto_5

    .line 343
    .end local v13    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    if-eqz v11, :cond_1b

    .line 344
    invoke-virtual {v11}, Landroid/net/http/AndroidHttpClient;->close()V

    :cond_1b
    throw v3

    .line 167
    nop

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

    .line 352
    if-nez p1, :cond_1

    .line 364
    :cond_0
    :goto_0
    return v2

    .line 358
    :cond_1
    const/16 v1, 0x5a

    .line 359
    .local v1, "progressLimit":I
    iget-object v4, p0, Lcom/android/mms/transaction/HttpUtils;->mProgress:Lcom/android/mms/transaction/ProgressCallbackEntity;

    if-eqz v4, :cond_2

    if-eqz v1, :cond_2

    iget-object v4, p0, Lcom/android/mms/transaction/HttpUtils;->mProgress:Lcom/android/mms/transaction/ProgressCallbackEntity;

    invoke-virtual {v4}, Lcom/android/mms/transaction/ProgressCallbackEntity;->getProgress()I

    move-result v4

    if-lt v4, v1, :cond_2

    move v0, v2

    .line 364
    .local v0, "canNotAbort":Z
    :goto_1
    if-eqz v0, :cond_0

    move v2, v3

    goto :goto_0

    .end local v0    # "canNotAbort":Z
    :cond_2
    move v0, v3

    .line 359
    goto :goto_1
.end method
