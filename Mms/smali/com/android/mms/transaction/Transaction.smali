.class public abstract Lcom/android/mms/transaction/Transaction;
.super Lcom/android/mms/transaction/Observable;
.source "Transaction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/transaction/Transaction$TransactionTimeout;,
        Lcom/android/mms/transaction/Transaction$Failure;,
        Lcom/android/mms/transaction/Transaction$State;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final LOCAL_LOG:Z


# instance fields
.field protected mContentLocation:Ljava/lang/String;

.field protected mContext:Landroid/content/Context;

.field private mCreateTime:J

.field protected mDownloadManager:Lcom/android/mms/util/DownloadManager;

.field private mException:Ljava/lang/String;

.field private mFailedReason:Lcom/android/mms/transaction/Transaction$Failure;

.field private mHandler:Landroid/os/Handler;

.field private mHttpManager:Lcom/android/mms/transaction/HttpUtils;

.field protected mId:Ljava/lang/String;

.field private mManager:Lcom/android/mms/transaction/TransactionManager;

.field protected mNetworkInfo:Landroid/net/NetworkInfo;

.field protected mNetworkType:I

.field private mPduRecSize:I

.field private mPduSentSize:I

.field private final mServiceId:I

.field protected mStartedTime:J

.field protected mTransactionSettings:Lcom/android/mms/transaction/TransactionSettings;

.field protected mTransactionState:Lcom/android/mms/transaction/TransactionState;

.field public mTransactionTimeout:[Lcom/android/mms/transaction/Transaction$TransactionTimeout;

.field protected mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 52
    sput-boolean v0, Lcom/android/mms/transaction/Transaction;->DEBUG:Z

    .line 53
    sget-boolean v1, Lcom/android/mms/transaction/Transaction;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "Mms:transaction"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/mms/transaction/Transaction;->LOCAL_LOG:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceId"    # I
    .param p3, "settings"    # Lcom/android/mms/transaction/TransactionSettings;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 159
    invoke-direct {p0}, Lcom/android/mms/transaction/Observable;-><init>()V

    .line 114
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/mms/transaction/Transaction$TransactionTimeout;

    iput-object v0, p0, Lcom/android/mms/transaction/Transaction;->mTransactionTimeout:[Lcom/android/mms/transaction/Transaction$TransactionTimeout;

    .line 143
    iput v1, p0, Lcom/android/mms/transaction/Transaction;->mPduSentSize:I

    .line 144
    iput v1, p0, Lcom/android/mms/transaction/Transaction;->mPduRecSize:I

    .line 150
    iput-object v2, p0, Lcom/android/mms/transaction/Transaction;->mUri:Landroid/net/Uri;

    .line 151
    iput-object v2, p0, Lcom/android/mms/transaction/Transaction;->mContentLocation:Ljava/lang/String;

    .line 160
    iput-object p1, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    .line 162
    iput p2, p0, Lcom/android/mms/transaction/Transaction;->mServiceId:I

    .line 163
    iput-object p3, p0, Lcom/android/mms/transaction/Transaction;->mTransactionSettings:Lcom/android/mms/transaction/TransactionSettings;

    .line 164
    invoke-direct {p0}, Lcom/android/mms/transaction/Transaction;->init()V

    .line 165
    return-void
.end method

.method public constructor <init>(Lcom/android/mms/transaction/Transaction;)V
    .locals 3
    .param p1, "t"    # Lcom/android/mms/transaction/Transaction;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 170
    invoke-direct {p0}, Lcom/android/mms/transaction/Observable;-><init>()V

    .line 114
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/mms/transaction/Transaction$TransactionTimeout;

    iput-object v0, p0, Lcom/android/mms/transaction/Transaction;->mTransactionTimeout:[Lcom/android/mms/transaction/Transaction$TransactionTimeout;

    .line 143
    iput v1, p0, Lcom/android/mms/transaction/Transaction;->mPduSentSize:I

    .line 144
    iput v1, p0, Lcom/android/mms/transaction/Transaction;->mPduRecSize:I

    .line 150
    iput-object v2, p0, Lcom/android/mms/transaction/Transaction;->mUri:Landroid/net/Uri;

    .line 151
    iput-object v2, p0, Lcom/android/mms/transaction/Transaction;->mContentLocation:Ljava/lang/String;

    .line 171
    iget-object v0, p1, Lcom/android/mms/transaction/Transaction;->mId:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/mms/transaction/Transaction;->mId:Ljava/lang/String;

    .line 172
    iget-object v0, p1, Lcom/android/mms/transaction/Transaction;->mUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/mms/transaction/Transaction;->mUri:Landroid/net/Uri;

    .line 173
    iget-object v0, p1, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    .line 174
    iget v0, p1, Lcom/android/mms/transaction/Transaction;->mServiceId:I

    iput v0, p0, Lcom/android/mms/transaction/Transaction;->mServiceId:I

    .line 175
    iget-object v0, p1, Lcom/android/mms/transaction/Transaction;->mTransactionSettings:Lcom/android/mms/transaction/TransactionSettings;

    iput-object v0, p0, Lcom/android/mms/transaction/Transaction;->mTransactionSettings:Lcom/android/mms/transaction/TransactionSettings;

    .line 176
    invoke-direct {p0}, Lcom/android/mms/transaction/Transaction;->init()V

    .line 177
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 180
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/mms/transaction/Transaction;->mCreateTime:J

    .line 181
    invoke-static {}, Lcom/android/mms/transaction/TransactionManager;->getInstance()Lcom/android/mms/transaction/TransactionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/transaction/TransactionManager;->getDownloadManager()Lcom/android/mms/util/DownloadManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/Transaction;->mDownloadManager:Lcom/android/mms/util/DownloadManager;

    .line 183
    sget-object v0, Lcom/android/mms/transaction/Transaction$Failure;->NONE:Lcom/android/mms/transaction/Transaction$Failure;

    iput-object v0, p0, Lcom/android/mms/transaction/Transaction;->mFailedReason:Lcom/android/mms/transaction/Transaction$Failure;

    .line 184
    new-instance v0, Lcom/android/mms/transaction/TransactionState;

    invoke-direct {v0}, Lcom/android/mms/transaction/TransactionState;-><init>()V

    iput-object v0, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    .line 185
    iget-object v0, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    sget-object v1, Lcom/android/mms/transaction/Transaction$State;->INITIALIZED:Lcom/android/mms/transaction/Transaction$State;

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionState;->setState(Lcom/android/mms/transaction/Transaction$State;)V

    .line 186
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/transaction/Transaction;->mHandler:Landroid/os/Handler;

    .line 189
    invoke-static {}, Lcom/android/mms/transaction/RetryScheduler;->getInstance()Lcom/android/mms/transaction/RetryScheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/transaction/Transaction;->attach(Lcom/android/mms/transaction/Observer;)V

    .line 190
    return-void
.end method

.method private setFailedReason(Lcom/android/mms/transaction/Transaction$Failure;Ljava/lang/String;)V
    .locals 3
    .param p1, "failedReason"    # Lcom/android/mms/transaction/Transaction$Failure;
    .param p2, "exception"    # Ljava/lang/String;

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v0}, Lcom/android/mms/transaction/TransactionState;->getState()Lcom/android/mms/transaction/Transaction$State;

    move-result-object v0

    sget-object v1, Lcom/android/mms/transaction/Transaction$State;->FAILED:Lcom/android/mms/transaction/Transaction$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/mms/transaction/Transaction;->mFailedReason:Lcom/android/mms/transaction/Transaction$Failure;

    sget-object v1, Lcom/android/mms/transaction/Transaction$Failure;->NONE:Lcom/android/mms/transaction/Transaction$Failure;

    if-eq v0, v1, :cond_0

    .line 279
    const-string v0, "Transaction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "already failed, reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/transaction/Transaction;->mFailedReason:Lcom/android/mms/transaction/Transaction$Failure;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :goto_0
    return-void

    .line 281
    :cond_0
    sget-boolean v0, Lcom/android/mms/transaction/Transaction;->LOCAL_LOG:Z

    if-eqz v0, :cond_1

    .line 282
    const-string v0, "Transaction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MMS-STATUS - Transaction error, failed reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :cond_1
    iput-object p1, p0, Lcom/android/mms/transaction/Transaction;->mFailedReason:Lcom/android/mms/transaction/Transaction$Failure;

    .line 287
    iput-object p2, p0, Lcom/android/mms/transaction/Transaction;->mException:Ljava/lang/String;

    goto :goto_0
.end method

.method private showTransactionResult()V
    .locals 13

    .prologue
    .line 460
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 462
    .local v1, "endTime":J
    iget-wide v9, p0, Lcom/android/mms/transaction/Transaction;->mStartedTime:J

    sub-long v7, v1, v9

    .line 463
    .local v7, "transferDuration":J
    iget-wide v9, p0, Lcom/android/mms/transaction/Transaction;->mCreateTime:J

    sub-long v5, v1, v9

    .line 465
    .local v5, "totalDuration":J
    iget-object v9, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v9}, Lcom/android/mms/transaction/TransactionState;->getState()Lcom/android/mms/transaction/Transaction$State;

    move-result-object v4

    .line 468
    .local v4, "state":Lcom/android/mms/transaction/Transaction$State;
    :goto_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 469
    .local v3, "result":Ljava/lang/String;
    const-string v0, ""

    .line 470
    .local v0, "detail":Ljava/lang/String;
    sget-object v9, Lcom/android/mms/transaction/Transaction$State;->FAILED:Lcom/android/mms/transaction/Transaction$State;

    if-ne v4, v9, :cond_0

    .line 471
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "failed reason="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/mms/transaction/Transaction;->getFailedReason()Lcom/android/mms/transaction/Transaction$Failure;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 474
    :cond_0
    iget-object v9, p0, Lcom/android/mms/transaction/Transaction;->mException:Ljava/lang/String;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/mms/transaction/Transaction;->mException:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 475
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", exception="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/mms/transaction/Transaction;->mException:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 478
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 479
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 482
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", type="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/mms/transaction/Transaction;->getType()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", uri="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/mms/transaction/Transaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", trans id="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/mms/transaction/Transaction;->mId:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", networkType="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/mms/transaction/Transaction;->mNetworkType:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", ip version="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/mms/transaction/Transaction;->getIpVersion()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", networkInfo=("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/mms/transaction/Transaction;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", created="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "kk:mm:ss"

    iget-wide v11, p0, Lcom/android/mms/transaction/Transaction;->mCreateTime:J

    invoke-static {v10, v11, v12}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", started="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "kk:mm:ss"

    iget-wide v11, p0, Lcom/android/mms/transaction/Transaction;->mStartedTime:J

    invoke-static {v10, v11, v12}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", finished="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "kk:mm:ss"

    invoke-static {v10, v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", transfer duration="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "ms"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", total duration="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "ms"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", bytes sent="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/mms/transaction/Transaction;->mPduSentSize:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", bytes rec="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/mms/transaction/Transaction;->mPduRecSize:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 492
    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-eqz v9, :cond_3

    .line 493
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", rate="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/mms/transaction/Transaction;->mPduSentSize:I

    iget v11, p0, Lcom/android/mms/transaction/Transaction;->mPduRecSize:I

    add-int/2addr v10, v11

    mul-int/lit16 v10, v10, 0x3e8

    int-to-long v10, v10

    div-long/2addr v10, v7

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " bytes/seg"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 497
    :cond_3
    sget-boolean v9, Lcom/android/mms/transaction/Transaction;->LOCAL_LOG:Z

    if-eqz v9, :cond_4

    .line 498
    sget-object v9, Lcom/android/mms/transaction/Transaction$State;->FAILED:Lcom/android/mms/transaction/Transaction$State;

    if-ne v4, v9, :cond_6

    .line 499
    iget-object v9, p0, Lcom/android/mms/transaction/Transaction;->mUri:Landroid/net/Uri;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/mms/transaction/NetworkManager;->addMMSErrorDetail(Landroid/net/Uri;Ljava/lang/String;)V

    .line 505
    :cond_4
    :goto_1
    const-string v9, "Transaction"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MMS-STATUS-DURATION, result="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    return-void

    .line 465
    .end local v0    # "detail":Ljava/lang/String;
    .end local v3    # "result":Ljava/lang/String;
    .end local v4    # "state":Lcom/android/mms/transaction/Transaction$State;
    :cond_5
    sget-object v4, Lcom/android/mms/transaction/Transaction$State;->INITIALIZED:Lcom/android/mms/transaction/Transaction$State;

    goto/16 :goto_0

    .line 501
    .restart local v0    # "detail":Ljava/lang/String;
    .restart local v3    # "result":Ljava/lang/String;
    .restart local v4    # "state":Lcom/android/mms/transaction/Transaction$State;
    :cond_6
    iget-object v9, p0, Lcom/android/mms/transaction/Transaction;->mUri:Landroid/net/Uri;

    invoke-static {v9}, Lcom/android/mms/transaction/NetworkManager;->removeMMSErrorDetail(Landroid/net/Uri;)V

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized abortTransaction(Lcom/android/mms/transaction/Transaction$Failure;Z)V
    .locals 6
    .param p1, "reason"    # Lcom/android/mms/transaction/Transaction$Failure;
    .param p2, "isMandatory"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 344
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/android/mms/transaction/Transaction;->mHttpManager:Lcom/android/mms/transaction/HttpUtils;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    .line 365
    :goto_0
    monitor-exit p0

    return-void

    .line 348
    :cond_0
    :try_start_1
    sget-boolean v3, Lcom/android/mms/transaction/Transaction;->LOCAL_LOG:Z

    if-eqz v3, :cond_1

    .line 349
    const-string v3, "Transaction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "abortTransaction, reason="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isMandatory="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/transaction/Transaction;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    move v0, v2

    .line 354
    .local v0, "isUpload":Z
    :goto_1
    if-nez p2, :cond_2

    iget-object v3, p0, Lcom/android/mms/transaction/Transaction;->mHttpManager:Lcom/android/mms/transaction/HttpUtils;

    invoke-virtual {v3, v0}, Lcom/android/mms/transaction/HttpUtils;->shouldAbort(Z)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v1, v2

    .line 355
    .local v1, "shouldAbort":Z
    :cond_3
    if-nez v1, :cond_5

    .line 359
    const-string v2, "Transaction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MMS-STATUS: too late to abort transaction="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 344
    .end local v0    # "isUpload":Z
    .end local v1    # "shouldAbort":Z
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_4
    move v0, v1

    .line 353
    goto :goto_1

    .line 362
    .restart local v0    # "isUpload":Z
    .restart local v1    # "shouldAbort":Z
    :cond_5
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/android/mms/transaction/Transaction;->notifyFailure(Lcom/android/mms/transaction/Transaction$Failure;)V

    .line 363
    iget-object v2, p0, Lcom/android/mms/transaction/Transaction;->mHttpManager:Lcom/android/mms/transaction/HttpUtils;

    invoke-virtual {v2, v0}, Lcom/android/mms/transaction/HttpUtils;->abort(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method protected finishTransaction()V
    .locals 4

    .prologue
    .line 437
    invoke-virtual {p0}, Lcom/android/mms/transaction/Transaction;->stopTimeouts()V

    .line 438
    iget-object v0, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    iget-object v1, p0, Lcom/android/mms/transaction/Transaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 440
    iget-object v0, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v0}, Lcom/android/mms/transaction/TransactionState;->getState()Lcom/android/mms/transaction/Transaction$State;

    move-result-object v0

    sget-object v1, Lcom/android/mms/transaction/Transaction$State;->SUCCESS:Lcom/android/mms/transaction/Transaction$State;

    if-eq v0, v1, :cond_0

    .line 441
    iget-object v0, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    sget-object v1, Lcom/android/mms/transaction/Transaction$State;->FAILED:Lcom/android/mms/transaction/Transaction$State;

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionState;->setState(Lcom/android/mms/transaction/Transaction$State;)V

    .line 444
    :cond_0
    iget-object v0, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v0}, Lcom/android/mms/transaction/TransactionState;->getState()Lcom/android/mms/transaction/Transaction$State;

    move-result-object v0

    sget-object v1, Lcom/android/mms/transaction/Transaction$State;->FAILED:Lcom/android/mms/transaction/Transaction$State;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/mms/transaction/Transaction;->mFailedReason:Lcom/android/mms/transaction/Transaction$Failure;

    sget-object v1, Lcom/android/mms/transaction/Transaction$Failure;->NONE:Lcom/android/mms/transaction/Transaction$Failure;

    if-ne v0, v1, :cond_1

    .line 447
    sget-object v0, Lcom/android/mms/transaction/Transaction$Failure;->TEMPORARY:Lcom/android/mms/transaction/Transaction$Failure;

    iget-object v1, p0, Lcom/android/mms/transaction/Transaction;->mException:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/transaction/Transaction;->notifyFailure(Lcom/android/mms/transaction/Transaction$Failure;Ljava/lang/String;)V

    .line 450
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/transaction/Transaction;->showTransactionResult()V

    .line 451
    invoke-virtual {p0}, Lcom/android/mms/transaction/Transaction;->notifyObservers()V

    .line 452
    sget-boolean v0, Lcom/android/mms/transaction/Transaction;->LOCAL_LOG:Z

    if-eqz v0, :cond_2

    .line 453
    const-string v0, "Transaction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MMS-THREAD - run END, thread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    :cond_2
    return-void
.end method

.method public getConnectionSettings()Lcom/android/mms/transaction/TransactionSettings;
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/android/mms/transaction/Transaction;->mTransactionSettings:Lcom/android/mms/transaction/TransactionSettings;

    return-object v0
.end method

.method public getFailedReason()Lcom/android/mms/transaction/Transaction$Failure;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/mms/transaction/Transaction;->mFailedReason:Lcom/android/mms/transaction/Transaction$Failure;

    return-object v0
.end method

.method protected getIpVersion()I
    .locals 1

    .prologue
    .line 228
    const/4 v0, 0x0

    .line 229
    .local v0, "ipVersion":I
    return v0
.end method

.method protected getPdu(Ljava/lang/String;)[B
    .locals 12
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 609
    sget-boolean v0, Lcom/android/mms/transaction/Transaction;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 610
    const-string v0, "Transaction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPdu START, rec size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/transaction/Transaction;->mPduRecSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/transaction/Transaction;->getIpVersion()I

    move-result v0

    iget-object v1, p0, Lcom/android/mms/transaction/Transaction;->mTransactionSettings:Lcom/android/mms/transaction/TransactionSettings;

    invoke-static {v0, p1, v1}, Lcom/android/mms/transaction/NetworkManager;->ensureRouteToHost(ILjava/lang/String;Lcom/android/mms/transaction/TransactionSettings;)Ljava/net/InetAddress;

    move-result-object v3

    .line 614
    .local v3, "inetAddr":Ljava/net/InetAddress;
    iget-object v0, p0, Lcom/android/mms/transaction/Transaction;->mHttpManager:Lcom/android/mms/transaction/HttpUtils;

    const-wide/16 v1, -0x1

    const/4 v6, 0x2

    iget-object v4, p0, Lcom/android/mms/transaction/Transaction;->mTransactionSettings:Lcom/android/mms/transaction/TransactionSettings;

    invoke-virtual {v4}, Lcom/android/mms/transaction/TransactionSettings;->isProxySet()Z

    move-result v8

    iget-object v4, p0, Lcom/android/mms/transaction/Transaction;->mTransactionSettings:Lcom/android/mms/transaction/TransactionSettings;

    invoke-virtual {v4}, Lcom/android/mms/transaction/TransactionSettings;->getProxyAddress()Ljava/lang/String;

    move-result-object v9

    iget-object v4, p0, Lcom/android/mms/transaction/Transaction;->mTransactionSettings:Lcom/android/mms/transaction/TransactionSettings;

    invoke-virtual {v4}, Lcom/android/mms/transaction/TransactionSettings;->getProxyPort()I

    move-result v10

    move-object v4, p1

    move-object v7, v5

    invoke-virtual/range {v0 .. v10}, Lcom/android/mms/transaction/HttpUtils;->httpConnection(JLjava/net/InetAddress;Ljava/lang/String;[BILcom/android/mms/transaction/Transaction$TransactionTimeout;ZLjava/lang/String;I)[B

    move-result-object v11

    .line 620
    .local v11, "pdu":[B
    if-eqz v11, :cond_1

    .line 621
    iget v0, p0, Lcom/android/mms/transaction/Transaction;->mPduRecSize:I

    array-length v1, v11

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/mms/transaction/Transaction;->mPduRecSize:I

    .line 624
    :cond_1
    sget-boolean v0, Lcom/android/mms/transaction/Transaction;->LOCAL_LOG:Z

    if-eqz v0, :cond_2

    .line 625
    const-string v0, "Transaction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPdu END, rec size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/transaction/Transaction;->mPduRecSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    :cond_2
    return-object v11
.end method

.method protected getResponseStatus(Lcom/google/android/mms/pdu/SendConf;)I
    .locals 2
    .param p1, "sendConf"    # Lcom/google/android/mms/pdu/SendConf;

    .prologue
    .line 198
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/SendConf;->getResponseStatus()I

    move-result v0

    .line 200
    .local v0, "respStatus":I
    iget-object v1, p0, Lcom/android/mms/transaction/Transaction;->mManager:Lcom/android/mms/transaction/TransactionManager;

    if-eqz v1, :cond_0

    .line 201
    iget-object v1, p0, Lcom/android/mms/transaction/Transaction;->mManager:Lcom/android/mms/transaction/TransactionManager;

    invoke-virtual {v1, v0}, Lcom/android/mms/transaction/TransactionManager;->onSentStatus(I)I

    move-result v0

    .line 204
    :cond_0
    return v0
.end method

.method protected getRetrieveStatus(Lcom/google/android/mms/pdu/RetrieveConf;)I
    .locals 2
    .param p1, "retrieveConf"    # Lcom/google/android/mms/pdu/RetrieveConf;

    .prologue
    .line 208
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/RetrieveConf;->getRetrieveStatus()I

    move-result v0

    .line 210
    .local v0, "retrieveStatus":I
    iget-object v1, p0, Lcom/android/mms/transaction/Transaction;->mManager:Lcom/android/mms/transaction/TransactionManager;

    if-eqz v1, :cond_0

    .line 211
    iget-object v1, p0, Lcom/android/mms/transaction/Transaction;->mManager:Lcom/android/mms/transaction/TransactionManager;

    invoke-virtual {v1, v0}, Lcom/android/mms/transaction/TransactionManager;->onRetrieveStatus(I)I

    move-result v0

    .line 214
    :cond_0
    return v0
.end method

.method public getServiceId()I
    .locals 1

    .prologue
    .line 404
    iget v0, p0, Lcom/android/mms/transaction/Transaction;->mServiceId:I

    return v0
.end method

.method public getState()Lcom/android/mms/transaction/TransactionState;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    return-object v0
.end method

.method public abstract getType()I
.end method

.method public hasValidApn()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 240
    iget-object v1, p0, Lcom/android/mms/transaction/Transaction;->mTransactionSettings:Lcom/android/mms/transaction/TransactionSettings;

    if-nez v1, :cond_1

    .line 241
    sget-boolean v1, Lcom/android/mms/transaction/Transaction;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 242
    const-string v1, "Transaction"

    const-string v2, "hasValidApn, APN was not set in Transaction"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_0
    :goto_0
    return v0

    .line 248
    :cond_1
    iget-object v1, p0, Lcom/android/mms/transaction/Transaction;->mTransactionSettings:Lcom/android/mms/transaction/TransactionSettings;

    invoke-virtual {v1}, Lcom/android/mms/transaction/TransactionSettings;->isValid()Z

    move-result v1

    if-nez v1, :cond_2

    .line 249
    sget-boolean v1, Lcom/android/mms/transaction/Transaction;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 250
    const-string v1, "Transaction"

    const-string v2, "hasValidApn, Transaction does not have valid APN"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 256
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isEquivalent(Lcom/android/mms/transaction/Transaction;)Z
    .locals 3
    .param p1, "transaction"    # Lcom/android/mms/transaction/Transaction;

    .prologue
    .line 380
    sget-boolean v0, Lcom/android/mms/transaction/Transaction;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 381
    const-string v0, "Transaction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEquivalent, this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", trans="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/android/mms/transaction/Transaction;->mId:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/mms/transaction/Transaction;->mId:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 386
    :cond_1
    const-string v0, "Transaction"

    const-string v1, "isEquivalent called for transaction with null transaction id"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    const/4 v0, 0x0

    .line 396
    :goto_0
    return v0

    :cond_2
    iget-object v0, p0, Lcom/android/mms/transaction/Transaction;->mId:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/mms/transaction/Transaction;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public notifyFailure(Lcom/android/mms/transaction/Transaction$Failure;)V
    .locals 1
    .param p1, "failedReason"    # Lcom/android/mms/transaction/Transaction$Failure;

    .prologue
    .line 309
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/android/mms/transaction/Transaction;->notifyFailure(Lcom/android/mms/transaction/Transaction$Failure;Ljava/lang/String;)V

    .line 310
    return-void
.end method

.method public notifyFailure(Lcom/android/mms/transaction/Transaction$Failure;Ljava/lang/String;)V
    .locals 3
    .param p1, "failedReason"    # Lcom/android/mms/transaction/Transaction$Failure;
    .param p2, "exception"    # Ljava/lang/String;

    .prologue
    .line 296
    sget-boolean v0, Lcom/android/mms/transaction/Transaction;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 297
    const-string v0, "Transaction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyFailure, failure reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", exception="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    if-eqz v0, :cond_1

    .line 303
    iget-object v0, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    sget-object v1, Lcom/android/mms/transaction/Transaction$State;->FAILED:Lcom/android/mms/transaction/Transaction$State;

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionState;->setState(Lcom/android/mms/transaction/Transaction$State;)V

    .line 304
    invoke-direct {p0, p1, p2}, Lcom/android/mms/transaction/Transaction;->setFailedReason(Lcom/android/mms/transaction/Transaction$Failure;Ljava/lang/String;)V

    .line 306
    :cond_1
    return-void
.end method

.method public abstract process()V
.end method

.method protected sendPdu(J[B)[B
    .locals 1
    .param p1, "token"    # J
    .param p3, "pdu"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/mms/MmsException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation

    .prologue
    .line 556
    iget-object v0, p0, Lcom/android/mms/transaction/Transaction;->mTransactionSettings:Lcom/android/mms/transaction/TransactionSettings;

    invoke-virtual {v0}, Lcom/android/mms/transaction/TransactionSettings;->getMmscUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/mms/transaction/Transaction;->sendPdu(J[BLjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method protected sendPdu(J[BLjava/lang/String;)[B
    .locals 13
    .param p1, "token"    # J
    .param p3, "pdu"    # [B
    .param p4, "mmscUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/mms/MmsException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation

    .prologue
    .line 573
    sget-boolean v1, Lcom/android/mms/transaction/Transaction;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 574
    const-string v1, "Transaction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendPdu START, send size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/mms/transaction/Transaction;->mPduSentSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    :cond_0
    if-nez p3, :cond_1

    .line 577
    new-instance v1, Lcom/google/android/mms/MmsException;

    invoke-direct {v1}, Lcom/google/android/mms/MmsException;-><init>()V

    throw v1

    .line 580
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/transaction/Transaction;->getIpVersion()I

    move-result v1

    iget-object v2, p0, Lcom/android/mms/transaction/Transaction;->mTransactionSettings:Lcom/android/mms/transaction/TransactionSettings;

    move-object/from16 v0, p4

    invoke-static {v1, v0, v2}, Lcom/android/mms/transaction/NetworkManager;->ensureRouteToHost(ILjava/lang/String;Lcom/android/mms/transaction/TransactionSettings;)Ljava/net/InetAddress;

    move-result-object v4

    .line 582
    .local v4, "inetAddr":Ljava/net/InetAddress;
    iget-object v1, p0, Lcom/android/mms/transaction/Transaction;->mHttpManager:Lcom/android/mms/transaction/HttpUtils;

    const/4 v7, 0x1

    iget-object v2, p0, Lcom/android/mms/transaction/Transaction;->mTransactionTimeout:[Lcom/android/mms/transaction/Transaction$TransactionTimeout;

    const/4 v3, 0x1

    aget-object v8, v2, v3

    iget-object v2, p0, Lcom/android/mms/transaction/Transaction;->mTransactionSettings:Lcom/android/mms/transaction/TransactionSettings;

    invoke-virtual {v2}, Lcom/android/mms/transaction/TransactionSettings;->isProxySet()Z

    move-result v9

    iget-object v2, p0, Lcom/android/mms/transaction/Transaction;->mTransactionSettings:Lcom/android/mms/transaction/TransactionSettings;

    invoke-virtual {v2}, Lcom/android/mms/transaction/TransactionSettings;->getProxyAddress()Ljava/lang/String;

    move-result-object v10

    iget-object v2, p0, Lcom/android/mms/transaction/Transaction;->mTransactionSettings:Lcom/android/mms/transaction/TransactionSettings;

    invoke-virtual {v2}, Lcom/android/mms/transaction/TransactionSettings;->getProxyPort()I

    move-result v11

    move-wide v2, p1

    move-object/from16 v5, p4

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v11}, Lcom/android/mms/transaction/HttpUtils;->httpConnection(JLjava/net/InetAddress;Ljava/lang/String;[BILcom/android/mms/transaction/Transaction$TransactionTimeout;ZLjava/lang/String;I)[B

    move-result-object v12

    .line 588
    .local v12, "resp":[B
    if-eqz v12, :cond_2

    .line 589
    iget v1, p0, Lcom/android/mms/transaction/Transaction;->mPduSentSize:I

    array-length v2, v12

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/mms/transaction/Transaction;->mPduSentSize:I

    .line 592
    :cond_2
    sget-boolean v1, Lcom/android/mms/transaction/Transaction;->LOCAL_LOG:Z

    if-eqz v1, :cond_3

    .line 593
    const-string v1, "Transaction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendPdu END, send size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/mms/transaction/Transaction;->mPduSentSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    :cond_3
    return-object v12
.end method

.method protected sendPdu([B)[B
    .locals 3
    .param p1, "pdu"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/mms/MmsException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation

    .prologue
    .line 521
    const-wide/16 v0, -0x1

    iget-object v2, p0, Lcom/android/mms/transaction/Transaction;->mTransactionSettings:Lcom/android/mms/transaction/TransactionSettings;

    invoke-virtual {v2}, Lcom/android/mms/transaction/TransactionSettings;->getMmscUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/android/mms/transaction/Transaction;->sendPdu(J[BLjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method protected sendPdu([BLjava/lang/String;)[B
    .locals 2
    .param p1, "pdu"    # [B
    .param p2, "mmscUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/mms/MmsException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation

    .prologue
    .line 539
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/mms/transaction/Transaction;->sendPdu(J[BLjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public setConnectionSettings(Lcom/android/mms/transaction/TransactionSettings;)V
    .locals 0
    .param p1, "settings"    # Lcom/android/mms/transaction/TransactionSettings;

    .prologue
    .line 421
    iput-object p1, p0, Lcom/android/mms/transaction/Transaction;->mTransactionSettings:Lcom/android/mms/transaction/TransactionSettings;

    .line 422
    return-void
.end method

.method public setManager(Lcom/android/mms/transaction/TransactionManager;)V
    .locals 1
    .param p1, "manager"    # Lcom/android/mms/transaction/TransactionManager;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/android/mms/transaction/Transaction;->mManager:Lcom/android/mms/transaction/TransactionManager;

    .line 194
    iget-object v0, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0, p0}, Lcom/android/mms/transaction/TransactionManager;->getHttpUtils(Landroid/content/Context;Lcom/android/mms/transaction/Transaction;)Lcom/android/mms/transaction/HttpUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/Transaction;->mHttpManager:Lcom/android/mms/transaction/HttpUtils;

    .line 195
    return-void
.end method

.method public setNetworkInfo(Landroid/net/NetworkInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/net/NetworkInfo;

    .prologue
    .line 425
    iput-object p1, p0, Lcom/android/mms/transaction/Transaction;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 426
    return-void
.end method

.method public setNetworkType(I)V
    .locals 0
    .param p1, "networkType"    # I

    .prologue
    .line 433
    iput p1, p0, Lcom/android/mms/transaction/Transaction;->mNetworkType:I

    .line 434
    return-void
.end method

.method public startTimeout(II)V
    .locals 7
    .param p1, "type"    # I
    .param p2, "timeout"    # I

    .prologue
    .line 717
    if-nez p2, :cond_0

    .line 731
    :goto_0
    return-void

    .line 721
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/mms/transaction/Transaction;->stopTimeout(I)V

    .line 723
    sget-boolean v0, Lcom/android/mms/transaction/Transaction;->LOCAL_LOG:Z

    if-eqz v0, :cond_1

    .line 724
    const-string v0, "Transaction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start transaction timeout, type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", timeout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", transaction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    :cond_1
    iget-object v6, p0, Lcom/android/mms/transaction/Transaction;->mTransactionTimeout:[Lcom/android/mms/transaction/Transaction$TransactionTimeout;

    new-instance v0, Lcom/android/mms/transaction/Transaction$TransactionTimeout;

    iget-object v1, p0, Lcom/android/mms/transaction/Transaction;->mHandler:Landroid/os/Handler;

    int-to-long v4, p2

    move v2, p1

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/transaction/Transaction$TransactionTimeout;-><init>(Landroid/os/Handler;ILcom/android/mms/transaction/Transaction;J)V

    aput-object v0, v6, p1

    .line 730
    iget-object v0, p0, Lcom/android/mms/transaction/Transaction;->mTransactionTimeout:[Lcom/android/mms/transaction/Transaction$TransactionTimeout;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/mms/transaction/Transaction$TransactionTimeout;->start()V

    goto :goto_0
.end method

.method public stopTimeout(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 734
    iget-object v0, p0, Lcom/android/mms/transaction/Transaction;->mTransactionTimeout:[Lcom/android/mms/transaction/Transaction$TransactionTimeout;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 745
    :goto_0
    return-void

    .line 738
    :cond_0
    sget-boolean v0, Lcom/android/mms/transaction/Transaction;->LOCAL_LOG:Z

    if-eqz v0, :cond_1

    .line 739
    const-string v0, "Transaction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stop transaction timeout, type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", transaction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    :cond_1
    iget-object v0, p0, Lcom/android/mms/transaction/Transaction;->mTransactionTimeout:[Lcom/android/mms/transaction/Transaction$TransactionTimeout;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/mms/transaction/Transaction$TransactionTimeout;->stop()V

    .line 744
    iget-object v0, p0, Lcom/android/mms/transaction/Transaction;->mTransactionTimeout:[Lcom/android/mms/transaction/Transaction$TransactionTimeout;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    goto :goto_0
.end method

.method public stopTimeouts()V
    .locals 2

    .prologue
    .line 748
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 749
    invoke-virtual {p0, v0}, Lcom/android/mms/transaction/Transaction;->stopTimeout(I)V

    .line 748
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 751
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 703
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": uri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/transaction/Transaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": transId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/transaction/Transaction;->mId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": serviceId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/mms/transaction/Transaction;->mServiceId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/mms/transaction/Transaction;->getState()Lcom/android/mms/transaction/TransactionState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 706
    .local v0, "st":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v2}, Lcom/android/mms/transaction/TransactionState;->getState()Lcom/android/mms/transaction/Transaction$State;

    move-result-object v1

    .line 708
    .local v1, "state":Lcom/android/mms/transaction/Transaction$State;
    :goto_0
    sget-object v2, Lcom/android/mms/transaction/Transaction$State;->FAILED:Lcom/android/mms/transaction/Transaction$State;

    if-ne v1, v2, :cond_0

    .line 709
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": failed_reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/mms/transaction/Transaction;->getFailedReason()Lcom/android/mms/transaction/Transaction$Failure;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 712
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": settings="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/transaction/Transaction;->mTransactionSettings:Lcom/android/mms/transaction/TransactionSettings;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 713
    return-object v0

    .line 706
    .end local v1    # "state":Lcom/android/mms/transaction/Transaction$State;
    :cond_1
    sget-object v1, Lcom/android/mms/transaction/Transaction$State;->INITIALIZED:Lcom/android/mms/transaction/Transaction$State;

    goto :goto_0
.end method

.method protected treatException(Ljava/lang/Throwable;)V
    .locals 8
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 313
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 315
    .local v2, "exception":Ljava/lang/String;
    const-string v4, "Broken pipe"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 317
    sget-object v4, Lcom/android/mms/transaction/Transaction$Failure;->TRANSACTION_TIMEOUT:Lcom/android/mms/transaction/Transaction$Failure;

    invoke-virtual {p0, v4, v2}, Lcom/android/mms/transaction/Transaction;->notifyFailure(Lcom/android/mms/transaction/Transaction$Failure;Ljava/lang/String;)V

    .line 335
    :goto_0
    return-void

    .line 319
    :cond_0
    const-string v4, "timed out"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 320
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/mms/transaction/Transaction;->mStartedTime:J

    sub-long v0, v4, v6

    .line 321
    .local v0, "duration":J
    invoke-static {}, Lcom/android/mms/MmsConfig;->getHttpSocketTimeout()I

    move-result v3

    .line 322
    .local v3, "timeout":I
    int-to-long v4, v3

    cmp-long v4, v0, v4

    if-ltz v4, :cond_1

    .line 323
    sget-object v4, Lcom/android/mms/transaction/Transaction$Failure;->NO_RESPONSE_TIMEOUT:Lcom/android/mms/transaction/Transaction$Failure;

    invoke-virtual {p0, v4, v2}, Lcom/android/mms/transaction/Transaction;->notifyFailure(Lcom/android/mms/transaction/Transaction$Failure;Ljava/lang/String;)V

    goto :goto_0

    .line 327
    :cond_1
    const-string v4, "Transaction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignore timeout exception fast than limit="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    .end local v0    # "duration":J
    .end local v3    # "timeout":I
    :cond_2
    sget-object v4, Lcom/android/mms/transaction/Transaction$Failure;->TEMPORARY:Lcom/android/mms/transaction/Transaction$Failure;

    invoke-virtual {p0, v4, v2}, Lcom/android/mms/transaction/Transaction;->notifyFailure(Lcom/android/mms/transaction/Transaction$Failure;Ljava/lang/String;)V

    goto :goto_0
.end method
