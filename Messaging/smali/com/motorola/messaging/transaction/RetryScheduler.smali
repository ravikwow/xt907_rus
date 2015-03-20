.class public Lcom/motorola/messaging/transaction/RetryScheduler;
.super Ljava/lang/Object;
.source "RetryScheduler.java"

# interfaces
.implements Lcom/motorola/messaging/transaction/Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/messaging/transaction/RetryScheduler$1;,
        Lcom/motorola/messaging/transaction/RetryScheduler$RetryData;,
        Lcom/motorola/messaging/transaction/RetryScheduler$RetryType;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final LOCAL_LOG:Z

.field private static mContentResolver:Landroid/content/ContentResolver;

.field private static mContext:Landroid/content/Context;

.field private static mDownloadManager:Lcom/motorola/messaging/transaction/DownloadManager;

.field private static mManager:Lcom/motorola/messaging/transaction/TransactionManager;

.field private static mNetworkManager:Lcom/motorola/messaging/transaction/NetworkManager;

.field private static mSmsIsRetrySet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/motorola/messaging/transaction/RetryScheduler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 48
    sput-boolean v0, Lcom/motorola/messaging/transaction/RetryScheduler;->DEBUG:Z

    .line 49
    sget-boolean v1, Lcom/motorola/messaging/transaction/RetryScheduler;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v1, :cond_0

    :goto_0
    sput-boolean v0, Lcom/motorola/messaging/transaction/RetryScheduler;->LOCAL_LOG:Z

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/motorola/messaging/transaction/RetryScheduler;->mSmsIsRetrySet:Ljava/util/List;

    return-void

    .line 49
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    return-void
.end method

.method private static addSmsRetryAlarm(Landroid/net/Uri;)V
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 139
    sget-object v0, Lcom/motorola/messaging/transaction/RetryScheduler;->mSmsIsRetrySet:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    return-void
.end method

.method private automaticRetry(Landroid/net/Uri;Landroid/content/ContentValues;Lcom/motorola/messaging/transaction/RetryScheduler$RetryData;)V
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "data"    # Lcom/motorola/messaging/transaction/RetryScheduler$RetryData;

    .prologue
    .line 425
    sget-boolean v2, Lcom/motorola/messaging/transaction/RetryScheduler;->LOCAL_LOG:Z

    if-eqz v2, :cond_0

    .line 426
    const-string v2, "RetryScheduler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "automaticRetry, uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", interval: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p3, Lcom/motorola/messaging/transaction/RetryScheduler$RetryData;->waitingInterval:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    :cond_0
    iget-wide v2, p3, Lcom/motorola/messaging/transaction/RetryScheduler$RetryData;->current:J

    iget-wide v4, p3, Lcom/motorola/messaging/transaction/RetryScheduler$RetryData;->waitingInterval:J

    add-long v0, v2, v4

    .line 434
    .local v0, "retryAt":J
    iget-wide v2, p3, Lcom/motorola/messaging/transaction/RetryScheduler$RetryData;->current:J

    const-wide/16 v4, 0xfa

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 435
    const-string v2, "RetryScheduler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "automaticRetry old time, retryAt="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "kk:mm:ss"

    invoke-static {v4, v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    iget-wide v2, p3, Lcom/motorola/messaging/transaction/RetryScheduler$RetryData;->current:J

    const-wide/16 v4, 0x1388

    add-long v0, v2, v4

    .line 439
    :cond_1
    sget-boolean v2, Lcom/motorola/messaging/transaction/RetryScheduler;->LOCAL_LOG:Z

    if-eqz v2, :cond_2

    .line 440
    const-string v2, "RetryScheduler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MMS-STATUS - Retry n. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p3, Lcom/motorola/messaging/transaction/RetryScheduler$RetryData;->retryIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is scheduled to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "kk:mm:ss."

    invoke-static {v4, v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    rem-long v4, v0, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    :cond_2
    iget-boolean v2, p3, Lcom/motorola/messaging/transaction/RetryScheduler$RetryData;->isDownload:Z

    if-eqz v2, :cond_3

    .line 447
    sget-object v2, Lcom/motorola/messaging/transaction/RetryScheduler;->mDownloadManager:Lcom/motorola/messaging/transaction/DownloadManager;

    const/16 v3, 0x82

    invoke-virtual {v2, p1, v3}, Lcom/motorola/messaging/transaction/DownloadManager;->markState(Landroid/net/Uri;I)Lcom/motorola/messaging/transaction/DownloadManager$Result;

    .line 450
    :cond_3
    invoke-virtual {p0, p1, v0, v1}, Lcom/motorola/messaging/transaction/RetryScheduler;->setMmsRetryAlarm(Landroid/net/Uri;J)V

    .line 454
    const-string v2, "due_time"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 455
    invoke-direct {p0, p2, p3}, Lcom/motorola/messaging/transaction/RetryScheduler;->updatePendingMessages(Landroid/content/ContentValues;Lcom/motorola/messaging/transaction/RetryScheduler$RetryData;)V

    .line 456
    return-void
.end method

.method public static declared-synchronized cancelSmsRetryAlarm(Landroid/net/Uri;Lcom/motorola/messaging/transaction/SmsReceiverService$Retry;)V
    .locals 5

    .prologue
    .line 175
    const-class v1, Lcom/motorola/messaging/transaction/RetryScheduler;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/motorola/messaging/transaction/RetryScheduler;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 176
    const-string v0, "RetryScheduler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelSmsRetryAlarm, uri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/motorola/messaging/transaction/SmsReceiverService$Retry;->getRetryType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MESSAGE_RESEND_ACTION"

    sget-object v3, Lcom/motorola/messaging/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    const-class v4, Lcom/motorola/messaging/transaction/SmsReceiverService;

    invoke-direct {v0, v2, p0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 183
    invoke-virtual {p1}, Lcom/motorola/messaging/transaction/SmsReceiverService$Retry;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 184
    sget-object v2, Lcom/motorola/messaging/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x40000000

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 185
    sget-object v0, Lcom/motorola/messaging/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 186
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 187
    invoke-static {p0}, Lcom/motorola/messaging/transaction/RetryScheduler;->removeSmsRetryAlarm(Landroid/net/Uri;)V

    .line 189
    sget-boolean v0, Lcom/motorola/messaging/transaction/RetryScheduler;->LOCAL_LOG:Z

    if-eqz v0, :cond_1

    .line 190
    const-string v0, "RetryScheduler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SMS-STATUS - Cancel retry for SMS, uri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    :cond_1
    monitor-exit v1

    return-void

    .line 175
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private eventDrivenRetry(Landroid/net/Uri;Landroid/content/ContentValues;Lcom/motorola/messaging/transaction/RetryScheduler$RetryData;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "data"    # Lcom/motorola/messaging/transaction/RetryScheduler$RetryData;

    .prologue
    .line 460
    sget-boolean v0, Lcom/motorola/messaging/transaction/RetryScheduler;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 461
    const-string v0, "RetryScheduler"

    const-string v1, "eventDrivenRetry"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    :cond_0
    iget-boolean v0, p3, Lcom/motorola/messaging/transaction/RetryScheduler$RetryData;->isDownload:Z

    if-eqz v0, :cond_1

    .line 466
    sget-object v0, Lcom/motorola/messaging/transaction/RetryScheduler;->mDownloadManager:Lcom/motorola/messaging/transaction/DownloadManager;

    const/16 v1, 0x82

    invoke-virtual {v0, p1, v1}, Lcom/motorola/messaging/transaction/DownloadManager;->markState(Landroid/net/Uri;I)Lcom/motorola/messaging/transaction/DownloadManager$Result;

    .line 471
    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/motorola/messaging/transaction/RetryScheduler;->updatePendingMessages(Landroid/content/ContentValues;Lcom/motorola/messaging/transaction/RetryScheduler$RetryData;)V

    .line 472
    return-void
.end method

.method public static getInstance()Lcom/motorola/messaging/transaction/RetryScheduler;
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/motorola/messaging/transaction/RetryScheduler;->sInstance:Lcom/motorola/messaging/transaction/RetryScheduler;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Lcom/motorola/messaging/transaction/RetryScheduler;

    invoke-direct {v0}, Lcom/motorola/messaging/transaction/RetryScheduler;-><init>()V

    sput-object v0, Lcom/motorola/messaging/transaction/RetryScheduler;->sInstance:Lcom/motorola/messaging/transaction/RetryScheduler;

    .line 100
    :cond_0
    sget-object v0, Lcom/motorola/messaging/transaction/RetryScheduler;->sInstance:Lcom/motorola/messaging/transaction/RetryScheduler;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    sget-boolean v0, Lcom/motorola/messaging/transaction/RetryScheduler;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 84
    const-string v0, "RetryScheduler"

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :cond_0
    sput-object p0, Lcom/motorola/messaging/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    .line 88
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sput-object v0, Lcom/motorola/messaging/transaction/RetryScheduler;->mContentResolver:Landroid/content/ContentResolver;

    .line 89
    invoke-static {}, Lcom/motorola/messaging/transaction/TransactionManager;->getInstance()Lcom/motorola/messaging/transaction/TransactionManager;

    move-result-object v0

    sput-object v0, Lcom/motorola/messaging/transaction/RetryScheduler;->mManager:Lcom/motorola/messaging/transaction/TransactionManager;

    .line 90
    sget-object v0, Lcom/motorola/messaging/transaction/RetryScheduler;->mManager:Lcom/motorola/messaging/transaction/TransactionManager;

    invoke-virtual {v0}, Lcom/motorola/messaging/transaction/TransactionManager;->getNetworkManager()Lcom/motorola/messaging/transaction/NetworkManager;

    move-result-object v0

    sput-object v0, Lcom/motorola/messaging/transaction/RetryScheduler;->mNetworkManager:Lcom/motorola/messaging/transaction/NetworkManager;

    .line 91
    invoke-static {}, Lcom/motorola/messaging/transaction/TransactionManager;->getInstance()Lcom/motorola/messaging/transaction/TransactionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/messaging/transaction/TransactionManager;->getDownloadManager()Lcom/motorola/messaging/transaction/DownloadManager;

    move-result-object v0

    sput-object v0, Lcom/motorola/messaging/transaction/RetryScheduler;->mDownloadManager:Lcom/motorola/messaging/transaction/DownloadManager;

    .line 92
    return-void
.end method

.method private static isSmsRetryAlarmSet(Landroid/net/Uri;)Z
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 135
    sget-object v0, Lcom/motorola/messaging/transaction/RetryScheduler;->mSmsIsRetrySet:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private noRetry(Landroid/net/Uri;Landroid/content/ContentValues;Lcom/motorola/messaging/transaction/RetryScheduler$RetryData;)V
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "data"    # Lcom/motorola/messaging/transaction/RetryScheduler$RetryData;

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 476
    sget-boolean v0, Lcom/motorola/messaging/transaction/RetryScheduler;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 477
    const-string v0, "RetryScheduler"

    const-string v1, "noRetry"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    :cond_0
    const/16 v0, 0xa

    iput v0, p3, Lcom/motorola/messaging/transaction/RetryScheduler$RetryData;->errorType:I

    .line 482
    iget-boolean v0, p3, Lcom/motorola/messaging/transaction/RetryScheduler$RetryData;->isDownload:Z

    if-eqz v0, :cond_1

    .line 483
    sget-object v0, Lcom/motorola/messaging/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    iget-wide v1, p3, Lcom/motorola/messaging/transaction/RetryScheduler$RetryData;->threadId:J

    invoke-static {v0, v1, v2, v7}, Lcom/motorola/messaging/util/MessagingNotification;->notifyDownloadFailed(Landroid/content/Context;JZ)V

    .line 484
    sget-object v0, Lcom/motorola/messaging/transaction/RetryScheduler;->mDownloadManager:Lcom/motorola/messaging/transaction/DownloadManager;

    const/16 v1, 0x87

    invoke-virtual {v0, p1, v1}, Lcom/motorola/messaging/transaction/DownloadManager;->markState(Landroid/net/Uri;I)Lcom/motorola/messaging/transaction/DownloadManager$Result;

    .line 485
    new-instance v6, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;

    const-string v0, "MMS_TRANSACTION"

    invoke-direct {v6, v8, v0}, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;-><init>(ILjava/lang/String;)V

    .line 486
    .local v6, "event":Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;
    const-string v0, "status"

    const-string v1, "dwnlFail"

    invoke-virtual {v6, v0, v1}, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;->addField(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    invoke-virtual {v6}, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;->log()V

    .line 503
    :goto_0
    invoke-direct {p0, p2, p3}, Lcom/motorola/messaging/transaction/RetryScheduler;->updatePendingMessages(Landroid/content/ContentValues;Lcom/motorola/messaging/transaction/RetryScheduler$RetryData;)V

    .line 504
    return-void

    .line 493
    .end local v6    # "event":Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;
    :cond_1
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3, v7}, Landroid/content/ContentValues;-><init>(I)V

    .line 494
    .local v3, "readValues":Landroid/content/ContentValues;
    const-string v0, "read"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 495
    sget-object v0, Lcom/motorola/messaging/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/motorola/messaging/transaction/RetryScheduler;->mContentResolver:Landroid/content/ContentResolver;

    move-object v2, p1

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/motorola/messaging/provider/SqliteManager;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 497
    sget-object v0, Lcom/motorola/messaging/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    invoke-static {v0, v7}, Lcom/motorola/messaging/util/MessagingNotification;->notifySendFailed(Landroid/content/Context;Z)V

    .line 498
    new-instance v6, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;

    const-string v0, "MMS_TRANSACTION"

    invoke-direct {v6, v8, v0}, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;-><init>(ILjava/lang/String;)V

    .line 499
    .restart local v6    # "event":Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;
    const-string v0, "status"

    const-string v1, "sndFail"

    invoke-virtual {v6, v0, v1}, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;->addField(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    invoke-virtual {v6}, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;->log()V

    goto :goto_0
.end method

.method public static declared-synchronized removeSmsRetryAlarm(Landroid/net/Uri;)V
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 143
    const-class v1, Lcom/motorola/messaging/transaction/RetryScheduler;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/motorola/messaging/transaction/RetryScheduler;->mSmsIsRetrySet:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    monitor-exit v1

    return-void

    .line 143
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setSmsRetryAlarm(Landroid/net/Uri;ZLcom/motorola/messaging/transaction/SmsReceiverService$Retry;J)V
    .locals 6

    .prologue
    .line 147
    const-class v1, Lcom/motorola/messaging/transaction/RetryScheduler;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/motorola/messaging/transaction/RetryScheduler;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 148
    const-string v0, "RetryScheduler"

    const/4 v2, 0x1

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setSmsRetryAlarm, uri="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", restart="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/motorola/messaging/transaction/SmsReceiverService$Retry;->getRetryType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;ZZLjava/lang/String;)V

    .line 154
    :cond_0
    if-nez p1, :cond_2

    invoke-static {p0}, Lcom/motorola/messaging/transaction/RetryScheduler;->isSmsRetryAlarmSet(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 155
    const-string v0, "RetryScheduler"

    const-string v2, "alarm already set, ignore request to set alarm again"

    invoke-static {v0, v2}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    :cond_1
    :goto_0
    monitor-exit v1

    return-void

    .line 159
    :cond_2
    :try_start_1
    invoke-static {p0}, Lcom/motorola/messaging/transaction/RetryScheduler;->addSmsRetryAlarm(Landroid/net/Uri;)V

    .line 160
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MESSAGE_RESEND_ACTION"

    sget-object v3, Lcom/motorola/messaging/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    const-class v4, Lcom/motorola/messaging/transaction/SmsReceiverService;

    invoke-direct {v0, v2, p0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 162
    invoke-virtual {p2}, Lcom/motorola/messaging/transaction/SmsReceiverService$Retry;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 163
    sget-object v2, Lcom/motorola/messaging/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x40000000

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 164
    sget-object v0, Lcom/motorola/messaging/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 165
    const/4 v3, 0x1

    invoke-virtual {v0, v3, p3, p4, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 167
    sget-boolean v0, Lcom/motorola/messaging/transaction/RetryScheduler;->LOCAL_LOG:Z

    if-eqz v0, :cond_1

    .line 168
    const-string v0, "RetryScheduler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SMS-STATUS - Retry for SMS was scheduled to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "kk:mm:ss."

    invoke-static {v3, p3, p4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    rem-long v3, p3, v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private showFailure(Landroid/net/Uri;Lcom/motorola/messaging/transaction/RetryScheduler$RetryData;)V
    .locals 3

    .prologue
    .line 346
    sget-boolean v0, Lcom/motorola/messaging/transaction/RetryScheduler;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 347
    const-string v0, "RetryScheduler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showFailure, uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    :cond_0
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/motorola/messaging/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    const-class v2, Lcom/motorola/messaging/activity/MMSRetryActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "is_download"

    iget-boolean v2, p2, Lcom/motorola/messaging/transaction/RetryScheduler$RetryData;->isDownload:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "retrieve_status"

    iget v2, p2, Lcom/motorola/messaging/transaction/RetryScheduler$RetryData;->retrieveStatus:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "response_status"

    iget v2, p2, Lcom/motorola/messaging/transaction/RetryScheduler$RetryData;->responseStatus:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x18000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 356
    sget-object v1, Lcom/motorola/messaging/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 357
    return-void
.end method

.method private updatePendingMessages(Landroid/content/ContentValues;Lcom/motorola/messaging/transaction/RetryScheduler$RetryData;)V
    .locals 6
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "data"    # Lcom/motorola/messaging/transaction/RetryScheduler$RetryData;

    .prologue
    .line 507
    sget-boolean v0, Lcom/motorola/messaging/transaction/RetryScheduler;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 508
    const-string v0, "RetryScheduler"

    const-string v1, "updatePendingMessages"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    :cond_0
    const-string v0, "last_try"

    iget-wide v1, p2, Lcom/motorola/messaging/transaction/RetryScheduler$RetryData;->current:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 512
    const-string v0, "err_type"

    iget v1, p2, Lcom/motorola/messaging/transaction/RetryScheduler$RetryData;->errorType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 513
    const-string v0, "retry_index"

    iget v1, p2, Lcom/motorola/messaging/transaction/RetryScheduler$RetryData;->retryIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 514
    sget-object v0, Lcom/motorola/messaging/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/motorola/messaging/transaction/RetryScheduler;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/motorola/messaging/provider/Telephony$MmsSms$PendingMessages;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p2, Lcom/motorola/messaging/transaction/RetryScheduler$RetryData;->id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/motorola/messaging/provider/SqliteManager;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 517
    return-void
.end method


# virtual methods
.method public getRetryData(Landroid/net/Uri;)Lcom/motorola/messaging/transaction/RetryScheduler$RetryData;
    .locals 14
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 360
    const/4 v9, 0x0

    .line 361
    .local v9, "data":Lcom/motorola/messaging/transaction/RetryScheduler$RetryData;
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v10

    .line 362
    .local v10, "msgId":J
    sget-object v0, Lcom/motorola/messaging/provider/Telephony$MmsSms$PendingMessages;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v13

    .line 363
    .local v13, "uriBuilder":Landroid/net/Uri$Builder;
    const-string v0, "protocol"

    const-string v1, "mms"

    invoke-virtual {v13, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 364
    const-string v0, "message"

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 365
    sget-object v0, Lcom/motorola/messaging/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/motorola/messaging/transaction/RetryScheduler;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v13}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/motorola/messaging/provider/SqliteManager;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 367
    .local v8, "cursor":Landroid/database/Cursor;
    if-nez v8, :cond_0

    .line 368
    const/4 v0, 0x0

    .line 421
    :goto_0
    return-object v0

    .line 371
    :cond_0
    new-instance v9, Lcom/motorola/messaging/transaction/RetryScheduler$RetryData;

    .end local v9    # "data":Lcom/motorola/messaging/transaction/RetryScheduler$RetryData;
    invoke-direct {v9}, Lcom/motorola/messaging/transaction/RetryScheduler$RetryData;-><init>()V

    .line 372
    .restart local v9    # "data":Lcom/motorola/messaging/transaction/RetryScheduler$RetryData;
    const/4 v0, 0x0

    iput v0, v9, Lcom/motorola/messaging/transaction/RetryScheduler$RetryData;->errorType:I

    .line 373
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v9, Lcom/motorola/messaging/transaction/RetryScheduler$RetryData;->current:J

    .line 376
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 377
    const-string v0, "msg_type"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v9, Lcom/motorola/messaging/transaction/RetryScheduler$RetryData;->msgType:I

    .line 379
    const-string v0, "err_type"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v9, Lcom/motorola/messaging/transaction/RetryScheduler$RetryData;->errorType:I

    .line 381
    const-string v0, "retry_index"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v9, Lcom/motorola/messaging/transaction/RetryScheduler$RetryData;->retryIndex:I

    .line 383
    const-string v0, "due_time"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v9, Lcom/motorola/messaging/transaction/RetryScheduler$RetryData;->dueTime:J

    .line 385
    const-string v0, "last_try"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v9, Lcom/motorola/messaging/transaction/RetryScheduler$RetryData;->lastTry:J

    .line 387
    iget v0, v9, Lcom/motorola/messaging/transaction/RetryScheduler$RetryData;->msgType:I

    const/16 v1, 0x82

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, v9, Lcom/motorola/messaging/transaction/RetryScheduler$RetryData;->isDownload:Z

    .line 388
    const-string v0, "_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 389
    .local v7, "columnIndex":I
    invoke-interface {v8, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v9, Lcom/motorola/messaging/transaction/RetryScheduler$RetryData;->id:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 392
    .end local v7    # "columnIndex":I
    :cond_1
    invoke-static {v8}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    .line 395
    sget-object v0, Lcom/motorola/messaging/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/motorola/messaging/transaction/RetryScheduler;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "thread_id"

    aput-object v4, v3, v2

    const/4 v2, 0x1

    const-string v4, "retr_st"

    aput-object v4, v3, v2

    const/4 v2, 0x2

    const-string v4, "resp_st"

    aput-object v4, v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Lcom/motorola/messaging/provider/SqliteManager;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 398
    if-nez v8, :cond_3

    .line 399
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 387
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 392
    :catchall_0
    move-exception v0

    invoke-static {v8}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    throw v0

    .line 403
    :cond_3
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 404
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v9, Lcom/motorola/messaging/transaction/RetryScheduler$RetryData;->threadId:J

    .line 405
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v9, Lcom/motorola/messaging/transaction/RetryScheduler$RetryData;->retrieveStatus:I

    .line 406
    const/4 v0, 0x2

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v9, Lcom/motorola/messaging/transaction/RetryScheduler$RetryData;->responseStatus:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 409
    :cond_4
    invoke-static {v8}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    .line 412
    new-instance v12, Lcom/motorola/messaging/transaction/DefaultRetryScheme;

    sget-object v0, Lcom/motorola/messaging/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    iget v1, v9, Lcom/motorola/messaging/transaction/RetryScheduler$RetryData;->retryIndex:I

    add-int/lit8 v1, v1, 0x1

    iget v2, v9, Lcom/motorola/messaging/transaction/RetryScheduler$RetryData;->errorType:I

    invoke-direct {v12, v0, v1, v2}, Lcom/motorola/messaging/transaction/DefaultRetryScheme;-><init>(Landroid/content/Context;II)V

    .line 414
    .local v12, "scheme":Lcom/motorola/messaging/transaction/DefaultRetryScheme;
    invoke-virtual {v12}, Lcom/motorola/messaging/transaction/DefaultRetryScheme;->getWaitingInterval()J

    move-result-wide v0

    iput-wide v0, v9, Lcom/motorola/messaging/transaction/RetryScheduler$RetryData;->waitingInterval:J

    .line 415
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getMmsSecondaryMmscEnabled()Z

    move-result v0

    if-nez v0, :cond_5

    .line 416
    invoke-virtual {v12}, Lcom/motorola/messaging/transaction/DefaultRetryScheme;->getRetryLimit()I

    move-result v0

    iput v0, v9, Lcom/motorola/messaging/transaction/RetryScheduler$RetryData;->retryLimit:I

    :goto_2
    move-object v0, v9

    .line 421
    goto/16 :goto_0

    .line 409
    .end local v12    # "scheme":Lcom/motorola/messaging/transaction/DefaultRetryScheme;
    :catchall_1
    move-exception v0

    invoke-static {v8}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    throw v0

    .line 418
    .restart local v12    # "scheme":Lcom/motorola/messaging/transaction/DefaultRetryScheme;
    :cond_5
    invoke-virtual {v12}, Lcom/motorola/messaging/transaction/DefaultRetryScheme;->getRetryLimit()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x1

    iput v0, v9, Lcom/motorola/messaging/transaction/RetryScheduler$RetryData;->retryLimit:I

    goto :goto_2
.end method

.method public getRetryType(Lcom/motorola/messaging/transaction/RetryScheduler$RetryData;Lcom/motorola/messaging/transaction/Transaction$Failure;ZZ)Lcom/motorola/messaging/transaction/RetryScheduler$RetryType;
    .locals 4
    .param p1, "data"    # Lcom/motorola/messaging/transaction/RetryScheduler$RetryData;
    .param p2, "failedReason"    # Lcom/motorola/messaging/transaction/Transaction$Failure;
    .param p3, "hasMMSApn"    # Z
    .param p4, "hasValidApn"    # Z

    .prologue
    .line 195
    sget-boolean v1, Lcom/motorola/messaging/transaction/RetryScheduler;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 196
    const-string v1, "RetryScheduler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRetryType, retry attempt="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/motorola/messaging/transaction/RetryScheduler$RetryData;->retryIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", retry limit="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/motorola/messaging/transaction/RetryScheduler$RetryData;->retryLimit:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    :cond_0
    sget-object v0, Lcom/motorola/messaging/transaction/RetryScheduler$RetryType;->NONE:Lcom/motorola/messaging/transaction/RetryScheduler$RetryType;

    .line 208
    .local v0, "retryType":Lcom/motorola/messaging/transaction/RetryScheduler$RetryType;
    if-nez p3, :cond_1

    if-nez p4, :cond_1

    .line 209
    sget-object v1, Lcom/motorola/messaging/transaction/RetryScheduler$RetryType;->NO_RETRY:Lcom/motorola/messaging/transaction/RetryScheduler$RetryType;

    .line 250
    :goto_0
    return-object v1

    .line 212
    :cond_1
    iget v1, p1, Lcom/motorola/messaging/transaction/RetryScheduler$RetryData;->retryIndex:I

    iget v2, p1, Lcom/motorola/messaging/transaction/RetryScheduler$RetryData;->retryLimit:I

    if-lt v1, v2, :cond_2

    .line 213
    sget-object v1, Lcom/motorola/messaging/transaction/RetryScheduler$RetryType;->NO_RETRY:Lcom/motorola/messaging/transaction/RetryScheduler$RetryType;

    goto :goto_0

    .line 216
    :cond_2
    sget-object v1, Lcom/motorola/messaging/transaction/RetryScheduler$1;->$SwitchMap$com$motorola$messaging$transaction$Transaction$Failure:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_1
    move-object v1, v0

    .line 250
    goto :goto_0

    .line 223
    :pswitch_0
    sget-object v0, Lcom/motorola/messaging/transaction/RetryScheduler$RetryType;->NO_RETRY:Lcom/motorola/messaging/transaction/RetryScheduler$RetryType;

    .line 224
    goto :goto_1

    .line 227
    :pswitch_1
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getMmsDisableRetryAfterServerTimeout()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 228
    sget-object v0, Lcom/motorola/messaging/transaction/RetryScheduler$RetryType;->NO_RETRY:Lcom/motorola/messaging/transaction/RetryScheduler$RetryType;

    goto :goto_1

    .line 231
    :cond_3
    sget-object v0, Lcom/motorola/messaging/transaction/RetryScheduler$RetryType;->AUTOMATIC_RETRY:Lcom/motorola/messaging/transaction/RetryScheduler$RetryType;

    .line 234
    goto :goto_1

    .line 241
    :pswitch_2
    sget-object v0, Lcom/motorola/messaging/transaction/RetryScheduler$RetryType;->AUTOMATIC_RETRY:Lcom/motorola/messaging/transaction/RetryScheduler$RetryType;

    .line 242
    goto :goto_1

    .line 246
    :pswitch_3
    sget-object v0, Lcom/motorola/messaging/transaction/RetryScheduler$RetryType;->EVENT_DRIVEN_RETRY:Lcom/motorola/messaging/transaction/RetryScheduler$RetryType;

    goto :goto_1

    .line 216
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public onResult(Lcom/motorola/messaging/transaction/Observable;)V
    .locals 11
    .param p1, "observable"    # Lcom/motorola/messaging/transaction/Observable;

    .prologue
    .line 257
    sget-boolean v7, Lcom/motorola/messaging/transaction/RetryScheduler;->LOCAL_LOG:Z

    if-eqz v7, :cond_0

    .line 258
    const-string v7, "RetryScheduler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onResult - thread: "

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

    invoke-static {v7, v8}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    move-object v4, p1

    .line 262
    check-cast v4, Lcom/motorola/messaging/transaction/Transaction;

    .line 266
    .local v4, "t":Lcom/motorola/messaging/transaction/Transaction;
    instance-of v7, v4, Lcom/motorola/messaging/transaction/NotificationTransaction;

    if-nez v7, :cond_1

    instance-of v7, v4, Lcom/motorola/messaging/transaction/RetrieveTransaction;

    if-nez v7, :cond_1

    instance-of v7, v4, Lcom/motorola/messaging/transaction/ReadRecTransaction;

    if-nez v7, :cond_1

    instance-of v7, v4, Lcom/motorola/messaging/transaction/SendTransaction;

    if-eqz v7, :cond_4

    .line 271
    :cond_1
    :try_start_0
    invoke-virtual {v4}, Lcom/motorola/messaging/transaction/Transaction;->getState()Lcom/motorola/messaging/transaction/TransactionState;

    move-result-object v3

    .line 272
    .local v3, "state":Lcom/motorola/messaging/transaction/TransactionState;
    invoke-virtual {v4}, Lcom/motorola/messaging/transaction/Transaction;->getFailedReason()Lcom/motorola/messaging/transaction/Transaction$Failure;

    move-result-object v1

    .line 274
    .local v1, "failedReason":Lcom/motorola/messaging/transaction/Transaction$Failure;
    sget-boolean v7, Lcom/motorola/messaging/transaction/RetryScheduler;->LOCAL_LOG:Z

    if-eqz v7, :cond_2

    .line 275
    const-string v7, "RetryScheduler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onResult, state="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lcom/motorola/messaging/transaction/TransactionState;->getState()Lcom/motorola/messaging/transaction/Transaction$State;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", failedReason="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", validApn="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Lcom/motorola/messaging/transaction/Transaction;->hasValidApn()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    :cond_2
    invoke-virtual {v3}, Lcom/motorola/messaging/transaction/TransactionState;->getState()Lcom/motorola/messaging/transaction/Transaction$State;

    move-result-object v7

    sget-object v8, Lcom/motorola/messaging/transaction/Transaction$State;->FAILED:Lcom/motorola/messaging/transaction/Transaction$State;

    if-ne v7, v8, :cond_3

    .line 283
    invoke-virtual {v3}, Lcom/motorola/messaging/transaction/TransactionState;->getContentUri()Landroid/net/Uri;

    move-result-object v5

    .line 284
    .local v5, "uri":Landroid/net/Uri;
    if-nez v5, :cond_5

    .line 285
    const-string v7, "RetryScheduler"

    const-string v8, "null uri"

    invoke-static {v7, v8}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    .end local v5    # "uri":Landroid/net/Uri;
    :cond_3
    :goto_0
    invoke-virtual {v4, p0}, Lcom/motorola/messaging/transaction/Observable;->detach(Lcom/motorola/messaging/transaction/Observer;)V

    .line 340
    .end local v1    # "failedReason":Lcom/motorola/messaging/transaction/Transaction$Failure;
    .end local v3    # "state":Lcom/motorola/messaging/transaction/TransactionState;
    :cond_4
    return-void

    .line 306
    .restart local v1    # "failedReason":Lcom/motorola/messaging/transaction/Transaction$Failure;
    .restart local v3    # "state":Lcom/motorola/messaging/transaction/TransactionState;
    .restart local v5    # "uri":Landroid/net/Uri;
    :cond_5
    :try_start_1
    invoke-virtual {p0, v5}, Lcom/motorola/messaging/transaction/RetryScheduler;->getRetryData(Landroid/net/Uri;)Lcom/motorola/messaging/transaction/RetryScheduler$RetryData;

    move-result-object v0

    .line 307
    .local v0, "data":Lcom/motorola/messaging/transaction/RetryScheduler$RetryData;
    if-nez v0, :cond_6

    .line 308
    const-string v7, "RetryScheduler"

    const-string v8, "MMS-STATUS - Can not retry, retry data is null"

    invoke-static {v7, v8}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 337
    .end local v0    # "data":Lcom/motorola/messaging/transaction/RetryScheduler$RetryData;
    .end local v1    # "failedReason":Lcom/motorola/messaging/transaction/Transaction$Failure;
    .end local v3    # "state":Lcom/motorola/messaging/transaction/TransactionState;
    .end local v5    # "uri":Landroid/net/Uri;
    :catchall_0
    move-exception v7

    invoke-virtual {v4, p0}, Lcom/motorola/messaging/transaction/Observable;->detach(Lcom/motorola/messaging/transaction/Observer;)V

    throw v7

    .line 312
    .restart local v0    # "data":Lcom/motorola/messaging/transaction/RetryScheduler$RetryData;
    .restart local v1    # "failedReason":Lcom/motorola/messaging/transaction/Transaction$Failure;
    .restart local v3    # "state":Lcom/motorola/messaging/transaction/TransactionState;
    .restart local v5    # "uri":Landroid/net/Uri;
    :cond_6
    :try_start_2
    iget v7, v0, Lcom/motorola/messaging/transaction/RetryScheduler$RetryData;->retryIndex:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v0, Lcom/motorola/messaging/transaction/RetryScheduler$RetryData;->retryIndex:I

    .line 313
    const/4 v7, 0x1

    iput v7, v0, Lcom/motorola/messaging/transaction/RetryScheduler$RetryData;->errorType:I

    .line 314
    invoke-static {}, Lcom/motorola/messaging/transaction/NetworkManager;->hasMmsApn()Z

    move-result v7

    invoke-virtual {v4}, Lcom/motorola/messaging/transaction/Transaction;->hasValidApn()Z

    move-result v8

    invoke-virtual {p0, v0, v1, v7, v8}, Lcom/motorola/messaging/transaction/RetryScheduler;->getRetryType(Lcom/motorola/messaging/transaction/RetryScheduler$RetryData;Lcom/motorola/messaging/transaction/Transaction$Failure;ZZ)Lcom/motorola/messaging/transaction/RetryScheduler$RetryType;

    move-result-object v2

    .line 316
    .local v2, "retryType":Lcom/motorola/messaging/transaction/RetryScheduler$RetryType;
    new-instance v6, Landroid/content/ContentValues;

    const/4 v7, 0x4

    invoke-direct {v6, v7}, Landroid/content/ContentValues;-><init>(I)V

    .line 317
    .local v6, "values":Landroid/content/ContentValues;
    sget-object v7, Lcom/motorola/messaging/transaction/RetryScheduler$1;->$SwitchMap$com$motorola$messaging$transaction$RetryScheduler$RetryType:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    goto :goto_0

    .line 320
    :pswitch_0
    invoke-direct {p0, v5, v6, v0}, Lcom/motorola/messaging/transaction/RetryScheduler;->automaticRetry(Landroid/net/Uri;Landroid/content/ContentValues;Lcom/motorola/messaging/transaction/RetryScheduler$RetryData;)V

    goto :goto_0

    .line 324
    :pswitch_1
    invoke-direct {p0, v5, v6, v0}, Lcom/motorola/messaging/transaction/RetryScheduler;->eventDrivenRetry(Landroid/net/Uri;Landroid/content/ContentValues;Lcom/motorola/messaging/transaction/RetryScheduler$RetryData;)V

    goto :goto_0

    .line 328
    :pswitch_2
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getMMSNotifyServerError()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 329
    invoke-direct {p0, v5, v0}, Lcom/motorola/messaging/transaction/RetryScheduler;->showFailure(Landroid/net/Uri;Lcom/motorola/messaging/transaction/RetryScheduler$RetryData;)V

    .line 332
    :cond_7
    invoke-direct {p0, v5, v6, v0}, Lcom/motorola/messaging/transaction/RetryScheduler;->noRetry(Landroid/net/Uri;Landroid/content/ContentValues;Lcom/motorola/messaging/transaction/RetryScheduler$RetryData;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 317
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public restartNextRetryAlarm()V
    .locals 13

    .prologue
    .line 522
    sget-boolean v10, Lcom/motorola/messaging/transaction/RetryScheduler;->LOCAL_LOG:Z

    if-eqz v10, :cond_0

    .line 523
    const-string v10, "RetryScheduler"

    const-string v11, "restartNextRetryAlarm"

    invoke-static {v10, v11}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    :cond_0
    sget-object v10, Lcom/motorola/messaging/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/motorola/messaging/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/motorola/messaging/pdu/PduPersister;

    move-result-object v10

    const-wide v11, 0x7fffffffffffffffL

    invoke-virtual {v10, v11, v12}, Lcom/motorola/messaging/pdu/PduPersister;->getPendingMessages(J)Landroid/database/Cursor;

    move-result-object v3

    .line 528
    .local v3, "cursor":Landroid/database/Cursor;
    if-eqz v3, :cond_3

    .line 530
    :cond_1
    :goto_0
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 532
    const-string v10, "due_time"

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 534
    .local v7, "retryAt":J
    const-string v10, "msg_id"

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 536
    .local v0, "columnIndex":I
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 537
    .local v5, "msgId":J
    sget-object v10, Lcom/motorola/messaging/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v10, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    .line 539
    .local v9, "uri":Landroid/net/Uri;
    const-wide/16 v10, 0x0

    cmp-long v10, v7, v10

    if-nez v10, :cond_4

    .line 540
    sget-boolean v10, Lcom/motorola/messaging/transaction/RetryScheduler;->LOCAL_LOG:Z

    if-eqz v10, :cond_1

    .line 541
    const-string v10, "RetryScheduler"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "restartNextRetryAlarm skip, retry timer not set, msgId="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 560
    .end local v0    # "columnIndex":I
    .end local v5    # "msgId":J
    .end local v7    # "retryAt":J
    .end local v9    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v4

    .line 561
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    :try_start_1
    const-string v10, "RetryScheduler"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Column not found: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 563
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :cond_2
    :goto_1
    invoke-static {v3}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    .line 566
    :cond_3
    return-void

    .line 546
    .restart local v0    # "columnIndex":I
    .restart local v5    # "msgId":J
    .restart local v7    # "retryAt":J
    .restart local v9    # "uri":Landroid/net/Uri;
    :cond_4
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 548
    .local v1, "current":J
    const-wide/16 v10, 0xfa

    add-long/2addr v10, v1

    cmp-long v10, v7, v10

    if-gez v10, :cond_6

    .line 549
    sget-boolean v10, Lcom/motorola/messaging/transaction/RetryScheduler;->LOCAL_LOG:Z

    if-eqz v10, :cond_5

    .line 550
    const-string v10, "RetryScheduler"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "restartNextRetryAlarm old time, retryAt="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "kk:mm:ss."

    invoke-static {v12, v7, v8}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    :cond_5
    const-wide/16 v10, 0x1388

    add-long v7, v1, v10

    .line 556
    :cond_6
    invoke-virtual {p0, v9, v7, v8}, Lcom/motorola/messaging/transaction/RetryScheduler;->setMmsRetryAlarm(Landroid/net/Uri;J)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 563
    .end local v0    # "columnIndex":I
    .end local v1    # "current":J
    .end local v5    # "msgId":J
    .end local v7    # "retryAt":J
    .end local v9    # "uri":Landroid/net/Uri;
    :catchall_0
    move-exception v10

    invoke-static {v3}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    throw v10
.end method

.method public setMmsRetryAlarm(Landroid/net/Uri;J)V
    .locals 4

    .prologue
    .line 104
    sget-boolean v0, Lcom/motorola/messaging/transaction/RetryScheduler;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 105
    const-string v0, "RetryScheduler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMmsRetryAlarm, uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :cond_0
    sget-object v0, Lcom/motorola/messaging/transaction/RetryScheduler;->mNetworkManager:Lcom/motorola/messaging/transaction/NetworkManager;

    invoke-virtual {v0}, Lcom/motorola/messaging/transaction/NetworkManager;->isMmsNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 109
    sget-boolean v0, Lcom/motorola/messaging/transaction/RetryScheduler;->LOCAL_LOG:Z

    if-eqz v0, :cond_1

    .line 110
    const-string v0, "RetryScheduler"

    const-string v1, "MMS-STATUS - Retry Alarm was not set because network is not available"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_1
    :goto_0
    return-void

    .line 115
    :cond_2
    sget-object v0, Lcom/motorola/messaging/transaction/RetryScheduler;->mNetworkManager:Lcom/motorola/messaging/transaction/NetworkManager;

    invoke-virtual {v0}, Lcom/motorola/messaging/transaction/NetworkManager;->isMmsApnConnected()Z

    move-result v0

    if-nez v0, :cond_3

    .line 116
    sget-boolean v0, Lcom/motorola/messaging/transaction/RetryScheduler;->LOCAL_LOG:Z

    if-eqz v0, :cond_3

    .line 117
    const-string v0, "RetryScheduler"

    const-string v1, "MMS-STATUS - MMS APN has dropped, but retry will be started because MMS network is available"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_ONALARM"

    sget-object v2, Lcom/motorola/messaging/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    const-class v3, Lcom/motorola/messaging/transaction/TransactionService;

    invoke-direct {v0, v1, p1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 123
    sget-object v1, Lcom/motorola/messaging/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x40000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 124
    sget-object v0, Lcom/motorola/messaging/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 125
    const/4 v2, 0x1

    invoke-virtual {v0, v2, p2, p3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 127
    sget-boolean v0, Lcom/motorola/messaging/transaction/RetryScheduler;->LOCAL_LOG:Z

    if-eqz v0, :cond_1

    .line 128
    const-string v0, "RetryScheduler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MMS-STATUS - Alarm for uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was scheduled to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "kk:mm:ss."

    invoke-static {v2, p2, p3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    rem-long v2, p2, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
