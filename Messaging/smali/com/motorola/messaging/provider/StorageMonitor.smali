.class public Lcom/motorola/messaging/provider/StorageMonitor;
.super Ljava/lang/Object;
.source "StorageMonitor.java"


# static fields
.field private static final BLOCK_SIZE:J

.field private static final DEBUG:Z

.field private static final LOCAL_LOG:Z

.field private static final TAG:Ljava/lang/String;

.field private static final TOTAL_STORAGE:J

.field private static mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 27
    const-class v1, Lcom/motorola/messaging/provider/StorageMonitor;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/motorola/messaging/provider/StorageMonitor;->TAG:Ljava/lang/String;

    .line 28
    sput-boolean v0, Lcom/motorola/messaging/provider/StorageMonitor;->DEBUG:Z

    .line 29
    sget-boolean v1, Lcom/motorola/messaging/provider/StorageMonitor;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v1, :cond_0

    :goto_0
    sput-boolean v0, Lcom/motorola/messaging/provider/StorageMonitor;->LOCAL_LOG:Z

    .line 37
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v1, v1

    sput-wide v1, Lcom/motorola/messaging/provider/StorageMonitor;->BLOCK_SIZE:J

    .line 39
    sget-wide v1, Lcom/motorola/messaging/provider/StorageMonitor;->BLOCK_SIZE:J

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    move-result v0

    int-to-long v3, v0

    mul-long v0, v1, v3

    sput-wide v0, Lcom/motorola/messaging/provider/StorageMonitor;->TOTAL_STORAGE:J

    .line 40
    return-void

    .line 29
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method private static cancelMemoryFullNotification()V
    .locals 3

    .prologue
    .line 123
    sget-object v1, Lcom/motorola/messaging/provider/StorageMonitor;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 125
    .local v0, "nm":Landroid/app/NotificationManager;
    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 126
    return-void
.end method

.method private static final getDataPartitionStorage()[J
    .locals 7

    .prologue
    .line 134
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 135
    .local v0, "fileStats":Landroid/os/StatFs;
    const/4 v1, 0x2

    new-array v1, v1, [J

    const/4 v2, 0x0

    sget-wide v3, Lcom/motorola/messaging/provider/StorageMonitor;->TOTAL_STORAGE:J

    aput-wide v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3

    int-to-long v3, v3

    sget-wide v5, Lcom/motorola/messaging/provider/StorageMonitor;->BLOCK_SIZE:J

    mul-long/2addr v3, v5

    aput-wide v3, v1, v2

    return-object v1
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    sput-object p0, Lcom/motorola/messaging/provider/StorageMonitor;->mContext:Landroid/content/Context;

    .line 54
    return-void
.end method

.method public static isAvailStorageBelowThreshold()Z
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 85
    invoke-static {}, Lcom/motorola/messaging/provider/StorageMonitor;->getDataPartitionStorage()[J

    move-result-object v2

    .line 86
    .local v2, "memValues":[J
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getMemFullThreshold()J

    move-result-wide v0

    .line 88
    .local v0, "fullThreshold":J
    sget-boolean v5, Lcom/motorola/messaging/provider/StorageMonitor;->LOCAL_LOG:Z

    if-eqz v5, :cond_0

    .line 89
    sget-object v5, Lcom/motorola/messaging/provider/StorageMonitor;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Data partition: Total: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-wide v7, v2, v4

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", available: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-wide v7, v2, v3

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", low threshold: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_0
    aget-wide v5, v2, v3

    cmp-long v5, v5, v0

    if-gez v5, :cond_1

    :goto_0
    return v3

    :cond_1
    move v3, v4

    goto :goto_0
.end method

.method public static declared-synchronized isStorageFull()Z
    .locals 2

    .prologue
    .line 62
    const-class v0, Lcom/motorola/messaging/provider/StorageMonitor;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->isStorageFull()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static setStorageFull(Z)V
    .locals 0
    .param p0, "isStorageFull"    # Z

    .prologue
    .line 71
    invoke-static {p0}, Lcom/motorola/messaging/settings/MessageSettings;->setIsStorageFull(Z)V

    .line 72
    if-eqz p0, :cond_0

    .line 73
    invoke-static {}, Lcom/motorola/messaging/provider/StorageMonitor;->showMemoryFullNotification()V

    .line 77
    :goto_0
    return-void

    .line 75
    :cond_0
    invoke-static {}, Lcom/motorola/messaging/provider/StorageMonitor;->cancelMemoryFullNotification()V

    goto :goto_0
.end method

.method private static showMemoryFullNotification()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 100
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.MANAGE_PACKAGE_STORAGE"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 101
    .local v1, "fullMemIntent":Landroid/content/Intent;
    const/high16 v6, 0x10000000

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 103
    sget-object v6, Lcom/motorola/messaging/provider/StorageMonitor;->mContext:Landroid/content/Context;

    const-string v7, "notification"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 104
    .local v2, "nm":Landroid/app/NotificationManager;
    sget-object v6, Lcom/motorola/messaging/provider/StorageMonitor;->mContext:Landroid/content/Context;

    const v7, 0x7f0b00ec

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 105
    .local v5, "title":Ljava/lang/CharSequence;
    sget-object v6, Lcom/motorola/messaging/provider/StorageMonitor;->mContext:Landroid/content/Context;

    const v7, 0x7f0b00ed

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 106
    .local v0, "body":Ljava/lang/CharSequence;
    sget-object v6, Lcom/motorola/messaging/provider/StorageMonitor;->mContext:Landroid/content/Context;

    invoke-static {v6, v8, v1, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 108
    .local v4, "pendingIntent":Landroid/app/PendingIntent;
    new-instance v3, Landroid/app/Notification;

    invoke-direct {v3}, Landroid/app/Notification;-><init>()V

    .line 109
    .local v3, "notification":Landroid/app/Notification;
    const v6, 0x7f020097

    iput v6, v3, Landroid/app/Notification;->icon:I

    .line 110
    iput-object v5, v3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 111
    const/4 v6, -0x1

    iput v6, v3, Landroid/app/Notification;->defaults:I

    .line 112
    iget v6, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v6, v6, 0x20

    iput v6, v3, Landroid/app/Notification;->flags:I

    .line 113
    iget v6, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v6, v6, 0x2

    iput v6, v3, Landroid/app/Notification;->flags:I

    .line 114
    sget-object v6, Lcom/motorola/messaging/provider/StorageMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v6, v5, v0, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 115
    const/16 v6, 0x69

    invoke-virtual {v2, v6, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 116
    return-void
.end method
