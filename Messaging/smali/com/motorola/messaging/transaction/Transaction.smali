.class public abstract Lcom/motorola/messaging/transaction/Transaction;
.super Lcom/motorola/messaging/transaction/Observable;
.source "Transaction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/messaging/transaction/Transaction$TransactionTimeout;,
        Lcom/motorola/messaging/transaction/Transaction$Failure;,
        Lcom/motorola/messaging/transaction/Transaction$State;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final LOCAL_LOG:Z


# instance fields
.field protected mContentLocation:Ljava/lang/String;

.field protected mContext:Landroid/content/Context;

.field private mCreateTime:J

.field protected mDownloadManager:Lcom/motorola/messaging/transaction/DownloadManager;

.field private mException:Ljava/lang/String;

.field private mFailedReason:Lcom/motorola/messaging/transaction/Transaction$Failure;

.field private mHandler:Landroid/os/Handler;

.field private mHttpManager:Lcom/motorola/messaging/transaction/HttpUtils;

.field protected mId:Ljava/lang/String;

.field private mManager:Lcom/motorola/messaging/transaction/TransactionManager;

.field protected mNetworkInfo:Landroid/net/NetworkInfo;

.field protected mNetworkType:I

.field private mPduRecSize:I

.field private mPduSentSize:I

.field private final mServiceId:I

.field protected mStartedTime:J

.field protected mTransactionSettings:Lcom/motorola/messaging/transaction/TransactionSettings;

.field protected mTransactionState:Lcom/motorola/messaging/transaction/TransactionState;

.field public mTransactionTimeout:[Lcom/motorola/messaging/transaction/Transaction$TransactionTimeout;

.field protected mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 46
    sput-boolean v0, Lcom/motorola/messaging/transaction/Transaction;->DEBUG:Z

    .line 47
    sget-boolean v1, Lcom/motorola/messaging/transaction/Transaction;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v1, :cond_0

    :goto_0
    sput-boolean v0, Lcom/motorola/messaging/transaction/Transaction;->LOCAL_LOG:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/motorola/messaging/transaction/TransactionSettings;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceId"    # I
    .param p3, "settings"    # Lcom/motorola/messaging/transaction/TransactionSettings;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 143
    invoke-direct {p0}, Lcom/motorola/messaging/transaction/Observable;-><init>()V

    .line 106
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/motorola/messaging/transaction/Transaction$TransactionTimeout;

    iput-object v0, p0, Lcom/motorola/messaging/transaction/Transaction;->mTransactionTimeout:[Lcom/motorola/messaging/transaction/Transaction$TransactionTimeout;

    .line 129
    iput v1, p0, Lcom/motorola/messaging/transaction/Transaction;->mPduSentSize:I

    .line 130
    iput v1, p0, Lcom/motorola/messaging/transaction/Transaction;->mPduRecSize:I

    .line 136
    iput-object v2, p0, Lcom/motorola/messaging/transaction/Transaction;->mUri:Landroid/net/Uri;

    .line 137
    iput-object v2, p0, Lcom/motorola/messaging/transaction/Transaction;->mContentLocation:Ljava/lang/String;

    .line 145
    iput-object p1, p0, Lcom/motorola/messaging/transaction/Transaction;->mContext:Landroid/content/Context;

    .line 146
    iput p2, p0, Lcom/motorola/messaging/transaction/Transaction;->mServiceId:I

    .line 147
    iput-object p3, p0, Lcom/motorola/messaging/transaction/Transaction;->mTransactionSettings:Lcom/motorola/messaging/transaction/TransactionSettings;

    .line 148
    invoke-direct {p0}, Lcom/motorola/messaging/transaction/Transaction;->init()V

    .line 149
    return-void
.end method

.method public constructor <init>(Lcom/motorola/messaging/transaction/Transaction;)V
    .locals 3
    .param p1, "t"    # Lcom/motorola/messaging/transaction/Transaction;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 153
    invoke-direct {p0}, Lcom/motorola/messaging/transaction/Observable;-><init>()V

    .line 106
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/motorola/messaging/transaction/Transaction$TransactionTimeout;

    iput-object v0, p0, Lcom/motorola/messaging/transaction/Transaction;->mTransactionTimeout:[Lcom/motorola/messaging/transaction/Transaction$TransactionTimeout;

    .line 129
    iput v1, p0, Lcom/motorola/messaging/transaction/Transaction;->mPduSentSize:I

    .line 130
    iput v1, p0, Lcom/motorola/messaging/transaction/Transaction;->mPduRecSize:I

    .line 136
    iput-object v2, p0, Lcom/motorola/messaging/transaction/Transaction;->mUri:Landroid/net/Uri;

    .line 137
    iput-object v2, p0, Lcom/motorola/messaging/transaction/Transaction;->mContentLocation:Ljava/lang/String;

    .line 154
    iget-object v0, p1, Lcom/motorola/messaging/transaction/Transaction;->mId:Ljava/lang/String;

    iput-object v0, p0, Lcom/motorola/messaging/transaction/Transaction;->mId:Ljava/lang/String;

    .line 155
    iget-object v0, p1, Lcom/motorola/messaging/transaction/Transaction;->mUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/motorola/messaging/transaction/Transaction;->mUri:Landroid/net/Uri;

    .line 156
    iget-object v0, p1, Lcom/motorola/messaging/transaction/Transaction;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/motorola/messaging/transaction/Transaction;->mContext:Landroid/content/Context;

    .line 157
    iget v0, p1, Lcom/motorola/messaging/transaction/Transaction;->mServiceId:I

    iput v0, p0, Lcom/motorola/messaging/transaction/Transaction;->mServiceId:I

    .line 158
    iget-object v0, p1, Lcom/motorola/messaging/transaction/Transaction;->mTransactionSettings:Lcom/motorola/messaging/transaction/TransactionSettings;

    iput-object v0, p0, Lcom/motorola/messaging/transaction/Transaction;->mTransactionSettings:Lcom/motorola/messaging/transaction/TransactionSettings;

    .line 159
    invoke-direct {p0}, Lcom/motorola/messaging/transaction/Transaction;->init()V

    .line 160
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 163
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/messaging/transaction/Transaction;->mCreateTime:J

    .line 164
    invoke-static {}, Lcom/motorola/messaging/transaction/TransactionManager;->getInstance()Lcom/motorola/messaging/transaction/TransactionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/messaging/transaction/TransactionManager;->getDownloadManager()Lcom/motorola/messaging/transaction/DownloadManager;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/transaction/Transaction;->mDownloadManager:Lcom/motorola/messaging/transaction/DownloadManager;

    .line 165
    sget-object v0, Lcom/motorola/messaging/transaction/Transaction$Failure;->NONE:Lcom/motorola/messaging/transaction/Transaction$Failure;

    iput-object v0, p0, Lcom/motorola/messaging/transaction/Transaction;->mFailedReason:Lcom/motorola/messaging/transaction/Transaction$Failure;

    .line 166
    new-instance v0, Lcom/motorola/messaging/transaction/TransactionState;

    invoke-direct {v0}, Lcom/motorola/messaging/transaction/TransactionState;-><init>()V

    iput-object v0, p0, Lcom/motorola/messaging/transaction/Transaction;->mTransactionState:Lcom/motorola/messaging/transaction/TransactionState;

    .line 167
    iget-object v0, p0, Lcom/motorola/messaging/transaction/Transaction;->mTransactionState:Lcom/motorola/messaging/transaction/TransactionState;

    sget-object v1, Lcom/motorola/messaging/transaction/Transaction$State;->INITIALIZED:Lcom/motorola/messaging/transaction/Transaction$State;

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/transaction/TransactionState;->setState(Lcom/motorola/messaging/transaction/Transaction$State;)V

    .line 168
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/motorola/messaging/transaction/Transaction;->mHandler:Landroid/os/Handler;

    .line 171
    invoke-static {}, Lcom/motorola/messaging/transaction/RetryScheduler;->getInstance()Lcom/motorola/messaging/transaction/RetryScheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/messaging/transaction/Observable;->attach(Lcom/motorola/messaging/transaction/Observer;)V

    .line 172
    return-void
.end method

.method private setFailedReason(Lcom/motorola/messaging/transaction/Transaction$Failure;Ljava/lang/String;)V
    .locals 3
    .param p1, "failedReason"    # Lcom/motorola/messaging/transaction/Transaction$Failure;
    .param p2, "exception"    # Ljava/lang/String;

    .prologue
    .line 264
    iget-object v0, p0, Lcom/motorola/messaging/transaction/Transaction;->mTransactionState:Lcom/motorola/messaging/transaction/TransactionState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/messaging/transaction/Transaction;->mTransactionState:Lcom/motorola/messaging/transaction/TransactionState;

    invoke-virtual {v0}, Lcom/motorola/messaging/transaction/TransactionState;->getState()Lcom/motorola/messaging/transaction/Transaction$State;

    move-result-object v0

    sget-object v1, Lcom/motorola/messaging/transaction/Transaction$State;->FAILED:Lcom/motorola/messaging/transaction/Transaction$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/motorola/messaging/transaction/Transaction;->mFailedReason:Lcom/motorola/messaging/transaction/Transaction$Failure;

    sget-object v1, Lcom/motorola/messaging/transaction/Transaction$Failure;->NONE:Lcom/motorola/messaging/transaction/Transaction$Failure;

    if-eq v0, v1, :cond_0

    .line 267
    const-string v0, "Transaction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "already failed, reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/messaging/transaction/Transaction;->mFailedReason:Lcom/motorola/messaging/transaction/Transaction$Failure;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    :goto_0
    return-void

    .line 270
    :cond_0
    sget-boolean v0, Lcom/motorola/messaging/transaction/Transaction;->LOCAL_LOG:Z

    if-eqz v0, :cond_1

    .line 271
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

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    :cond_1
    iput-object p1, p0, Lcom/motorola/messaging/transaction/Transaction;->mFailedReason:Lcom/motorola/messaging/transaction/Transaction$Failure;

    .line 274
    iput-object p2, p0, Lcom/motorola/messaging/transaction/Transaction;->mException:Ljava/lang/String;

    goto :goto_0
.end method

.method private showTransactionResult()V
    .locals 13

    .prologue
    .line 440
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 442
    .local v1, "endTime":J
    iget-wide v9, p0, Lcom/motorola/messaging/transaction/Transaction;->mStartedTime:J

    sub-long v7, v1, v9

    .line 443
    .local v7, "transferDuration":J
    iget-wide v9, p0, Lcom/motorola/messaging/transaction/Transaction;->mCreateTime:J

    sub-long v5, v1, v9

    .line 445
    .local v5, "totalDuration":J
    iget-object v9, p0, Lcom/motorola/messaging/transaction/Transaction;->mTransactionState:Lcom/motorola/messaging/transaction/TransactionState;

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/motorola/messaging/transaction/Transaction;->mTransactionState:Lcom/motorola/messaging/transaction/TransactionState;

    invoke-virtual {v9}, Lcom/motorola/messaging/transaction/TransactionState;->getState()Lcom/motorola/messaging/transaction/Transaction$State;

    move-result-object v4

    .line 447
    .local v4, "state":Lcom/motorola/messaging/transaction/Transaction$State;
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

    .line 448
    .local v3, "result":Ljava/lang/String;
    const-string v0, ""

    .line 449
    .local v0, "detail":Ljava/lang/String;
    sget-object v9, Lcom/motorola/messaging/transaction/Transaction$State;->FAILED:Lcom/motorola/messaging/transaction/Transaction$State;

    if-ne v4, v9, :cond_0

    .line 450
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "failed reason="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/motorola/messaging/transaction/Transaction;->getFailedReason()Lcom/motorola/messaging/transaction/Transaction$Failure;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 453
    :cond_0
    iget-object v9, p0, Lcom/motorola/messaging/transaction/Transaction;->mException:Ljava/lang/String;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/motorola/messaging/transaction/Transaction;->mException:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 454
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", exception="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/motorola/messaging/transaction/Transaction;->mException:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 457
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 458
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

    .line 461
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", type="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/motorola/messaging/transaction/Transaction;->getType()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", uri="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/motorola/messaging/transaction/Transaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", trans id="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/motorola/messaging/transaction/Transaction;->mId:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", networkType="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/motorola/messaging/transaction/Transaction;->mNetworkType:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", ip version="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/motorola/messaging/transaction/Transaction;->getIpVersion()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", networkInfo=("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/motorola/messaging/transaction/Transaction;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", created="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "kk:mm:ss"

    iget-wide v11, p0, Lcom/motorola/messaging/transaction/Transaction;->mCreateTime:J

    invoke-static {v10, v11, v12}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", started="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "kk:mm:ss"

    iget-wide v11, p0, Lcom/motorola/messaging/transaction/Transaction;->mStartedTime:J

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

    iget v10, p0, Lcom/motorola/messaging/transaction/Transaction;->mPduSentSize:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", bytes rec="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/motorola/messaging/transaction/Transaction;->mPduRecSize:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 475
    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-eqz v9, :cond_3

    .line 476
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", rate="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/motorola/messaging/transaction/Transaction;->mPduSentSize:I

    iget v11, p0, Lcom/motorola/messaging/transaction/Transaction;->mPduRecSize:I

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

    .line 479
    :cond_3
    sget-boolean v9, Lcom/motorola/messaging/transaction/Transaction;->LOCAL_LOG:Z

    if-eqz v9, :cond_4

    .line 480
    sget-object v9, Lcom/motorola/messaging/transaction/Transaction$State;->FAILED:Lcom/motorola/messaging/transaction/Transaction$State;

    if-ne v4, v9, :cond_6

    .line 481
    iget-object v9, p0, Lcom/motorola/messaging/transaction/Transaction;->mUri:Landroid/net/Uri;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/motorola/messaging/transaction/NetworkManager;->addMMSErrorDetail(Landroid/net/Uri;Ljava/lang/String;)V

    .line 488
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

    invoke-static {v9, v10}, Lcom/motorola/messaging/logger/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    return-void

    .line 445
    .end local v0    # "detail":Ljava/lang/String;
    .end local v3    # "result":Ljava/lang/String;
    .end local v4    # "state":Lcom/motorola/messaging/transaction/Transaction$State;
    :cond_5
    sget-object v4, Lcom/motorola/messaging/transaction/Transaction$State;->INITIALIZED:Lcom/motorola/messaging/transaction/Transaction$State;

    goto/16 :goto_0

    .line 484
    .restart local v0    # "detail":Ljava/lang/String;
    .restart local v3    # "result":Ljava/lang/String;
    .restart local v4    # "state":Lcom/motorola/messaging/transaction/Transaction$State;
    :cond_6
    iget-object v9, p0, Lcom/motorola/messaging/transaction/Transaction;->mUri:Landroid/net/Uri;

    invoke-static {v9}, Lcom/motorola/messaging/transaction/NetworkManager;->removeMMSErrorDetail(Landroid/net/Uri;)V

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized abortTransaction(Lcom/motorola/messaging/transaction/Transaction$Failure;Z)V
    .locals 6
    .param p1, "reason"    # Lcom/motorola/messaging/transaction/Transaction$Failure;
    .param p2, "isMandatory"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 329
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/motorola/messaging/transaction/Transaction;->mHttpManager:Lcom/motorola/messaging/transaction/HttpUtils;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    .line 350
    :goto_0
    monitor-exit p0

    return-void

    .line 333
    :cond_0
    :try_start_1
    sget-boolean v3, Lcom/motorola/messaging/transaction/Transaction;->LOCAL_LOG:Z

    if-eqz v3, :cond_1

    .line 334
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

    invoke-static {v3, v4}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    :cond_1
    invoke-virtual {p0}, Lcom/motorola/messaging/transaction/Transaction;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    move v0, v2

    .line 340
    .local v0, "isUpload":Z
    :goto_1
    if-nez p2, :cond_2

    iget-object v3, p0, Lcom/motorola/messaging/transaction/Transaction;->mHttpManager:Lcom/motorola/messaging/transaction/HttpUtils;

    invoke-virtual {v3, v0}, Lcom/motorola/messaging/transaction/HttpUtils;->shouldAbort(Z)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v1, v2

    .line 341
    .local v1, "shouldAbort":Z
    :cond_3
    if-nez v1, :cond_5

    .line 344
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

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 329
    .end local v0    # "isUpload":Z
    .end local v1    # "shouldAbort":Z
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_4
    move v0, v1

    .line 339
    goto :goto_1

    .line 347
    .restart local v0    # "isUpload":Z
    .restart local v1    # "shouldAbort":Z
    :cond_5
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/motorola/messaging/transaction/Transaction;->notifyFailure(Lcom/motorola/messaging/transaction/Transaction$Failure;)V

    .line 348
    iget-object v2, p0, Lcom/motorola/messaging/transaction/Transaction;->mHttpManager:Lcom/motorola/messaging/transaction/HttpUtils;

    invoke-virtual {v2, v0}, Lcom/motorola/messaging/transaction/HttpUtils;->abort(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method protected finishTransaction()V
    .locals 4

    .prologue
    .line 419
    invoke-virtual {p0}, Lcom/motorola/messaging/transaction/Transaction;->stopTimeouts()V

    .line 420
    iget-object v0, p0, Lcom/motorola/messaging/transaction/Transaction;->mTransactionState:Lcom/motorola/messaging/transaction/TransactionState;

    iget-object v1, p0, Lcom/motorola/messaging/transaction/Transaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 422
    iget-object v0, p0, Lcom/motorola/messaging/transaction/Transaction;->mTransactionState:Lcom/motorola/messaging/transaction/TransactionState;

    invoke-virtual {v0}, Lcom/motorola/messaging/transaction/TransactionState;->getState()Lcom/motorola/messaging/transaction/Transaction$State;

    move-result-object v0

    sget-object v1, Lcom/motorola/messaging/transaction/Transaction$State;->SUCCESS:Lcom/motorola/messaging/transaction/Transaction$State;

    if-eq v0, v1, :cond_0

    .line 423
    iget-object v0, p0, Lcom/motorola/messaging/transaction/Transaction;->mTransactionState:Lcom/motorola/messaging/transaction/TransactionState;

    sget-object v1, Lcom/motorola/messaging/transaction/Transaction$State;->FAILED:Lcom/motorola/messaging/transaction/Transaction$State;

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/transaction/TransactionState;->setState(Lcom/motorola/messaging/transaction/Transaction$State;)V

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/transaction/Transaction;->mTransactionState:Lcom/motorola/messaging/transaction/TransactionState;

    invoke-virtual {v0}, Lcom/motorola/messaging/transaction/TransactionState;->getState()Lcom/motorola/messaging/transaction/Transaction$State;

    move-result-object v0

    sget-object v1, Lcom/motorola/messaging/transaction/Transaction$State;->FAILED:Lcom/motorola/messaging/transaction/Transaction$State;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/motorola/messaging/transaction/Transaction;->mFailedReason:Lcom/motorola/messaging/transaction/Transaction$Failure;

    sget-object v1, Lcom/motorola/messaging/transaction/Transaction$Failure;->NONE:Lcom/motorola/messaging/transaction/Transaction$Failure;

    if-ne v0, v1, :cond_1

    .line 429
    sget-object v0, Lcom/motorola/messaging/transaction/Transaction$Failure;->TEMPORARY:Lcom/motorola/messaging/transaction/Transaction$Failure;

    iget-object v1, p0, Lcom/motorola/messaging/transaction/Transaction;->mException:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/motorola/messaging/transaction/Transaction;->notifyFailure(Lcom/motorola/messaging/transaction/Transaction$Failure;Ljava/lang/String;)V

    .line 432
    :cond_1
    invoke-direct {p0}, Lcom/motorola/messaging/transaction/Transaction;->showTransactionResult()V

    .line 433
    invoke-virtual {p0}, Lcom/motorola/messaging/transaction/Observable;->notifyObservers()V

    .line 434
    sget-boolean v0, Lcom/motorola/messaging/transaction/Transaction;->LOCAL_LOG:Z

    if-eqz v0, :cond_2

    .line 435
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

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    :cond_2
    return-void
.end method

.method public getConnectionSettings()Lcom/motorola/messaging/transaction/TransactionSettings;
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/motorola/messaging/transaction/Transaction;->mTransactionSettings:Lcom/motorola/messaging/transaction/TransactionSettings;

    return-object v0
.end method

.method public getFailedReason()Lcom/motorola/messaging/transaction/Transaction$Failure;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/motorola/messaging/transaction/Transaction;->mFailedReason:Lcom/motorola/messaging/transaction/Transaction$Failure;

    return-object v0
.end method

.method protected getIpVersion()I
    .locals 2

    .prologue
    .line 216
    const/4 v0, 0x0

    .line 217
    .local v0, "ipVersion":I
    iget-object v1, p0, Lcom/motorola/messaging/transaction/Transaction;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v1, :cond_0

    .line 218
    iget-object v1, p0, Lcom/motorola/messaging/transaction/Transaction;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-static {v1}, Lcom/motorola/messaging/frameworkadapter/motorola/MotoConnectivity;->getIpVersion(Landroid/net/NetworkInfo;)I

    move-result v0

    .line 221
    :cond_0
    return v0
.end method

.method protected getPdu(Ljava/lang/String;)[B
    .locals 12
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 585
    sget-boolean v0, Lcom/motorola/messaging/transaction/Transaction;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 586
    const-string v0, "Transaction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPdu START, rec size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/motorola/messaging/transaction/Transaction;->mPduRecSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/messaging/transaction/Transaction;->getIpVersion()I

    move-result v0

    iget-object v1, p0, Lcom/motorola/messaging/transaction/Transaction;->mTransactionSettings:Lcom/motorola/messaging/transaction/TransactionSettings;

    invoke-static {v0, p1, v1}, Lcom/motorola/messaging/transaction/NetworkManager;->ensureRouteToHost(ILjava/lang/String;Lcom/motorola/messaging/transaction/TransactionSettings;)Ljava/net/InetAddress;

    move-result-object v3

    .line 590
    .local v3, "inetAddr":Ljava/net/InetAddress;
    iget-object v0, p0, Lcom/motorola/messaging/transaction/Transaction;->mHttpManager:Lcom/motorola/messaging/transaction/HttpUtils;

    const-wide/16 v1, -0x1

    const/4 v6, 0x2

    iget-object v4, p0, Lcom/motorola/messaging/transaction/Transaction;->mTransactionSettings:Lcom/motorola/messaging/transaction/TransactionSettings;

    invoke-virtual {v4}, Lcom/motorola/messaging/transaction/TransactionSettings;->isProxySet()Z

    move-result v8

    iget-object v4, p0, Lcom/motorola/messaging/transaction/Transaction;->mTransactionSettings:Lcom/motorola/messaging/transaction/TransactionSettings;

    invoke-virtual {v4}, Lcom/motorola/messaging/transaction/TransactionSettings;->getProxyAddress()Ljava/lang/String;

    move-result-object v9

    iget-object v4, p0, Lcom/motorola/messaging/transaction/Transaction;->mTransactionSettings:Lcom/motorola/messaging/transaction/TransactionSettings;

    invoke-virtual {v4}, Lcom/motorola/messaging/transaction/TransactionSettings;->getProxyPort()I

    move-result v10

    move-object v4, p1

    move-object v7, v5

    invoke-virtual/range {v0 .. v10}, Lcom/motorola/messaging/transaction/HttpUtils;->httpConnection(JLjava/net/InetAddress;Ljava/lang/String;[BILcom/motorola/messaging/transaction/Transaction$TransactionTimeout;ZLjava/lang/String;I)[B

    move-result-object v11

    .line 597
    .local v11, "pdu":[B
    if-eqz v11, :cond_1

    .line 598
    iget v0, p0, Lcom/motorola/messaging/transaction/Transaction;->mPduRecSize:I

    array-length v1, v11

    add-int/2addr v0, v1

    iput v0, p0, Lcom/motorola/messaging/transaction/Transaction;->mPduRecSize:I

    .line 601
    :cond_1
    sget-boolean v0, Lcom/motorola/messaging/transaction/Transaction;->LOCAL_LOG:Z

    if-eqz v0, :cond_2

    .line 602
    const-string v0, "Transaction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPdu END, rec size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/motorola/messaging/transaction/Transaction;->mPduRecSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    :cond_2
    return-object v11
.end method

.method protected getResponseStatus(Lcom/motorola/messaging/pdu/SendConf;)I
    .locals 2
    .param p1, "sendConf"    # Lcom/motorola/messaging/pdu/SendConf;

    .prologue
    .line 180
    invoke-virtual {p1}, Lcom/motorola/messaging/pdu/SendConf;->getResponseStatus()I

    move-result v0

    .line 182
    .local v0, "respStatus":I
    iget-object v1, p0, Lcom/motorola/messaging/transaction/Transaction;->mManager:Lcom/motorola/messaging/transaction/TransactionManager;

    if-eqz v1, :cond_0

    .line 183
    iget-object v1, p0, Lcom/motorola/messaging/transaction/Transaction;->mManager:Lcom/motorola/messaging/transaction/TransactionManager;

    invoke-virtual {v1, v0}, Lcom/motorola/messaging/transaction/TransactionManager;->onSentStatus(I)I

    move-result v0

    .line 186
    :cond_0
    return v0
.end method

.method protected getRetrieveStatus(Lcom/motorola/messaging/pdu/RetrieveConf;)I
    .locals 2
    .param p1, "retrieveConf"    # Lcom/motorola/messaging/pdu/RetrieveConf;

    .prologue
    .line 190
    invoke-virtual {p1}, Lcom/motorola/messaging/pdu/RetrieveConf;->getRetrieveStatus()I

    move-result v0

    .line 192
    .local v0, "retrieveStatus":I
    iget-object v1, p0, Lcom/motorola/messaging/transaction/Transaction;->mManager:Lcom/motorola/messaging/transaction/TransactionManager;

    if-eqz v1, :cond_0

    .line 193
    iget-object v1, p0, Lcom/motorola/messaging/transaction/Transaction;->mManager:Lcom/motorola/messaging/transaction/TransactionManager;

    invoke-virtual {v1, v0}, Lcom/motorola/messaging/transaction/TransactionManager;->onRetrieveStatus(I)I

    move-result v0

    .line 196
    :cond_0
    return v0
.end method

.method public getServiceId()I
    .locals 1

    .prologue
    .line 387
    iget v0, p0, Lcom/motorola/messaging/transaction/Transaction;->mServiceId:I

    return v0
.end method

.method public getState()Lcom/motorola/messaging/transaction/TransactionState;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/motorola/messaging/transaction/Transaction;->mTransactionState:Lcom/motorola/messaging/transaction/TransactionState;

    return-object v0
.end method

.method public abstract getType()I
.end method

.method public hasValidApn()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 232
    iget-object v1, p0, Lcom/motorola/messaging/transaction/Transaction;->mTransactionSettings:Lcom/motorola/messaging/transaction/TransactionSettings;

    if-nez v1, :cond_1

    .line 233
    sget-boolean v1, Lcom/motorola/messaging/transaction/Transaction;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 234
    const-string v1, "Transaction"

    const-string v2, "hasValidApn, APN was not set in Transaction"

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    :cond_0
    :goto_0
    return v0

    .line 239
    :cond_1
    iget-object v1, p0, Lcom/motorola/messaging/transaction/Transaction;->mTransactionSettings:Lcom/motorola/messaging/transaction/TransactionSettings;

    invoke-virtual {v1}, Lcom/motorola/messaging/transaction/TransactionSettings;->isValid()Z

    move-result v1

    if-nez v1, :cond_2

    .line 240
    sget-boolean v1, Lcom/motorola/messaging/transaction/Transaction;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 241
    const-string v1, "Transaction"

    const-string v2, "hasValidApn, Transaction does not have valid APN"

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 246
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isEquivalent(Lcom/motorola/messaging/transaction/Transaction;)Z
    .locals 3
    .param p1, "transaction"    # Lcom/motorola/messaging/transaction/Transaction;

    .prologue
    .line 365
    sget-boolean v0, Lcom/motorola/messaging/transaction/Transaction;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 366
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

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/transaction/Transaction;->mId:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/motorola/messaging/transaction/Transaction;->mId:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 372
    :cond_1
    const-string v0, "Transaction"

    const-string v1, "isEquivalent called for transaction with null transaction id"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    const/4 v0, 0x0

    .line 379
    :goto_0
    return v0

    :cond_2
    iget-object v0, p0, Lcom/motorola/messaging/transaction/Transaction;->mId:Ljava/lang/String;

    iget-object v1, p1, Lcom/motorola/messaging/transaction/Transaction;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public notifyFailure(Lcom/motorola/messaging/transaction/Transaction$Failure;)V
    .locals 1
    .param p1, "failedReason"    # Lcom/motorola/messaging/transaction/Transaction$Failure;

    .prologue
    .line 296
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/motorola/messaging/transaction/Transaction;->notifyFailure(Lcom/motorola/messaging/transaction/Transaction$Failure;Ljava/lang/String;)V

    .line 297
    return-void
.end method

.method public notifyFailure(Lcom/motorola/messaging/transaction/Transaction$Failure;Ljava/lang/String;)V
    .locals 4
    .param p1, "failedReason"    # Lcom/motorola/messaging/transaction/Transaction$Failure;
    .param p2, "exception"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 283
    sget-boolean v0, Lcom/motorola/messaging/transaction/Transaction;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 284
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

    invoke-static {v0, v3, v3, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;ZZLjava/lang/String;)V

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/transaction/Transaction;->mTransactionState:Lcom/motorola/messaging/transaction/TransactionState;

    if-eqz v0, :cond_1

    .line 290
    iget-object v0, p0, Lcom/motorola/messaging/transaction/Transaction;->mTransactionState:Lcom/motorola/messaging/transaction/TransactionState;

    sget-object v1, Lcom/motorola/messaging/transaction/Transaction$State;->FAILED:Lcom/motorola/messaging/transaction/Transaction$State;

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/transaction/TransactionState;->setState(Lcom/motorola/messaging/transaction/Transaction$State;)V

    .line 291
    invoke-direct {p0, p1, p2}, Lcom/motorola/messaging/transaction/Transaction;->setFailedReason(Lcom/motorola/messaging/transaction/Transaction$Failure;Ljava/lang/String;)V

    .line 293
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
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 536
    iget-object v0, p0, Lcom/motorola/messaging/transaction/Transaction;->mTransactionSettings:Lcom/motorola/messaging/transaction/TransactionSettings;

    invoke-virtual {v0}, Lcom/motorola/messaging/transaction/TransactionSettings;->getMmscUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/motorola/messaging/transaction/Transaction;->sendPdu(J[BLjava/lang/String;)[B

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
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 552
    sget-boolean v1, Lcom/motorola/messaging/transaction/Transaction;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 553
    const-string v1, "Transaction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendPdu START, send size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/motorola/messaging/transaction/Transaction;->mPduSentSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/messaging/transaction/Transaction;->getIpVersion()I

    move-result v1

    iget-object v2, p0, Lcom/motorola/messaging/transaction/Transaction;->mTransactionSettings:Lcom/motorola/messaging/transaction/TransactionSettings;

    move-object/from16 v0, p4

    invoke-static {v1, v0, v2}, Lcom/motorola/messaging/transaction/NetworkManager;->ensureRouteToHost(ILjava/lang/String;Lcom/motorola/messaging/transaction/TransactionSettings;)Ljava/net/InetAddress;

    move-result-object v4

    .line 557
    .local v4, "inetAddr":Ljava/net/InetAddress;
    iget-object v1, p0, Lcom/motorola/messaging/transaction/Transaction;->mHttpManager:Lcom/motorola/messaging/transaction/HttpUtils;

    const/4 v7, 0x1

    iget-object v2, p0, Lcom/motorola/messaging/transaction/Transaction;->mTransactionTimeout:[Lcom/motorola/messaging/transaction/Transaction$TransactionTimeout;

    const/4 v3, 0x1

    aget-object v8, v2, v3

    iget-object v2, p0, Lcom/motorola/messaging/transaction/Transaction;->mTransactionSettings:Lcom/motorola/messaging/transaction/TransactionSettings;

    invoke-virtual {v2}, Lcom/motorola/messaging/transaction/TransactionSettings;->isProxySet()Z

    move-result v9

    iget-object v2, p0, Lcom/motorola/messaging/transaction/Transaction;->mTransactionSettings:Lcom/motorola/messaging/transaction/TransactionSettings;

    invoke-virtual {v2}, Lcom/motorola/messaging/transaction/TransactionSettings;->getProxyAddress()Ljava/lang/String;

    move-result-object v10

    iget-object v2, p0, Lcom/motorola/messaging/transaction/Transaction;->mTransactionSettings:Lcom/motorola/messaging/transaction/TransactionSettings;

    invoke-virtual {v2}, Lcom/motorola/messaging/transaction/TransactionSettings;->getProxyPort()I

    move-result v11

    move-wide v2, p1

    move-object/from16 v5, p4

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v11}, Lcom/motorola/messaging/transaction/HttpUtils;->httpConnection(JLjava/net/InetAddress;Ljava/lang/String;[BILcom/motorola/messaging/transaction/Transaction$TransactionTimeout;ZLjava/lang/String;I)[B

    move-result-object v12

    .line 564
    .local v12, "resp":[B
    if-eqz v12, :cond_1

    .line 565
    iget v1, p0, Lcom/motorola/messaging/transaction/Transaction;->mPduSentSize:I

    array-length v2, v12

    add-int/2addr v1, v2

    iput v1, p0, Lcom/motorola/messaging/transaction/Transaction;->mPduSentSize:I

    .line 568
    :cond_1
    sget-boolean v1, Lcom/motorola/messaging/transaction/Transaction;->LOCAL_LOG:Z

    if-eqz v1, :cond_2

    .line 569
    const-string v1, "Transaction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendPdu END, send size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/motorola/messaging/transaction/Transaction;->mPduSentSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    :cond_2
    return-object v12
.end method

.method protected sendPdu([B)[B
    .locals 3
    .param p1, "pdu"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 503
    const-wide/16 v0, -0x1

    iget-object v2, p0, Lcom/motorola/messaging/transaction/Transaction;->mTransactionSettings:Lcom/motorola/messaging/transaction/TransactionSettings;

    invoke-virtual {v2}, Lcom/motorola/messaging/transaction/TransactionSettings;->getMmscUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/motorola/messaging/transaction/Transaction;->sendPdu(J[BLjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method protected sendPdu([BLjava/lang/String;)[B
    .locals 2
    .param p1, "pdu"    # [B
    .param p2, "mmscUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 519
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/motorola/messaging/transaction/Transaction;->sendPdu(J[BLjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public setConnectionSettings(Lcom/motorola/messaging/transaction/TransactionSettings;)V
    .locals 0
    .param p1, "settings"    # Lcom/motorola/messaging/transaction/TransactionSettings;

    .prologue
    .line 403
    iput-object p1, p0, Lcom/motorola/messaging/transaction/Transaction;->mTransactionSettings:Lcom/motorola/messaging/transaction/TransactionSettings;

    .line 404
    return-void
.end method

.method public setManager(Lcom/motorola/messaging/transaction/TransactionManager;)V
    .locals 1
    .param p1, "manager"    # Lcom/motorola/messaging/transaction/TransactionManager;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/motorola/messaging/transaction/Transaction;->mManager:Lcom/motorola/messaging/transaction/TransactionManager;

    .line 176
    iget-object v0, p0, Lcom/motorola/messaging/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0, p0}, Lcom/motorola/messaging/transaction/TransactionManager;->getHttpUtils(Landroid/content/Context;Lcom/motorola/messaging/transaction/Transaction;)Lcom/motorola/messaging/transaction/HttpUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/transaction/Transaction;->mHttpManager:Lcom/motorola/messaging/transaction/HttpUtils;

    .line 177
    return-void
.end method

.method public setNetworkInfo(Landroid/net/NetworkInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/net/NetworkInfo;

    .prologue
    .line 407
    iput-object p1, p0, Lcom/motorola/messaging/transaction/Transaction;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 408
    return-void
.end method

.method public setNetworkType(I)V
    .locals 0
    .param p1, "networkType"    # I

    .prologue
    .line 415
    iput p1, p0, Lcom/motorola/messaging/transaction/Transaction;->mNetworkType:I

    .line 416
    return-void
.end method

.method public startTimeout(II)V
    .locals 7
    .param p1, "type"    # I
    .param p2, "timeout"    # I

    .prologue
    .line 629
    if-nez p2, :cond_0

    .line 644
    :goto_0
    return-void

    .line 633
    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/messaging/transaction/Transaction;->stopTimeout(I)V

    .line 635
    sget-boolean v0, Lcom/motorola/messaging/transaction/Transaction;->LOCAL_LOG:Z

    if-eqz v0, :cond_1

    .line 636
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

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    :cond_1
    iget-object v6, p0, Lcom/motorola/messaging/transaction/Transaction;->mTransactionTimeout:[Lcom/motorola/messaging/transaction/Transaction$TransactionTimeout;

    new-instance v0, Lcom/motorola/messaging/transaction/Transaction$TransactionTimeout;

    iget-object v1, p0, Lcom/motorola/messaging/transaction/Transaction;->mHandler:Landroid/os/Handler;

    int-to-long v4, p2

    move v2, p1

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/motorola/messaging/transaction/Transaction$TransactionTimeout;-><init>(Landroid/os/Handler;ILcom/motorola/messaging/transaction/Transaction;J)V

    aput-object v0, v6, p1

    .line 643
    iget-object v0, p0, Lcom/motorola/messaging/transaction/Transaction;->mTransactionTimeout:[Lcom/motorola/messaging/transaction/Transaction$TransactionTimeout;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/motorola/messaging/transaction/Transaction$TransactionTimeout;->start()V

    goto :goto_0
.end method

.method public stopTimeout(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 647
    iget-object v0, p0, Lcom/motorola/messaging/transaction/Transaction;->mTransactionTimeout:[Lcom/motorola/messaging/transaction/Transaction$TransactionTimeout;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 659
    :goto_0
    return-void

    .line 651
    :cond_0
    sget-boolean v0, Lcom/motorola/messaging/transaction/Transaction;->LOCAL_LOG:Z

    if-eqz v0, :cond_1

    .line 652
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

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    :cond_1
    iget-object v0, p0, Lcom/motorola/messaging/transaction/Transaction;->mTransactionTimeout:[Lcom/motorola/messaging/transaction/Transaction$TransactionTimeout;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/motorola/messaging/transaction/Transaction$TransactionTimeout;->stop()V

    .line 658
    iget-object v0, p0, Lcom/motorola/messaging/transaction/Transaction;->mTransactionTimeout:[Lcom/motorola/messaging/transaction/Transaction$TransactionTimeout;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    goto :goto_0
.end method

.method public stopTimeouts()V
    .locals 2

    .prologue
    .line 662
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 663
    invoke-virtual {p0, v0}, Lcom/motorola/messaging/transaction/Transaction;->stopTimeout(I)V

    .line 662
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 665
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 613
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

    iget-object v3, p0, Lcom/motorola/messaging/transaction/Transaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": transId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/messaging/transaction/Transaction;->mId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": serviceId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/motorola/messaging/transaction/Transaction;->mServiceId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/motorola/messaging/transaction/Transaction;->getState()Lcom/motorola/messaging/transaction/TransactionState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 619
    .local v0, "st":Ljava/lang/String;
    iget-object v2, p0, Lcom/motorola/messaging/transaction/Transaction;->mTransactionState:Lcom/motorola/messaging/transaction/TransactionState;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/motorola/messaging/transaction/Transaction;->mTransactionState:Lcom/motorola/messaging/transaction/TransactionState;

    invoke-virtual {v2}, Lcom/motorola/messaging/transaction/TransactionState;->getState()Lcom/motorola/messaging/transaction/Transaction$State;

    move-result-object v1

    .line 620
    .local v1, "state":Lcom/motorola/messaging/transaction/Transaction$State;
    :goto_0
    sget-object v2, Lcom/motorola/messaging/transaction/Transaction$State;->FAILED:Lcom/motorola/messaging/transaction/Transaction$State;

    if-ne v1, v2, :cond_0

    .line 621
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": failed_reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/motorola/messaging/transaction/Transaction;->getFailedReason()Lcom/motorola/messaging/transaction/Transaction$Failure;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 624
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": settings="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/messaging/transaction/Transaction;->mTransactionSettings:Lcom/motorola/messaging/transaction/TransactionSettings;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 625
    return-object v0

    .line 619
    .end local v1    # "state":Lcom/motorola/messaging/transaction/Transaction$State;
    :cond_1
    sget-object v1, Lcom/motorola/messaging/transaction/Transaction$State;->INITIALIZED:Lcom/motorola/messaging/transaction/Transaction$State;

    goto :goto_0
.end method

.method protected treatException(Ljava/lang/Throwable;)V
    .locals 8
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 300
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 302
    .local v2, "exception":Ljava/lang/String;
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getMmsMicrocellPictureResizeEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "Broken pipe"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 303
    sget-object v4, Lcom/motorola/messaging/transaction/Transaction$Failure;->TRANSACTION_TIMEOUT:Lcom/motorola/messaging/transaction/Transaction$Failure;

    invoke-virtual {p0, v4, v2}, Lcom/motorola/messaging/transaction/Transaction;->notifyFailure(Lcom/motorola/messaging/transaction/Transaction$Failure;Ljava/lang/String;)V

    .line 321
    :goto_0
    return-void

    .line 306
    :cond_0
    const-string v4, "timed out"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 307
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/motorola/messaging/transaction/Transaction;->mStartedTime:J

    sub-long v0, v4, v6

    .line 308
    .local v0, "duration":J
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getMmsNoResponseTimeout()I

    move-result v3

    .line 309
    .local v3, "timeout":I
    int-to-long v4, v3

    cmp-long v4, v0, v4

    if-ltz v4, :cond_1

    .line 310
    sget-object v4, Lcom/motorola/messaging/transaction/Transaction$Failure;->NO_RESPONSE_TIMEOUT:Lcom/motorola/messaging/transaction/Transaction$Failure;

    invoke-virtual {p0, v4, v2}, Lcom/motorola/messaging/transaction/Transaction;->notifyFailure(Lcom/motorola/messaging/transaction/Transaction$Failure;Ljava/lang/String;)V

    goto :goto_0

    .line 314
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

    invoke-static {v4, v5}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    .end local v0    # "duration":J
    .end local v3    # "timeout":I
    :cond_2
    sget-object v4, Lcom/motorola/messaging/transaction/Transaction$Failure;->TEMPORARY:Lcom/motorola/messaging/transaction/Transaction$Failure;

    invoke-virtual {p0, v4, v2}, Lcom/motorola/messaging/transaction/Transaction;->notifyFailure(Lcom/motorola/messaging/transaction/Transaction$Failure;Ljava/lang/String;)V

    goto :goto_0
.end method
