.class Lcom/android/mms/ui/MmsThumbnailPresenter$1;
.super Ljava/lang/Object;
.source "MmsThumbnailPresenter.java"

# interfaces
.implements Lcom/android/mms/util/ItemLoadedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MmsThumbnailPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/mms/util/ItemLoadedCallback",
        "<",
        "Lcom/android/mms/util/ThumbnailManager$ImageLoaded;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MmsThumbnailPresenter;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MmsThumbnailPresenter;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/mms/ui/MmsThumbnailPresenter$1;->this$0:Lcom/android/mms/ui/MmsThumbnailPresenter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLoaded(Lcom/android/mms/util/ThumbnailManager$ImageLoaded;Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "imageLoaded"    # Lcom/android/mms/util/ThumbnailManager$ImageLoaded;
    .param p2, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 80
    if-nez p2, :cond_1

    .line 81
    iget-object v1, p0, Lcom/android/mms/ui/MmsThumbnailPresenter$1;->this$0:Lcom/android/mms/ui/MmsThumbnailPresenter;

    # getter for: Lcom/android/mms/ui/MmsThumbnailPresenter;->mItemLoadedFuture:Lcom/android/mms/util/ItemLoadedFuture;
    invoke-static {v1}, Lcom/android/mms/ui/MmsThumbnailPresenter;->access$000(Lcom/android/mms/ui/MmsThumbnailPresenter;)Lcom/android/mms/util/ItemLoadedFuture;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/android/mms/ui/MmsThumbnailPresenter$1;->this$0:Lcom/android/mms/ui/MmsThumbnailPresenter;

    # getter for: Lcom/android/mms/ui/MmsThumbnailPresenter;->mItemLoadedFuture:Lcom/android/mms/util/ItemLoadedFuture;
    invoke-static {v1}, Lcom/android/mms/ui/MmsThumbnailPresenter;->access$000(Lcom/android/mms/ui/MmsThumbnailPresenter;)Lcom/android/mms/util/ItemLoadedFuture;

    move-result-object v2

    monitor-enter v2

    .line 83
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/MmsThumbnailPresenter$1;->this$0:Lcom/android/mms/ui/MmsThumbnailPresenter;

    # getter for: Lcom/android/mms/ui/MmsThumbnailPresenter;->mItemLoadedFuture:Lcom/android/mms/util/ItemLoadedFuture;
    invoke-static {v1}, Lcom/android/mms/ui/MmsThumbnailPresenter;->access$000(Lcom/android/mms/ui/MmsThumbnailPresenter;)Lcom/android/mms/util/ItemLoadedFuture;

    move-result-object v1

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Lcom/android/mms/util/ItemLoadedFuture;->setIsDone(Z)V

    .line 84
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/MmsThumbnailPresenter$1;->this$0:Lcom/android/mms/ui/MmsThumbnailPresenter;

    # getter for: Lcom/android/mms/ui/MmsThumbnailPresenter;->mOnLoadedCallback:Lcom/android/mms/util/ItemLoadedCallback;
    invoke-static {v1}, Lcom/android/mms/ui/MmsThumbnailPresenter;->access$100(Lcom/android/mms/ui/MmsThumbnailPresenter;)Lcom/android/mms/util/ItemLoadedCallback;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 87
    iget-object v1, p0, Lcom/android/mms/ui/MmsThumbnailPresenter$1;->this$0:Lcom/android/mms/ui/MmsThumbnailPresenter;

    # getter for: Lcom/android/mms/ui/MmsThumbnailPresenter;->mOnLoadedCallback:Lcom/android/mms/util/ItemLoadedCallback;
    invoke-static {v1}, Lcom/android/mms/ui/MmsThumbnailPresenter;->access$100(Lcom/android/mms/ui/MmsThumbnailPresenter;)Lcom/android/mms/util/ItemLoadedCallback;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/mms/util/ItemLoadedCallback;->onItemLoaded(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 102
    :cond_1
    :goto_0
    return-void

    .line 84
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 90
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/MmsThumbnailPresenter$1;->this$0:Lcom/android/mms/ui/MmsThumbnailPresenter;

    iget-object v1, v1, Lcom/android/mms/ui/Presenter;->mModel:Lcom/android/mms/model/Model;

    check-cast v1, Lcom/android/mms/model/SlideshowModel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    .line 91
    .local v0, "slide":Lcom/android/mms/model/SlideModel;
    if-eqz v0, :cond_1

    .line 92
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p1, Lcom/android/mms/util/ThumbnailManager$ImageLoaded;->mIsVideo:Z

    if-eqz v1, :cond_3

    .line 93
    iget-object v1, p0, Lcom/android/mms/ui/MmsThumbnailPresenter$1;->this$0:Lcom/android/mms/ui/MmsThumbnailPresenter;

    iget-object v1, v1, Lcom/android/mms/ui/Presenter;->mView:Lcom/android/mms/ui/ViewInterface;

    check-cast v1, Lcom/android/mms/ui/SlideViewInterface;

    const/4 v2, 0x0

    iget-object v3, p1, Lcom/android/mms/util/ThumbnailManager$ImageLoaded;->mBitmap:Landroid/graphics/Bitmap;

    invoke-interface {v1, v2, v3}, Lcom/android/mms/ui/SlideViewInterface;->setVideoThumbnail(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 95
    :cond_3
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p1, Lcom/android/mms/util/ThumbnailManager$ImageLoaded;->mIsVideo:Z

    if-nez v1, :cond_1

    .line 96
    iget-object v1, p0, Lcom/android/mms/ui/MmsThumbnailPresenter$1;->this$0:Lcom/android/mms/ui/MmsThumbnailPresenter;

    iget-object v1, v1, Lcom/android/mms/ui/Presenter;->mView:Lcom/android/mms/ui/ViewInterface;

    check-cast v1, Lcom/android/mms/ui/SlideViewInterface;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/model/ImageModel;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/model/ImageModel;->getContentType()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/android/mms/util/ThumbnailManager$ImageLoaded;->mBitmap:Landroid/graphics/Bitmap;

    invoke-interface {v1, v2, v3, v4}, Lcom/android/mms/ui/SlideViewInterface;->setImage(Landroid/net/Uri;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public bridge synthetic onItemLoaded(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Throwable;

    .prologue
    .line 78
    check-cast p1, Lcom/android/mms/util/ThumbnailManager$ImageLoaded;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/ui/MmsThumbnailPresenter$1;->onItemLoaded(Lcom/android/mms/util/ThumbnailManager$ImageLoaded;Ljava/lang/Throwable;)V

    return-void
.end method
