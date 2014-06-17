.class public Lcom/android/mms/transaction/RetryScheduler;
.super Ljava/lang/Object;
.source "RetryScheduler.java"

# interfaces
.implements Lcom/android/mms/transaction/Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/transaction/RetryScheduler$1;,
        Lcom/android/mms/transaction/RetryScheduler$RetryData;,
        Lcom/android/mms/transaction/RetryScheduler$RetryType;
    }
.end annotation


# static fields
.field private static mContentResolver:Landroid/content/ContentResolver;

.field private static mContext:Landroid/content/Context;

.field private static mDownloadManager:Lcom/android/mms/util/DownloadManager;

.field private static mManager:Lcom/android/mms/transaction/TransactionManager;

.field private static mNetworkManager:Lcom/android/mms/transaction/NetworkManager;

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

.field private static sInstance:Lcom/android/mms/transaction/RetryScheduler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/mms/transaction/RetryScheduler;->mSmsIsRetrySet:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 69
    return-void
.end method

.method private static addSmsRetryAlarm(Landroid/net/Uri;)V
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 160
    sget-object v0, Lcom/android/mms/transaction/RetryScheduler;->mSmsIsRetrySet:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    return-void
.end method

.method private automaticRetry(Landroid/net/Uri;Landroid/content/ContentValues;Lcom/android/mms/transaction/RetryScheduler$RetryData;)V
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "data"    # Lcom/android/mms/transaction/RetryScheduler$RetryData;

    .prologue
    .line 471
    iget-wide v2, p3, Lcom/android/mms/transaction/RetryScheduler$RetryData;->current:J

    iget-wide v4, p3, Lcom/android/mms/transaction/RetryScheduler$RetryData;->waitingInterval:J

    add-long v0, v2, v4

    .line 475
    .local v0, "retryAt":J
    iget-wide v2, p3, Lcom/android/mms/transaction/RetryScheduler$RetryData;->current:J

    const-wide/16 v4, 0xfa

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 476
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

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    iget-wide v2, p3, Lcom/android/mms/transaction/RetryScheduler$RetryData;->current:J

    const-wide/16 v4, 0x1388

    add-long v0, v2, v4

    .line 490
    :cond_0
    iget-boolean v2, p3, Lcom/android/mms/transaction/RetryScheduler$RetryData;->isDownload:Z

    if-eqz v2, :cond_1

    .line 492
    sget-object v2, Lcom/android/mms/transaction/RetryScheduler;->mDownloadManager:Lcom/android/mms/util/DownloadManager;

    const/16 v3, 0x82

    invoke-virtual {v2, p1, v3}, Lcom/android/mms/util/DownloadManager;->markState(Landroid/net/Uri;I)Lcom/android/mms/util/DownloadManager$Result;

    .line 496
    :cond_1
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/mms/transaction/RetryScheduler;->setMmsRetryAlarm(Landroid/net/Uri;J)V

    .line 500
    const-string v2, "due_time"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 501
    invoke-direct {p0, p2, p3}, Lcom/android/mms/transaction/RetryScheduler;->updatePendingMessages(Landroid/content/ContentValues;Lcom/android/mms/transaction/RetryScheduler$RetryData;)V

    .line 502
    return-void
.end method

.method public static declared-synchronized cancelSmsRetryAlarm(Landroid/net/Uri;Lcom/android/mms/transaction/SmsReceiverService$Retry;)V
    .locals 5

    .prologue
    .line 202
    const-class v1, Lcom/android/mms/transaction/RetryScheduler;

    monitor-enter v1

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MESSAGE_RESEND_ACTION"

    sget-object v3, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/mms/transaction/SmsReceiverService;

    invoke-direct {v0, v2, p0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 204
    invoke-virtual {p1}, Lcom/android/mms/transaction/SmsReceiverService$Retry;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 205
    sget-object v2, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x40000000

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 206
    sget-object v0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 207
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 208
    invoke-static {p0}, Lcom/android/mms/transaction/RetryScheduler;->removeSmsRetryAlarm(Landroid/net/Uri;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    monitor-exit v1

    return-void

    .line 202
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private eventDrivenRetry(Landroid/net/Uri;Landroid/content/ContentValues;Lcom/android/mms/transaction/RetryScheduler$RetryData;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "data"    # Lcom/android/mms/transaction/RetryScheduler$RetryData;

    .prologue
    .line 509
    iget-boolean v0, p3, Lcom/android/mms/transaction/RetryScheduler$RetryData;->isDownload:Z

    if-eqz v0, :cond_0

    .line 511
    sget-object v0, Lcom/android/mms/transaction/RetryScheduler;->mDownloadManager:Lcom/android/mms/util/DownloadManager;

    const/16 v1, 0x82

    invoke-virtual {v0, p1, v1}, Lcom/android/mms/util/DownloadManager;->markState(Landroid/net/Uri;I)Lcom/android/mms/util/DownloadManager$Result;

    .line 518
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/android/mms/transaction/RetryScheduler;->updatePendingMessages(Landroid/content/ContentValues;Lcom/android/mms/transaction/RetryScheduler$RetryData;)V

    .line 519
    return-void
.end method

.method public static getInstance()Lcom/android/mms/transaction/RetryScheduler;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/android/mms/transaction/RetryScheduler;->sInstance:Lcom/android/mms/transaction/RetryScheduler;

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Lcom/android/mms/transaction/RetryScheduler;

    invoke-direct {v0}, Lcom/android/mms/transaction/RetryScheduler;-><init>()V

    sput-object v0, Lcom/android/mms/transaction/RetryScheduler;->sInstance:Lcom/android/mms/transaction/RetryScheduler;

    .line 105
    :cond_0
    sget-object v0, Lcom/android/mms/transaction/RetryScheduler;->sInstance:Lcom/android/mms/transaction/RetryScheduler;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 90
    sput-object p0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    .line 91
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sput-object v0, Lcom/android/mms/transaction/RetryScheduler;->mContentResolver:Landroid/content/ContentResolver;

    .line 92
    invoke-static {}, Lcom/android/mms/transaction/TransactionManager;->getInstance()Lcom/android/mms/transaction/TransactionManager;

    move-result-object v0

    sput-object v0, Lcom/android/mms/transaction/RetryScheduler;->mManager:Lcom/android/mms/transaction/TransactionManager;

    .line 93
    sget-object v0, Lcom/android/mms/transaction/RetryScheduler;->mManager:Lcom/android/mms/transaction/TransactionManager;

    invoke-virtual {v0}, Lcom/android/mms/transaction/TransactionManager;->getNetworkManager()Lcom/android/mms/transaction/NetworkManager;

    move-result-object v0

    sput-object v0, Lcom/android/mms/transaction/RetryScheduler;->mNetworkManager:Lcom/android/mms/transaction/NetworkManager;

    .line 94
    invoke-static {}, Lcom/android/mms/transaction/TransactionManager;->getInstance()Lcom/android/mms/transaction/TransactionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/transaction/TransactionManager;->getDownloadManager()Lcom/android/mms/util/DownloadManager;

    move-result-object v0

    sput-object v0, Lcom/android/mms/transaction/RetryScheduler;->mDownloadManager:Lcom/android/mms/util/DownloadManager;

    .line 96
    return-void
.end method

.method private static isSmsRetryAlarmSet(Landroid/net/Uri;)Z
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 156
    sget-object v0, Lcom/android/mms/transaction/RetryScheduler;->mSmsIsRetrySet:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private noRetry(Landroid/net/Uri;Landroid/content/ContentValues;Lcom/android/mms/transaction/RetryScheduler$RetryData;)V
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "data"    # Lcom/android/mms/transaction/RetryScheduler$RetryData;

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    .line 527
    const/16 v0, 0xa

    iput v0, p3, Lcom/android/mms/transaction/RetryScheduler$RetryData;->errorType:I

    .line 529
    const/4 v7, 0x0

    .line 530
    .local v7, "status":Ljava/lang/String;
    iget-boolean v0, p3, Lcom/android/mms/transaction/RetryScheduler$RetryData;->isDownload:Z

    if-eqz v0, :cond_1

    .line 531
    sget-object v0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    iget-wide v1, p3, Lcom/android/mms/transaction/RetryScheduler$RetryData;->threadId:J

    invoke-static {v0, v1, v2}, Lcom/android/mms/transaction/MessagingNotification;->notifyDownloadFailed(Landroid/content/Context;J)V

    .line 532
    sget-object v0, Lcom/android/mms/transaction/RetryScheduler;->mDownloadManager:Lcom/android/mms/util/DownloadManager;

    const/16 v1, 0x87

    invoke-virtual {v0, p1, v1}, Lcom/android/mms/util/DownloadManager;->markState(Landroid/net/Uri;I)Lcom/android/mms/util/DownloadManager$Result;

    .line 534
    const-string v7, "dwnlFail"

    .line 545
    :goto_0
    invoke-static {}, Lcom/android/mms/checkin/CheckinLogger;->getInstance()Lcom/android/mms/checkin/CheckinLogger;

    move-result-object v6

    .line 546
    .local v6, "checkin":Lcom/android/mms/checkin/CheckinLogger;
    if-eqz v6, :cond_0

    .line 547
    sget-object v0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    const/4 v1, 0x2

    invoke-virtual {v6, v0, v1, v7}, Lcom/android/mms/checkin/CheckinLogger;->logAddMmsTransactionItem(Landroid/content/Context;ILjava/lang/String;)V

    .line 550
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/android/mms/transaction/RetryScheduler;->updatePendingMessages(Landroid/content/ContentValues;Lcom/android/mms/transaction/RetryScheduler$RetryData;)V

    .line 551
    return-void

    .line 537
    .end local v6    # "checkin":Lcom/android/mms/checkin/CheckinLogger;
    :cond_1
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3, v8}, Landroid/content/ContentValues;-><init>(I)V

    .line 538
    .local v3, "readValues":Landroid/content/ContentValues;
    const-string v0, "read"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 539
    sget-object v0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/mms/transaction/RetryScheduler;->mContentResolver:Landroid/content/ContentResolver;

    move-object v2, p1

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 541
    sget-object v0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    invoke-static {v0, v8}, Lcom/android/mms/transaction/MessagingNotification;->notifySendFailed(Landroid/content/Context;Z)V

    .line 542
    const-string v7, "sndFail"

    goto :goto_0
.end method

.method public static declared-synchronized removeSmsRetryAlarm(Landroid/net/Uri;)V
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 164
    const-class v1, Lcom/android/mms/transaction/RetryScheduler;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/mms/transaction/RetryScheduler;->mSmsIsRetrySet:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    monitor-exit v1

    return-void

    .line 164
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setSmsRetryAlarm(Landroid/net/Uri;ZLcom/android/mms/transaction/SmsReceiverService$Retry;J)V
    .locals 5

    .prologue
    .line 175
    const-class v1, Lcom/android/mms/transaction/RetryScheduler;

    monitor-enter v1

    if-nez p1, :cond_0

    :try_start_0
    invoke-static {p0}, Lcom/android/mms/transaction/RetryScheduler;->isSmsRetryAlarmSet(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    const-string v0, "RetryScheduler"

    const-string v2, "alarm already set, ignore request to set alarm again"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    :goto_0
    monitor-exit v1

    return-void

    .line 180
    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/android/mms/transaction/RetryScheduler;->addSmsRetryAlarm(Landroid/net/Uri;)V

    .line 181
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MESSAGE_RESEND_ACTION"

    sget-object v3, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/mms/transaction/SmsReceiverService;

    invoke-direct {v0, v2, p0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 183
    invoke-virtual {p2}, Lcom/android/mms/transaction/SmsReceiverService$Retry;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 184
    sget-object v2, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x40000000

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 185
    sget-object v0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 186
    const/4 v3, 0x1

    invoke-virtual {v0, v3, p3, p4, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 175
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private showFailure(Landroid/net/Uri;Lcom/android/mms/transaction/RetryScheduler$RetryData;)V
    .locals 3

    .prologue
    .line 384
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/mms/ui/MMSRetryActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "is_download"

    iget-boolean v2, p2, Lcom/android/mms/transaction/RetryScheduler$RetryData;->isDownload:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "retrieve_status"

    iget v2, p2, Lcom/android/mms/transaction/RetryScheduler$RetryData;->retrieveStatus:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "response_status"

    iget v2, p2, Lcom/android/mms/transaction/RetryScheduler$RetryData;->responseStatus:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x18000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 392
    sget-object v1, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 393
    return-void
.end method

.method private updatePendingMessages(Landroid/content/ContentValues;Lcom/android/mms/transaction/RetryScheduler$RetryData;)V
    .locals 6
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "data"    # Lcom/android/mms/transaction/RetryScheduler$RetryData;

    .prologue
    .line 558
    const-string v0, "last_try"

    iget-wide v1, p2, Lcom/android/mms/transaction/RetryScheduler$RetryData;->current:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 559
    const-string v0, "err_type"

    iget v1, p2, Lcom/android/mms/transaction/RetryScheduler$RetryData;->errorType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 560
    const-string v0, "retry_index"

    iget v1, p2, Lcom/android/mms/transaction/RetryScheduler$RetryData;->retryIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 561
    sget-object v0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/mms/transaction/RetryScheduler;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Telephony$MmsSms$PendingMessages;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p2, Lcom/android/mms/transaction/RetryScheduler$RetryData;->id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 564
    return-void
.end method


# virtual methods
.method public getRetryData(Landroid/net/Uri;)Lcom/android/mms/transaction/RetryScheduler$RetryData;
    .locals 14
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 396
    const/4 v9, 0x0

    .line 397
    .local v9, "data":Lcom/android/mms/transaction/RetryScheduler$RetryData;
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v10

    .line 399
    .local v10, "msgId":J
    sget-object v0, Landroid/provider/Telephony$MmsSms$PendingMessages;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v13

    .line 400
    .local v13, "uriBuilder":Landroid/net/Uri$Builder;
    const-string v0, "protocol"

    const-string v1, "mms"

    invoke-virtual {v13, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 401
    const-string v0, "message"

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 403
    sget-object v0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/mms/transaction/RetryScheduler;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v13}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 405
    .local v8, "cursor":Landroid/database/Cursor;
    if-nez v8, :cond_0

    .line 406
    const/4 v0, 0x0

    .line 462
    :goto_0
    return-object v0

    .line 409
    :cond_0
    new-instance v9, Lcom/android/mms/transaction/RetryScheduler$RetryData;

    .end local v9    # "data":Lcom/android/mms/transaction/RetryScheduler$RetryData;
    invoke-direct {v9}, Lcom/android/mms/transaction/RetryScheduler$RetryData;-><init>()V

    .line 410
    .restart local v9    # "data":Lcom/android/mms/transaction/RetryScheduler$RetryData;
    const/4 v0, 0x0

    iput v0, v9, Lcom/android/mms/transaction/RetryScheduler$RetryData;->errorType:I

    .line 411
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v9, Lcom/android/mms/transaction/RetryScheduler$RetryData;->current:J

    .line 414
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 415
    const-string v0, "msg_type"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v9, Lcom/android/mms/transaction/RetryScheduler$RetryData;->msgType:I

    .line 417
    const-string v0, "err_type"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v9, Lcom/android/mms/transaction/RetryScheduler$RetryData;->errorType:I

    .line 419
    const-string v0, "retry_index"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v9, Lcom/android/mms/transaction/RetryScheduler$RetryData;->retryIndex:I

    .line 421
    const-string v0, "due_time"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v9, Lcom/android/mms/transaction/RetryScheduler$RetryData;->dueTime:J

    .line 423
    const-string v0, "last_try"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v9, Lcom/android/mms/transaction/RetryScheduler$RetryData;->lastTry:J

    .line 425
    iget v0, v9, Lcom/android/mms/transaction/RetryScheduler$RetryData;->msgType:I

    const/16 v1, 0x82

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, v9, Lcom/android/mms/transaction/RetryScheduler$RetryData;->isDownload:Z

    .line 426
    const-string v0, "_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 428
    .local v7, "columnIndex":I
    invoke-interface {v8, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v9, Lcom/android/mms/transaction/RetryScheduler$RetryData;->id:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 431
    .end local v7    # "columnIndex":I
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 434
    sget-object v0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/mms/transaction/RetryScheduler;->mContentResolver:Landroid/content/ContentResolver;

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

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 438
    if-nez v8, :cond_3

    .line 439
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 425
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 431
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    .line 443
    :cond_3
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 444
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v9, Lcom/android/mms/transaction/RetryScheduler$RetryData;->threadId:J

    .line 445
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v9, Lcom/android/mms/transaction/RetryScheduler$RetryData;->retrieveStatus:I

    .line 446
    const/4 v0, 0x2

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v9, Lcom/android/mms/transaction/RetryScheduler$RetryData;->responseStatus:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 449
    :cond_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 452
    new-instance v12, Lcom/android/mms/transaction/DefaultRetryScheme;

    sget-object v0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    iget v1, v9, Lcom/android/mms/transaction/RetryScheduler$RetryData;->retryIndex:I

    add-int/lit8 v1, v1, 0x1

    iget v2, v9, Lcom/android/mms/transaction/RetryScheduler$RetryData;->errorType:I

    invoke-direct {v12, v0, v1, v2}, Lcom/android/mms/transaction/DefaultRetryScheme;-><init>(Landroid/content/Context;II)V

    .line 454
    .local v12, "scheme":Lcom/android/mms/transaction/DefaultRetryScheme;
    invoke-virtual {v12}, Lcom/android/mms/transaction/DefaultRetryScheme;->getWaitingInterval()J

    move-result-wide v0

    iput-wide v0, v9, Lcom/android/mms/transaction/RetryScheduler$RetryData;->waitingInterval:J

    .line 456
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsSecondaryMmscEnabled()Z

    move-result v0

    if-nez v0, :cond_5

    .line 457
    invoke-virtual {v12}, Lcom/android/mms/transaction/DefaultRetryScheme;->getRetryLimit()I

    move-result v0

    iput v0, v9, Lcom/android/mms/transaction/RetryScheduler$RetryData;->retryLimit:I

    :goto_2
    move-object v0, v9

    .line 462
    goto/16 :goto_0

    .line 449
    .end local v12    # "scheme":Lcom/android/mms/transaction/DefaultRetryScheme;
    :catchall_1
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    .line 459
    .restart local v12    # "scheme":Lcom/android/mms/transaction/DefaultRetryScheme;
    :cond_5
    invoke-virtual {v12}, Lcom/android/mms/transaction/DefaultRetryScheme;->getRetryLimit()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x1

    iput v0, v9, Lcom/android/mms/transaction/RetryScheduler$RetryData;->retryLimit:I

    goto :goto_2
.end method

.method public getRetryType(Lcom/android/mms/transaction/RetryScheduler$RetryData;Lcom/android/mms/transaction/Transaction$Failure;ZZ)Lcom/android/mms/transaction/RetryScheduler$RetryType;
    .locals 3
    .param p1, "data"    # Lcom/android/mms/transaction/RetryScheduler$RetryData;
    .param p2, "failedReason"    # Lcom/android/mms/transaction/Transaction$Failure;
    .param p3, "hasMMSApn"    # Z
    .param p4, "hasValidApn"    # Z

    .prologue
    .line 223
    sget-object v0, Lcom/android/mms/transaction/RetryScheduler$RetryType;->NONE:Lcom/android/mms/transaction/RetryScheduler$RetryType;

    .line 233
    .local v0, "retryType":Lcom/android/mms/transaction/RetryScheduler$RetryType;
    if-nez p3, :cond_0

    if-nez p4, :cond_0

    .line 234
    sget-object v1, Lcom/android/mms/transaction/RetryScheduler$RetryType;->NO_RETRY:Lcom/android/mms/transaction/RetryScheduler$RetryType;

    .line 276
    :goto_0
    return-object v1

    .line 237
    :cond_0
    iget v1, p1, Lcom/android/mms/transaction/RetryScheduler$RetryData;->retryIndex:I

    iget v2, p1, Lcom/android/mms/transaction/RetryScheduler$RetryData;->retryLimit:I

    if-lt v1, v2, :cond_1

    .line 238
    sget-object v1, Lcom/android/mms/transaction/RetryScheduler$RetryType;->NO_RETRY:Lcom/android/mms/transaction/RetryScheduler$RetryType;

    goto :goto_0

    .line 241
    :cond_1
    sget-object v1, Lcom/android/mms/transaction/RetryScheduler$1;->$SwitchMap$com$android$mms$transaction$Transaction$Failure:[I

    invoke-virtual {p2}, Lcom/android/mms/transaction/Transaction$Failure;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_1
    move-object v1, v0

    .line 276
    goto :goto_0

    .line 248
    :pswitch_0
    sget-object v0, Lcom/android/mms/transaction/RetryScheduler$RetryType;->NO_RETRY:Lcom/android/mms/transaction/RetryScheduler$RetryType;

    .line 249
    goto :goto_1

    .line 253
    :pswitch_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsDisableRetryAfterServerTimeout()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 254
    sget-object v0, Lcom/android/mms/transaction/RetryScheduler$RetryType;->NO_RETRY:Lcom/android/mms/transaction/RetryScheduler$RetryType;

    goto :goto_1

    .line 256
    :cond_2
    sget-object v0, Lcom/android/mms/transaction/RetryScheduler$RetryType;->AUTOMATIC_RETRY:Lcom/android/mms/transaction/RetryScheduler$RetryType;

    .line 259
    goto :goto_1

    .line 267
    :pswitch_2
    sget-object v0, Lcom/android/mms/transaction/RetryScheduler$RetryType;->AUTOMATIC_RETRY:Lcom/android/mms/transaction/RetryScheduler$RetryType;

    .line 268
    goto :goto_1

    .line 272
    :pswitch_3
    sget-object v0, Lcom/android/mms/transaction/RetryScheduler$RetryType;->EVENT_DRIVEN_RETRY:Lcom/android/mms/transaction/RetryScheduler$RetryType;

    goto :goto_1

    .line 241
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

.method public restartNextRetryAlarm()V
    .locals 13

    .prologue
    .line 573
    sget-object v10, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v10

    const-wide v11, 0x7fffffffffffffffL

    invoke-virtual {v10, v11, v12}, Lcom/google/android/mms/pdu/PduPersister;->getPendingMessages(J)Landroid/database/Cursor;

    move-result-object v3

    .line 575
    .local v3, "cursor":Landroid/database/Cursor;
    if-eqz v3, :cond_3

    .line 577
    :cond_0
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 579
    const-string v10, "due_time"

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 581
    .local v7, "retryAt":J
    const-string v10, "msg_id"

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 583
    .local v0, "columnIndex":I
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 584
    .local v5, "msgId":J
    sget-object v10, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v10, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    .line 587
    .local v9, "uri":Landroid/net/Uri;
    const-wide/16 v10, 0x0

    cmp-long v10, v7, v10

    if-eqz v10, :cond_0

    .line 596
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 599
    .local v1, "current":J
    const-wide/16 v10, 0xfa

    add-long/2addr v10, v1

    cmp-long v10, v7, v10

    if-gez v10, :cond_1

    .line 606
    const-wide/16 v10, 0x1388

    add-long v7, v1, v10

    .line 610
    :cond_1
    invoke-virtual {p0, v9, v7, v8}, Lcom/android/mms/transaction/RetryScheduler;->setMmsRetryAlarm(Landroid/net/Uri;J)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 618
    .end local v0    # "columnIndex":I
    .end local v1    # "current":J
    .end local v5    # "msgId":J
    .end local v7    # "retryAt":J
    .end local v9    # "uri":Landroid/net/Uri;
    :cond_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 621
    :cond_3
    :goto_0
    return-void

    .line 615
    :catch_0
    move-exception v4

    .line 616
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    :try_start_1
    const-string v10, "RetryScheduler"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Column not found: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 618
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v10

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v10
.end method

.method public setMmsRetryAlarm(Landroid/net/Uri;J)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 120
    sget-object v0, Lcom/android/mms/transaction/RetryScheduler;->mNetworkManager:Lcom/android/mms/transaction/NetworkManager;

    invoke-virtual {v0}, Lcom/android/mms/transaction/NetworkManager;->isMmsNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    :goto_0
    return-void

    .line 128
    :cond_0
    sget-object v0, Lcom/android/mms/transaction/RetryScheduler;->mNetworkManager:Lcom/android/mms/transaction/NetworkManager;

    invoke-virtual {v0}, Lcom/android/mms/transaction/NetworkManager;->isMmsApnConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 135
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_ONALARM"

    sget-object v2, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/mms/transaction/TransactionService;

    invoke-direct {v0, v1, p1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 137
    sget-object v1, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    const/high16 v2, 0x40000000

    invoke-static {v1, v4, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 139
    sget-object v0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 144
    invoke-virtual {v0, v4, p2, p3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public update(Lcom/android/mms/transaction/Observable;)V
    .locals 9
    .param p1, "observable"    # Lcom/android/mms/transaction/Observable;

    .prologue
    .line 285
    move-object v4, p1

    check-cast v4, Lcom/android/mms/transaction/Transaction;

    .line 289
    .local v4, "t":Lcom/android/mms/transaction/Transaction;
    instance-of v7, v4, Lcom/android/mms/transaction/NotificationTransaction;

    if-nez v7, :cond_0

    instance-of v7, v4, Lcom/android/mms/transaction/RetrieveTransaction;

    if-nez v7, :cond_0

    instance-of v7, v4, Lcom/android/mms/transaction/ReadRecTransaction;

    if-nez v7, :cond_0

    instance-of v7, v4, Lcom/android/mms/transaction/SendTransaction;

    if-eqz v7, :cond_1

    .line 294
    :cond_0
    :try_start_0
    invoke-virtual {v4}, Lcom/android/mms/transaction/Transaction;->getState()Lcom/android/mms/transaction/TransactionState;

    move-result-object v3

    .line 295
    .local v3, "state":Lcom/android/mms/transaction/TransactionState;
    invoke-virtual {v4}, Lcom/android/mms/transaction/Transaction;->getFailedReason()Lcom/android/mms/transaction/Transaction$Failure;

    move-result-object v1

    .line 303
    .local v1, "failedReason":Lcom/android/mms/transaction/Transaction$Failure;
    invoke-virtual {v3}, Lcom/android/mms/transaction/TransactionState;->getState()Lcom/android/mms/transaction/Transaction$State;

    move-result-object v7

    sget-object v8, Lcom/android/mms/transaction/Transaction$State;->FAILED:Lcom/android/mms/transaction/Transaction$State;

    if-ne v7, v8, :cond_4

    .line 305
    invoke-virtual {v3}, Lcom/android/mms/transaction/TransactionState;->getContentUri()Landroid/net/Uri;

    move-result-object v5

    .line 306
    .local v5, "uri":Landroid/net/Uri;
    if-nez v5, :cond_2

    .line 307
    const-string v7, "RetryScheduler"

    const-string v8, "null uri"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 370
    invoke-virtual {v4, p0}, Lcom/android/mms/transaction/Transaction;->detach(Lcom/android/mms/transaction/Observer;)V

    .line 373
    .end local v1    # "failedReason":Lcom/android/mms/transaction/Transaction$Failure;
    .end local v3    # "state":Lcom/android/mms/transaction/TransactionState;
    .end local v5    # "uri":Landroid/net/Uri;
    :cond_1
    :goto_0
    return-void

    .line 333
    .restart local v1    # "failedReason":Lcom/android/mms/transaction/Transaction$Failure;
    .restart local v3    # "state":Lcom/android/mms/transaction/TransactionState;
    .restart local v5    # "uri":Landroid/net/Uri;
    :cond_2
    :try_start_1
    invoke-virtual {p0, v5}, Lcom/android/mms/transaction/RetryScheduler;->getRetryData(Landroid/net/Uri;)Lcom/android/mms/transaction/RetryScheduler$RetryData;

    move-result-object v0

    .line 334
    .local v0, "data":Lcom/android/mms/transaction/RetryScheduler$RetryData;
    if-nez v0, :cond_3

    .line 335
    const-string v7, "RetryScheduler"

    const-string v8, "MMS-STATUS - Can not retry, retry data is null"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 370
    invoke-virtual {v4, p0}, Lcom/android/mms/transaction/Transaction;->detach(Lcom/android/mms/transaction/Observer;)V

    goto :goto_0

    .line 340
    :cond_3
    :try_start_2
    iget v7, v0, Lcom/android/mms/transaction/RetryScheduler$RetryData;->retryIndex:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v0, Lcom/android/mms/transaction/RetryScheduler$RetryData;->retryIndex:I

    .line 341
    const/4 v7, 0x1

    iput v7, v0, Lcom/android/mms/transaction/RetryScheduler$RetryData;->errorType:I

    .line 345
    invoke-static {}, Lcom/android/mms/transaction/NetworkManager;->hasMmsApn()Z

    move-result v7

    invoke-virtual {v4}, Lcom/android/mms/transaction/Transaction;->hasValidApn()Z

    move-result v8

    invoke-virtual {p0, v0, v1, v7, v8}, Lcom/android/mms/transaction/RetryScheduler;->getRetryType(Lcom/android/mms/transaction/RetryScheduler$RetryData;Lcom/android/mms/transaction/Transaction$Failure;ZZ)Lcom/android/mms/transaction/RetryScheduler$RetryType;

    move-result-object v2

    .line 348
    .local v2, "retryType":Lcom/android/mms/transaction/RetryScheduler$RetryType;
    new-instance v6, Landroid/content/ContentValues;

    const/4 v7, 0x4

    invoke-direct {v6, v7}, Landroid/content/ContentValues;-><init>(I)V

    .line 349
    .local v6, "values":Landroid/content/ContentValues;
    sget-object v7, Lcom/android/mms/transaction/RetryScheduler$1;->$SwitchMap$com$android$mms$transaction$RetryScheduler$RetryType:[I

    invoke-virtual {v2}, Lcom/android/mms/transaction/RetryScheduler$RetryType;->ordinal()I

    move-result v8

    aget v7, v7, v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    packed-switch v7, :pswitch_data_0

    .line 370
    .end local v0    # "data":Lcom/android/mms/transaction/RetryScheduler$RetryData;
    .end local v2    # "retryType":Lcom/android/mms/transaction/RetryScheduler$RetryType;
    .end local v5    # "uri":Landroid/net/Uri;
    .end local v6    # "values":Landroid/content/ContentValues;
    :cond_4
    :goto_1
    invoke-virtual {v4, p0}, Lcom/android/mms/transaction/Transaction;->detach(Lcom/android/mms/transaction/Observer;)V

    goto :goto_0

    .line 352
    .restart local v0    # "data":Lcom/android/mms/transaction/RetryScheduler$RetryData;
    .restart local v2    # "retryType":Lcom/android/mms/transaction/RetryScheduler$RetryType;
    .restart local v5    # "uri":Landroid/net/Uri;
    .restart local v6    # "values":Landroid/content/ContentValues;
    :pswitch_0
    :try_start_3
    invoke-direct {p0, v5, v6, v0}, Lcom/android/mms/transaction/RetryScheduler;->automaticRetry(Landroid/net/Uri;Landroid/content/ContentValues;Lcom/android/mms/transaction/RetryScheduler$RetryData;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 370
    .end local v0    # "data":Lcom/android/mms/transaction/RetryScheduler$RetryData;
    .end local v1    # "failedReason":Lcom/android/mms/transaction/Transaction$Failure;
    .end local v2    # "retryType":Lcom/android/mms/transaction/RetryScheduler$RetryType;
    .end local v3    # "state":Lcom/android/mms/transaction/TransactionState;
    .end local v5    # "uri":Landroid/net/Uri;
    .end local v6    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v7

    invoke-virtual {v4, p0}, Lcom/android/mms/transaction/Transaction;->detach(Lcom/android/mms/transaction/Observer;)V

    throw v7

    .line 356
    .restart local v0    # "data":Lcom/android/mms/transaction/RetryScheduler$RetryData;
    .restart local v1    # "failedReason":Lcom/android/mms/transaction/Transaction$Failure;
    .restart local v2    # "retryType":Lcom/android/mms/transaction/RetryScheduler$RetryType;
    .restart local v3    # "state":Lcom/android/mms/transaction/TransactionState;
    .restart local v5    # "uri":Landroid/net/Uri;
    .restart local v6    # "values":Landroid/content/ContentValues;
    :pswitch_1
    :try_start_4
    invoke-direct {p0, v5, v6, v0}, Lcom/android/mms/transaction/RetryScheduler;->eventDrivenRetry(Landroid/net/Uri;Landroid/content/ContentValues;Lcom/android/mms/transaction/RetryScheduler$RetryData;)V

    goto :goto_1

    .line 361
    :pswitch_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMMSNotifyServerError()Z

    move-result v7

    if-eqz v7, :cond_5

    sget-object v7, Lcom/android/mms/transaction/Transaction$Failure;->MMS_EXPIRED:Lcom/android/mms/transaction/Transaction$Failure;

    if-eq v1, v7, :cond_5

    .line 362
    invoke-direct {p0, v5, v0}, Lcom/android/mms/transaction/RetryScheduler;->showFailure(Landroid/net/Uri;Lcom/android/mms/transaction/RetryScheduler$RetryData;)V

    .line 365
    :cond_5
    invoke-direct {p0, v5, v6, v0}, Lcom/android/mms/transaction/RetryScheduler;->noRetry(Landroid/net/Uri;Landroid/content/ContentValues;Lcom/android/mms/transaction/RetryScheduler$RetryData;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 349
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
