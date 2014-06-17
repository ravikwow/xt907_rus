.class public Lcom/android/mms/util/ThumbnailManager;
.super Lcom/android/mms/util/BackgroundLoaderManager;
.source "ThumbnailManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/util/ThumbnailManager$ImageLoaded;,
        Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;
    }
.end annotation


# static fields
.field private static mEmptyImageBitmap:Landroid/graphics/Bitmap;

.field private static mEmptyVideoBitmap:Landroid/graphics/Bitmap;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mImageCacheService:Lcom/android/mms/util/ImageCacheService;

.field private final mThumbnailCache:Lcom/android/mms/util/SimpleCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/mms/util/SimpleCache",
            "<",
            "Landroid/net/Uri;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/mms/util/BackgroundLoaderManager;-><init>(Landroid/content/Context;)V

    .line 88
    new-instance v0, Lcom/android/mms/util/SimpleCache;

    const/16 v1, 0x8

    const/16 v2, 0x10

    const/high16 v3, 0x3f400000

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/mms/util/SimpleCache;-><init>(IIFZ)V

    iput-object v0, p0, Lcom/android/mms/util/ThumbnailManager;->mThumbnailCache:Lcom/android/mms/util/SimpleCache;

    .line 89
    iput-object p1, p0, Lcom/android/mms/util/ThumbnailManager;->mContext:Landroid/content/Context;

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02004c

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/android/mms/util/ThumbnailManager;->mEmptyImageBitmap:Landroid/graphics/Bitmap;

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02004d

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/android/mms/util/ThumbnailManager;->mEmptyVideoBitmap:Landroid/graphics/Bitmap;

    .line 96
    return-void
.end method

.method static synthetic access$200()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/android/mms/util/ThumbnailManager;->mEmptyVideoBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$300()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/android/mms/util/ThumbnailManager;->mEmptyImageBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/util/ThumbnailManager;)Lcom/android/mms/util/SimpleCache;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/util/ThumbnailManager;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/mms/util/ThumbnailManager;->mThumbnailCache:Lcom/android/mms/util/SimpleCache;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/util/ThumbnailManager;)Lcom/android/mms/util/ImageCacheService;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/util/ThumbnailManager;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/mms/util/ThumbnailManager;->getImageCacheService()Lcom/android/mms/util/ImageCacheService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/util/ThumbnailManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/util/ThumbnailManager;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/mms/util/ThumbnailManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private declared-synchronized getImageCacheService()Lcom/android/mms/util/ImageCacheService;
    .locals 2

    .prologue
    .line 220
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/util/ThumbnailManager;->mImageCacheService:Lcom/android/mms/util/ImageCacheService;

    if-nez v0, :cond_0

    .line 221
    new-instance v0, Lcom/android/mms/util/ImageCacheService;

    iget-object v1, p0, Lcom/android/mms/util/ThumbnailManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/mms/util/ImageCacheService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/util/ThumbnailManager;->mImageCacheService:Lcom/android/mms/util/ImageCacheService;

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/android/mms/util/ThumbnailManager;->mImageCacheService:Lcom/android/mms/util/ImageCacheService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 220
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getThumbnail(Landroid/net/Uri;ZLcom/android/mms/util/ItemLoadedCallback;)Lcom/android/mms/util/ItemLoadedFuture;
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "isVideo"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Z",
            "Lcom/android/mms/util/ItemLoadedCallback",
            "<",
            "Lcom/android/mms/util/ThumbnailManager$ImageLoaded;",
            ">;)",
            "Lcom/android/mms/util/ItemLoadedFuture;"
        }
    .end annotation

    .prologue
    .local p3, "callback":Lcom/android/mms/util/ItemLoadedCallback;, "Lcom/android/mms/util/ItemLoadedCallback<Lcom/android/mms/util/ThumbnailManager$ImageLoaded;>;"
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 126
    if-nez p1, :cond_0

    .line 127
    new-instance v7, Ljava/lang/NullPointerException;

    invoke-direct {v7}, Ljava/lang/NullPointerException;-><init>()V

    throw v7

    .line 130
    :cond_0
    iget-object v9, p0, Lcom/android/mms/util/ThumbnailManager;->mThumbnailCache:Lcom/android/mms/util/SimpleCache;

    invoke-virtual {v9, p1}, Lcom/android/mms/util/SimpleCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    .line 132
    .local v5, "thumbnail":Landroid/graphics/Bitmap;
    if-eqz v5, :cond_3

    move v6, v7

    .line 133
    .local v6, "thumbnailExists":Z
    :goto_0
    iget-object v9, p0, Lcom/android/mms/util/BackgroundLoaderManager;->mPendingTaskUris:Ljava/util/Set;

    invoke-interface {v9, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 134
    .local v4, "taskExists":Z
    if-nez v6, :cond_4

    if-nez v4, :cond_4

    move v2, v7

    .line 135
    .local v2, "newTaskRequired":Z
    :goto_1
    if-eqz p3, :cond_5

    move v0, v7

    .line 137
    .local v0, "callbackRequired":Z
    :goto_2
    const-string v7, "Mms:thumbnailcache"

    const/4 v8, 0x3

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 138
    const-string v7, "ThumbnailManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getThumbnail mThumbnailCache.get for uri: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " thumbnail: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " callback: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " thumbnailExists: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " taskExists: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " newTaskRequired: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " callbackRequired: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_1
    if-eqz v6, :cond_6

    .line 146
    if-eqz v0, :cond_2

    .line 147
    new-instance v1, Lcom/android/mms/util/ThumbnailManager$ImageLoaded;

    invoke-direct {v1, v5, p2}, Lcom/android/mms/util/ThumbnailManager$ImageLoaded;-><init>(Landroid/graphics/Bitmap;Z)V

    .line 148
    .local v1, "imageLoaded":Lcom/android/mms/util/ThumbnailManager$ImageLoaded;
    const/4 v7, 0x0

    invoke-interface {p3, v1, v7}, Lcom/android/mms/util/ItemLoadedCallback;->onItemLoaded(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 150
    .end local v1    # "imageLoaded":Lcom/android/mms/util/ThumbnailManager$ImageLoaded;
    :cond_2
    new-instance v7, Lcom/android/mms/util/NullItemLoadedFuture;

    invoke-direct {v7}, Lcom/android/mms/util/NullItemLoadedFuture;-><init>()V

    .line 162
    :goto_3
    return-object v7

    .end local v0    # "callbackRequired":Z
    .end local v2    # "newTaskRequired":Z
    .end local v4    # "taskExists":Z
    .end local v6    # "thumbnailExists":Z
    :cond_3
    move v6, v8

    .line 132
    goto :goto_0

    .restart local v4    # "taskExists":Z
    .restart local v6    # "thumbnailExists":Z
    :cond_4
    move v2, v8

    .line 134
    goto :goto_1

    .restart local v2    # "newTaskRequired":Z
    :cond_5
    move v0, v8

    .line 135
    goto :goto_2

    .line 153
    .restart local v0    # "callbackRequired":Z
    :cond_6
    if-eqz v0, :cond_7

    .line 154
    invoke-virtual {p0, p1, p3}, Lcom/android/mms/util/ThumbnailManager;->addCallback(Landroid/net/Uri;Lcom/android/mms/util/ItemLoadedCallback;)Z

    .line 157
    :cond_7
    if-eqz v2, :cond_8

    .line 158
    iget-object v7, p0, Lcom/android/mms/util/BackgroundLoaderManager;->mPendingTaskUris:Ljava/util/Set;

    invoke-interface {v7, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 159
    new-instance v3, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;-><init>(Lcom/android/mms/util/ThumbnailManager;Landroid/net/Uri;Z)V

    .line 160
    .local v3, "task":Ljava/lang/Runnable;
    iget-object v7, p0, Lcom/android/mms/util/BackgroundLoaderManager;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v7, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 162
    .end local v3    # "task":Ljava/lang/Runnable;
    :cond_8
    new-instance v7, Lcom/android/mms/util/ThumbnailManager$1;

    invoke-direct {v7, p0, p3}, Lcom/android/mms/util/ThumbnailManager$1;-><init>(Lcom/android/mms/util/ThumbnailManager;Lcom/android/mms/util/ItemLoadedCallback;)V

    goto :goto_3
.end method


# virtual methods
.method public bridge synthetic addCallback(Landroid/net/Uri;Lcom/android/mms/util/ItemLoadedCallback;)Z
    .locals 1
    .param p1, "x0"    # Landroid/net/Uri;
    .param p2, "x1"    # Lcom/android/mms/util/ItemLoadedCallback;

    .prologue
    .line 62
    invoke-super {p0, p1, p2}, Lcom/android/mms/util/BackgroundLoaderManager;->addCallback(Landroid/net/Uri;Lcom/android/mms/util/ItemLoadedCallback;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic cancelCallback(Lcom/android/mms/util/ItemLoadedCallback;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/mms/util/ItemLoadedCallback;

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/android/mms/util/BackgroundLoaderManager;->cancelCallback(Lcom/android/mms/util/ItemLoadedCallback;)V

    return-void
.end method

.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 185
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/android/mms/util/BackgroundLoaderManager;->clear()V

    .line 187
    iget-object v0, p0, Lcom/android/mms/util/ThumbnailManager;->mThumbnailCache:Lcom/android/mms/util/SimpleCache;

    invoke-virtual {v0}, Lcom/android/mms/util/SimpleCache;->clear()V

    .line 188
    invoke-virtual {p0}, Lcom/android/mms/util/ThumbnailManager;->clearBackingStore()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    monitor-exit p0

    return-void

    .line 185
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clearBackingStore()V
    .locals 1

    .prologue
    .line 193
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/util/ThumbnailManager;->mImageCacheService:Lcom/android/mms/util/ImageCacheService;

    if-nez v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/android/mms/util/ThumbnailManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/util/CacheManager;->clear(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    :goto_0
    monitor-exit p0

    return-void

    .line 198
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/mms/util/ThumbnailManager;->getImageCacheService()Lcom/android/mms/util/ImageCacheService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/util/ImageCacheService;->clear()V

    .line 201
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/util/ThumbnailManager;->mImageCacheService:Lcom/android/mms/util/ImageCacheService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 193
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    const-string v0, "ThumbnailManager"

    return-object v0
.end method

.method public getThumbnail(Landroid/net/Uri;Lcom/android/mms/util/ItemLoadedCallback;)Lcom/android/mms/util/ItemLoadedFuture;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lcom/android/mms/util/ItemLoadedCallback",
            "<",
            "Lcom/android/mms/util/ThumbnailManager$ImageLoaded;",
            ">;)",
            "Lcom/android/mms/util/ItemLoadedFuture;"
        }
    .end annotation

    .prologue
    .line 109
    .local p2, "callback":Lcom/android/mms/util/ItemLoadedCallback;, "Lcom/android/mms/util/ItemLoadedCallback<Lcom/android/mms/util/ThumbnailManager$ImageLoaded;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/mms/util/ThumbnailManager;->getThumbnail(Landroid/net/Uri;ZLcom/android/mms/util/ItemLoadedCallback;)Lcom/android/mms/util/ItemLoadedFuture;

    move-result-object v0

    return-object v0
.end method

.method public getVideoThumbnail(Landroid/net/Uri;Lcom/android/mms/util/ItemLoadedCallback;)Lcom/android/mms/util/ItemLoadedFuture;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lcom/android/mms/util/ItemLoadedCallback",
            "<",
            "Lcom/android/mms/util/ThumbnailManager$ImageLoaded;",
            ">;)",
            "Lcom/android/mms/util/ItemLoadedFuture;"
        }
    .end annotation

    .prologue
    .line 121
    .local p2, "callback":Lcom/android/mms/util/ItemLoadedCallback;, "Lcom/android/mms/util/ItemLoadedCallback<Lcom/android/mms/util/ThumbnailManager$ImageLoaded;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/android/mms/util/ThumbnailManager;->getThumbnail(Landroid/net/Uri;ZLcom/android/mms/util/ItemLoadedCallback;)Lcom/android/mms/util/ItemLoadedFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onLowMemory()V
    .locals 0

    .prologue
    .line 62
    invoke-super {p0}, Lcom/android/mms/util/BackgroundLoaderManager;->onLowMemory()V

    return-void
.end method

.method public removeThumbnail(Landroid/net/Uri;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 206
    const-string v0, "ThumbnailManager"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    const-string v0, "ThumbnailManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeThumbnail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_0
    if-eqz p1, :cond_1

    .line 210
    iget-object v0, p0, Lcom/android/mms/util/ThumbnailManager;->mThumbnailCache:Lcom/android/mms/util/SimpleCache;

    invoke-virtual {v0, p1}, Lcom/android/mms/util/SimpleCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    :cond_1
    return-void
.end method
