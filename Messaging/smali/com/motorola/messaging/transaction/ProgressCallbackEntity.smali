.class public Lcom/motorola/messaging/transaction/ProgressCallbackEntity;
.super Lorg/apache/http/entity/ByteArrayEntity;
.source "ProgressCallbackEntity.java"


# static fields
.field private static final DEBUG:Z

.field private static final LOCAL_LOG:Z


# instance fields
.field private mAbortRequested:Z

.field private final mContent:[B

.field private final mContext:Landroid/content/Context;

.field private mProgress:I

.field private mTimer:Lcom/motorola/messaging/transaction/Transaction$TransactionTimeout;

.field private final mToken:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 32
    sput-boolean v0, Lcom/motorola/messaging/transaction/ProgressCallbackEntity;->DEBUG:Z

    .line 33
    sget-boolean v1, Lcom/motorola/messaging/transaction/ProgressCallbackEntity;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v1, :cond_0

    :goto_0
    sput-boolean v0, Lcom/motorola/messaging/transaction/ProgressCallbackEntity;->LOCAL_LOG:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;J[BLcom/motorola/messaging/transaction/Transaction$TransactionTimeout;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "token"    # J
    .param p4, "b"    # [B
    .param p5, "timer"    # Lcom/motorola/messaging/transaction/Transaction$TransactionTimeout;

    .prologue
    .line 50
    invoke-direct {p0, p4}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 52
    sget-boolean v0, Lcom/motorola/messaging/transaction/ProgressCallbackEntity;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 53
    const-string v0, "ProgressCallbackEntity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ProgressCallbackEntity, token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :cond_0
    iput-object p1, p0, Lcom/motorola/messaging/transaction/ProgressCallbackEntity;->mContext:Landroid/content/Context;

    .line 57
    iput-object p4, p0, Lcom/motorola/messaging/transaction/ProgressCallbackEntity;->mContent:[B

    .line 58
    iput-wide p2, p0, Lcom/motorola/messaging/transaction/ProgressCallbackEntity;->mToken:J

    .line 59
    iput-object p5, p0, Lcom/motorola/messaging/transaction/ProgressCallbackEntity;->mTimer:Lcom/motorola/messaging/transaction/Transaction$TransactionTimeout;

    .line 60
    return-void
.end method

.method private broadcastProgressIfNeeded(I)V
    .locals 5
    .param p1, "progress"    # I

    .prologue
    .line 133
    iget-wide v1, p0, Lcom/motorola/messaging/transaction/ProgressCallbackEntity;->mToken:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 134
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.mms.PROGRESS_STATUS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 135
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "progress"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 136
    const-string v1, "token"

    iget-wide v2, p0, Lcom/motorola/messaging/transaction/ProgressCallbackEntity;->mToken:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 137
    iget-object v1, p0, Lcom/motorola/messaging/transaction/ProgressCallbackEntity;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 139
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/messaging/transaction/ProgressCallbackEntity;->mAbortRequested:Z

    .line 68
    return-void
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/motorola/messaging/transaction/ProgressCallbackEntity;->mProgress:I

    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 9
    .param p1, "outstream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, -0x2

    .line 72
    if-nez p1, :cond_0

    .line 73
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Output stream may not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 76
    :cond_0
    const/4 v0, 0x0

    .line 77
    .local v0, "completed":Z
    iget-object v4, p0, Lcom/motorola/messaging/transaction/ProgressCallbackEntity;->mContent:[B

    array-length v3, v4

    .line 78
    .local v3, "totalLen":I
    sget-boolean v4, Lcom/motorola/messaging/transaction/ProgressCallbackEntity;->LOCAL_LOG:Z

    if-eqz v4, :cond_1

    .line 79
    const-string v4, "ProgressCallbackEntity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "writeTo START, totalLen="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v8, v8, v5}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;ZZLjava/lang/String;)V

    .line 83
    :cond_1
    const/4 v4, -0x1

    :try_start_0
    invoke-direct {p0, v4}, Lcom/motorola/messaging/transaction/ProgressCallbackEntity;->broadcastProgressIfNeeded(I)V

    .line 85
    const/4 v2, 0x0

    .line 86
    .local v2, "pos":I
    :goto_0
    if-ge v2, v3, :cond_3

    iget-boolean v4, p0, Lcom/motorola/messaging/transaction/ProgressCallbackEntity;->mAbortRequested:Z

    if-nez v4, :cond_3

    .line 87
    sub-int v1, v3, v2

    .line 88
    .local v1, "len":I
    const/16 v4, 0x1000

    if-le v1, v4, :cond_2

    .line 89
    const/16 v1, 0x1000

    .line 92
    :cond_2
    iget-object v4, p0, Lcom/motorola/messaging/transaction/ProgressCallbackEntity;->mContent:[B

    invoke-virtual {p1, v4, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 93
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 94
    iget-boolean v4, p0, Lcom/motorola/messaging/transaction/ProgressCallbackEntity;->mAbortRequested:Z

    if-eqz v4, :cond_6

    .line 111
    .end local v1    # "len":I
    :cond_3
    iget-boolean v4, p0, Lcom/motorola/messaging/transaction/ProgressCallbackEntity;->mAbortRequested:Z

    if-eqz v4, :cond_9

    .line 112
    const-string v4, "ProgressCallbackEntity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MMS-STATUS - Transaction requested to abort, progress="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/motorola/messaging/transaction/ProgressCallbackEntity;->mProgress:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Abort requested"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    .end local v2    # "pos":I
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/motorola/messaging/transaction/ProgressCallbackEntity;->mTimer:Lcom/motorola/messaging/transaction/Transaction$TransactionTimeout;

    if-eqz v5, :cond_4

    .line 120
    iget-object v5, p0, Lcom/motorola/messaging/transaction/ProgressCallbackEntity;->mTimer:Lcom/motorola/messaging/transaction/Transaction$TransactionTimeout;

    invoke-virtual {v5}, Lcom/motorola/messaging/transaction/Transaction$TransactionTimeout;->stop()V

    .line 122
    :cond_4
    if-nez v0, :cond_5

    .line 123
    invoke-direct {p0, v7}, Lcom/motorola/messaging/transaction/ProgressCallbackEntity;->broadcastProgressIfNeeded(I)V

    .line 119
    :cond_5
    throw v4

    .line 98
    .restart local v1    # "len":I
    .restart local v2    # "pos":I
    :cond_6
    :try_start_1
    iget-object v4, p0, Lcom/motorola/messaging/transaction/ProgressCallbackEntity;->mTimer:Lcom/motorola/messaging/transaction/Transaction$TransactionTimeout;

    if-eqz v4, :cond_7

    .line 99
    iget-object v4, p0, Lcom/motorola/messaging/transaction/ProgressCallbackEntity;->mTimer:Lcom/motorola/messaging/transaction/Transaction$TransactionTimeout;

    invoke-virtual {v4}, Lcom/motorola/messaging/transaction/Transaction$TransactionTimeout;->restart()V

    .line 102
    :cond_7
    add-int/2addr v2, v1

    .line 103
    mul-int/lit8 v4, v2, 0x64

    div-int/2addr v4, v3

    iput v4, p0, Lcom/motorola/messaging/transaction/ProgressCallbackEntity;->mProgress:I

    .line 104
    sget-boolean v4, Lcom/motorola/messaging/transaction/ProgressCallbackEntity;->LOCAL_LOG:Z

    if-eqz v4, :cond_8

    .line 105
    const-string v4, "ProgressCallbackEntity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "broadcastProgressIfNeeded, progress="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/motorola/messaging/transaction/ProgressCallbackEntity;->mProgress:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :cond_8
    iget v4, p0, Lcom/motorola/messaging/transaction/ProgressCallbackEntity;->mProgress:I

    invoke-direct {p0, v4}, Lcom/motorola/messaging/transaction/ProgressCallbackEntity;->broadcastProgressIfNeeded(I)V

    goto/16 :goto_0

    .line 116
    .end local v1    # "len":I
    :cond_9
    const/16 v4, 0x64

    invoke-direct {p0, v4}, Lcom/motorola/messaging/transaction/ProgressCallbackEntity;->broadcastProgressIfNeeded(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    const/4 v0, 0x1

    .line 119
    iget-object v4, p0, Lcom/motorola/messaging/transaction/ProgressCallbackEntity;->mTimer:Lcom/motorola/messaging/transaction/Transaction$TransactionTimeout;

    if-eqz v4, :cond_a

    .line 120
    iget-object v4, p0, Lcom/motorola/messaging/transaction/ProgressCallbackEntity;->mTimer:Lcom/motorola/messaging/transaction/Transaction$TransactionTimeout;

    invoke-virtual {v4}, Lcom/motorola/messaging/transaction/Transaction$TransactionTimeout;->stop()V

    .line 122
    :cond_a
    if-nez v0, :cond_b

    .line 123
    invoke-direct {p0, v7}, Lcom/motorola/messaging/transaction/ProgressCallbackEntity;->broadcastProgressIfNeeded(I)V

    .line 127
    :cond_b
    sget-boolean v4, Lcom/motorola/messaging/transaction/ProgressCallbackEntity;->LOCAL_LOG:Z

    if-eqz v4, :cond_c

    .line 128
    const-string v4, "ProgressCallbackEntity"

    const-string v5, "writeTo END"

    invoke-static {v4, v5}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :cond_c
    return-void
.end method
