.class public Lcom/android/mms/transaction/ProgressCallbackEntity;
.super Lorg/apache/http/entity/ByteArrayEntity;
.source "ProgressCallbackEntity.java"


# instance fields
.field private mAbortRequested:Z

.field private final mContent:[B

.field private final mContext:Landroid/content/Context;

.field private mProgress:I

.field private mTimer:Lcom/android/mms/transaction/Transaction$TransactionTimeout;

.field private final mToken:J


# direct methods
.method public constructor <init>(Landroid/content/Context;J[BLcom/android/mms/transaction/Transaction$TransactionTimeout;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "token"    # J
    .param p4, "b"    # [B
    .param p5, "timer"    # Lcom/android/mms/transaction/Transaction$TransactionTimeout;

    .prologue
    .line 49
    invoke-direct {p0, p4}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 55
    iput-object p1, p0, Lcom/android/mms/transaction/ProgressCallbackEntity;->mContext:Landroid/content/Context;

    .line 56
    iput-object p4, p0, Lcom/android/mms/transaction/ProgressCallbackEntity;->mContent:[B

    .line 57
    iput-wide p2, p0, Lcom/android/mms/transaction/ProgressCallbackEntity;->mToken:J

    .line 58
    iput-object p5, p0, Lcom/android/mms/transaction/ProgressCallbackEntity;->mTimer:Lcom/android/mms/transaction/Transaction$TransactionTimeout;

    .line 59
    return-void
.end method

.method private broadcastProgressIfNeeded(I)V
    .locals 5
    .param p1, "progress"    # I

    .prologue
    .line 132
    iget-wide v1, p0, Lcom/android/mms/transaction/ProgressCallbackEntity;->mToken:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 133
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.mms.PROGRESS_STATUS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 134
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "progress"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 135
    const-string v1, "token"

    iget-wide v2, p0, Lcom/android/mms/transaction/ProgressCallbackEntity;->mToken:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 136
    iget-object v1, p0, Lcom/android/mms/transaction/ProgressCallbackEntity;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 138
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/transaction/ProgressCallbackEntity;->mAbortRequested:Z

    .line 67
    return-void
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/android/mms/transaction/ProgressCallbackEntity;->mProgress:I

    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 8
    .param p1, "outstream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, -0x2

    .line 71
    if-nez p1, :cond_0

    .line 72
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Output stream may not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 75
    :cond_0
    const/4 v0, 0x0

    .line 77
    .local v0, "completed":Z
    const/4 v4, -0x1

    :try_start_0
    invoke-direct {p0, v4}, Lcom/android/mms/transaction/ProgressCallbackEntity;->broadcastProgressIfNeeded(I)V

    .line 79
    const/4 v2, 0x0

    .local v2, "pos":I
    iget-object v4, p0, Lcom/android/mms/transaction/ProgressCallbackEntity;->mContent:[B

    array-length v3, v4

    .line 84
    .local v3, "totalLen":I
    :goto_0
    if-ge v2, v3, :cond_2

    iget-boolean v4, p0, Lcom/android/mms/transaction/ProgressCallbackEntity;->mAbortRequested:Z

    if-nez v4, :cond_2

    .line 85
    sub-int v1, v3, v2

    .line 86
    .local v1, "len":I
    const/16 v4, 0x1000

    if-le v1, v4, :cond_1

    .line 87
    const/16 v1, 0x1000

    .line 89
    :cond_1
    iget-object v4, p0, Lcom/android/mms/transaction/ProgressCallbackEntity;->mContent:[B

    invoke-virtual {p1, v4, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 90
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 91
    iget-boolean v4, p0, Lcom/android/mms/transaction/ProgressCallbackEntity;->mAbortRequested:Z

    if-eqz v4, :cond_5

    .line 108
    .end local v1    # "len":I
    :cond_2
    iget-boolean v4, p0, Lcom/android/mms/transaction/ProgressCallbackEntity;->mAbortRequested:Z

    if-eqz v4, :cond_7

    .line 109
    const-string v4, "ProgressCallbackEntity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MMS-STATUS - Transaction requested to abort, progress="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/mms/transaction/ProgressCallbackEntity;->mProgress:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Abort requested"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    .end local v2    # "pos":I
    .end local v3    # "totalLen":I
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/android/mms/transaction/ProgressCallbackEntity;->mTimer:Lcom/android/mms/transaction/Transaction$TransactionTimeout;

    if-eqz v5, :cond_3

    .line 119
    iget-object v5, p0, Lcom/android/mms/transaction/ProgressCallbackEntity;->mTimer:Lcom/android/mms/transaction/Transaction$TransactionTimeout;

    invoke-virtual {v5}, Lcom/android/mms/transaction/Transaction$TransactionTimeout;->stop()V

    .line 121
    :cond_3
    if-nez v0, :cond_4

    .line 122
    invoke-direct {p0, v7}, Lcom/android/mms/transaction/ProgressCallbackEntity;->broadcastProgressIfNeeded(I)V

    :cond_4
    throw v4

    .line 95
    .restart local v1    # "len":I
    .restart local v2    # "pos":I
    .restart local v3    # "totalLen":I
    :cond_5
    :try_start_1
    iget-object v4, p0, Lcom/android/mms/transaction/ProgressCallbackEntity;->mTimer:Lcom/android/mms/transaction/Transaction$TransactionTimeout;

    if-eqz v4, :cond_6

    .line 96
    iget-object v4, p0, Lcom/android/mms/transaction/ProgressCallbackEntity;->mTimer:Lcom/android/mms/transaction/Transaction$TransactionTimeout;

    invoke-virtual {v4}, Lcom/android/mms/transaction/Transaction$TransactionTimeout;->restart()V

    .line 99
    :cond_6
    add-int/2addr v2, v1

    .line 105
    mul-int/lit8 v4, v2, 0x64

    div-int/2addr v4, v3

    invoke-direct {p0, v4}, Lcom/android/mms/transaction/ProgressCallbackEntity;->broadcastProgressIfNeeded(I)V

    goto :goto_0

    .line 115
    .end local v1    # "len":I
    :cond_7
    const/16 v4, 0x64

    invoke-direct {p0, v4}, Lcom/android/mms/transaction/ProgressCallbackEntity;->broadcastProgressIfNeeded(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    const/4 v0, 0x1

    .line 118
    iget-object v4, p0, Lcom/android/mms/transaction/ProgressCallbackEntity;->mTimer:Lcom/android/mms/transaction/Transaction$TransactionTimeout;

    if-eqz v4, :cond_8

    .line 119
    iget-object v4, p0, Lcom/android/mms/transaction/ProgressCallbackEntity;->mTimer:Lcom/android/mms/transaction/Transaction$TransactionTimeout;

    invoke-virtual {v4}, Lcom/android/mms/transaction/Transaction$TransactionTimeout;->stop()V

    .line 121
    :cond_8
    if-nez v0, :cond_9

    .line 122
    invoke-direct {p0, v7}, Lcom/android/mms/transaction/ProgressCallbackEntity;->broadcastProgressIfNeeded(I)V

    .line 129
    :cond_9
    return-void
.end method
