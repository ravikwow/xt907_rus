.class Lcom/motorola/simmanager/ContactPhotoLoader$LoaderThread;
.super Landroid/os/HandlerThread;
.source "ContactPhotoLoader.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/simmanager/ContactPhotoLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoaderThread"
.end annotation


# instance fields
.field private mLoaderThreadHandler:Landroid/os/Handler;

.field private final mPhotoIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mPhotoIdsAsStrings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mStringBuilder:Ljava/lang/StringBuilder;

.field final synthetic this$0:Lcom/motorola/simmanager/ContactPhotoLoader;


# direct methods
.method public constructor <init>(Lcom/motorola/simmanager/ContactPhotoLoader;Landroid/content/ContentResolver;)V
    .locals 1
    .param p2, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 347
    iput-object p1, p0, Lcom/motorola/simmanager/ContactPhotoLoader$LoaderThread;->this$0:Lcom/motorola/simmanager/ContactPhotoLoader;

    .line 348
    const-string v0, "ContactPhotoLoader"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/motorola/simmanager/ContactPhotoLoader$LoaderThread;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 343
    invoke-static {}, Lcom/motorola/simmanager/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/simmanager/ContactPhotoLoader$LoaderThread;->mPhotoIds:Ljava/util/ArrayList;

    .line 344
    invoke-static {}, Lcom/motorola/simmanager/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/simmanager/ContactPhotoLoader$LoaderThread;->mPhotoIdsAsStrings:Ljava/util/ArrayList;

    .line 349
    iput-object p2, p0, Lcom/motorola/simmanager/ContactPhotoLoader$LoaderThread;->mResolver:Landroid/content/ContentResolver;

    .line 350
    return-void
.end method

.method private loadPhotosFromDatabase()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v3, 0x0

    .line 373
    iget-object v0, p0, Lcom/motorola/simmanager/ContactPhotoLoader$LoaderThread;->this$0:Lcom/motorola/simmanager/ContactPhotoLoader;

    iget-object v1, p0, Lcom/motorola/simmanager/ContactPhotoLoader$LoaderThread;->mPhotoIds:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/motorola/simmanager/ContactPhotoLoader$LoaderThread;->mPhotoIdsAsStrings:Ljava/util/ArrayList;

    # invokes: Lcom/motorola/simmanager/ContactPhotoLoader;->obtainPhotoIdsToLoad(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    invoke-static {v0, v1, v2}, Lcom/motorola/simmanager/ContactPhotoLoader;->access$200(Lcom/motorola/simmanager/ContactPhotoLoader;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 375
    iget-object v0, p0, Lcom/motorola/simmanager/ContactPhotoLoader$LoaderThread;->mPhotoIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 376
    .local v7, "count":I
    if-nez v7, :cond_1

    .line 417
    :cond_0
    return-void

    .line 380
    :cond_1
    iget-object v0, p0, Lcom/motorola/simmanager/ContactPhotoLoader$LoaderThread;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 381
    iget-object v0, p0, Lcom/motorola/simmanager/ContactPhotoLoader$LoaderThread;->mStringBuilder:Ljava/lang/StringBuilder;

    const-string v1, "_id IN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v7, :cond_3

    .line 383
    if-eqz v9, :cond_2

    .line 384
    iget-object v0, p0, Lcom/motorola/simmanager/ContactPhotoLoader$LoaderThread;->mStringBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 386
    :cond_2
    iget-object v0, p0, Lcom/motorola/simmanager/ContactPhotoLoader$LoaderThread;->mStringBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 382
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 388
    :cond_3
    iget-object v0, p0, Lcom/motorola/simmanager/ContactPhotoLoader$LoaderThread;->mStringBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 390
    const/4 v8, 0x0

    .line 392
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/motorola/simmanager/ContactPhotoLoader$LoaderThread;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/motorola/simmanager/ContactPhotoLoader$LoaderThread;->this$0:Lcom/motorola/simmanager/ContactPhotoLoader;

    # getter for: Lcom/motorola/simmanager/ContactPhotoLoader;->COLUMNS:[Ljava/lang/String;
    invoke-static {v2}, Lcom/motorola/simmanager/ContactPhotoLoader;->access$300(Lcom/motorola/simmanager/ContactPhotoLoader;)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/simmanager/ContactPhotoLoader$LoaderThread;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/simmanager/ContactPhotoLoader$LoaderThread;->mPhotoIdsAsStrings:Ljava/util/ArrayList;

    # getter for: Lcom/motorola/simmanager/ContactPhotoLoader;->EMPTY_STRING_ARRAY:[Ljava/lang/String;
    invoke-static {}, Lcom/motorola/simmanager/ContactPhotoLoader;->access$400()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 398
    if-eqz v8, :cond_5

    .line 399
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 400
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 401
    .local v10, "id":Ljava/lang/Long;
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    .line 402
    .local v6, "bytes":[B
    iget-object v0, p0, Lcom/motorola/simmanager/ContactPhotoLoader$LoaderThread;->this$0:Lcom/motorola/simmanager/ContactPhotoLoader;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    # invokes: Lcom/motorola/simmanager/ContactPhotoLoader;->cacheBitmap(J[B)V
    invoke-static {v0, v1, v2, v6}, Lcom/motorola/simmanager/ContactPhotoLoader;->access$500(Lcom/motorola/simmanager/ContactPhotoLoader;J[B)V

    .line 403
    iget-object v0, p0, Lcom/motorola/simmanager/ContactPhotoLoader$LoaderThread;->mPhotoIds:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 407
    .end local v6    # "bytes":[B
    .end local v10    # "id":Ljava/lang/Long;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_4

    .line 408
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    .line 407
    :cond_5
    if-eqz v8, :cond_6

    .line 408
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 413
    :cond_6
    iget-object v0, p0, Lcom/motorola/simmanager/ContactPhotoLoader$LoaderThread;->mPhotoIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 414
    const/4 v9, 0x0

    :goto_2
    if-ge v9, v7, :cond_0

    .line 415
    iget-object v1, p0, Lcom/motorola/simmanager/ContactPhotoLoader$LoaderThread;->this$0:Lcom/motorola/simmanager/ContactPhotoLoader;

    iget-object v0, p0, Lcom/motorola/simmanager/ContactPhotoLoader$LoaderThread;->mPhotoIds:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    # invokes: Lcom/motorola/simmanager/ContactPhotoLoader;->cacheBitmap(J[B)V
    invoke-static {v1, v2, v3, v11}, Lcom/motorola/simmanager/ContactPhotoLoader;->access$500(Lcom/motorola/simmanager/ContactPhotoLoader;J[B)V

    .line 414
    add-int/lit8 v9, v9, 0x1

    goto :goto_2
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 367
    invoke-direct {p0}, Lcom/motorola/simmanager/ContactPhotoLoader$LoaderThread;->loadPhotosFromDatabase()V

    .line 368
    iget-object v0, p0, Lcom/motorola/simmanager/ContactPhotoLoader$LoaderThread;->this$0:Lcom/motorola/simmanager/ContactPhotoLoader;

    # getter for: Lcom/motorola/simmanager/ContactPhotoLoader;->mMainThreadHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/motorola/simmanager/ContactPhotoLoader;->access$100(Lcom/motorola/simmanager/ContactPhotoLoader;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 369
    const/4 v0, 0x1

    return v0
.end method

.method public requestLoading()V
    .locals 2

    .prologue
    .line 356
    iget-object v0, p0, Lcom/motorola/simmanager/ContactPhotoLoader$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 357
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/motorola/simmanager/ContactPhotoLoader$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/motorola/simmanager/ContactPhotoLoader$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 360
    return-void
.end method
