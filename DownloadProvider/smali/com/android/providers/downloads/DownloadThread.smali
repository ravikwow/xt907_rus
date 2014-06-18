.class public Lcom/android/providers/downloads/DownloadThread;
.super Ljava/lang/Object;
.source "DownloadThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/downloads/DownloadThread$State;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mInfo:Lcom/android/providers/downloads/DownloadInfo;

.field private final mNotifier:Lcom/android/providers/downloads/DownloadNotifier;

.field private volatile mPolicyDirty:Z

.field private mPolicyListener:Landroid/net/INetworkPolicyListener;

.field private final mStorageManager:Lcom/android/providers/downloads/StorageManager;

.field private final mSystemFacade:Lcom/android/providers/downloads/SystemFacade;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/providers/downloads/SystemFacade;Lcom/android/providers/downloads/DownloadInfo;Lcom/android/providers/downloads/StorageManager;Lcom/android/providers/downloads/DownloadNotifier;)V
    .locals 1
    .parameter "context"
    .parameter "systemFacade"
    .parameter "info"
    .parameter "storageManager"
    .parameter "notifier"

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 928
    new-instance v0, Lcom/android/providers/downloads/DownloadThread$1;

    invoke-direct {v0, p0}, Lcom/android/providers/downloads/DownloadThread$1;-><init>(Lcom/android/providers/downloads/DownloadThread;)V

    iput-object v0, p0, Lcom/android/providers/downloads/DownloadThread;->mPolicyListener:Landroid/net/INetworkPolicyListener;

    .line 103
    iput-object p1, p0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    .line 104
    iput-object p2, p0, Lcom/android/providers/downloads/DownloadThread;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    .line 105
    iput-object p3, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    .line 106
    iput-object p4, p0, Lcom/android/providers/downloads/DownloadThread;->mStorageManager:Lcom/android/providers/downloads/StorageManager;

    .line 107
    iput-object p5, p0, Lcom/android/providers/downloads/DownloadThread;->mNotifier:Lcom/android/providers/downloads/DownloadNotifier;

    .line 108
    return-void
.end method

.method static synthetic access$000(Lcom/android/providers/downloads/DownloadThread;)Lcom/android/providers/downloads/DownloadInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/providers/downloads/DownloadThread;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/android/providers/downloads/DownloadThread;->mPolicyDirty:Z

    return p1
.end method

.method private addCheckin(Lcom/android/providers/downloads/DownloadThread$State;)V
    .locals 11
    .parameter

    .prologue
    const/16 v6, 0x8

    const/4 v2, 0x0

    .line 952
    iget-object v1, p1, Lcom/android/providers/downloads/DownloadThread$State;->mMimeType:Ljava/lang/String;

    .line 953
    iget-object v4, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    .line 954
    const-string v3, ""

    .line 955
    const/4 v0, -0x1

    .line 956
    const/16 v5, 0x2e

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    .line 957
    if-lez v5, :cond_4

    .line 958
    add-int/lit8 v0, v5, 0x1

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 959
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    move v10, v0

    move-object v0, v3

    move v3, v10

    .line 961
    :goto_0
    if-gtz v3, :cond_0

    .line 962
    const-string v0, ""

    move-object v6, v0

    .line 968
    :goto_1
    iget-object v0, p1, Lcom/android/providers/downloads/DownloadThread$State;->mMimeType:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/providers/downloads/DownloadDrmHelper;->isDrmConvertNeeded(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 969
    const/4 v0, 0x1

    move v8, v0

    .line 971
    :goto_2
    if-eqz v8, :cond_1

    .line 972
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 973
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/android/providers/downloads/DownloadDrmHelper;->getOriginalMimeType(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    .line 977
    :goto_3
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 978
    new-instance v0, Lcom/motorola/android/provider/CheckinEvent;

    const-string v1, "MOT_MEDIA_STATS_L3"

    const-string v2, "FILE_DOWNLOAD"

    const-string v3, "1.0"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/motorola/android/provider/CheckinEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 983
    :try_start_0
    const-string v1, "ext"

    invoke-virtual {v0, v1, v6}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 984
    const-string v1, "mime"

    invoke-virtual {v0, v1, v7}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 985
    const-string v1, "drm"

    invoke-virtual {v0, v1, v8}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;Z)V

    .line 986
    const-string v1, "source"

    const-string v2, "download"

    invoke-virtual {v0, v1, v2}, Lcom/motorola/android/provider/CheckinEvent;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    invoke-virtual {v0, v9}, Lcom/motorola/android/provider/CheckinEvent;->publish(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 991
    :goto_4
    return-void

    .line 963
    :cond_0
    if-le v3, v6, :cond_3

    .line 964
    invoke-virtual {v0, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    goto :goto_1

    .line 988
    :catch_0
    move-exception v0

    .line 989
    const-string v1, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Checkin publish failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_1
    move-object v7, v1

    goto :goto_3

    :cond_2
    move v8, v2

    goto :goto_2

    :cond_3
    move-object v6, v0

    goto :goto_1

    :cond_4
    move v10, v0

    move-object v0, v3

    move v3, v10

    goto :goto_0
.end method

.method private addRequestHeaders(Lcom/android/providers/downloads/DownloadThread$State;Ljava/net/HttpURLConnection;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 875
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    invoke-virtual {v0}, Lcom/android/providers/downloads/DownloadInfo;->getHeaders()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 876
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v1, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 880
    :cond_0
    const-string v0, "User-Agent"

    invoke-virtual {p2, v0}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 881
    const-string v0, "User-Agent"

    invoke-direct {p0}, Lcom/android/providers/downloads/DownloadThread;->userAgent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    :cond_1
    const-string v0, "Accept-Encoding"

    const-string v1, "identity"

    invoke-virtual {p2, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    iget-boolean v0, p1, Lcom/android/providers/downloads/DownloadThread$State;->mContinuingDownload:Z

    if-eqz v0, :cond_3

    .line 889
    iget-object v0, p1, Lcom/android/providers/downloads/DownloadThread$State;->mHeaderETag:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 890
    const-string v0, "If-Match"

    iget-object v1, p1, Lcom/android/providers/downloads/DownloadThread$State;->mHeaderETag:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    :cond_2
    const-string v0, "Range"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bytes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/providers/downloads/DownloadThread$State;->mCurrentBytes:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 894
    :cond_3
    return-void
.end method

.method private cannotResume(Lcom/android/providers/downloads/DownloadThread$State;)Z
    .locals 4
    .parameter "state"

    .prologue
    .line 667
    iget-wide v0, p1, Lcom/android/providers/downloads/DownloadThread$State;->mCurrentBytes:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-boolean v0, v0, Lcom/android/providers/downloads/DownloadInfo;->mNoIntegrity:Z

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/providers/downloads/DownloadThread$State;->mHeaderETag:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p1, Lcom/android/providers/downloads/DownloadThread$State;->mMimeType:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/providers/downloads/DownloadDrmHelper;->isDrmConvertNeeded(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkConnectivity()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/StopRequestException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 487
    iput-boolean v3, p0, Lcom/android/providers/downloads/DownloadThread;->mPolicyDirty:Z

    .line 489
    iget-object v2, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    invoke-virtual {v2}, Lcom/android/providers/downloads/DownloadInfo;->checkCanUseNetwork()Lcom/android/providers/downloads/DownloadInfo$NetworkState;

    move-result-object v0

    .line 490
    .local v0, networkUsable:Lcom/android/providers/downloads/DownloadInfo$NetworkState;
    sget-object v2, Lcom/android/providers/downloads/DownloadInfo$NetworkState;->OK:Lcom/android/providers/downloads/DownloadInfo$NetworkState;

    if-eq v0, v2, :cond_2

    .line 491
    const/16 v1, 0xc3

    .line 492
    .local v1, status:I
    sget-object v2, Lcom/android/providers/downloads/DownloadInfo$NetworkState;->UNUSABLE_DUE_TO_SIZE:Lcom/android/providers/downloads/DownloadInfo$NetworkState;

    if-ne v0, v2, :cond_1

    .line 493
    const/16 v1, 0xc4

    .line 494
    iget-object v2, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/providers/downloads/DownloadInfo;->notifyPauseDueToSize(Z)V

    .line 499
    :cond_0
    :goto_0
    new-instance v2, Lcom/android/providers/downloads/StopRequestException;

    invoke-virtual {v0}, Lcom/android/providers/downloads/DownloadInfo$NetworkState;->name()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 495
    :cond_1
    sget-object v2, Lcom/android/providers/downloads/DownloadInfo$NetworkState;->RECOMMENDED_UNUSABLE_DUE_TO_SIZE:Lcom/android/providers/downloads/DownloadInfo$NetworkState;

    if-ne v0, v2, :cond_0

    .line 496
    const/16 v1, 0xc4

    .line 497
    iget-object v2, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    invoke-virtual {v2, v3}, Lcom/android/providers/downloads/DownloadInfo;->notifyPauseDueToSize(Z)V

    goto :goto_0

    .line 501
    .end local v1           #status:I
    :cond_2
    return-void
.end method

.method private checkPausedOrCanceled(Lcom/android/providers/downloads/DownloadThread$State;)V
    .locals 4
    .parameter "state"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/StopRequestException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x1ea

    .line 560
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    monitor-enter v1

    .line 561
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget v0, v0, Lcom/android/providers/downloads/DownloadInfo;->mControl:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 562
    new-instance v0, Lcom/android/providers/downloads/StopRequestException;

    const/16 v2, 0xc1

    const-string v3, "download paused by owner"

    invoke-direct {v0, v2, v3}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 568
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 565
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget v0, v0, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    if-eq v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-boolean v0, v0, Lcom/android/providers/downloads/DownloadInfo;->mDeleted:Z

    if-eqz v0, :cond_2

    .line 566
    :cond_1
    new-instance v0, Lcom/android/providers/downloads/StopRequestException;

    const/16 v2, 0x1ea

    const-string v3, "download canceled"

    invoke-direct {v0, v2, v3}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 568
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 571
    iget-boolean v0, p0, Lcom/android/providers/downloads/DownloadThread;->mPolicyDirty:Z

    if-eqz v0, :cond_3

    .line 572
    invoke-direct {p0}, Lcom/android/providers/downloads/DownloadThread;->checkConnectivity()V

    .line 574
    :cond_3
    return-void
.end method

.method private cleanupDestination(Lcom/android/providers/downloads/DownloadThread$State;I)V
    .locals 3
    .parameter "state"
    .parameter "finalStatus"

    .prologue
    .line 546
    iget-object v0, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {p2}, Landroid/provider/Downloads$Impl;->isStatusError(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 547
    sget-boolean v0, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v0, :cond_0

    .line 548
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cleanupDestination() deleting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 551
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    .line 553
    :cond_1
    return-void
.end method

.method private executeDownload(Lcom/android/providers/downloads/DownloadThread$State;)V
    .locals 9
    .parameter "state"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/StopRequestException;
        }
    .end annotation

    .prologue
    .line 304
    invoke-virtual {p1}, Lcom/android/providers/downloads/DownloadThread$State;->resetBeforeExecute()V

    .line 305
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadThread;->setupDestinationFile(Lcom/android/providers/downloads/DownloadThread$State;)V

    .line 308
    iget-wide v5, p1, Lcom/android/providers/downloads/DownloadThread$State;->mCurrentBytes:J

    iget-wide v7, p1, Lcom/android/providers/downloads/DownloadThread$State;->mTotalBytes:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_2

    .line 309
    const-string v5, "DownloadManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skipping initiating request for download "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-wide v7, v7, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; already completed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :cond_0
    :goto_0
    return-void

    .line 350
    .local v1, conn:Ljava/net/HttpURLConnection;
    .local v4, responseCode:I
    :sswitch_0
    :try_start_0
    const-string v5, "Location"

    invoke-virtual {v1, v5}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 351
    .local v3, location:Ljava/lang/String;
    new-instance v5, Ljava/net/URL;

    iget-object v6, p1, Lcom/android/providers/downloads/DownloadThread$State;->mUrl:Ljava/net/URL;

    invoke-direct {v5, v6, v3}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    iput-object v5, p1, Lcom/android/providers/downloads/DownloadThread$State;->mUrl:Ljava/net/URL;

    .line 352
    const/16 v5, 0x12d

    if-ne v4, v5, :cond_1

    .line 354
    iget-object v5, p1, Lcom/android/providers/downloads/DownloadThread$State;->mUrl:Ljava/net/URL;

    invoke-virtual {v5}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Lcom/android/providers/downloads/DownloadThread$State;->mRequestUri:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    :cond_1
    if-eqz v1, :cond_2

    .end local v3           #location:Ljava/lang/String;
    :goto_1
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 314
    .end local v1           #conn:Ljava/net/HttpURLConnection;
    .end local v4           #responseCode:I
    :cond_2
    iget v5, p1, Lcom/android/providers/downloads/DownloadThread$State;->mRedirectionCount:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p1, Lcom/android/providers/downloads/DownloadThread$State;->mRedirectionCount:I

    const/4 v6, 0x5

    if-ge v5, v6, :cond_6

    .line 317
    const/4 v1, 0x0

    .line 319
    .restart local v1       #conn:Ljava/net/HttpURLConnection;
    :try_start_1
    invoke-direct {p0}, Lcom/android/providers/downloads/DownloadThread;->checkConnectivity()V

    .line 320
    iget-object v5, p1, Lcom/android/providers/downloads/DownloadThread$State;->mUrl:Ljava/net/URL;

    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 321
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 322
    const/16 v5, 0x4e20

    invoke-virtual {v1, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 323
    const/16 v5, 0x4e20

    invoke-virtual {v1, v5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 325
    invoke-direct {p0, p1, v1}, Lcom/android/providers/downloads/DownloadThread;->addRequestHeaders(Lcom/android/providers/downloads/DownloadThread$State;Ljava/net/HttpURLConnection;)V

    .line 327
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    .line 328
    .restart local v4       #responseCode:I
    sparse-switch v4, :sswitch_data_0

    .line 372
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/providers/downloads/StopRequestException;->throwUnhandledHttpError(ILjava/lang/String;)Lcom/android/providers/downloads/StopRequestException;

    .line 380
    if-eqz v1, :cond_2

    goto :goto_1

    .line 330
    :sswitch_1
    iget-boolean v5, p1, Lcom/android/providers/downloads/DownloadThread$State;->mContinuingDownload:Z

    if-eqz v5, :cond_4

    .line 331
    new-instance v5, Lcom/android/providers/downloads/StopRequestException;

    const/16 v6, 0x1e9

    const-string v7, "Expected partial, but received OK"

    invoke-direct {v5, v6, v7}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 375
    .end local v4           #responseCode:I
    :catch_0
    move-exception v2

    .line 377
    .local v2, e:Ljava/io/IOException;
    :try_start_2
    new-instance v5, Lcom/android/providers/downloads/StopRequestException;

    const/16 v6, 0x1ef

    invoke-direct {v5, v6, v2}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/Throwable;)V

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 380
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    throw v5

    .line 334
    .restart local v4       #responseCode:I
    :cond_4
    :try_start_3
    invoke-direct {p0, p1, v1}, Lcom/android/providers/downloads/DownloadThread;->processResponseHeaders(Lcom/android/providers/downloads/DownloadThread$State;Ljava/net/HttpURLConnection;)V

    .line 335
    invoke-direct {p0, p1, v1}, Lcom/android/providers/downloads/DownloadThread;->transferData(Lcom/android/providers/downloads/DownloadThread$State;Ljava/net/HttpURLConnection;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 380
    if-eqz v1, :cond_0

    :goto_2
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    .line 339
    :sswitch_2
    :try_start_4
    iget-boolean v5, p1, Lcom/android/providers/downloads/DownloadThread$State;->mContinuingDownload:Z

    if-nez v5, :cond_5

    .line 340
    new-instance v5, Lcom/android/providers/downloads/StopRequestException;

    const/16 v6, 0x1e9

    const-string v7, "Expected OK, but received partial"

    invoke-direct {v5, v6, v7}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v5

    .line 343
    :cond_5
    invoke-direct {p0, p1, v1}, Lcom/android/providers/downloads/DownloadThread;->transferData(Lcom/android/providers/downloads/DownloadThread$State;Ljava/net/HttpURLConnection;)V

    .line 380
    if-eqz v1, :cond_0

    goto :goto_2

    .line 359
    :sswitch_3
    new-instance v5, Lcom/android/providers/downloads/StopRequestException;

    const/16 v6, 0x1e9

    const-string v7, "Requested range not satisfiable"

    invoke-direct {v5, v6, v7}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v5

    .line 363
    :sswitch_4
    invoke-direct {p0, p1, v1}, Lcom/android/providers/downloads/DownloadThread;->parseRetryAfterHeaders(Lcom/android/providers/downloads/DownloadThread$State;Ljava/net/HttpURLConnection;)V

    .line 364
    new-instance v5, Lcom/android/providers/downloads/StopRequestException;

    const/16 v6, 0x1f7

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v5

    .line 368
    :sswitch_5
    new-instance v5, Lcom/android/providers/downloads/StopRequestException;

    const/16 v6, 0x1f4

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 384
    .end local v1           #conn:Ljava/net/HttpURLConnection;
    .end local v4           #responseCode:I
    :cond_6
    new-instance v5, Lcom/android/providers/downloads/StopRequestException;

    const/16 v6, 0x1f1

    const-string v7, "Too many redirects"

    invoke-direct {v5, v6, v7}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v5

    .line 328
    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_1
        0xce -> :sswitch_2
        0x12d -> :sswitch_0
        0x12e -> :sswitch_0
        0x12f -> :sswitch_0
        0x133 -> :sswitch_0
        0x1a0 -> :sswitch_3
        0x1f4 -> :sswitch_5
        0x1f7 -> :sswitch_4
    .end sparse-switch
.end method

.method private finalizeDestinationFile(Lcom/android/providers/downloads/DownloadThread$State;)V
    .locals 3
    .parameter "state"

    .prologue
    const/4 v2, -0x1

    .line 535
    iget-object v0, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    const/16 v1, 0x1a4

    invoke-static {v0, v1, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 539
    :cond_0
    return-void
.end method

.method public static getHeaderFieldLong(Ljava/net/URLConnection;Ljava/lang/String;J)J
    .locals 2
    .parameter "conn"
    .parameter "field"
    .parameter "defaultValue"

    .prologue
    .line 996
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p2

    .line 998
    .end local p2
    :goto_0
    return-wide p2

    .line 997
    .restart local p2
    :catch_0
    move-exception v0

    .line 998
    .local v0, e:Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method private handleEndOfStream(Lcom/android/providers/downloads/DownloadThread$State;)V
    .locals 8
    .parameter "state"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/StopRequestException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, -0x1

    const/4 v5, 0x0

    .line 646
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 647
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "current_bytes"

    iget-wide v3, p1, Lcom/android/providers/downloads/DownloadThread$State;->mCurrentBytes:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 648
    iget-wide v2, p1, Lcom/android/providers/downloads/DownloadThread$State;->mContentLength:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_0

    .line 649
    const-string v2, "total_bytes"

    iget-wide v3, p1, Lcom/android/providers/downloads/DownloadThread$State;->mCurrentBytes:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 651
    :cond_0
    iget-object v2, p0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    invoke-virtual {v3}, Lcom/android/providers/downloads/DownloadInfo;->getAllDownloadsUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 653
    iget-wide v2, p1, Lcom/android/providers/downloads/DownloadThread$State;->mContentLength:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_1

    iget-wide v2, p1, Lcom/android/providers/downloads/DownloadThread$State;->mCurrentBytes:J

    iget-wide v4, p1, Lcom/android/providers/downloads/DownloadThread$State;->mContentLength:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 655
    .local v0, lengthMismatched:Z
    :goto_0
    if-eqz v0, :cond_3

    .line 656
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadThread;->cannotResume(Lcom/android/providers/downloads/DownloadThread$State;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 657
    new-instance v2, Lcom/android/providers/downloads/StopRequestException;

    const/16 v3, 0x1e9

    const-string v4, "mismatched content length; unable to resume"

    invoke-direct {v2, v3, v4}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 653
    .end local v0           #lengthMismatched:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 660
    .restart local v0       #lengthMismatched:Z
    :cond_2
    new-instance v2, Lcom/android/providers/downloads/StopRequestException;

    const/16 v3, 0x1ef

    const-string v4, "closed socket before end of file"

    invoke-direct {v2, v3, v4}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 664
    :cond_3
    return-void
.end method

.method public static isStatusRetryable(I)Z
    .locals 1
    .parameter "status"

    .prologue
    .line 1007
    sparse-switch p0, :sswitch_data_0

    .line 1013
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1011
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1007
    nop

    :sswitch_data_0
    .sparse-switch
        0x1ef -> :sswitch_0
        0x1f4 -> :sswitch_0
        0x1f7 -> :sswitch_0
    .end sparse-switch
.end method

.method private notifyDownloadCompleted(Lcom/android/providers/downloads/DownloadThread$State;ILjava/lang/String;I)V
    .locals 1
    .parameter "state"
    .parameter "finalStatus"
    .parameter "errorMsg"
    .parameter "numFailed"

    .prologue
    .line 901
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/providers/downloads/DownloadThread;->notifyThroughDatabase(Lcom/android/providers/downloads/DownloadThread$State;ILjava/lang/String;I)V

    .line 902
    invoke-static {p2}, Landroid/provider/Downloads$Impl;->isStatusCompleted(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 903
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    invoke-virtual {v0}, Lcom/android/providers/downloads/DownloadInfo;->sendIntentIfRequested()V

    .line 905
    :cond_0
    return-void
.end method

.method private notifyThroughDatabase(Lcom/android/providers/downloads/DownloadThread$State;ILjava/lang/String;I)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 909
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 910
    const-string v1, "status"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 911
    const-string v1, "_data"

    iget-object v2, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    const-string v1, "mimetype"

    iget-object v2, p1, Lcom/android/providers/downloads/DownloadThread$State;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    const-string v1, "lastmod"

    iget-object v2, p0, Lcom/android/providers/downloads/DownloadThread;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    invoke-interface {v2}, Lcom/android/providers/downloads/SystemFacade;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 914
    const-string v1, "numfailed"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 915
    const-string v1, "method"

    iget v2, p1, Lcom/android/providers/downloads/DownloadThread$State;->mRetryAfter:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 917
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-object v1, v1, Lcom/android/providers/downloads/DownloadInfo;->mUri:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/providers/downloads/DownloadThread$State;->mRequestUri:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 918
    const-string v1, "uri"

    iget-object v2, p1, Lcom/android/providers/downloads/DownloadThread$State;->mRequestUri:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 923
    const-string v1, "errorMsg"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    :cond_1
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    invoke-virtual {v2}, Lcom/android/providers/downloads/DownloadInfo;->getAllDownloadsUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 926
    return-void
.end method

.method private parseRetryAfterHeaders(Lcom/android/providers/downloads/DownloadThread$State;Ljava/net/HttpURLConnection;)V
    .locals 4
    .parameter "state"
    .parameter "conn"

    .prologue
    const v3, 0x15180

    const/16 v2, 0x1e

    .line 790
    const-string v0, "Retry-After"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Ljava/net/HttpURLConnection;->getHeaderFieldInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Lcom/android/providers/downloads/DownloadThread$State;->mRetryAfter:I

    .line 791
    iget v0, p1, Lcom/android/providers/downloads/DownloadThread$State;->mRetryAfter:I

    if-gez v0, :cond_0

    .line 792
    const/4 v0, 0x0

    iput v0, p1, Lcom/android/providers/downloads/DownloadThread$State;->mRetryAfter:I

    .line 802
    :goto_0
    return-void

    .line 794
    :cond_0
    iget v0, p1, Lcom/android/providers/downloads/DownloadThread$State;->mRetryAfter:I

    if-ge v0, v2, :cond_2

    .line 795
    iput v2, p1, Lcom/android/providers/downloads/DownloadThread$State;->mRetryAfter:I

    .line 799
    :cond_1
    :goto_1
    iget v0, p1, Lcom/android/providers/downloads/DownloadThread$State;->mRetryAfter:I

    sget-object v1, Lcom/android/providers/downloads/Helpers;->sRandom:Ljava/util/Random;

    const/16 v2, 0x1f

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Lcom/android/providers/downloads/DownloadThread$State;->mRetryAfter:I

    .line 800
    iget v0, p1, Lcom/android/providers/downloads/DownloadThread$State;->mRetryAfter:I

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p1, Lcom/android/providers/downloads/DownloadThread$State;->mRetryAfter:I

    goto :goto_0

    .line 796
    :cond_2
    iget v0, p1, Lcom/android/providers/downloads/DownloadThread$State;->mRetryAfter:I

    if-le v0, v3, :cond_1

    .line 797
    iput v3, p1, Lcom/android/providers/downloads/DownloadThread$State;->mRetryAfter:I

    goto :goto_1
.end method

.method private processResponseHeaders(Lcom/android/providers/downloads/DownloadThread$State;Ljava/net/HttpURLConnection;)V
    .locals 10
    .parameter "state"
    .parameter "conn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/StopRequestException;
        }
    .end annotation

    .prologue
    .line 708
    invoke-direct {p0, p1, p2}, Lcom/android/providers/downloads/DownloadThread;->readResponseHeaders(Lcom/android/providers/downloads/DownloadThread$State;Ljava/net/HttpURLConnection;)V

    .line 710
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-object v1, v1, Lcom/android/providers/downloads/DownloadInfo;->mUri:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-object v2, v2, Lcom/android/providers/downloads/DownloadInfo;->mHint:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/providers/downloads/DownloadThread$State;->mContentDisposition:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/providers/downloads/DownloadThread$State;->mContentLocation:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/providers/downloads/DownloadThread$State;->mMimeType:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget v6, v6, Lcom/android/providers/downloads/DownloadInfo;->mDestination:I

    iget-wide v7, p1, Lcom/android/providers/downloads/DownloadThread$State;->mContentLength:J

    iget-object v9, p0, Lcom/android/providers/downloads/DownloadThread;->mStorageManager:Lcom/android/providers/downloads/StorageManager;

    invoke-static/range {v0 .. v9}, Lcom/android/providers/downloads/Helpers;->generateSaveFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLcom/android/providers/downloads/StorageManager;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    .line 721
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadThread;->updateDatabaseFromHeaders(Lcom/android/providers/downloads/DownloadThread$State;)V

    .line 723
    invoke-direct {p0}, Lcom/android/providers/downloads/DownloadThread;->checkConnectivity()V

    .line 724
    return-void
.end method

.method private readFromResponse(Lcom/android/providers/downloads/DownloadThread$State;[BLjava/io/InputStream;)I
    .locals 6
    .parameter "state"
    .parameter "data"
    .parameter "entityStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/StopRequestException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 680
    :try_start_0
    invoke-virtual {p3, p2}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 684
    :goto_0
    return v2

    .line 681
    :catch_0
    move-exception v0

    .line 683
    .local v0, ex:Ljava/io/IOException;
    const-string v2, "unexpected end of stream"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 684
    const/4 v2, -0x1

    goto :goto_0

    .line 687
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 688
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "current_bytes"

    iget-wide v3, p1, Lcom/android/providers/downloads/DownloadThread$State;->mCurrentBytes:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 689
    iget-object v2, p0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    invoke-virtual {v3}, Lcom/android/providers/downloads/DownloadInfo;->getAllDownloadsUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 690
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadThread;->cannotResume(Lcom/android/providers/downloads/DownloadThread$State;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 691
    new-instance v2, Lcom/android/providers/downloads/StopRequestException;

    const/16 v3, 0x1e9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed reading response: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; unable to resume"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v0}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 694
    :cond_1
    new-instance v2, Lcom/android/providers/downloads/StopRequestException;

    const/16 v3, 0x1ef

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed reading response: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v0}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private readResponseHeaders(Lcom/android/providers/downloads/DownloadThread$State;Ljava/net/HttpURLConnection;)V
    .locals 7
    .parameter "state"
    .parameter "conn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/StopRequestException;
        }
    .end annotation

    .prologue
    const-wide/16 v5, -0x1

    .line 748
    const-string v2, "Content-Disposition"

    invoke-virtual {p2, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/providers/downloads/DownloadThread$State;->mContentDisposition:Ljava/lang/String;

    .line 749
    const-string v2, "Content-Location"

    invoke-virtual {p2, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/providers/downloads/DownloadThread$State;->mContentLocation:Ljava/lang/String;

    .line 751
    iget-object v2, p1, Lcom/android/providers/downloads/DownloadThread$State;->mMimeType:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 752
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/content/Intent;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/providers/downloads/DownloadThread$State;->mMimeType:Ljava/lang/String;

    .line 761
    :cond_0
    iget-object v2, p1, Lcom/android/providers/downloads/DownloadThread$State;->mMimeType:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-object v3, v3, Lcom/android/providers/downloads/DownloadInfo;->mUri:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/providers/downloads/DownloadThread$State;->mContentDisposition:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/android/providers/downloads/Helpers;->remapGenericMimeType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/providers/downloads/DownloadThread$State;->mMimeType:Ljava/lang/String;

    .line 763
    iget-object v2, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-object v2, v2, Lcom/android/providers/downloads/DownloadInfo;->mMimeType:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-object v2, v2, Lcom/android/providers/downloads/DownloadInfo;->mMimeType:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/providers/downloads/DownloadThread$State;->mMimeType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 764
    :cond_1
    iget-object v2, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-object v3, p1, Lcom/android/providers/downloads/DownloadThread$State;->mMimeType:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/providers/downloads/DownloadInfo;->mMimeType:Ljava/lang/String;

    .line 768
    :cond_2
    const-string v2, "ETag"

    invoke-virtual {p2, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/providers/downloads/DownloadThread$State;->mHeaderETag:Ljava/lang/String;

    .line 770
    const-string v2, "Transfer-Encoding"

    invoke-virtual {p2, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 771
    .local v1, transferEncoding:Ljava/lang/String;
    if-nez v1, :cond_4

    .line 772
    const-string v2, "Content-Length"

    invoke-static {p2, v2, v5, v6}, Lcom/android/providers/downloads/DownloadThread;->getHeaderFieldLong(Ljava/net/URLConnection;Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p1, Lcom/android/providers/downloads/DownloadThread$State;->mContentLength:J

    .line 778
    :goto_0
    iget-wide v2, p1, Lcom/android/providers/downloads/DownloadThread$State;->mContentLength:J

    iput-wide v2, p1, Lcom/android/providers/downloads/DownloadThread$State;->mTotalBytes:J

    .line 779
    iget-object v2, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-wide v3, p1, Lcom/android/providers/downloads/DownloadThread$State;->mContentLength:J

    iput-wide v3, v2, Lcom/android/providers/downloads/DownloadInfo;->mTotalBytes:J

    .line 781
    iget-wide v2, p1, Lcom/android/providers/downloads/DownloadThread$State;->mContentLength:J

    cmp-long v2, v2, v5

    if-nez v2, :cond_5

    if-eqz v1, :cond_3

    const-string v2, "chunked"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_3
    const/4 v0, 0x1

    .line 783
    .local v0, noSizeInfo:Z
    :goto_1
    iget-object v2, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-boolean v2, v2, Lcom/android/providers/downloads/DownloadInfo;->mNoIntegrity:Z

    if-nez v2, :cond_6

    if-eqz v0, :cond_6

    .line 784
    new-instance v2, Lcom/android/providers/downloads/StopRequestException;

    const/16 v3, 0x1e9

    const-string v4, "can\'t know size of download, giving up"

    invoke-direct {v2, v3, v4}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 774
    .end local v0           #noSizeInfo:Z
    :cond_4
    const-string v2, "DownloadManager"

    const-string v3, "Ignoring Content-Length since Transfer-Encoding is also defined"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    iput-wide v5, p1, Lcom/android/providers/downloads/DownloadThread$State;->mContentLength:J

    goto :goto_0

    .line 781
    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    .line 787
    .restart local v0       #noSizeInfo:Z
    :cond_6
    return-void
.end method

.method private reportProgress(Lcom/android/providers/downloads/DownloadThread$State;)V
    .locals 12
    .parameter "state"

    .prologue
    .line 580
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 582
    .local v0, now:J
    iget-wide v7, p1, Lcom/android/providers/downloads/DownloadThread$State;->mSpeedSampleStart:J

    sub-long v2, v0, v7

    .line 583
    .local v2, sampleDelta:J
    const-wide/16 v7, 0x1f4

    cmp-long v7, v2, v7

    if-lez v7, :cond_1

    .line 584
    iget-wide v7, p1, Lcom/android/providers/downloads/DownloadThread$State;->mCurrentBytes:J

    iget-wide v9, p1, Lcom/android/providers/downloads/DownloadThread$State;->mSpeedSampleBytes:J

    sub-long/2addr v7, v9

    const-wide/16 v9, 0x3e8

    mul-long/2addr v7, v9

    div-long v4, v7, v2

    .line 587
    .local v4, sampleSpeed:J
    iget-wide v7, p1, Lcom/android/providers/downloads/DownloadThread$State;->mSpeed:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-nez v7, :cond_3

    .line 588
    iput-wide v4, p1, Lcom/android/providers/downloads/DownloadThread$State;->mSpeed:J

    .line 594
    :goto_0
    iget-wide v7, p1, Lcom/android/providers/downloads/DownloadThread$State;->mSpeedSampleStart:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_0

    .line 595
    iget-object v7, p0, Lcom/android/providers/downloads/DownloadThread;->mNotifier:Lcom/android/providers/downloads/DownloadNotifier;

    iget-object v8, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-wide v8, v8, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    iget-wide v10, p1, Lcom/android/providers/downloads/DownloadThread$State;->mSpeed:J

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/android/providers/downloads/DownloadNotifier;->notifyDownloadSpeed(JJ)V

    .line 598
    :cond_0
    iput-wide v0, p1, Lcom/android/providers/downloads/DownloadThread$State;->mSpeedSampleStart:J

    .line 599
    iget-wide v7, p1, Lcom/android/providers/downloads/DownloadThread$State;->mCurrentBytes:J

    iput-wide v7, p1, Lcom/android/providers/downloads/DownloadThread$State;->mSpeedSampleBytes:J

    .line 602
    .end local v4           #sampleSpeed:J
    :cond_1
    iget-wide v7, p1, Lcom/android/providers/downloads/DownloadThread$State;->mCurrentBytes:J

    iget-wide v9, p1, Lcom/android/providers/downloads/DownloadThread$State;->mBytesNotified:J

    sub-long/2addr v7, v9

    const-wide/16 v9, 0x1000

    cmp-long v7, v7, v9

    if-lez v7, :cond_2

    iget-wide v7, p1, Lcom/android/providers/downloads/DownloadThread$State;->mTimeLastNotification:J

    sub-long v7, v0, v7

    const-wide/16 v9, 0x5dc

    cmp-long v7, v7, v9

    if-lez v7, :cond_2

    .line 604
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 605
    .local v6, values:Landroid/content/ContentValues;
    const-string v7, "current_bytes"

    iget-wide v8, p1, Lcom/android/providers/downloads/DownloadThread$State;->mCurrentBytes:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 606
    iget-object v7, p0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v8, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    invoke-virtual {v8}, Lcom/android/providers/downloads/DownloadInfo;->getAllDownloadsUri()Landroid/net/Uri;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v6, v9, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 607
    iget-wide v7, p1, Lcom/android/providers/downloads/DownloadThread$State;->mCurrentBytes:J

    iput-wide v7, p1, Lcom/android/providers/downloads/DownloadThread$State;->mBytesNotified:J

    .line 608
    iput-wide v0, p1, Lcom/android/providers/downloads/DownloadThread$State;->mTimeLastNotification:J

    .line 610
    .end local v6           #values:Landroid/content/ContentValues;
    :cond_2
    return-void

    .line 590
    .restart local v4       #sampleSpeed:J
    :cond_3
    iget-wide v7, p1, Lcom/android/providers/downloads/DownloadThread$State;->mSpeed:J

    const-wide/16 v9, 0x3

    mul-long/2addr v7, v9

    add-long/2addr v7, v4

    const-wide/16 v9, 0x4

    div-long/2addr v7, v9

    iput-wide v7, p1, Lcom/android/providers/downloads/DownloadThread$State;->mSpeed:J

    goto :goto_0
.end method

.method private runInternal()V
    .locals 19

    .prologue
    .line 182
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-wide v15, v15, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-static/range {v14 .. v16}, Lcom/android/providers/downloads/DownloadInfo;->queryDownloadStatus(Landroid/content/ContentResolver;J)I

    move-result v14

    const/16 v15, 0xc8

    if-ne v14, v15, :cond_0

    .line 184
    const-string v14, "DownloadManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Download "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " already finished; skipping"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :goto_0
    return-void

    .line 188
    :cond_0
    new-instance v12, Lcom/android/providers/downloads/DownloadThread$State;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    invoke-direct {v12, v14}, Lcom/android/providers/downloads/DownloadThread$State;-><init>(Lcom/android/providers/downloads/DownloadInfo;)V

    .line 189
    .local v12, state:Lcom/android/providers/downloads/DownloadThread$State;
    const/4 v13, 0x0

    .line 190
    .local v13, wakeLock:Landroid/os/PowerManager$WakeLock;
    const/16 v6, 0x1eb

    .line 191
    .local v6, finalStatus:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget v10, v14, Lcom/android/providers/downloads/DownloadInfo;->mNumFailed:I

    .line 192
    .local v10, numFailed:I
    const/4 v4, 0x0

    .line 194
    .local v4, errorMsg:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    invoke-static {v14}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v9

    .line 195
    .local v9, netPolicy:Landroid/net/NetworkPolicyManager;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    const-string v15, "power"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/PowerManager;

    .line 198
    .local v11, pm:Landroid/os/PowerManager;
    const/4 v14, 0x1

    :try_start_0
    const-string v15, "DownloadManager"

    invoke-virtual {v11, v14, v15}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v13

    .line 199
    new-instance v14, Landroid/os/WorkSource;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget v15, v15, Lcom/android/providers/downloads/DownloadInfo;->mUid:I

    invoke-direct {v14, v15}, Landroid/os/WorkSource;-><init>(I)V

    invoke-virtual {v13, v14}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 200
    invoke-virtual {v13}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 203
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/providers/downloads/DownloadThread;->mPolicyListener:Landroid/net/INetworkPolicyListener;

    invoke-virtual {v9, v14}, Landroid/net/NetworkPolicyManager;->registerListener(Landroid/net/INetworkPolicyListener;)V

    .line 205
    const-string v14, "DownloadManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Download "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " starting"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/providers/downloads/DownloadThread;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget v15, v15, Lcom/android/providers/downloads/DownloadInfo;->mUid:I

    invoke-interface {v14, v15}, Lcom/android/providers/downloads/SystemFacade;->getActiveNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v7

    .line 210
    .local v7, info:Landroid/net/NetworkInfo;
    if-eqz v7, :cond_1

    .line 211
    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getType()I

    move-result v14

    iput v14, v12, Lcom/android/providers/downloads/DownloadThread$State;->mNetworkType:I

    .line 216
    :cond_1
    const/16 v14, -0xff

    invoke-static {v14}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 217
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget v14, v14, Lcom/android/providers/downloads/DownloadInfo;->mUid:I

    invoke-static {v14}, Landroid/net/TrafficStats;->setThreadStatsUid(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/android/providers/downloads/StopRequestException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 221
    :try_start_1
    new-instance v14, Ljava/net/URL;

    iget-object v15, v12, Lcom/android/providers/downloads/DownloadThread$State;->mRequestUri:Ljava/lang/String;

    invoke-direct {v14, v15}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v14, v12, Lcom/android/providers/downloads/DownloadThread$State;->mUrl:Ljava/net/URL;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/providers/downloads/StopRequestException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 226
    :try_start_2
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/providers/downloads/DownloadThread;->executeDownload(Lcom/android/providers/downloads/DownloadThread$State;)V

    .line 228
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/providers/downloads/DownloadThread;->finalizeDestinationFile(Lcom/android/providers/downloads/DownloadThread$State;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/android/providers/downloads/StopRequestException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 229
    const/16 v6, 0xc8

    .line 275
    const/16 v14, 0xc8

    if-ne v6, v14, :cond_2

    .line 276
    const/4 v14, 0x1

    invoke-static {v14}, Landroid/net/TrafficStats;->incrementOperationCount(I)V

    .line 277
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/providers/downloads/DownloadThread;->addCheckin(Lcom/android/providers/downloads/DownloadThread$State;)V

    .line 280
    :cond_2
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 281
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsUid()V

    .line 283
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v6}, Lcom/android/providers/downloads/DownloadThread;->cleanupDestination(Lcom/android/providers/downloads/DownloadThread$State;I)V

    .line 284
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v6, v4, v10}, Lcom/android/providers/downloads/DownloadThread;->notifyDownloadCompleted(Lcom/android/providers/downloads/DownloadThread$State;ILjava/lang/String;I)V

    .line 286
    const-string v14, "DownloadManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Download "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " finished with status "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {v6}, Landroid/provider/Downloads$Impl;->statusToString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/providers/downloads/DownloadThread;->mPolicyListener:Landroid/net/INetworkPolicyListener;

    invoke-virtual {v9, v14}, Landroid/net/NetworkPolicyManager;->unregisterListener(Landroid/net/INetworkPolicyListener;)V

    .line 291
    if-eqz v13, :cond_3

    .line 292
    invoke-virtual {v13}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 293
    .end local v7           #info:Landroid/net/NetworkInfo;
    :goto_1
    const/4 v13, 0x0

    .line 296
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/providers/downloads/DownloadThread;->mStorageManager:Lcom/android/providers/downloads/StorageManager;

    invoke-virtual {v14}, Lcom/android/providers/downloads/StorageManager;->incrementNumDownloadsSoFar()V

    goto/16 :goto_0

    .line 222
    .restart local v7       #info:Landroid/net/NetworkInfo;
    :catch_0
    move-exception v2

    .line 223
    .local v2, e:Ljava/net/MalformedURLException;
    :try_start_3
    new-instance v14, Lcom/android/providers/downloads/StopRequestException;

    const/16 v15, 0x190

    invoke-direct {v14, v15, v2}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/Throwable;)V

    throw v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/android/providers/downloads/StopRequestException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    .line 230
    .end local v2           #e:Ljava/net/MalformedURLException;
    .end local v7           #info:Landroid/net/NetworkInfo;
    :catch_1
    move-exception v3

    .line 232
    .local v3, error:Lcom/android/providers/downloads/StopRequestException;
    :try_start_4
    invoke-virtual {v3}, Lcom/android/providers/downloads/StopRequestException;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 233
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Aborting request for download "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-wide v15, v15, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ": "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 234
    .local v8, msg:Ljava/lang/String;
    const-string v14, "DownloadManager"

    invoke-static {v14, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    sget-boolean v14, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v14, :cond_4

    .line 236
    const-string v14, "DownloadManager"

    invoke-static {v14, v8, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 238
    :cond_4
    invoke-virtual {v3}, Lcom/android/providers/downloads/StopRequestException;->getFinalStatus()I

    move-result v6

    .line 242
    const/16 v14, 0xc2

    if-ne v6, v14, :cond_7

    .line 243
    new-instance v14, Ljava/lang/IllegalStateException;

    const-string v15, "Execution should always throw final error codes"

    invoke-direct {v14, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 275
    .end local v3           #error:Lcom/android/providers/downloads/StopRequestException;
    .end local v8           #msg:Ljava/lang/String;
    :catchall_0
    move-exception v14

    const/16 v15, 0xc8

    if-ne v6, v15, :cond_5

    .line 276
    const/4 v15, 0x1

    invoke-static {v15}, Landroid/net/TrafficStats;->incrementOperationCount(I)V

    .line 277
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/providers/downloads/DownloadThread;->addCheckin(Lcom/android/providers/downloads/DownloadThread$State;)V

    .line 280
    :cond_5
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 281
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsUid()V

    .line 283
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v6}, Lcom/android/providers/downloads/DownloadThread;->cleanupDestination(Lcom/android/providers/downloads/DownloadThread$State;I)V

    .line 284
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v6, v4, v10}, Lcom/android/providers/downloads/DownloadThread;->notifyDownloadCompleted(Lcom/android/providers/downloads/DownloadThread$State;ILjava/lang/String;I)V

    .line 286
    const-string v15, "DownloadManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Download "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    move-wide/from16 v17, v0

    invoke-virtual/range {v16 .. v18}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " finished with status "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {v6}, Landroid/provider/Downloads$Impl;->statusToString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/providers/downloads/DownloadThread;->mPolicyListener:Landroid/net/INetworkPolicyListener;

    invoke-virtual {v9, v15}, Landroid/net/NetworkPolicyManager;->unregisterListener(Landroid/net/INetworkPolicyListener;)V

    .line 291
    if-eqz v13, :cond_6

    .line 292
    invoke-virtual {v13}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 293
    const/4 v13, 0x0

    .line 275
    :cond_6
    throw v14

    .line 247
    .restart local v3       #error:Lcom/android/providers/downloads/StopRequestException;
    .restart local v8       #msg:Ljava/lang/String;
    :cond_7
    :try_start_5
    invoke-static {v6}, Lcom/android/providers/downloads/DownloadThread;->isStatusRetryable(I)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 248
    iget-boolean v14, v12, Lcom/android/providers/downloads/DownloadThread$State;->mGotData:Z

    if-eqz v14, :cond_a

    .line 249
    const/4 v10, 0x1

    .line 254
    :goto_2
    const/4 v14, 0x5

    if-ge v10, v14, :cond_8

    .line 255
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/providers/downloads/DownloadThread;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget v15, v15, Lcom/android/providers/downloads/DownloadInfo;->mUid:I

    invoke-interface {v14, v15}, Lcom/android/providers/downloads/SystemFacade;->getActiveNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v7

    .line 256
    .restart local v7       #info:Landroid/net/NetworkInfo;
    if-eqz v7, :cond_b

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getType()I

    move-result v14

    iget v15, v12, Lcom/android/providers/downloads/DownloadThread$State;->mNetworkType:I

    if-ne v14, v15, :cond_b

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v14

    if-eqz v14, :cond_b

    .line 259
    const/16 v6, 0xc2

    .line 275
    .end local v7           #info:Landroid/net/NetworkInfo;
    :cond_8
    :goto_3
    const/16 v14, 0xc8

    if-ne v6, v14, :cond_9

    .line 276
    const/4 v14, 0x1

    invoke-static {v14}, Landroid/net/TrafficStats;->incrementOperationCount(I)V

    .line 277
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/providers/downloads/DownloadThread;->addCheckin(Lcom/android/providers/downloads/DownloadThread$State;)V

    .line 280
    :cond_9
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 281
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsUid()V

    .line 283
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v6}, Lcom/android/providers/downloads/DownloadThread;->cleanupDestination(Lcom/android/providers/downloads/DownloadThread$State;I)V

    .line 284
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v6, v4, v10}, Lcom/android/providers/downloads/DownloadThread;->notifyDownloadCompleted(Lcom/android/providers/downloads/DownloadThread$State;ILjava/lang/String;I)V

    .line 286
    const-string v14, "DownloadManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Download "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " finished with status "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {v6}, Landroid/provider/Downloads$Impl;->statusToString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/providers/downloads/DownloadThread;->mPolicyListener:Landroid/net/INetworkPolicyListener;

    invoke-virtual {v9, v14}, Landroid/net/NetworkPolicyManager;->unregisterListener(Landroid/net/INetworkPolicyListener;)V

    .line 291
    if-eqz v13, :cond_3

    .line 292
    invoke-virtual {v13}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_1

    .line 251
    :cond_a
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    .line 262
    .restart local v7       #info:Landroid/net/NetworkInfo;
    :cond_b
    const/16 v6, 0xc3

    goto :goto_3

    .line 268
    .end local v3           #error:Lcom/android/providers/downloads/StopRequestException;
    .end local v7           #info:Landroid/net/NetworkInfo;
    .end local v8           #msg:Ljava/lang/String;
    :catch_2
    move-exception v5

    .line 269
    .local v5, ex:Ljava/lang/Throwable;
    :try_start_6
    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 270
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Exception for id "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-wide v15, v15, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ": "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 271
    .restart local v8       #msg:Ljava/lang/String;
    const-string v14, "DownloadManager"

    invoke-static {v14, v8, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 272
    const/16 v6, 0x1eb

    .line 275
    const/16 v14, 0xc8

    if-ne v6, v14, :cond_c

    .line 276
    const/4 v14, 0x1

    invoke-static {v14}, Landroid/net/TrafficStats;->incrementOperationCount(I)V

    .line 277
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/providers/downloads/DownloadThread;->addCheckin(Lcom/android/providers/downloads/DownloadThread$State;)V

    .line 280
    :cond_c
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 281
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsUid()V

    .line 283
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v6}, Lcom/android/providers/downloads/DownloadThread;->cleanupDestination(Lcom/android/providers/downloads/DownloadThread$State;I)V

    .line 284
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v6, v4, v10}, Lcom/android/providers/downloads/DownloadThread;->notifyDownloadCompleted(Lcom/android/providers/downloads/DownloadThread$State;ILjava/lang/String;I)V

    .line 286
    const-string v14, "DownloadManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Download "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " finished with status "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {v6}, Landroid/provider/Downloads$Impl;->statusToString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/providers/downloads/DownloadThread;->mPolicyListener:Landroid/net/INetworkPolicyListener;

    invoke-virtual {v9, v14}, Landroid/net/NetworkPolicyManager;->unregisterListener(Landroid/net/INetworkPolicyListener;)V

    .line 291
    if-eqz v13, :cond_3

    .line 292
    invoke-virtual {v13}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_1
.end method

.method private setupDestinationFile(Lcom/android/providers/downloads/DownloadThread$State;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/StopRequestException;
        }
    .end annotation

    .prologue
    .line 809
    iget-object v0, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 810
    sget-boolean v0, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v0, :cond_0

    .line 811
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "have run thread before for id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-wide v2, v2, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", and state.mFilename: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    :cond_0
    iget-object v0, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/providers/downloads/DownloadThread;->mStorageManager:Lcom/android/providers/downloads/StorageManager;

    invoke-virtual {v1}, Lcom/android/providers/downloads/StorageManager;->getDownloadDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/providers/downloads/Helpers;->isFilenameValid(Ljava/lang/String;Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 817
    new-instance v0, Lcom/android/providers/downloads/StopRequestException;

    const/16 v1, 0x1ec

    const-string v2, "found invalid internal destination filename"

    invoke-direct {v0, v1, v2}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 821
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 822
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 823
    sget-boolean v1, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v1, :cond_2

    .line 824
    const-string v1, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resuming download for id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-wide v3, v3, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", and state.mFilename: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    .line 828
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_5

    .line 830
    sget-boolean v1, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v1, :cond_3

    .line 831
    const-string v1, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setupDestinationFile() found fileLength=0, deleting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 835
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    .line 836
    sget-boolean v0, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v0, :cond_4

    .line 837
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resuming download for id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-wide v2, v2, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", BUT starting from scratch again: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    :cond_4
    :goto_0
    return-void

    .line 840
    :cond_5
    iget-object v3, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-object v3, v3, Lcom/android/providers/downloads/DownloadInfo;->mETag:Ljava/lang/String;

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-boolean v3, v3, Lcom/android/providers/downloads/DownloadInfo;->mNoIntegrity:Z

    if-nez v3, :cond_7

    .line 842
    sget-boolean v1, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v1, :cond_6

    .line 843
    const-string v1, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setupDestinationFile() unable to resume download, deleting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    :cond_6
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 847
    new-instance v0, Lcom/android/providers/downloads/StopRequestException;

    const/16 v1, 0x1e9

    const-string v2, "Trying to resume a download that can\'t be resumed"

    invoke-direct {v0, v1, v2}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 851
    :cond_7
    sget-boolean v0, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v0, :cond_8

    .line 852
    const-string v0, "DownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resuming download for id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-wide v4, v4, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", and starting with file of length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    :cond_8
    iput-wide v1, p1, Lcom/android/providers/downloads/DownloadThread$State;->mCurrentBytes:J

    .line 856
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-wide v0, v0, Lcom/android/providers/downloads/DownloadInfo;->mTotalBytes:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_9

    .line 857
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-wide v0, v0, Lcom/android/providers/downloads/DownloadInfo;->mTotalBytes:J

    iput-wide v0, p1, Lcom/android/providers/downloads/DownloadThread$State;->mContentLength:J

    .line 859
    :cond_9
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadInfo;->mETag:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/providers/downloads/DownloadThread$State;->mHeaderETag:Ljava/lang/String;

    .line 860
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/providers/downloads/DownloadThread$State;->mContinuingDownload:Z

    .line 861
    sget-boolean v0, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v0, :cond_4

    .line 862
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resuming download for id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-wide v2, v2, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", state.mCurrentBytes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/providers/downloads/DownloadThread$State;->mCurrentBytes:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", and setting mContinuingDownload to true: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private transferData(Lcom/android/providers/downloads/DownloadThread$State;Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 6
    .parameter "state"
    .parameter "in"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/StopRequestException;
        }
    .end annotation

    .prologue
    .line 509
    const/16 v2, 0x1000

    new-array v1, v2, [B

    .line 511
    .local v1, data:[B
    :goto_0
    invoke-direct {p0, p1, v1, p2}, Lcom/android/providers/downloads/DownloadThread;->readFromResponse(Lcom/android/providers/downloads/DownloadThread$State;[BLjava/io/InputStream;)I

    move-result v0

    .line 512
    .local v0, bytesRead:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 513
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadThread;->handleEndOfStream(Lcom/android/providers/downloads/DownloadThread$State;)V

    .line 514
    return-void

    .line 517
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p1, Lcom/android/providers/downloads/DownloadThread$State;->mGotData:Z

    .line 518
    invoke-direct {p0, p1, v1, v0, p3}, Lcom/android/providers/downloads/DownloadThread;->writeDataToDestination(Lcom/android/providers/downloads/DownloadThread$State;[BILjava/io/OutputStream;)V

    .line 519
    iget-wide v2, p1, Lcom/android/providers/downloads/DownloadThread$State;->mCurrentBytes:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/providers/downloads/DownloadThread$State;->mCurrentBytes:J

    .line 520
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadThread;->reportProgress(Lcom/android/providers/downloads/DownloadThread$State;)V

    .line 522
    sget-boolean v2, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v2, :cond_1

    .line 523
    const-string v2, "DownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "downloaded "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p1, Lcom/android/providers/downloads/DownloadThread$State;->mCurrentBytes:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-object v4, v4, Lcom/android/providers/downloads/DownloadInfo;->mUri:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadThread;->checkPausedOrCanceled(Lcom/android/providers/downloads/DownloadThread$State;)V

    goto :goto_0
.end method

.method private transferData(Lcom/android/providers/downloads/DownloadThread$State;Ljava/net/HttpURLConnection;)V
    .locals 18
    .parameter "state"
    .parameter "conn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/StopRequestException;
        }
    .end annotation

    .prologue
    .line 391
    const/4 v3, 0x0

    .line 392
    .local v3, drmClient:Landroid/drm/DrmManagerClient;
    const/4 v7, 0x0

    .line 393
    .local v7, in:Ljava/io/InputStream;
    const/4 v10, 0x0

    .line 394
    .local v10, out:Ljava/io/OutputStream;
    const/4 v12, 0x0

    .line 397
    .local v12, outFd:Ljava/io/FileDescriptor;
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 403
    :try_start_1
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/providers/downloads/DownloadThread$State;->mMimeType:Ljava/lang/String;

    invoke-static {v14}, Lcom/android/providers/downloads/DownloadDrmHelper;->isDrmConvertNeeded(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 404
    new-instance v4, Landroid/drm/DrmManagerClient;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    invoke-direct {v4, v14}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 405
    .end local v3           #drmClient:Landroid/drm/DrmManagerClient;
    .local v4, drmClient:Landroid/drm/DrmManagerClient;
    :try_start_2
    new-instance v6, Ljava/io/RandomAccessFile;

    new-instance v14, Ljava/io/File;

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-direct {v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v15, "rw"

    invoke-direct {v6, v14, v15}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 407
    .local v6, file:Ljava/io/RandomAccessFile;
    new-instance v11, Landroid/drm/DrmOutputStream;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/providers/downloads/DownloadThread$State;->mMimeType:Ljava/lang/String;

    invoke-direct {v11, v4, v6, v14}, Landroid/drm/DrmOutputStream;-><init>(Landroid/drm/DrmManagerClient;Ljava/io/RandomAccessFile;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    .line 408
    .end local v10           #out:Ljava/io/OutputStream;
    .local v11, out:Ljava/io/OutputStream;
    :try_start_3
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8

    move-result-object v12

    move-object v10, v11

    .end local v11           #out:Ljava/io/OutputStream;
    .restart local v10       #out:Ljava/io/OutputStream;
    move-object v3, v4

    .line 419
    .end local v4           #drmClient:Landroid/drm/DrmManagerClient;
    .end local v6           #file:Ljava/io/RandomAccessFile;
    .restart local v3       #drmClient:Landroid/drm/DrmManagerClient;
    :goto_0
    :try_start_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v7, v10}, Lcom/android/providers/downloads/DownloadThread;->transferData(Lcom/android/providers/downloads/DownloadThread$State;Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 422
    :try_start_5
    instance-of v14, v10, Landroid/drm/DrmOutputStream;

    if-eqz v14, :cond_0

    .line 423
    move-object v0, v10

    check-cast v0, Landroid/drm/DrmOutputStream;

    move-object v14, v0

    invoke-virtual {v14}, Landroid/drm/DrmOutputStream;->finish()V

    .line 429
    new-instance v6, Ljava/io/File;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-direct {v6, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 430
    .local v6, file:Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/providers/downloads/DownloadThread$State;->mMimeType:Ljava/lang/String;

    invoke-static {v14, v6, v15}, Lcom/android/providers/downloads/DownloadDrmHelper;->getOriginalMimeType(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 432
    .local v9, mimetype:Ljava/lang/String;
    if-eqz v9, :cond_0

    .line 433
    invoke-static {v9}, Lcom/android/providers/downloads/DownloadDrmHelper;->checkMimetypeTable(Ljava/lang/String;)Z

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_9

    .line 434
    const-string v14, "DownloadManager"

    const-string v15, "Install DRM FL content into DrmProvider"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Lcom/android/providers/downloads/DownloadDrmHelper;->TransferDrmFile(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .line 437
    .local v8, item:Landroid/content/Intent;
    if-eqz v8, :cond_8

    .line 438
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-direct {v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    .line 439
    invoke-virtual {v8}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    iput-object v14, v0, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    .line 440
    invoke-virtual {v8}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    iput-object v14, v0, Lcom/android/providers/downloads/DownloadThread$State;->mMimeType:Ljava/lang/String;

    .line 441
    const-string v14, "deleteUri"

    invoke-virtual {v8, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 447
    .local v2, deletePath:Ljava/lang/String;
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 448
    .local v13, values:Landroid/content/ContentValues;
    const-string v14, "scanned"

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 449
    const-string v14, "mediaprovider_uri"

    invoke-virtual {v13, v14, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    invoke-virtual {v15}, Lcom/android/providers/downloads/DownloadInfo;->getAllDownloadsUri()Landroid/net/Uri;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v14, v15, v13, v0, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 466
    .end local v2           #deletePath:Ljava/lang/String;
    .end local v6           #file:Ljava/io/File;
    .end local v8           #item:Landroid/content/Intent;
    .end local v9           #mimetype:Ljava/lang/String;
    .end local v13           #values:Landroid/content/ContentValues;
    :cond_0
    :goto_1
    if-eqz v3, :cond_1

    .line 467
    invoke-virtual {v3}, Landroid/drm/DrmManagerClient;->release()V

    .line 470
    :cond_1
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 473
    if-eqz v10, :cond_2

    :try_start_6
    invoke-virtual {v10}, Ljava/io/OutputStream;->flush()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 474
    :cond_2
    if-eqz v12, :cond_3

    :try_start_7
    invoke-virtual {v12}, Ljava/io/FileDescriptor;->sync()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 477
    :cond_3
    :goto_2
    invoke-static {v10}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 480
    return-void

    .line 398
    :catch_0
    move-exception v5

    .line 399
    .local v5, e:Ljava/io/IOException;
    :try_start_8
    new-instance v14, Lcom/android/providers/downloads/StopRequestException;

    const/16 v15, 0x1ef

    invoke-direct {v14, v15, v5}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/Throwable;)V

    throw v14
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 466
    .end local v5           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v14

    :goto_3
    if-eqz v3, :cond_4

    .line 467
    invoke-virtual {v3}, Landroid/drm/DrmManagerClient;->release()V

    .line 470
    :cond_4
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 473
    if-eqz v10, :cond_5

    :try_start_9
    invoke-virtual {v10}, Ljava/io/OutputStream;->flush()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 474
    :cond_5
    if-eqz v12, :cond_6

    :try_start_a
    invoke-virtual {v12}, Ljava/io/FileDescriptor;->sync()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 477
    :cond_6
    :goto_4
    invoke-static {v10}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 466
    throw v14

    .line 410
    :cond_7
    :try_start_b
    new-instance v11, Ljava/io/FileOutputStream;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    const/4 v15, 0x1

    invoke-direct {v11, v14, v15}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1

    .line 411
    .end local v10           #out:Ljava/io/OutputStream;
    .restart local v11       #out:Ljava/io/OutputStream;
    :try_start_c
    move-object v0, v11

    check-cast v0, Ljava/io/FileOutputStream;

    move-object v14, v0

    invoke-virtual {v14}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    move-result-object v12

    move-object v10, v11

    .end local v11           #out:Ljava/io/OutputStream;
    .restart local v10       #out:Ljava/io/OutputStream;
    goto/16 :goto_0

    .line 413
    :catch_1
    move-exception v5

    .line 414
    .restart local v5       #e:Ljava/io/IOException;
    :goto_5
    :try_start_d
    new-instance v14, Lcom/android/providers/downloads/StopRequestException;

    const/16 v15, 0x1ec

    invoke-direct {v14, v15, v5}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/Throwable;)V

    throw v14
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 454
    .end local v5           #e:Ljava/io/IOException;
    .restart local v6       #file:Ljava/io/File;
    .restart local v8       #item:Landroid/content/Intent;
    .restart local v9       #mimetype:Ljava/lang/String;
    :cond_8
    :try_start_e
    const-string v14, "DownloadManager"

    const-string v15, "unable to add file to DrmProvider"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_2

    goto :goto_1

    .line 461
    .end local v6           #file:Ljava/io/File;
    .end local v8           #item:Landroid/content/Intent;
    .end local v9           #mimetype:Ljava/lang/String;
    :catch_2
    move-exception v5

    .line 462
    .restart local v5       #e:Ljava/io/IOException;
    :try_start_f
    new-instance v14, Lcom/android/providers/downloads/StopRequestException;

    const/16 v15, 0x1ec

    invoke-direct {v14, v15, v5}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/Throwable;)V

    throw v14
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 457
    .end local v5           #e:Ljava/io/IOException;
    .restart local v6       #file:Ljava/io/File;
    .restart local v9       #mimetype:Ljava/lang/String;
    :cond_9
    :try_start_10
    move-object/from16 v0, p1

    iput-object v9, v0, Lcom/android/providers/downloads/DownloadThread$State;->mMimeType:Ljava/lang/String;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_2

    goto :goto_1

    .line 477
    .end local v6           #file:Ljava/io/File;
    .end local v9           #mimetype:Ljava/lang/String;
    :catchall_1
    move-exception v14

    invoke-static {v10}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v14

    :catchall_2
    move-exception v14

    invoke-static {v10}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v14

    .line 475
    :catch_3
    move-exception v14

    goto :goto_2

    :catch_4
    move-exception v14

    goto :goto_2

    :catch_5
    move-exception v15

    goto :goto_4

    :catch_6
    move-exception v15

    goto :goto_4

    .line 466
    .end local v3           #drmClient:Landroid/drm/DrmManagerClient;
    .restart local v4       #drmClient:Landroid/drm/DrmManagerClient;
    :catchall_3
    move-exception v14

    move-object v3, v4

    .end local v4           #drmClient:Landroid/drm/DrmManagerClient;
    .restart local v3       #drmClient:Landroid/drm/DrmManagerClient;
    goto :goto_3

    .end local v3           #drmClient:Landroid/drm/DrmManagerClient;
    .end local v10           #out:Ljava/io/OutputStream;
    .restart local v4       #drmClient:Landroid/drm/DrmManagerClient;
    .local v6, file:Ljava/io/RandomAccessFile;
    .restart local v11       #out:Ljava/io/OutputStream;
    :catchall_4
    move-exception v14

    move-object v10, v11

    .end local v11           #out:Ljava/io/OutputStream;
    .restart local v10       #out:Ljava/io/OutputStream;
    move-object v3, v4

    .end local v4           #drmClient:Landroid/drm/DrmManagerClient;
    .restart local v3       #drmClient:Landroid/drm/DrmManagerClient;
    goto :goto_3

    .end local v6           #file:Ljava/io/RandomAccessFile;
    .end local v10           #out:Ljava/io/OutputStream;
    .restart local v11       #out:Ljava/io/OutputStream;
    :catchall_5
    move-exception v14

    move-object v10, v11

    .end local v11           #out:Ljava/io/OutputStream;
    .restart local v10       #out:Ljava/io/OutputStream;
    goto :goto_3

    .line 413
    .end local v3           #drmClient:Landroid/drm/DrmManagerClient;
    .restart local v4       #drmClient:Landroid/drm/DrmManagerClient;
    :catch_7
    move-exception v5

    move-object v3, v4

    .end local v4           #drmClient:Landroid/drm/DrmManagerClient;
    .restart local v3       #drmClient:Landroid/drm/DrmManagerClient;
    goto :goto_5

    .end local v3           #drmClient:Landroid/drm/DrmManagerClient;
    .end local v10           #out:Ljava/io/OutputStream;
    .restart local v4       #drmClient:Landroid/drm/DrmManagerClient;
    .restart local v6       #file:Ljava/io/RandomAccessFile;
    .restart local v11       #out:Ljava/io/OutputStream;
    :catch_8
    move-exception v5

    move-object v10, v11

    .end local v11           #out:Ljava/io/OutputStream;
    .restart local v10       #out:Ljava/io/OutputStream;
    move-object v3, v4

    .end local v4           #drmClient:Landroid/drm/DrmManagerClient;
    .restart local v3       #drmClient:Landroid/drm/DrmManagerClient;
    goto :goto_5

    .end local v6           #file:Ljava/io/RandomAccessFile;
    .end local v10           #out:Ljava/io/OutputStream;
    .restart local v11       #out:Ljava/io/OutputStream;
    :catch_9
    move-exception v5

    move-object v10, v11

    .end local v11           #out:Ljava/io/OutputStream;
    .restart local v10       #out:Ljava/io/OutputStream;
    goto :goto_5
.end method

.method private updateDatabaseFromHeaders(Lcom/android/providers/downloads/DownloadThread$State;)V
    .locals 5
    .parameter "state"

    .prologue
    const/4 v4, 0x0

    .line 731
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 732
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "_data"

    iget-object v2, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    iget-object v1, p1, Lcom/android/providers/downloads/DownloadThread$State;->mHeaderETag:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 734
    const-string v1, "etag"

    iget-object v2, p1, Lcom/android/providers/downloads/DownloadThread$State;->mHeaderETag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    :cond_0
    iget-object v1, p1, Lcom/android/providers/downloads/DownloadThread$State;->mMimeType:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 737
    const-string v1, "mimetype"

    iget-object v2, p1, Lcom/android/providers/downloads/DownloadThread$State;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    :cond_1
    const-string v1, "total_bytes"

    iget-object v2, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-wide v2, v2, Lcom/android/providers/downloads/DownloadInfo;->mTotalBytes:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 740
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    invoke-virtual {v2}, Lcom/android/providers/downloads/DownloadInfo;->getAllDownloadsUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 741
    return-void
.end method

.method private userAgent()Ljava/lang/String;
    .locals 2

    .prologue
    .line 114
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-object v0, v1, Lcom/android/providers/downloads/DownloadInfo;->mUserAgent:Ljava/lang/String;

    .line 115
    .local v0, userAgent:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 116
    sget-object v0, Lcom/android/providers/downloads/Constants;->DEFAULT_USER_AGENT:Ljava/lang/String;

    .line 118
    :cond_0
    return-object v0
.end method

.method private writeDataToDestination(Lcom/android/providers/downloads/DownloadThread$State;[BILjava/io/OutputStream;)V
    .locals 7
    .parameter "state"
    .parameter "data"
    .parameter "bytesRead"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/StopRequestException;
        }
    .end annotation

    .prologue
    .line 619
    iget-object v2, p0, Lcom/android/providers/downloads/DownloadThread;->mStorageManager:Lcom/android/providers/downloads/StorageManager;

    iget-object v3, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget v3, v3, Lcom/android/providers/downloads/DownloadInfo;->mDestination:I

    iget-object v4, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    int-to-long v5, p3

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/providers/downloads/StorageManager;->verifySpaceBeforeWritingToFile(ILjava/lang/String;J)V

    .line 622
    const/4 v1, 0x0

    .line 625
    .local v1, forceVerified:Z
    :goto_0
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p4, p2, v2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 626
    return-void

    .line 627
    :catch_0
    move-exception v0

    .line 629
    .local v0, ex:Ljava/io/IOException;
    if-nez v1, :cond_0

    .line 631
    iget-object v2, p0, Lcom/android/providers/downloads/DownloadThread;->mStorageManager:Lcom/android/providers/downloads/StorageManager;

    iget-object v3, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget v3, v3, Lcom/android/providers/downloads/DownloadInfo;->mDestination:I

    iget-object v4, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    int-to-long v5, p3

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/providers/downloads/StorageManager;->verifySpace(ILjava/lang/String;J)V

    .line 632
    const/4 v1, 0x1

    goto :goto_0

    .line 634
    :cond_0
    new-instance v2, Lcom/android/providers/downloads/StopRequestException;

    const/16 v3, 0x1ec

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to write data: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 171
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 173
    :try_start_0
    invoke-direct {p0}, Lcom/android/providers/downloads/DownloadThread;->runInternal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadThread;->mNotifier:Lcom/android/providers/downloads/DownloadNotifier;

    iget-object v1, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-wide v1, v1, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/android/providers/downloads/DownloadNotifier;->notifyDownloadSpeed(JJ)V

    .line 177
    return-void

    .line 175
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/providers/downloads/DownloadThread;->mNotifier:Lcom/android/providers/downloads/DownloadNotifier;

    iget-object v2, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-wide v2, v2, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/providers/downloads/DownloadNotifier;->notifyDownloadSpeed(JJ)V

    throw v0
.end method
