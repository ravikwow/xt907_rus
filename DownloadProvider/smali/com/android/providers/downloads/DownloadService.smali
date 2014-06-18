.class public Lcom/android/providers/downloads/DownloadService;
.super Landroid/app/Service;
.source "DownloadService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/downloads/DownloadService$DownloadManagerContentObserver;
    }
.end annotation


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private final mDownloads:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mDownloads"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/providers/downloads/DownloadInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mExecutor:Ljava/util/concurrent/ExecutorService;

.field private volatile mLastStartId:I

.field private mNotifier:Lcom/android/providers/downloads/DownloadNotifier;

.field private mObserver:Lcom/android/providers/downloads/DownloadService$DownloadManagerContentObserver;

.field private mScanner:Lcom/android/providers/downloads/DownloadScanner;

.field private mStorageManager:Lcom/android/providers/downloads/StorageManager;

.field mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

.field private mUpdateCallback:Landroid/os/Handler$Callback;

.field private mUpdateHandler:Landroid/os/Handler;

.field private mUpdateThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 98
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/downloads/DownloadService;->mDownloads:Ljava/util/Map;

    .line 101
    invoke-static {}, Lcom/android/providers/downloads/DownloadService;->buildDownloadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/downloads/DownloadService;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 235
    new-instance v0, Lcom/android/providers/downloads/DownloadService$1;

    invoke-direct {v0, p0}, Lcom/android/providers/downloads/DownloadService$1;-><init>(Lcom/android/providers/downloads/DownloadService;)V

    iput-object v0, p0, Lcom/android/providers/downloads/DownloadService;->mUpdateCallback:Landroid/os/Handler$Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/providers/downloads/DownloadService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/providers/downloads/DownloadService;->enqueueUpdate()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/providers/downloads/DownloadService;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadService;->mDownloads:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/providers/downloads/DownloadService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/providers/downloads/DownloadService;->updateLocked()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/providers/downloads/DownloadService;)Lcom/android/providers/downloads/DownloadNotifier;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadService;->mNotifier:Lcom/android/providers/downloads/DownloadNotifier;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/providers/downloads/DownloadService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/providers/downloads/DownloadService;->enqueueFinalUpdate()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/providers/downloads/DownloadService;)Lcom/android/providers/downloads/DownloadService$DownloadManagerContentObserver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadService;->mObserver:Lcom/android/providers/downloads/DownloadService$DownloadManagerContentObserver;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/providers/downloads/DownloadService;)Lcom/android/providers/downloads/DownloadScanner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadService;->mScanner:Lcom/android/providers/downloads/DownloadScanner;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/providers/downloads/DownloadService;)Landroid/os/HandlerThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadService;->mUpdateThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method private static buildDownloadExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 7

    .prologue
    .line 104
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0039

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 109
    .local v1, maxConcurrent:I
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v3, 0xa

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move v2, v1

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 112
    .local v0, executor:Ljava/util/concurrent/ThreadPoolExecutor;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 113
    return-object v0
.end method

.method private deleteDownloadLocked(J)V
    .locals 4
    .parameter "id"

    .prologue
    .line 431
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadService;->mDownloads:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/downloads/DownloadInfo;

    .line 432
    .local v0, info:Lcom/android/providers/downloads/DownloadInfo;
    iget v1, v0, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    const/16 v2, 0xc0

    if-ne v1, v2, :cond_0

    .line 433
    const/16 v1, 0x1ea

    iput v1, v0, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    .line 435
    :cond_0
    iget v1, v0, Lcom/android/providers/downloads/DownloadInfo;->mDestination:I

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/providers/downloads/DownloadInfo;->mFileName:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 436
    sget-boolean v1, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v1, :cond_1

    .line 437
    const-string v1, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteDownloadLocked() deleting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/providers/downloads/DownloadInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    :cond_1
    iget-object v1, v0, Lcom/android/providers/downloads/DownloadInfo;->mFileName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/providers/downloads/DownloadService;->deleteFileIfExists(Ljava/lang/String;)V

    .line 441
    :cond_2
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadService;->mDownloads:Ljava/util/Map;

    iget-wide v2, v0, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    return-void
.end method

.method private deleteFileIfExists(Ljava/lang/String;)V
    .locals 4
    .parameter "path"

    .prologue
    .line 445
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 446
    sget-boolean v1, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v1, :cond_0

    .line 447
    const-string v1, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteFileIfExists() deleting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 450
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_1

    .line 451
    const-string v1, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' couldn\'t be deleted"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    .end local v0           #file:Ljava/io/File;
    :cond_1
    return-void
.end method

.method private enqueueFinalUpdate()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 226
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadService;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 227
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadService;->mUpdateHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/providers/downloads/DownloadService;->mUpdateHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/android/providers/downloads/DownloadService;->mLastStartId:I

    const/4 v3, -0x1

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 230
    return-void
.end method

.method private enqueueUpdate()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 217
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadService;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 218
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadService;->mUpdateHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/android/providers/downloads/DownloadService;->mLastStartId:I

    const/4 v2, -0x1

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 219
    return-void
.end method

.method private insertDownloadLocked(Lcom/android/providers/downloads/DownloadInfo$Reader;J)Lcom/android/providers/downloads/DownloadInfo;
    .locals 5
    .parameter "reader"
    .parameter "now"

    .prologue
    .line 405
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadService;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    iget-object v2, p0, Lcom/android/providers/downloads/DownloadService;->mStorageManager:Lcom/android/providers/downloads/StorageManager;

    iget-object v3, p0, Lcom/android/providers/downloads/DownloadService;->mNotifier:Lcom/android/providers/downloads/DownloadNotifier;

    invoke-virtual {p1, p0, v1, v2, v3}, Lcom/android/providers/downloads/DownloadInfo$Reader;->newDownloadInfo(Landroid/content/Context;Lcom/android/providers/downloads/SystemFacade;Lcom/android/providers/downloads/StorageManager;Lcom/android/providers/downloads/DownloadNotifier;)Lcom/android/providers/downloads/DownloadInfo;

    move-result-object v0

    .line 407
    .local v0, info:Lcom/android/providers/downloads/DownloadInfo;
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadService;->mDownloads:Ljava/util/Map;

    iget-wide v2, v0, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    sget-boolean v1, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v1, :cond_0

    .line 410
    const-string v1, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processing inserted download "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v0, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :cond_0
    return-object v0
.end method

.method private updateDownload(Lcom/android/providers/downloads/DownloadInfo$Reader;Lcom/android/providers/downloads/DownloadInfo;J)V
    .locals 4
    .parameter "reader"
    .parameter "info"
    .parameter "now"

    .prologue
    .line 420
    invoke-virtual {p1, p2}, Lcom/android/providers/downloads/DownloadInfo$Reader;->updateFromDatabase(Lcom/android/providers/downloads/DownloadInfo;)V

    .line 421
    sget-boolean v0, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v0, :cond_0

    .line 422
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processing updated download "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p2, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :cond_0
    return-void
.end method

.method private updateLocked()Z
    .locals 18

    .prologue
    .line 309
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/providers/downloads/DownloadService;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    invoke-interface {v1}, Lcom/android/providers/downloads/SystemFacade;->currentTimeMillis()J

    move-result-wide v10

    .line 311
    const/4 v9, 0x0

    .line 312
    const-wide v7, 0x7fffffffffffffffL

    .line 314
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/providers/downloads/DownloadService;->mDownloads:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/Sets;->newHashSet(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object v12

    .line 316
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/downloads/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 317
    sget-object v2, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 320
    :try_start_0
    new-instance v14, Lcom/android/providers/downloads/DownloadInfo$Reader;

    invoke-direct {v14, v1, v13}, Lcom/android/providers/downloads/DownloadInfo$Reader;-><init>(Landroid/content/ContentResolver;Landroid/database/Cursor;)V

    .line 321
    const-string v2, "_id"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    move-wide v4, v7

    move v6, v9

    .line 322
    :goto_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 323
    invoke-interface {v13, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 324
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v12, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 326
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/providers/downloads/DownloadService;->mDownloads:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/providers/downloads/DownloadInfo;

    .line 327
    if-eqz v2, :cond_1

    .line 328
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v2, v10, v11}, Lcom/android/providers/downloads/DownloadService;->updateDownload(Lcom/android/providers/downloads/DownloadInfo$Reader;Lcom/android/providers/downloads/DownloadInfo;J)V

    move-object v3, v2

    .line 333
    :goto_1
    iget-boolean v2, v3, Lcom/android/providers/downloads/DownloadInfo;->mDeleted:Z

    if-eqz v2, :cond_2

    .line 335
    iget-object v2, v3, Lcom/android/providers/downloads/DownloadInfo;->mMediaProviderUri:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 336
    iget-object v2, v3, Lcom/android/providers/downloads/DownloadInfo;->mMediaProviderUri:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v1, v2, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 339
    :cond_0
    iget-object v2, v3, Lcom/android/providers/downloads/DownloadInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/providers/downloads/DownloadService;->deleteFileIfExists(Ljava/lang/String;)V

    .line 340
    invoke-virtual {v3}, Lcom/android/providers/downloads/DownloadInfo;->getAllDownloadsUri()Landroid/net/Uri;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v1, v2, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 350
    const/4 v2, 0x1

    .line 370
    :goto_2
    invoke-virtual {v3, v10, v11}, Lcom/android/providers/downloads/DownloadInfo;->nextActionMillis(J)J

    move-result-wide v6

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    move v6, v2

    move-wide/from16 v16, v3

    move-wide/from16 v4, v16

    .line 371
    goto :goto_0

    .line 330
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v10, v11}, Lcom/android/providers/downloads/DownloadService;->insertDownloadLocked(Lcom/android/providers/downloads/DownloadInfo$Reader;J)Lcom/android/providers/downloads/DownloadInfo;

    move-result-object v2

    move-object v3, v2

    goto :goto_1

    .line 355
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/downloads/DownloadService;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v3, v2}, Lcom/android/providers/downloads/DownloadInfo;->startDownloadIfReady(Ljava/util/concurrent/ExecutorService;)Z

    move-result v2

    .line 358
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/providers/downloads/DownloadService;->mScanner:Lcom/android/providers/downloads/DownloadScanner;

    invoke-virtual {v3, v7}, Lcom/android/providers/downloads/DownloadInfo;->startScanIfReady(Lcom/android/providers/downloads/DownloadScanner;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 365
    or-int/2addr v2, v6

    .line 366
    or-int/2addr v2, v7

    goto :goto_2

    .line 373
    :catchall_0
    move-exception v1

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_3
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 377
    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 378
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8}, Lcom/android/providers/downloads/DownloadService;->deleteDownloadLocked(J)V

    goto :goto_3

    .line 382
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/providers/downloads/DownloadService;->mNotifier:Lcom/android/providers/downloads/DownloadNotifier;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/downloads/DownloadService;->mDownloads:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/providers/downloads/DownloadNotifier;->updateWith(Ljava/util/Collection;)V

    .line 386
    const-wide/16 v1, 0x0

    cmp-long v1, v4, v1

    if-lez v1, :cond_6

    const-wide v1, 0x7fffffffffffffffL

    cmp-long v1, v4, v1

    if-gez v1, :cond_6

    .line 387
    sget-boolean v1, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v1, :cond_5

    .line 388
    const-string v1, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scheduling start in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    :cond_5
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DOWNLOAD_WAKEUP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 392
    const-class v2, Lcom/android/providers/downloads/DownloadReceiver;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 393
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/downloads/DownloadService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x0

    add-long/2addr v4, v10

    const/4 v7, 0x0

    const/high16 v8, 0x4000

    move-object/from16 v0, p0

    invoke-static {v0, v7, v1, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 397
    :cond_6
    return v6
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .parameter "fd"
    .parameter "writer"
    .parameter "args"

    .prologue
    .line 458
    new-instance v4, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v5, "  "

    invoke-direct {v4, p2, v5}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 459
    .local v4, pw:Lcom/android/internal/util/IndentingPrintWriter;
    iget-object v6, p0, Lcom/android/providers/downloads/DownloadService;->mDownloads:Ljava/util/Map;

    monitor-enter v6

    .line 460
    :try_start_0
    iget-object v5, p0, Lcom/android/providers/downloads/DownloadService;->mDownloads:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-static {v5}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v2

    .line 461
    .local v2, ids:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 462
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 463
    .local v1, id:Ljava/lang/Long;
    iget-object v5, p0, Lcom/android/providers/downloads/DownloadService;->mDownloads:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/providers/downloads/DownloadInfo;

    .line 464
    .local v3, info:Lcom/android/providers/downloads/DownloadInfo;
    invoke-virtual {v3, v4}, Lcom/android/providers/downloads/DownloadInfo;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    goto :goto_0

    .line 466
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #id:Ljava/lang/Long;
    .end local v2           #ids:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    .end local v3           #info:Lcom/android/providers/downloads/DownloadInfo;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v2       #ids:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    :cond_0
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 467
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter "i"

    .prologue
    .line 145
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot bind to Download Manager Service"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    .line 153
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 154
    sget-boolean v1, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v1, :cond_0

    .line 155
    const-string v1, "DownloadManager"

    const-string v2, "Service onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/motorola/android/cryptography/CryptographicMode;->checkCryptographicMode()I
    :try_end_0
    .catch Lcom/motorola/android/cryptography/CryptographicModeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :goto_0
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadService;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    if-nez v1, :cond_1

    .line 171
    new-instance v1, Lcom/android/providers/downloads/RealSystemFacade;

    invoke-direct {v1, p0}, Lcom/android/providers/downloads/RealSystemFacade;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/providers/downloads/DownloadService;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    .line 174
    :cond_1
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Lcom/android/providers/downloads/DownloadService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/android/providers/downloads/DownloadService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 175
    new-instance v1, Lcom/android/providers/downloads/StorageManager;

    invoke-direct {v1, p0}, Lcom/android/providers/downloads/StorageManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/providers/downloads/DownloadService;->mStorageManager:Lcom/android/providers/downloads/StorageManager;

    .line 177
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "DownloadManager-UpdateThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/providers/downloads/DownloadService;->mUpdateThread:Landroid/os/HandlerThread;

    .line 178
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadService;->mUpdateThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 179
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/providers/downloads/DownloadService;->mUpdateThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/providers/downloads/DownloadService;->mUpdateCallback:Landroid/os/Handler$Callback;

    invoke-direct {v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/android/providers/downloads/DownloadService;->mUpdateHandler:Landroid/os/Handler;

    .line 181
    new-instance v1, Lcom/android/providers/downloads/DownloadScanner;

    invoke-direct {v1, p0}, Lcom/android/providers/downloads/DownloadScanner;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/providers/downloads/DownloadService;->mScanner:Lcom/android/providers/downloads/DownloadScanner;

    .line 183
    new-instance v1, Lcom/android/providers/downloads/DownloadNotifier;

    invoke-direct {v1, p0}, Lcom/android/providers/downloads/DownloadNotifier;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/providers/downloads/DownloadService;->mNotifier:Lcom/android/providers/downloads/DownloadNotifier;

    .line 184
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadService;->mNotifier:Lcom/android/providers/downloads/DownloadNotifier;

    invoke-virtual {v1}, Lcom/android/providers/downloads/DownloadNotifier;->cancelAll()V

    .line 186
    new-instance v1, Lcom/android/providers/downloads/DownloadService$DownloadManagerContentObserver;

    invoke-direct {v1, p0}, Lcom/android/providers/downloads/DownloadService$DownloadManagerContentObserver;-><init>(Lcom/android/providers/downloads/DownloadService;)V

    iput-object v1, p0, Lcom/android/providers/downloads/DownloadService;->mObserver:Lcom/android/providers/downloads/DownloadService$DownloadManagerContentObserver;

    .line 187
    invoke-virtual {p0}, Lcom/android/providers/downloads/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/providers/downloads/DownloadService;->mObserver:Lcom/android/providers/downloads/DownloadService$DownloadManagerContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 189
    return-void

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, ex:Lcom/motorola/android/cryptography/CryptographicModeException;
    const-string v1, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CryptographicModeException is caught: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/android/providers/downloads/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/downloads/DownloadService;->mObserver:Lcom/android/providers/downloads/DownloadService$DownloadManagerContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 205
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadService;->mScanner:Lcom/android/providers/downloads/DownloadScanner;

    invoke-virtual {v0}, Lcom/android/providers/downloads/DownloadScanner;->shutdown()V

    .line 206
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadService;->mUpdateThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 207
    sget-boolean v0, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v0, :cond_0

    .line 208
    const-string v0, "DownloadManager"

    const-string v1, "Service onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 211
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 193
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    .line 194
    .local v0, returnValue:I
    sget-boolean v1, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v1, :cond_0

    .line 195
    const-string v1, "DownloadManager"

    const-string v2, "Service onStart"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_0
    iput p3, p0, Lcom/android/providers/downloads/DownloadService;->mLastStartId:I

    .line 198
    invoke-direct {p0}, Lcom/android/providers/downloads/DownloadService;->enqueueUpdate()V

    .line 199
    return v0
.end method
