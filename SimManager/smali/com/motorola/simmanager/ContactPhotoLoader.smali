.class public Lcom/motorola/simmanager/ContactPhotoLoader;
.super Ljava/lang/Object;
.source "ContactPhotoLoader.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/simmanager/ContactPhotoLoader$1;,
        Lcom/motorola/simmanager/ContactPhotoLoader$LoaderThread;,
        Lcom/motorola/simmanager/ContactPhotoLoader$BitmapHolder;
    }
.end annotation


# static fields
.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String;


# instance fields
.field private final COLUMNS:[Ljava/lang/String;

.field private final mBitmapCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/motorola/simmanager/ContactPhotoLoader$BitmapHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mDefaultResourceId:I

.field private mLoaderThread:Lcom/motorola/simmanager/ContactPhotoLoader$LoaderThread;

.field private mLoadingRequested:Z

.field private final mMainThreadHandler:Landroid/os/Handler;

.field private mPaused:Z

.field private final mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Landroid/widget/ImageView;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/motorola/simmanager/ContactPhotoLoader;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "defaultResourceId"    # I

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "data15"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/motorola/simmanager/ContactPhotoLoader;->COLUMNS:[Ljava/lang/String;

    .line 78
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/simmanager/ContactPhotoLoader;->mBitmapCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 85
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/simmanager/ContactPhotoLoader;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 91
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/motorola/simmanager/ContactPhotoLoader;->mMainThreadHandler:Landroid/os/Handler;

    .line 119
    iput p2, p0, Lcom/motorola/simmanager/ContactPhotoLoader;->mDefaultResourceId:I

    .line 120
    iput-object p1, p0, Lcom/motorola/simmanager/ContactPhotoLoader;->mContext:Landroid/content/Context;

    .line 121
    return-void
.end method

.method static synthetic access$100(Lcom/motorola/simmanager/ContactPhotoLoader;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/simmanager/ContactPhotoLoader;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/motorola/simmanager/ContactPhotoLoader;->mMainThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/motorola/simmanager/ContactPhotoLoader;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/simmanager/ContactPhotoLoader;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # Ljava/util/ArrayList;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/motorola/simmanager/ContactPhotoLoader;->obtainPhotoIdsToLoad(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$300(Lcom/motorola/simmanager/ContactPhotoLoader;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/simmanager/ContactPhotoLoader;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/motorola/simmanager/ContactPhotoLoader;->COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/motorola/simmanager/ContactPhotoLoader;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/motorola/simmanager/ContactPhotoLoader;J[B)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/simmanager/ContactPhotoLoader;
    .param p1, "x1"    # J
    .param p3, "x2"    # [B

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/motorola/simmanager/ContactPhotoLoader;->cacheBitmap(J[B)V

    return-void
.end method

.method private cacheBitmap(J[B)V
    .locals 5
    .param p1, "id"    # J
    .param p3, "bytes"    # [B

    .prologue
    .line 289
    iget-boolean v3, p0, Lcom/motorola/simmanager/ContactPhotoLoader;->mPaused:Z

    if-eqz v3, :cond_0

    .line 306
    :goto_0
    return-void

    .line 293
    :cond_0
    new-instance v1, Lcom/motorola/simmanager/ContactPhotoLoader$BitmapHolder;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/motorola/simmanager/ContactPhotoLoader$BitmapHolder;-><init>(Lcom/motorola/simmanager/ContactPhotoLoader$1;)V

    .line 294
    .local v1, "holder":Lcom/motorola/simmanager/ContactPhotoLoader$BitmapHolder;
    const/4 v3, 0x2

    iput v3, v1, Lcom/motorola/simmanager/ContactPhotoLoader$BitmapHolder;->state:I

    .line 295
    if-eqz p3, :cond_1

    .line 297
    :try_start_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 298
    .local v2, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 299
    const/4 v3, 0x0

    array-length v4, p3

    invoke-static {p3, v3, v4, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 300
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v1, Lcom/motorola/simmanager/ContactPhotoLoader$BitmapHolder;->bitmapRef:Ljava/lang/ref/SoftReference;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/motorola/simmanager/ContactPhotoLoader;->mBitmapCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 301
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private loadCachedPhoto(Landroid/widget/ImageView;J)Z
    .locals 7
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "photoId"    # J

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 153
    iget-object v4, p0, Lcom/motorola/simmanager/ContactPhotoLoader;->mBitmapCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/simmanager/ContactPhotoLoader$BitmapHolder;

    .line 154
    .local v1, "holder":Lcom/motorola/simmanager/ContactPhotoLoader$BitmapHolder;
    if-nez v1, :cond_1

    .line 155
    new-instance v1, Lcom/motorola/simmanager/ContactPhotoLoader$BitmapHolder;

    .end local v1    # "holder":Lcom/motorola/simmanager/ContactPhotoLoader$BitmapHolder;
    invoke-direct {v1, v6}, Lcom/motorola/simmanager/ContactPhotoLoader$BitmapHolder;-><init>(Lcom/motorola/simmanager/ContactPhotoLoader$1;)V

    .line 156
    .restart local v1    # "holder":Lcom/motorola/simmanager/ContactPhotoLoader$BitmapHolder;
    iget-object v2, p0, Lcom/motorola/simmanager/ContactPhotoLoader;->mBitmapCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    :cond_0
    :goto_0
    iget v2, p0, Lcom/motorola/simmanager/ContactPhotoLoader;->mDefaultResourceId:I

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 177
    iput v3, v1, Lcom/motorola/simmanager/ContactPhotoLoader$BitmapHolder;->state:I

    move v2, v3

    .line 178
    :goto_1
    return v2

    .line 157
    :cond_1
    iget v4, v1, Lcom/motorola/simmanager/ContactPhotoLoader$BitmapHolder;->state:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 159
    iget-object v4, v1, Lcom/motorola/simmanager/ContactPhotoLoader$BitmapHolder;->bitmapRef:Ljava/lang/ref/SoftReference;

    if-nez v4, :cond_2

    .line 160
    iget v3, p0, Lcom/motorola/simmanager/ContactPhotoLoader;->mDefaultResourceId:I

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 164
    :cond_2
    iget-object v4, v1, Lcom/motorola/simmanager/ContactPhotoLoader$BitmapHolder;->bitmapRef:Ljava/lang/ref/SoftReference;

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 165
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_3

    .line 166
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 172
    :cond_3
    iput-object v6, v1, Lcom/motorola/simmanager/ContactPhotoLoader$BitmapHolder;->bitmapRef:Ljava/lang/ref/SoftReference;

    goto :goto_0
.end method

.method private obtainPhotoIdsToLoad(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 313
    .local p1, "photoIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local p2, "photoIdsAsStrings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 314
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 324
    iget-object v3, p0, Lcom/motorola/simmanager/ContactPhotoLoader;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 325
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 326
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 327
    .local v1, "id":Ljava/lang/Long;
    iget-object v3, p0, Lcom/motorola/simmanager/ContactPhotoLoader;->mBitmapCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/simmanager/ContactPhotoLoader$BitmapHolder;

    .line 328
    .local v0, "holder":Lcom/motorola/simmanager/ContactPhotoLoader$BitmapHolder;
    if-eqz v0, :cond_0

    iget v3, v0, Lcom/motorola/simmanager/ContactPhotoLoader$BitmapHolder;->state:I

    if-nez v3, :cond_0

    .line 330
    const/4 v3, 0x1

    iput v3, v0, Lcom/motorola/simmanager/ContactPhotoLoader$BitmapHolder;->state:I

    .line 331
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    invoke-virtual {v1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 335
    .end local v0    # "holder":Lcom/motorola/simmanager/ContactPhotoLoader$BitmapHolder;
    .end local v1    # "id":Ljava/lang/Long;
    :cond_1
    return-void
.end method

.method private processLoadedImages()V
    .locals 6

    .prologue
    .line 270
    iget-object v5, p0, Lcom/motorola/simmanager/ContactPhotoLoader;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 271
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/widget/ImageView;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 272
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 273
    .local v4, "view":Landroid/widget/ImageView;
    iget-object v5, p0, Lcom/motorola/simmanager/ContactPhotoLoader;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 274
    .local v2, "photoId":J
    invoke-direct {p0, v4, v2, v3}, Lcom/motorola/simmanager/ContactPhotoLoader;->loadCachedPhoto(Landroid/widget/ImageView;J)Z

    move-result v1

    .line 275
    .local v1, "loaded":Z
    if-eqz v1, :cond_0

    .line 276
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 280
    .end local v1    # "loaded":Z
    .end local v2    # "photoId":J
    .end local v4    # "view":Landroid/widget/ImageView;
    :cond_1
    iget-object v5, p0, Lcom/motorola/simmanager/ContactPhotoLoader;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 281
    invoke-direct {p0}, Lcom/motorola/simmanager/ContactPhotoLoader;->requestLoading()V

    .line 283
    :cond_2
    return-void
.end method

.method private requestLoading()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 231
    iget-boolean v0, p0, Lcom/motorola/simmanager/ContactPhotoLoader;->mLoadingRequested:Z

    if-nez v0, :cond_0

    .line 232
    iput-boolean v1, p0, Lcom/motorola/simmanager/ContactPhotoLoader;->mLoadingRequested:Z

    .line 233
    iget-object v0, p0, Lcom/motorola/simmanager/ContactPhotoLoader;->mMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 235
    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 241
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 262
    :cond_0
    :goto_0
    return v0

    .line 243
    :pswitch_0
    iput-boolean v1, p0, Lcom/motorola/simmanager/ContactPhotoLoader;->mLoadingRequested:Z

    .line 244
    iget-boolean v1, p0, Lcom/motorola/simmanager/ContactPhotoLoader;->mPaused:Z

    if-nez v1, :cond_0

    .line 245
    iget-object v1, p0, Lcom/motorola/simmanager/ContactPhotoLoader;->mLoaderThread:Lcom/motorola/simmanager/ContactPhotoLoader$LoaderThread;

    if-nez v1, :cond_1

    .line 246
    new-instance v1, Lcom/motorola/simmanager/ContactPhotoLoader$LoaderThread;

    iget-object v2, p0, Lcom/motorola/simmanager/ContactPhotoLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/motorola/simmanager/ContactPhotoLoader$LoaderThread;-><init>(Lcom/motorola/simmanager/ContactPhotoLoader;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/motorola/simmanager/ContactPhotoLoader;->mLoaderThread:Lcom/motorola/simmanager/ContactPhotoLoader$LoaderThread;

    .line 247
    iget-object v1, p0, Lcom/motorola/simmanager/ContactPhotoLoader;->mLoaderThread:Lcom/motorola/simmanager/ContactPhotoLoader$LoaderThread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 250
    :cond_1
    iget-object v1, p0, Lcom/motorola/simmanager/ContactPhotoLoader;->mLoaderThread:Lcom/motorola/simmanager/ContactPhotoLoader$LoaderThread;

    invoke-virtual {v1}, Lcom/motorola/simmanager/ContactPhotoLoader$LoaderThread;->requestLoading()V

    goto :goto_0

    .line 256
    :pswitch_1
    iget-boolean v1, p0, Lcom/motorola/simmanager/ContactPhotoLoader;->mPaused:Z

    if-nez v1, :cond_0

    .line 257
    invoke-direct {p0}, Lcom/motorola/simmanager/ContactPhotoLoader;->processLoadedImages()V

    goto :goto_0

    .line 241
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public loadPhoto(Landroid/widget/ImageView;J)V
    .locals 3
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "photoId"    # J

    .prologue
    .line 129
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-nez v1, :cond_1

    .line 131
    iget v1, p0, Lcom/motorola/simmanager/ContactPhotoLoader;->mDefaultResourceId:I

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 132
    iget-object v1, p0, Lcom/motorola/simmanager/ContactPhotoLoader;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/motorola/simmanager/ContactPhotoLoader;->loadCachedPhoto(Landroid/widget/ImageView;J)Z

    move-result v0

    .line 135
    .local v0, "loaded":Z
    if-eqz v0, :cond_2

    .line 136
    iget-object v1, p0, Lcom/motorola/simmanager/ContactPhotoLoader;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 138
    :cond_2
    iget-object v1, p0, Lcom/motorola/simmanager/ContactPhotoLoader;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-boolean v1, p0, Lcom/motorola/simmanager/ContactPhotoLoader;->mPaused:Z

    if-nez v1, :cond_0

    .line 141
    invoke-direct {p0}, Lcom/motorola/simmanager/ContactPhotoLoader;->requestLoading()V

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/simmanager/ContactPhotoLoader;->mPaused:Z

    .line 212
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/motorola/simmanager/ContactPhotoLoader;->pause()V

    .line 187
    iget-object v0, p0, Lcom/motorola/simmanager/ContactPhotoLoader;->mLoaderThread:Lcom/motorola/simmanager/ContactPhotoLoader$LoaderThread;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/motorola/simmanager/ContactPhotoLoader;->mLoaderThread:Lcom/motorola/simmanager/ContactPhotoLoader$LoaderThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 189
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/simmanager/ContactPhotoLoader;->mLoaderThread:Lcom/motorola/simmanager/ContactPhotoLoader$LoaderThread;

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/motorola/simmanager/ContactPhotoLoader;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 193
    iget-object v0, p0, Lcom/motorola/simmanager/ContactPhotoLoader;->mBitmapCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 194
    return-void
.end method
