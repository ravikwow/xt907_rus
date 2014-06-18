.class public Lcom/android/providers/downloads/DownloadInfo;
.super Ljava/lang/Object;
.source "DownloadInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/downloads/DownloadInfo$1;,
        Lcom/android/providers/downloads/DownloadInfo$NetworkState;,
        Lcom/android/providers/downloads/DownloadInfo$Reader;
    }
.end annotation


# instance fields
.field public mAllowMetered:Z

.field public mAllowRoaming:Z

.field public mAllowedNetworkTypes:I

.field public mBypassRecommendedSizeLimit:I

.field public mClass:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field public mControl:I

.field public mCookies:Ljava/lang/String;

.field public mCurrentBytes:J

.field public mDeleted:Z

.field public mDescription:Ljava/lang/String;

.field public mDestination:I

.field public mETag:Ljava/lang/String;

.field public mExtras:Ljava/lang/String;

.field public mFileName:Ljava/lang/String;

.field public mFuzz:I

.field public mHint:Ljava/lang/String;

.field public mId:J

.field public mIsPublicApi:Z

.field public mLastMod:J

.field public mMediaProviderUri:Ljava/lang/String;

.field public mMediaScanned:I

.field public mMimeType:Ljava/lang/String;

.field public mNoIntegrity:Z

.field private final mNotifier:Lcom/android/providers/downloads/DownloadNotifier;

.field public mNumFailed:I

.field public mPackage:Ljava/lang/String;

.field public mReferer:Ljava/lang/String;

.field private mRequestHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public mRetryAfter:I

.field public mStatus:I

.field private final mStorageManager:Lcom/android/providers/downloads/StorageManager;

.field private mSubmittedTask:Ljava/util/concurrent/Future;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field

.field private final mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

.field private mTask:Lcom/android/providers/downloads/DownloadThread;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field public mTitle:Ljava/lang/String;

.field public mTotalBytes:J

.field public mUid:I

.field public mUri:Ljava/lang/String;

.field public mUserAgent:Ljava/lang/String;

.field public mVisibility:I


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/providers/downloads/SystemFacade;Lcom/android/providers/downloads/StorageManager;Lcom/android/providers/downloads/DownloadNotifier;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "systemFacade"    # Lcom/android/providers/downloads/SystemFacade;
    .param p3, "storageManager"    # Lcom/android/providers/downloads/StorageManager;
    .param p4, "notifier"    # Lcom/android/providers/downloads/DownloadNotifier;

    .prologue
    .line 261
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 243
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mRequestHeaders:Ljava/util/List;

    .line 262
    iput-object p1, p0, Lcom/android/providers/downloads/DownloadInfo;->mContext:Landroid/content/Context;

    .line 263
    iput-object p2, p0, Lcom/android/providers/downloads/DownloadInfo;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    .line 264
    iput-object p3, p0, Lcom/android/providers/downloads/DownloadInfo;->mStorageManager:Lcom/android/providers/downloads/StorageManager;

    .line 265
    iput-object p4, p0, Lcom/android/providers/downloads/DownloadInfo;->mNotifier:Lcom/android/providers/downloads/DownloadNotifier;

    .line 266
    sget-object v0, Lcom/android/providers/downloads/Helpers;->sRandom:Ljava/util/Random;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mFuzz:I

    .line 267
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/providers/downloads/SystemFacade;Lcom/android/providers/downloads/StorageManager;Lcom/android/providers/downloads/DownloadNotifier;Lcom/android/providers/downloads/DownloadInfo$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Lcom/android/providers/downloads/SystemFacade;
    .param p3, "x2"    # Lcom/android/providers/downloads/StorageManager;
    .param p4, "x3"    # Lcom/android/providers/downloads/DownloadNotifier;
    .param p5, "x4"    # Lcom/android/providers/downloads/DownloadInfo$1;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/providers/downloads/DownloadInfo;-><init>(Landroid/content/Context;Lcom/android/providers/downloads/SystemFacade;Lcom/android/providers/downloads/StorageManager;Lcom/android/providers/downloads/DownloadNotifier;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/providers/downloads/DownloadInfo;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/providers/downloads/DownloadInfo;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mRequestHeaders:Ljava/util/List;

    return-object v0
.end method

.method private checkIsNetworkTypeAllowed(I)Lcom/android/providers/downloads/DownloadInfo$NetworkState;
    .locals 4
    .param p1, "networkType"    # I

    .prologue
    .line 396
    iget-boolean v2, p0, Lcom/android/providers/downloads/DownloadInfo;->mIsPublicApi:Z

    if-eqz v2, :cond_1

    .line 397
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadInfo;->translateNetworkTypeToApiFlag(I)I

    move-result v1

    .line 398
    .local v1, "flag":I
    iget v2, p0, Lcom/android/providers/downloads/DownloadInfo;->mAllowedNetworkTypes:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    .line 399
    .local v0, "allowAllNetworkTypes":Z
    :goto_0
    if-nez v0, :cond_1

    iget v2, p0, Lcom/android/providers/downloads/DownloadInfo;->mAllowedNetworkTypes:I

    and-int/2addr v2, v1

    if-nez v2, :cond_1

    .line 400
    sget-object v2, Lcom/android/providers/downloads/DownloadInfo$NetworkState;->TYPE_DISALLOWED_BY_REQUESTOR:Lcom/android/providers/downloads/DownloadInfo$NetworkState;

    .line 403
    .end local v0    # "allowAllNetworkTypes":Z
    .end local v1    # "flag":I
    :goto_1
    return-object v2

    .line 398
    .restart local v1    # "flag":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 403
    .end local v1    # "flag":I
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadInfo;->checkSizeAllowedForNetwork(I)Lcom/android/providers/downloads/DownloadInfo$NetworkState;

    move-result-object v2

    goto :goto_1
.end method

.method private checkSizeAllowedForNetwork(I)Lcom/android/providers/downloads/DownloadInfo$NetworkState;
    .locals 6
    .param p1, "networkType"    # I

    .prologue
    .line 431
    iget-wide v2, p0, Lcom/android/providers/downloads/DownloadInfo;->mTotalBytes:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 432
    sget-object v2, Lcom/android/providers/downloads/DownloadInfo$NetworkState;->OK:Lcom/android/providers/downloads/DownloadInfo$NetworkState;

    .line 448
    :goto_0
    return-object v2

    .line 434
    :cond_0
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 435
    sget-object v2, Lcom/android/providers/downloads/DownloadInfo$NetworkState;->OK:Lcom/android/providers/downloads/DownloadInfo$NetworkState;

    goto :goto_0

    .line 437
    :cond_1
    iget-object v2, p0, Lcom/android/providers/downloads/DownloadInfo;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    invoke-interface {v2}, Lcom/android/providers/downloads/SystemFacade;->getMaxBytesOverMobile()Ljava/lang/Long;

    move-result-object v0

    .line 438
    .local v0, "maxBytesOverMobile":Ljava/lang/Long;
    if-eqz v0, :cond_2

    iget-wide v2, p0, Lcom/android/providers/downloads/DownloadInfo;->mTotalBytes:J

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 439
    sget-object v2, Lcom/android/providers/downloads/DownloadInfo$NetworkState;->UNUSABLE_DUE_TO_SIZE:Lcom/android/providers/downloads/DownloadInfo$NetworkState;

    goto :goto_0

    .line 441
    :cond_2
    iget v2, p0, Lcom/android/providers/downloads/DownloadInfo;->mBypassRecommendedSizeLimit:I

    if-nez v2, :cond_3

    .line 442
    iget-object v2, p0, Lcom/android/providers/downloads/DownloadInfo;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    invoke-interface {v2}, Lcom/android/providers/downloads/SystemFacade;->getRecommendedMaxBytesOverMobile()Ljava/lang/Long;

    move-result-object v1

    .line 443
    .local v1, "recommendedMaxBytesOverMobile":Ljava/lang/Long;
    if-eqz v1, :cond_3

    iget-wide v2, p0, Lcom/android/providers/downloads/DownloadInfo;->mTotalBytes:J

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    .line 445
    sget-object v2, Lcom/android/providers/downloads/DownloadInfo$NetworkState;->RECOMMENDED_UNUSABLE_DUE_TO_SIZE:Lcom/android/providers/downloads/DownloadInfo$NetworkState;

    goto :goto_0

    .line 448
    .end local v1    # "recommendedMaxBytesOverMobile":Ljava/lang/Long;
    :cond_3
    sget-object v2, Lcom/android/providers/downloads/DownloadInfo$NetworkState;->OK:Lcom/android/providers/downloads/DownloadInfo$NetworkState;

    goto :goto_0
.end method

.method private isReadyToDownload()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 319
    iget v4, p0, Lcom/android/providers/downloads/DownloadInfo;->mControl:I

    if-ne v4, v2, :cond_0

    .line 345
    :goto_0
    :sswitch_0
    return v3

    .line 323
    :cond_0
    iget v4, p0, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_1
    move v3, v2

    .line 328
    goto :goto_0

    .line 332
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/providers/downloads/DownloadInfo;->checkCanUseNetwork()Lcom/android/providers/downloads/DownloadInfo$NetworkState;

    move-result-object v4

    sget-object v5, Lcom/android/providers/downloads/DownloadInfo$NetworkState;->OK:Lcom/android/providers/downloads/DownloadInfo$NetworkState;

    if-ne v4, v5, :cond_1

    :goto_1
    move v3, v2

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    .line 336
    :sswitch_3
    iget-object v4, p0, Lcom/android/providers/downloads/DownloadInfo;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    invoke-interface {v4}, Lcom/android/providers/downloads/SystemFacade;->currentTimeMillis()J

    move-result-wide v0

    .line 337
    .local v0, "now":J
    invoke-virtual {p0, v0, v1}, Lcom/android/providers/downloads/DownloadInfo;->restartTime(J)J

    move-result-wide v4

    cmp-long v4, v4, v0

    if-gtz v4, :cond_2

    :goto_2
    move v3, v2

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_2

    .line 340
    .end local v0    # "now":J
    :sswitch_4
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0

    .line 323
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0xbe -> :sswitch_1
        0xc0 -> :sswitch_1
        0xc2 -> :sswitch_3
        0xc3 -> :sswitch_2
        0xc4 -> :sswitch_2
        0xc6 -> :sswitch_0
        0xc7 -> :sswitch_4
    .end sparse-switch
.end method

.method private isRoamingAllowed()Z
    .locals 2

    .prologue
    .line 383
    iget-boolean v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mIsPublicApi:Z

    if-eqz v0, :cond_0

    .line 384
    iget-boolean v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mAllowRoaming:Z

    .line 386
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mDestination:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static queryDownloadStatus(Landroid/content/ContentResolver;J)I
    .locals 7
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "id"    # J

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 597
    sget-object v0, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "status"

    aput-object v0, v2, v4

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 601
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 602
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 609
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :goto_0
    return v0

    .line 606
    :cond_0
    const/16 v0, 0xbe

    .line 609
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private translateNetworkTypeToApiFlag(I)I
    .locals 1
    .param p1, "networkType"    # I

    .prologue
    .line 411
    sparse-switch p1, :sswitch_data_0

    .line 422
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 413
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 416
    :sswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 419
    :sswitch_2
    const/4 v0, 0x4

    goto :goto_0

    .line 411
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x7 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public checkCanUseNetwork()Lcom/android/providers/downloads/DownloadInfo$NetworkState;
    .locals 3

    .prologue
    .line 366
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    iget v2, p0, Lcom/android/providers/downloads/DownloadInfo;->mUid:I

    invoke-interface {v1, v2}, Lcom/android/providers/downloads/SystemFacade;->getActiveNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 367
    .local v0, "info":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 368
    :cond_0
    sget-object v1, Lcom/android/providers/downloads/DownloadInfo$NetworkState;->NO_CONNECTION:Lcom/android/providers/downloads/DownloadInfo$NetworkState;

    .line 379
    :goto_0
    return-object v1

    .line 370
    :cond_1
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->BLOCKED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 371
    sget-object v1, Lcom/android/providers/downloads/DownloadInfo$NetworkState;->BLOCKED:Lcom/android/providers/downloads/DownloadInfo$NetworkState;

    goto :goto_0

    .line 373
    :cond_2
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    invoke-interface {v1}, Lcom/android/providers/downloads/SystemFacade;->isNetworkRoaming()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/android/providers/downloads/DownloadInfo;->isRoamingAllowed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 374
    sget-object v1, Lcom/android/providers/downloads/DownloadInfo$NetworkState;->CANNOT_USE_ROAMING:Lcom/android/providers/downloads/DownloadInfo$NetworkState;

    goto :goto_0

    .line 376
    :cond_3
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    invoke-interface {v1}, Lcom/android/providers/downloads/SystemFacade;->isActiveNetworkMetered()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mAllowMetered:Z

    if-nez v1, :cond_4

    .line 377
    sget-object v1, Lcom/android/providers/downloads/DownloadInfo$NetworkState;->TYPE_DISALLOWED_BY_REQUESTOR:Lcom/android/providers/downloads/DownloadInfo$NetworkState;

    goto :goto_0

    .line 379
    :cond_4
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/providers/downloads/DownloadInfo;->checkIsNetworkTypeAllowed(I)Lcom/android/providers/downloads/DownloadInfo$NetworkState;

    move-result-object v1

    goto :goto_0
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 3
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .prologue
    .line 510
    const-string v0, "DownloadInfo:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 511
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 513
    const-string v0, "mId"

    iget-wide v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 514
    const-string v0, "mLastMod"

    iget-wide v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mLastMod:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 515
    const-string v0, "mPackage"

    iget-object v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 516
    const-string v0, "mUid"

    iget v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mUid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 517
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 519
    const-string v0, "mUri"

    iget-object v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mUri:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 520
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 522
    const-string v0, "mMimeType"

    iget-object v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mMimeType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 523
    const-string v1, "mCookies"

    iget-object v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mCookies:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "yes"

    :goto_0
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 524
    const-string v1, "mReferer"

    iget-object v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mReferer:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "yes"

    :goto_1
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 525
    const-string v0, "mUserAgent"

    iget-object v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mUserAgent:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 526
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 528
    const-string v0, "mFileName"

    iget-object v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 529
    const-string v0, "mDestination"

    iget v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mDestination:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 530
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 532
    const-string v0, "mStatus"

    iget v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    invoke-static {v1}, Landroid/provider/Downloads$Impl;->statusToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 533
    const-string v0, "mCurrentBytes"

    iget-wide v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mCurrentBytes:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 534
    const-string v0, "mTotalBytes"

    iget-wide v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mTotalBytes:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 535
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 537
    const-string v0, "mNumFailed"

    iget v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mNumFailed:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 538
    const-string v0, "mRetryAfter"

    iget v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mRetryAfter:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 539
    const-string v0, "mETag"

    iget-object v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mETag:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 540
    const-string v0, "mIsPublicApi"

    iget-boolean v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mIsPublicApi:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 541
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 543
    const-string v0, "mAllowedNetworkTypes"

    iget v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mAllowedNetworkTypes:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 544
    const-string v0, "mAllowRoaming"

    iget-boolean v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mAllowRoaming:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 545
    const-string v0, "mAllowMetered"

    iget-boolean v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mAllowMetered:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    .line 546
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 548
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 549
    return-void

    .line 523
    :cond_0
    const-string v0, "no"

    goto/16 :goto_0

    .line 524
    :cond_1
    const-string v0, "no"

    goto/16 :goto_1
.end method

.method public getAllDownloadsUri()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 506
    sget-object v0, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mRequestHeaders:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMyDownloadsUri()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 502
    sget-object v0, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public nextActionMillis(J)J
    .locals 6
    .param p1, "now"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 559
    iget v4, p0, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    invoke-static {v4}, Landroid/provider/Downloads$Impl;->isStatusCompleted(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 560
    const-wide v2, 0x7fffffffffffffffL

    .line 569
    :cond_0
    :goto_0
    return-wide v2

    .line 562
    :cond_1
    iget v4, p0, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    const/16 v5, 0xc2

    if-ne v4, v5, :cond_0

    .line 565
    invoke-virtual {p0, p1, p2}, Lcom/android/providers/downloads/DownloadInfo;->restartTime(J)J

    move-result-wide v0

    .line 566
    .local v0, "when":J
    cmp-long v4, v0, p1

    if-lez v4, :cond_0

    .line 569
    sub-long v2, v0, p1

    goto :goto_0
.end method

.method notifyPauseDueToSize(Z)V
    .locals 3

    .prologue
    .line 584
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 585
    invoke-virtual {p0}, Lcom/android/providers/downloads/DownloadInfo;->getAllDownloadsUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 586
    const-class v1, Lcom/android/providers/downloads/SizeLimitActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/android/providers/downloads/SizeLimitActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 588
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 589
    const-string v1, "isWifiRequired"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 590
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 591
    return-void
.end method

.method public restartTime(J)J
    .locals 5
    .param p1, "now"    # J

    .prologue
    .line 304
    iget v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mNumFailed:I

    if-nez v0, :cond_0

    .line 310
    .end local p1    # "now":J
    :goto_0
    return-wide p1

    .line 307
    .restart local p1    # "now":J
    :cond_0
    iget v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mRetryAfter:I

    if-lez v0, :cond_1

    .line 308
    iget-wide v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mLastMod:J

    iget v2, p0, Lcom/android/providers/downloads/DownloadInfo;->mRetryAfter:I

    int-to-long v2, v2

    add-long p1, v0, v2

    goto :goto_0

    .line 310
    :cond_1
    iget-wide v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mLastMod:J

    iget v2, p0, Lcom/android/providers/downloads/DownloadInfo;->mFuzz:I

    add-int/lit16 v2, v2, 0x3e8

    mul-int/lit8 v2, v2, 0x1e

    const/4 v3, 0x1

    iget v4, p0, Lcom/android/providers/downloads/DownloadInfo;->mNumFailed:I

    add-int/lit8 v4, v4, -0x1

    shl-int/2addr v3, v4

    mul-int/2addr v2, v3

    int-to-long v2, v2

    add-long p1, v0, v2

    goto :goto_0
.end method

.method public sendIntentIfRequested()V
    .locals 4

    .prologue
    .line 274
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mPackage:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 279
    :cond_1
    iget-boolean v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mIsPublicApi:Z

    if-eqz v1, :cond_2

    .line 280
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 281
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    const-string v1, "extra_download_id"

    iget-wide v2, p0, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 297
    :goto_1
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    invoke-interface {v1, v0}, Lcom/android/providers/downloads/SystemFacade;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 284
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mClass:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 287
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DOWNLOAD_COMPLETED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 288
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mPackage:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/providers/downloads/DownloadInfo;->mClass:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 289
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mExtras:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 290
    const-string v1, "notificationextras"

    iget-object v2, p0, Lcom/android/providers/downloads/DownloadInfo;->mExtras:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 295
    :cond_3
    invoke-virtual {p0}, Lcom/android/providers/downloads/DownloadInfo;->getMyDownloadsUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_1
.end method

.method public shouldScanFile()Z
    .locals 2

    .prologue
    .line 576
    iget v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mMediaScanned:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mDestination:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mDestination:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mDestination:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    invoke-static {v0}, Landroid/provider/Downloads$Impl;->isStatusSuccess(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startDownloadIfReady(Ljava/util/concurrent/ExecutorService;)Z
    .locals 9
    .param p1, "executor"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    const/16 v1, 0xc0

    .line 459
    monitor-enter p0

    .line 460
    :try_start_0
    invoke-direct {p0}, Lcom/android/providers/downloads/DownloadInfo;->isReadyToDownload()Z

    move-result v7

    .line 461
    .local v7, "isReady":Z
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mSubmittedTask:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mSubmittedTask:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v6, 0x1

    .line 462
    .local v6, "isActive":Z
    :goto_0
    if-eqz v7, :cond_1

    if-nez v6, :cond_1

    .line 463
    iget v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    if-eq v0, v1, :cond_0

    .line 464
    const/16 v0, 0xc0

    iput v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    .line 465
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 466
    .local v8, "values":Landroid/content/ContentValues;
    const-string v0, "status"

    iget v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 467
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/providers/downloads/DownloadInfo;->getAllDownloadsUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v8, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 470
    .end local v8    # "values":Landroid/content/ContentValues;
    :cond_0
    new-instance v0, Lcom/android/providers/downloads/DownloadThread;

    iget-object v1, p0, Lcom/android/providers/downloads/DownloadInfo;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/providers/downloads/DownloadInfo;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    iget-object v4, p0, Lcom/android/providers/downloads/DownloadInfo;->mStorageManager:Lcom/android/providers/downloads/StorageManager;

    iget-object v5, p0, Lcom/android/providers/downloads/DownloadInfo;->mNotifier:Lcom/android/providers/downloads/DownloadNotifier;

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/downloads/DownloadThread;-><init>(Landroid/content/Context;Lcom/android/providers/downloads/SystemFacade;Lcom/android/providers/downloads/DownloadInfo;Lcom/android/providers/downloads/StorageManager;Lcom/android/providers/downloads/DownloadNotifier;)V

    iput-object v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mTask:Lcom/android/providers/downloads/DownloadThread;

    .line 472
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mTask:Lcom/android/providers/downloads/DownloadThread;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/downloads/DownloadInfo;->mSubmittedTask:Ljava/util/concurrent/Future;

    .line 474
    :cond_1
    monitor-exit p0

    return v7

    .line 461
    .end local v6    # "isActive":Z
    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .line 475
    .end local v7    # "isReady":Z
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public startScanIfReady(Lcom/android/providers/downloads/DownloadScanner;)Z
    .locals 2
    .param p1, "scanner"    # Lcom/android/providers/downloads/DownloadScanner;

    .prologue
    .line 485
    monitor-enter p0

    .line 486
    :try_start_0
    invoke-virtual {p0}, Lcom/android/providers/downloads/DownloadInfo;->shouldScanFile()Z

    move-result v0

    .line 487
    .local v0, "isReady":Z
    if-eqz v0, :cond_0

    .line 488
    invoke-virtual {p1, p0}, Lcom/android/providers/downloads/DownloadScanner;->requestScan(Lcom/android/providers/downloads/DownloadInfo;)V

    .line 490
    :cond_0
    monitor-exit p0

    return v0

    .line 491
    .end local v0    # "isReady":Z
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
