.class public Lcom/motorola/messaging/transaction/RateController;
.super Ljava/lang/Object;
.source "RateController.java"


# static fields
.field private static final DEBUG:Z

.field private static final LOCAL_LOG:Z

.field private static sInstance:Lcom/motorola/messaging/transaction/RateController;

.field private static sMutexLock:Z


# instance fields
.field private mAnswer:I

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    sget-boolean v0, Lcom/motorola/messaging/logger/Logger;->MSG_DEBUG_ALL:Z

    sput-boolean v0, Lcom/motorola/messaging/transaction/RateController;->DEBUG:Z

    .line 35
    sget-boolean v0, Lcom/motorola/messaging/transaction/RateController;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/motorola/messaging/transaction/RateController;->LOCAL_LOG:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lcom/motorola/messaging/transaction/RateController$1;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/transaction/RateController$1;-><init>(Lcom/motorola/messaging/transaction/RateController;)V

    iput-object v0, p0, Lcom/motorola/messaging/transaction/RateController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 74
    iput-object p1, p0, Lcom/motorola/messaging/transaction/RateController;->mContext:Landroid/content/Context;

    .line 75
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 32
    sget-boolean v0, Lcom/motorola/messaging/transaction/RateController;->LOCAL_LOG:Z

    return v0
.end method

.method static synthetic access$102(Lcom/motorola/messaging/transaction/RateController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/transaction/RateController;
    .param p1, "x1"    # I

    .prologue
    .line 32
    iput p1, p0, Lcom/motorola/messaging/transaction/RateController;->mAnswer:I

    return p1
.end method

.method public static getInstance()Lcom/motorola/messaging/transaction/RateController;
    .locals 2

    .prologue
    .line 89
    sget-object v0, Lcom/motorola/messaging/transaction/RateController;->sInstance:Lcom/motorola/messaging/transaction/RateController;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Uninitialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_0
    sget-object v0, Lcom/motorola/messaging/transaction/RateController;->sInstance:Lcom/motorola/messaging/transaction/RateController;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    sget-boolean v0, Lcom/motorola/messaging/transaction/RateController;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 79
    const-string v0, "RateController"

    const-string v1, "RateController.init()"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :cond_0
    sget-object v0, Lcom/motorola/messaging/transaction/RateController;->sInstance:Lcom/motorola/messaging/transaction/RateController;

    if-eqz v0, :cond_1

    .line 83
    const-string v0, "RateController"

    const-string v1, "Already initialized."

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :cond_1
    new-instance v0, Lcom/motorola/messaging/transaction/RateController;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/transaction/RateController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/motorola/messaging/transaction/RateController;->sInstance:Lcom/motorola/messaging/transaction/RateController;

    .line 86
    return-void
.end method

.method private declared-synchronized waitForAnswer()I
    .locals 4

    .prologue
    .line 148
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, "t":I
    :goto_0
    :try_start_0
    iget v1, p0, Lcom/motorola/messaging/transaction/RateController;->mAnswer:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    const/16 v1, 0x4e20

    if-ge v0, v1, :cond_1

    .line 150
    :try_start_1
    sget-boolean v1, Lcom/motorola/messaging/transaction/RateController;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 151
    const-string v1, "RateController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Waiting for answer..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    div-int/lit16 v3, v0, 0x3e8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    :cond_0
    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 148
    :goto_1
    add-int/lit16 v0, v0, 0x3e8

    goto :goto_0

    .line 158
    :cond_1
    :try_start_2
    iget v1, p0, Lcom/motorola/messaging/transaction/RateController;->mAnswer:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v1

    .line 148
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 154
    :catch_0
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized isAllowedByUser()Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 120
    monitor-enter p0

    :goto_0
    :try_start_0
    sget-boolean v3, Lcom/motorola/messaging/transaction/RateController;->sMutexLock:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v3, :cond_0

    .line 122
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 123
    :catch_0
    move-exception v3

    goto :goto_0

    .line 127
    :cond_0
    const/4 v3, 0x1

    :try_start_2
    sput-boolean v3, Lcom/motorola/messaging/transaction/RateController;->sMutexLock:Z

    .line 129
    iget-object v3, p0, Lcom/motorola/messaging/transaction/RateController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/motorola/messaging/transaction/RateController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "com.android.mms.RATE_LIMIT_CONFIRMED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 132
    const/4 v3, 0x0

    iput v3, p0, Lcom/motorola/messaging/transaction/RateController;->mAnswer:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 134
    :try_start_3
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.mms.RATE_LIMIT_SURPASSED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 137
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 138
    iget-object v3, p0, Lcom/motorola/messaging/transaction/RateController;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 139
    invoke-direct {p0}, Lcom/motorola/messaging/transaction/RateController;->waitForAnswer()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v3

    if-ne v3, v1, :cond_1

    .line 141
    :goto_1
    :try_start_4
    iget-object v2, p0, Lcom/motorola/messaging/transaction/RateController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/motorola/messaging/transaction/RateController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 142
    const/4 v2, 0x0

    sput-boolean v2, Lcom/motorola/messaging/transaction/RateController;->sMutexLock:Z

    .line 143
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 139
    monitor-exit p0

    return v1

    :cond_1
    move v1, v2

    goto :goto_1

    .line 141
    .end local v0    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v1

    :try_start_5
    iget-object v2, p0, Lcom/motorola/messaging/transaction/RateController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/motorola/messaging/transaction/RateController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 142
    const/4 v2, 0x0

    sput-boolean v2, Lcom/motorola/messaging/transaction/RateController;->sMutexLock:Z

    .line 143
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 141
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 120
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final isLimitSurpassed()Z
    .locals 12

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x36ee80

    sub-long v8, v0, v2

    .line 104
    .local v8, "oneHourAgo":J
    iget-object v0, p0, Lcom/motorola/messaging/transaction/RateController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/motorola/messaging/transaction/RateController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/motorola/messaging/provider/Telephony$Mms$Rate;->CONTENT_URI:Landroid/net/Uri;

    new-array v3, v10, [Ljava/lang/String;

    const-string v4, "COUNT(*) AS rate"

    aput-object v4, v3, v11

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sent_time>"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Lcom/motorola/messaging/provider/SqliteManager;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 107
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .line 109
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    move v0, v10

    .line 113
    :goto_0
    invoke-static {v7}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    .line 116
    :goto_1
    return v0

    :cond_0
    move v0, v11

    .line 110
    goto :goto_0

    .line 113
    :catchall_0
    move-exception v0

    invoke-static {v7}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    throw v0

    :cond_1
    invoke-static {v7}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    :cond_2
    move v0, v11

    .line 116
    goto :goto_1
.end method

.method public final update()V
    .locals 4

    .prologue
    .line 96
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 97
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "sent_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 98
    iget-object v1, p0, Lcom/motorola/messaging/transaction/RateController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/motorola/messaging/transaction/RateController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/motorola/messaging/provider/Telephony$Mms$Rate;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v2, v3, v0}, Lcom/motorola/messaging/provider/SqliteManager;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 100
    return-void
.end method
