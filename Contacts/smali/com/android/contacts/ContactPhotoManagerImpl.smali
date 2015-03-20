.class Lcom/android/contacts/ContactPhotoManagerImpl;
.super Lcom/android/contacts/ContactPhotoManager;
.source "ContactPhotoManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/ContactPhotoManagerImpl$Request;,
        Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;,
        Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;
    }
.end annotation


# static fields
.field private static final COLUMNS:[Ljava/lang/String;

.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String;


# instance fields
.field private final mBitmapCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/Object;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mBitmapHolderCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/Object;",
            "Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mBitmapHolderCacheAllUnfresh:Z

.field private final mBitmapHolderCacheRedZoneBytes:I

.field private final mContext:Landroid/content/Context;

.field private final mFreshCacheOverwrite:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mLoaderThread:Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;

.field private mLoadingRequested:Z

.field private final mMainThreadHandler:Landroid/os/Handler;

.field private mPaused:Z

.field private final mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Landroid/widget/ImageView;",
            "Lcom/android/contacts/ContactPhotoManagerImpl$Request;",
            ">;"
        }
    .end annotation
.end field

.field private final mStaleCacheOverwrite:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 296
    new-array v0, v2, [Ljava/lang/String;

    sput-object v0, Lcom/android/contacts/ContactPhotoManagerImpl;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 298
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "data15"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/ContactPhotoManagerImpl;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 387
    invoke-direct {p0}, Lcom/android/contacts/ContactPhotoManager;-><init>()V

    .line 331
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mBitmapHolderCacheAllUnfresh:Z

    .line 349
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v3, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 355
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v3, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mMainThreadHandler:Landroid/os/Handler;

    .line 382
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v3, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mStaleCacheOverwrite:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 385
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v3, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mFreshCacheOverwrite:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 388
    iput-object p1, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mContext:Landroid/content/Context;

    .line 390
    invoke-static {}, Lcom/android/contacts/util/MemoryUtils;->getTotalMemorySize()J

    move-result-wide v3

    const-wide/32 v5, 0x28000000

    cmp-long v3, v3, v5

    if-ltz v3, :cond_0

    const/high16 v1, 0x3f800000

    .line 392
    .local v1, "cacheSizeAdjustment":F
    :goto_0
    const/high16 v3, 0x49d80000

    mul-float/2addr v3, v1

    float-to-int v0, v3

    .line 393
    .local v0, "bitmapCacheSize":I
    new-instance v3, Lcom/android/contacts/ContactPhotoManagerImpl$1;

    invoke-direct {v3, p0, v0}, Lcom/android/contacts/ContactPhotoManagerImpl$1;-><init>(Lcom/android/contacts/ContactPhotoManagerImpl;I)V

    iput-object v3, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mBitmapCache:Landroid/util/LruCache;

    .line 403
    const v3, 0x49f42400

    mul-float/2addr v3, v1

    float-to-int v2, v3

    .line 404
    .local v2, "holderCacheSize":I
    new-instance v3, Lcom/android/contacts/ContactPhotoManagerImpl$2;

    invoke-direct {v3, p0, v2}, Lcom/android/contacts/ContactPhotoManagerImpl$2;-><init>(Lcom/android/contacts/ContactPhotoManagerImpl;I)V

    iput-object v3, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    .line 414
    int-to-double v3, v2

    const-wide/high16 v5, 0x3fe8000000000000L

    mul-double/2addr v3, v5

    double-to-int v3, v3

    iput v3, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mBitmapHolderCacheRedZoneBytes:I

    .line 415
    const-string v3, "ContactPhotoManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cache adj: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    return-void

    .line 390
    .end local v0    # "bitmapCacheSize":I
    .end local v1    # "cacheSizeAdjustment":F
    .end local v2    # "holderCacheSize":I
    :cond_0
    const/high16 v1, 0x3f000000

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/android/contacts/ContactPhotoManagerImpl;)Landroid/util/LruCache;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/ContactPhotoManagerImpl;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/contacts/ContactPhotoManagerImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/ContactPhotoManagerImpl;

    .prologue
    .line 279
    iget v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mBitmapHolderCacheRedZoneBytes:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/contacts/ContactPhotoManagerImpl;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/ContactPhotoManagerImpl;
    .param p1, "x1"    # Ljava/util/Set;
    .param p2, "x2"    # Ljava/util/Set;
    .param p3, "x3"    # Ljava/util/Set;

    .prologue
    .line 279
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/ContactPhotoManagerImpl;->obtainPhotoIdsAndUrisToLoad(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    return-void
.end method

.method static synthetic access$400()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    sget-object v0, Lcom/android/contacts/ContactPhotoManagerImpl;->COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    sget-object v0, Lcom/android/contacts/ContactPhotoManagerImpl;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/contacts/ContactPhotoManagerImpl;Ljava/lang/Object;[BZI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/ContactPhotoManagerImpl;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # [B
    .param p3, "x3"    # Z
    .param p4, "x4"    # I

    .prologue
    .line 279
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/contacts/ContactPhotoManagerImpl;->cacheBitmap(Ljava/lang/Object;[BZI)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/contacts/ContactPhotoManagerImpl;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/ContactPhotoManagerImpl;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mMainThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private cacheBitmap(Ljava/lang/Object;[BZI)V
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "bytes"    # [B
    .param p3, "preloading"    # Z
    .param p4, "requestedExtent"    # I

    .prologue
    .line 799
    new-instance v0, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;

    if-nez p2, :cond_1

    const/4 v1, -0x1

    :goto_0
    invoke-direct {v0, p2, v1}, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;-><init>([BI)V

    .line 804
    .local v0, "holder":Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;
    if-nez p3, :cond_0

    .line 805
    invoke-static {v0, p4}, Lcom/android/contacts/ContactPhotoManagerImpl;->inflateBitmap(Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;I)V

    .line 808
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    invoke-virtual {v1, p1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 809
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mBitmapHolderCacheAllUnfresh:Z

    .line 810
    return-void

    .line 799
    .end local v0    # "holder":Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;
    :cond_1
    invoke-static {p2}, Lcom/android/contacts/util/BitmapUtil;->getSmallerExtentFromBytes([B)I

    move-result v1

    goto :goto_0
.end method

.method private static inflateBitmap(Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;I)V
    .locals 4
    .param p0, "holder"    # Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;
    .param p1, "requestedExtent"    # I

    .prologue
    .line 633
    iget v3, p0, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;->originalSmallerExtent:I

    invoke-static {v3, p1}, Lcom/android/contacts/util/BitmapUtil;->findOptimalSampleSize(II)I

    move-result v2

    .line 635
    .local v2, "sampleSize":I
    iget-object v1, p0, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;->bytes:[B

    .line 636
    .local v1, "bytes":[B
    if-eqz v1, :cond_0

    array-length v3, v1

    if-nez v3, :cond_1

    .line 681
    :cond_0
    :goto_0
    return-void

    .line 640
    :cond_1
    iget v3, p0, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;->decodedSampleSize:I

    if-ne v2, v3, :cond_2

    .line 643
    iget-object v3, p0, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;->bitmapRef:Ljava/lang/ref/Reference;

    if-eqz v3, :cond_2

    .line 644
    iget-object v3, p0, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;->bitmapRef:Ljava/lang/ref/Reference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    iput-object v3, p0, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    .line 645
    iget-object v3, p0, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_0

    .line 652
    :cond_2
    :try_start_0
    invoke-static {v1, v2}, Lcom/android/contacts/util/BitmapUtil;->decodeBitmapFromBytes([BI)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 670
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iput v2, p0, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;->decodedSampleSize:I

    .line 671
    iput-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    .line 672
    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;->bitmapRef:Ljava/lang/ref/Reference;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 678
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private loadCachedPhoto(Landroid/widget/ImageView;Lcom/android/contacts/ContactPhotoManagerImpl$Request;Z)Z
    .locals 10
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "request"    # Lcom/android/contacts/ContactPhotoManagerImpl$Request;
    .param p3, "fadeIn"    # Z

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 568
    iget-object v6, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    invoke-virtual {p2}, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;

    .line 569
    .local v2, "holder":Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;
    if-nez v2, :cond_0

    .line 571
    invoke-virtual {p2, p1}, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->applyDefaultImage(Landroid/widget/ImageView;)V

    move v6, v7

    .line 624
    :goto_0
    return v6

    .line 575
    :cond_0
    iget-object v6, v2, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;->bytes:[B

    if-nez v6, :cond_1

    .line 576
    invoke-virtual {p2, p1}, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->applyDefaultImage(Landroid/widget/ImageView;)V

    .line 577
    iget-boolean v6, v2, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;->fresh:Z

    goto :goto_0

    .line 580
    :cond_1
    iget-object v6, v2, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;->bitmapRef:Ljava/lang/ref/Reference;

    if-nez v6, :cond_2

    move-object v0, v8

    .line 581
    .local v0, "cachedBitmap":Landroid/graphics/Bitmap;
    :goto_1
    if-nez v0, :cond_4

    .line 582
    iget-object v6, v2, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;->bytes:[B

    array-length v6, v6

    const/16 v9, 0x2000

    if-ge v6, v9, :cond_3

    .line 584
    invoke-virtual {p2}, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->getRequestedExtent()I

    move-result v6

    invoke-static {v2, v6}, Lcom/android/contacts/ContactPhotoManagerImpl;->inflateBitmap(Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;I)V

    .line 585
    iget-object v0, v2, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    .line 586
    if-nez v0, :cond_4

    move v6, v7

    goto :goto_0

    .line 580
    .end local v0    # "cachedBitmap":Landroid/graphics/Bitmap;
    :cond_2
    iget-object v6, v2, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;->bitmapRef:Ljava/lang/ref/Reference;

    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Bitmap;

    move-object v0, v6

    goto :goto_1

    .line 590
    .restart local v0    # "cachedBitmap":Landroid/graphics/Bitmap;
    :cond_3
    invoke-virtual {p2, p1}, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->applyDefaultImage(Landroid/widget/ImageView;)V

    move v6, v7

    .line 591
    goto :goto_0

    .line 595
    :cond_4
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 596
    .local v4, "previousDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz p3, :cond_7

    if-eqz v4, :cond_7

    .line 597
    const/4 v6, 0x2

    new-array v3, v6, [Landroid/graphics/drawable/Drawable;

    .line 599
    .local v3, "layers":[Landroid/graphics/drawable/Drawable;
    instance-of v6, v4, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v6, :cond_6

    move-object v5, v4

    .line 600
    check-cast v5, Landroid/graphics/drawable/TransitionDrawable;

    .line 602
    .local v5, "previousTransitionDrawable":Landroid/graphics/drawable/TransitionDrawable;
    invoke-virtual {v5}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aput-object v6, v3, v7

    .line 607
    .end local v5    # "previousTransitionDrawable":Landroid/graphics/drawable/TransitionDrawable;
    :goto_2
    const/4 v6, 0x1

    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v9, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-direct {v7, v9, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v7, v3, v6

    .line 608
    new-instance v1, Landroid/graphics/drawable/TransitionDrawable;

    invoke-direct {v1, v3}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 609
    .local v1, "drawable":Landroid/graphics/drawable/TransitionDrawable;
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 610
    const/16 v6, 0xc8

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 617
    .end local v1    # "drawable":Landroid/graphics/drawable/TransitionDrawable;
    .end local v3    # "layers":[Landroid/graphics/drawable/Drawable;
    :goto_3
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v6

    iget-object v7, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mBitmapCache:Landroid/util/LruCache;

    invoke-virtual {v7}, Landroid/util/LruCache;->maxSize()I

    move-result v7

    div-int/lit8 v7, v7, 0x6

    if-ge v6, v7, :cond_5

    .line 618
    iget-object v6, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mBitmapCache:Landroid/util/LruCache;

    invoke-virtual {p2}, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    :cond_5
    iput-object v8, v2, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    .line 624
    iget-boolean v6, v2, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;->fresh:Z

    goto/16 :goto_0

    .line 605
    .restart local v3    # "layers":[Landroid/graphics/drawable/Drawable;
    :cond_6
    aput-object v4, v3, v7

    goto :goto_2

    .line 612
    .end local v3    # "layers":[Landroid/graphics/drawable/Drawable;
    :cond_7
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_3
.end method

.method private loadPhotoByIdOrUri(Landroid/widget/ImageView;Lcom/android/contacts/ContactPhotoManagerImpl$Request;)V
    .locals 2
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "request"    # Lcom/android/contacts/ContactPhotoManagerImpl$Request;

    .prologue
    .line 519
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Lcom/android/contacts/ContactPhotoManagerImpl;->loadCachedPhoto(Landroid/widget/ImageView;Lcom/android/contacts/ContactPhotoManagerImpl$Request;Z)Z

    move-result v0

    .line 520
    .local v0, "loaded":Z
    if-eqz v0, :cond_1

    .line 521
    iget-object v1, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    :cond_0
    :goto_0
    return-void

    .line 523
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    iget-boolean v1, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mPaused:Z

    if-nez v1, :cond_0

    .line 526
    invoke-direct {p0}, Lcom/android/contacts/ContactPhotoManagerImpl;->requestLoading()V

    goto :goto_0
.end method

.method private obtainPhotoIdsAndUrisToLoad(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/android/contacts/ContactPhotoManagerImpl$Request;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 831
    .local p1, "photoIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    .local p2, "photoIdsAsStrings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p3, "uris":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/contacts/ContactPhotoManagerImpl$Request;>;"
    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 832
    invoke-interface {p2}, Ljava/util/Set;->clear()V

    .line 833
    invoke-interface {p3}, Ljava/util/Set;->clear()V

    .line 835
    const/4 v2, 0x0

    .line 845
    .local v2, "jpegsDecoded":Z
    iget-object v4, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 846
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/contacts/ContactPhotoManagerImpl$Request;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 847
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/ContactPhotoManagerImpl$Request;

    .line 848
    .local v3, "request":Lcom/android/contacts/ContactPhotoManagerImpl$Request;
    iget-object v4, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    invoke-virtual {v3}, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;

    .line 849
    .local v0, "holder":Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;
    if-eqz v0, :cond_2

    iget-object v4, v0, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;->bytes:[B

    if-eqz v4, :cond_2

    iget-boolean v4, v0, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;->fresh:Z

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;->bitmapRef:Ljava/lang/ref/Reference;

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;->bitmapRef:Ljava/lang/ref/Reference;

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    .line 852
    :cond_1
    invoke-virtual {v3}, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->getRequestedExtent()I

    move-result v4

    invoke-static {v0, v4}, Lcom/android/contacts/ContactPhotoManagerImpl;->inflateBitmap(Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;I)V

    .line 853
    const/4 v2, 0x1

    goto :goto_0

    .line 855
    :cond_2
    if-eqz v0, :cond_3

    iget-boolean v4, v0, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;->fresh:Z

    if-nez v4, :cond_0

    .line 856
    :cond_3
    invoke-virtual {v3}, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->isUriRequest()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 857
    invoke-interface {p3, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 859
    :cond_4
    invoke-virtual {v3}, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 860
    # getter for: Lcom/android/contacts/ContactPhotoManagerImpl$Request;->mId:J
    invoke-static {v3}, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->access$000(Lcom/android/contacts/ContactPhotoManagerImpl$Request;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 866
    .end local v0    # "holder":Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;
    .end local v3    # "request":Lcom/android/contacts/ContactPhotoManagerImpl$Request;
    :cond_5
    if-eqz v2, :cond_6

    iget-object v4, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mMainThreadHandler:Landroid/os/Handler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 867
    :cond_6
    return-void
.end method

.method private processLoadedImages()V
    .locals 5

    .prologue
    .line 755
    iget-object v4, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 756
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/widget/ImageView;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 757
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 758
    .local v3, "view":Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ContactPhotoManagerImpl$Request;

    .line 759
    .local v1, "key":Lcom/android/contacts/ContactPhotoManagerImpl$Request;
    const/4 v4, 0x1

    invoke-direct {p0, v3, v1, v4}, Lcom/android/contacts/ContactPhotoManagerImpl;->loadCachedPhoto(Landroid/widget/ImageView;Lcom/android/contacts/ContactPhotoManagerImpl$Request;Z)Z

    move-result v2

    .line 760
    .local v2, "loaded":Z
    if-eqz v2, :cond_0

    .line 761
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 765
    .end local v1    # "key":Lcom/android/contacts/ContactPhotoManagerImpl$Request;
    .end local v2    # "loaded":Z
    .end local v3    # "view":Landroid/widget/ImageView;
    :cond_1
    invoke-direct {p0}, Lcom/android/contacts/ContactPhotoManagerImpl;->softenCache()V

    .line 767
    iget-object v4, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 768
    invoke-direct {p0}, Lcom/android/contacts/ContactPhotoManagerImpl;->requestLoading()V

    .line 770
    :cond_2
    return-void
.end method

.method private requestLoading()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 711
    iget-boolean v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mLoadingRequested:Z

    if-nez v0, :cond_0

    .line 712
    iput-boolean v1, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mLoadingRequested:Z

    .line 713
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 715
    :cond_0
    return-void
.end method

.method private softenCache()V
    .locals 3

    .prologue
    .line 777
    iget-object v2, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    invoke-virtual {v2}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;

    .line 778
    .local v0, "holder":Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 780
    .end local v0    # "holder":Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;
    :cond_0
    return-void
.end method


# virtual methods
.method public cacheBitmap(Landroid/net/Uri;Landroid/graphics/Bitmap;[B)V
    .locals 6
    .param p1, "photoUri"    # Landroid/net/Uri;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "photoBytes"    # [B

    .prologue
    const/4 v5, 0x0

    .line 814
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 817
    .local v2, "smallerExtent":I
    sget-object v3, Lcom/android/contacts/ContactPhotoManagerImpl;->DEFAULT_AVATAR:Lcom/android/contacts/ContactPhotoManager$DefaultImageProvider;

    invoke-static {p1, v2, v5, v3}, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->createFromUri(Landroid/net/Uri;IZLcom/android/contacts/ContactPhotoManager$DefaultImageProvider;)Lcom/android/contacts/ContactPhotoManagerImpl$Request;

    move-result-object v1

    .line 818
    .local v1, "request":Lcom/android/contacts/ContactPhotoManagerImpl$Request;
    new-instance v0, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;

    invoke-direct {v0, p3, v2}, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;-><init>([BI)V

    .line 819
    .local v0, "holder":Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;
    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v0, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;->bitmapRef:Ljava/lang/ref/Reference;

    .line 820
    iget-object v3, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    invoke-virtual {v1}, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 821
    iput-boolean v5, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mBitmapHolderCacheAllUnfresh:Z

    .line 822
    iget-object v3, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mBitmapCache:Landroid/util/LruCache;

    invoke-virtual {v1}, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 823
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 685
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 686
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 687
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mBitmapCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 688
    return-void
.end method

.method public ensureLoaderThread()V
    .locals 2

    .prologue
    .line 744
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mLoaderThread:Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;

    if-nez v0, :cond_0

    .line 745
    new-instance v0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;

    iget-object v1, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;-><init>(Lcom/android/contacts/ContactPhotoManagerImpl;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mLoaderThread:Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;

    .line 746
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mLoaderThread:Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 748
    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 722
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 740
    :cond_0
    :goto_0
    return v0

    .line 724
    :pswitch_0
    iput-boolean v1, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mLoadingRequested:Z

    .line 725
    iget-boolean v1, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mPaused:Z

    if-nez v1, :cond_0

    .line 726
    invoke-virtual {p0}, Lcom/android/contacts/ContactPhotoManagerImpl;->ensureLoaderThread()V

    .line 727
    iget-object v1, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mLoaderThread:Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;

    invoke-virtual {v1}, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->requestLoading()V

    goto :goto_0

    .line 733
    :pswitch_1
    iget-boolean v1, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mPaused:Z

    if-nez v1, :cond_0

    .line 734
    invoke-direct {p0}, Lcom/android/contacts/ContactPhotoManagerImpl;->processLoadedImages()V

    goto :goto_0

    .line 722
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;IZLcom/android/contacts/ContactPhotoManager$DefaultImageProvider;)V
    .locals 1
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "photoUri"    # Landroid/net/Uri;
    .param p3, "requestedExtent"    # I
    .param p4, "darkTheme"    # Z
    .param p5, "defaultProvider"    # Lcom/android/contacts/ContactPhotoManager$DefaultImageProvider;

    .prologue
    .line 507
    if-nez p2, :cond_0

    .line 509
    invoke-virtual {p5, p1, p3, p4}, Lcom/android/contacts/ContactPhotoManager$DefaultImageProvider;->applyDefaultImage(Landroid/widget/ImageView;IZ)V

    .line 510
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    :goto_0
    return-void

    .line 513
    :cond_0
    invoke-static {p2, p3, p4, p5}, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->createFromUri(Landroid/net/Uri;IZLcom/android/contacts/ContactPhotoManager$DefaultImageProvider;)Lcom/android/contacts/ContactPhotoManagerImpl$Request;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/ContactPhotoManagerImpl;->loadPhotoByIdOrUri(Landroid/widget/ImageView;Lcom/android/contacts/ContactPhotoManagerImpl$Request;)V

    goto :goto_0
.end method

.method public loadPhotoForRC(Landroid/widget/ImageView;JZLcom/android/contacts/ContactPhotoManager$DefaultImageProvider;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "photoId"    # J
    .param p4, "darkTheme"    # Z
    .param p5, "defaultProvider"    # Lcom/android/contacts/ContactPhotoManager$DefaultImageProvider;
    .param p6, "contactName"    # Ljava/lang/String;
    .param p7, "unknownPhoto"    # Landroid/graphics/Bitmap;

    .prologue
    .line 534
    const-string v0, "ContactPhotoManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadPhotoForRC: contactName =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " photoId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 536
    invoke-virtual {p1, p7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 537
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    :goto_0
    return-void

    .line 539
    :cond_0
    invoke-virtual/range {p0 .. p5}, Lcom/android/contacts/ContactPhotoManagerImpl;->loadThumbnail(Landroid/widget/ImageView;JZLcom/android/contacts/ContactPhotoManager$DefaultImageProvider;)V

    goto :goto_0
.end method

.method public loadThumbnail(Landroid/widget/ImageView;JZLcom/android/contacts/ContactPhotoManager$DefaultImageProvider;)V
    .locals 2
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "photoId"    # J
    .param p4, "darkTheme"    # Z
    .param p5, "defaultProvider"    # Lcom/android/contacts/ContactPhotoManager$DefaultImageProvider;

    .prologue
    .line 493
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    .line 495
    const/4 v0, -0x1

    invoke-virtual {p5, p1, v0, p4}, Lcom/android/contacts/ContactPhotoManager$DefaultImageProvider;->applyDefaultImage(Landroid/widget/ImageView;IZ)V

    .line 496
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    :goto_0
    return-void

    .line 499
    :cond_0
    invoke-static {p2, p3, p4, p5}, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->createFromThumbnailId(JZLcom/android/contacts/ContactPhotoManager$DefaultImageProvider;)Lcom/android/contacts/ContactPhotoManagerImpl$Request;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/ContactPhotoManagerImpl;->loadPhotoByIdOrUri(Landroid/widget/ImageView;Lcom/android/contacts/ContactPhotoManagerImpl$Request;)V

    goto :goto_0
.end method

.method public onTrimMemory(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 478
    const/16 v0, 0x3c

    if-lt p1, v0, :cond_0

    .line 480
    invoke-virtual {p0}, Lcom/android/contacts/ContactPhotoManagerImpl;->clear()V

    .line 482
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 692
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mPaused:Z

    .line 693
    return-void
.end method

.method public preloadPhotosInBackground()V
    .locals 1

    .prologue
    .line 486
    invoke-virtual {p0}, Lcom/android/contacts/ContactPhotoManagerImpl;->ensureLoaderThread()V

    .line 487
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mLoaderThread:Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;

    invoke-virtual {v0}, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->requestPreloading()V

    .line 488
    return-void
.end method

.method public refreshCache()V
    .locals 3

    .prologue
    .line 551
    iget-boolean v2, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mBitmapHolderCacheAllUnfresh:Z

    if-eqz v2, :cond_1

    .line 560
    :cond_0
    return-void

    .line 556
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mBitmapHolderCacheAllUnfresh:Z

    .line 557
    iget-object v2, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    invoke-virtual {v2}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;

    .line 558
    .local v0, "holder":Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;->fresh:Z

    goto :goto_0
.end method

.method public removePhoto(Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "view"    # Landroid/widget/ImageView;

    .prologue
    .line 545
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 546
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 697
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mPaused:Z

    .line 699
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 700
    invoke-direct {p0}, Lcom/android/contacts/ContactPhotoManagerImpl;->requestLoading()V

    .line 702
    :cond_0
    return-void
.end method
