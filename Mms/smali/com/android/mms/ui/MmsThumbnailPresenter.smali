.class public Lcom/android/mms/ui/MmsThumbnailPresenter;
.super Lcom/android/mms/ui/Presenter;
.source "MmsThumbnailPresenter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MmsThumbnailPresenter"


# instance fields
.field private mImageLoadedCallback:Lcom/android/mms/util/ItemLoadedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/mms/util/ItemLoadedCallback",
            "<",
            "Lcom/android/mms/util/ThumbnailManager$ImageLoaded;",
            ">;"
        }
    .end annotation
.end field

.field private mItemLoadedFuture:Lcom/android/mms/util/ItemLoadedFuture;

.field private mOnLoadedCallback:Lcom/android/mms/util/ItemLoadedCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/mms/ui/ViewInterface;Lcom/android/mms/model/Model;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Lcom/android/mms/ui/ViewInterface;
    .param p3, "model"    # Lcom/android/mms/model/Model;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/Presenter;-><init>(Landroid/content/Context;Lcom/android/mms/ui/ViewInterface;Lcom/android/mms/model/Model;)V

    .line 77
    new-instance v0, Lcom/android/mms/ui/MmsThumbnailPresenter$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsThumbnailPresenter$1;-><init>(Lcom/android/mms/ui/MmsThumbnailPresenter;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsThumbnailPresenter;->mImageLoadedCallback:Lcom/android/mms/util/ItemLoadedCallback;

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/MmsThumbnailPresenter;)Lcom/android/mms/util/ItemLoadedFuture;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/MmsThumbnailPresenter;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/mms/ui/MmsThumbnailPresenter;->mItemLoadedFuture:Lcom/android/mms/util/ItemLoadedFuture;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/MmsThumbnailPresenter;)Lcom/android/mms/util/ItemLoadedCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/MmsThumbnailPresenter;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/mms/ui/MmsThumbnailPresenter;->mOnLoadedCallback:Lcom/android/mms/util/ItemLoadedCallback;

    return-object v0
.end method

.method private presentFirstSlide(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/SlideModel;)V
    .locals 1
    .param p1, "view"    # Lcom/android/mms/ui/SlideViewInterface;
    .param p2, "slide"    # Lcom/android/mms/model/SlideModel;

    .prologue
    .line 66
    invoke-interface {p1}, Lcom/android/mms/ui/SlideViewInterface;->reset()V

    .line 68
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/MmsThumbnailPresenter;->presentImageThumbnail(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/ImageModel;)V

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 71
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->getVideo()Lcom/android/mms/model/VideoModel;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/MmsThumbnailPresenter;->presentVideoThumbnail(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/VideoModel;)V

    goto :goto_0

    .line 72
    :cond_2
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->getAudio()Lcom/android/mms/model/AudioModel;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/mms/ui/MmsThumbnailPresenter;->presentAudioThumbnail(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/AudioModel;)V

    goto :goto_0
.end method

.method private presentImageThumbnail(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/ImageModel;)V
    .locals 1
    .param p1, "view"    # Lcom/android/mms/ui/SlideViewInterface;
    .param p2, "image"    # Lcom/android/mms/model/ImageModel;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/mms/ui/MmsThumbnailPresenter;->mImageLoadedCallback:Lcom/android/mms/util/ItemLoadedCallback;

    invoke-virtual {p2, v0}, Lcom/android/mms/model/ImageModel;->loadThumbnailBitmap(Lcom/android/mms/util/ItemLoadedCallback;)Lcom/android/mms/util/ItemLoadedFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MmsThumbnailPresenter;->mItemLoadedFuture:Lcom/android/mms/util/ItemLoadedFuture;

    .line 111
    return-void
.end method

.method private presentVideoThumbnail(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/VideoModel;)V
    .locals 1
    .param p1, "view"    # Lcom/android/mms/ui/SlideViewInterface;
    .param p2, "video"    # Lcom/android/mms/model/VideoModel;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/mms/ui/MmsThumbnailPresenter;->mImageLoadedCallback:Lcom/android/mms/util/ItemLoadedCallback;

    invoke-virtual {p2, v0}, Lcom/android/mms/model/VideoModel;->loadThumbnailBitmap(Lcom/android/mms/util/ItemLoadedCallback;)Lcom/android/mms/util/ItemLoadedFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MmsThumbnailPresenter;->mItemLoadedFuture:Lcom/android/mms/util/ItemLoadedFuture;

    .line 107
    return-void
.end method

.method private setAttachment(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/MediaModel;)V
    .locals 1
    .param p1, "mView"    # Lcom/android/mms/ui/SlideViewInterface;
    .param p2, "attachment"    # Lcom/android/mms/model/MediaModel;

    .prologue
    .line 58
    instance-of v0, p2, Lcom/android/mms/model/VcardModel;

    if-eqz v0, :cond_1

    .line 59
    check-cast p2, Lcom/android/mms/model/VcardModel;

    .end local p2    # "attachment":Lcom/android/mms/model/MediaModel;
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/MmsThumbnailPresenter;->setVCardImage(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/VcardModel;)V

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 60
    .restart local p2    # "attachment":Lcom/android/mms/model/MediaModel;
    :cond_1
    instance-of v0, p2, Lcom/android/mms/model/ICalModel;

    if-eqz v0, :cond_0

    .line 61
    check-cast p2, Lcom/android/mms/model/ICalModel;

    .end local p2    # "attachment":Lcom/android/mms/model/MediaModel;
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/MmsThumbnailPresenter;->setICalImage(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/ICalModel;)V

    goto :goto_0
.end method

.method private setICalImage(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/ICalModel;)V
    .locals 2
    .param p1, "view"    # Lcom/android/mms/ui/SlideViewInterface;
    .param p2, "ical"    # Lcom/android/mms/model/ICalModel;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 118
    invoke-virtual {p2, v0, v0}, Lcom/android/mms/model/ICalModel;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-interface {p1, v1, v1, v0}, Lcom/android/mms/ui/SlideViewInterface;->setImage(Landroid/net/Uri;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 119
    return-void
.end method

.method private setVCardImage(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/VcardModel;)V
    .locals 2
    .param p1, "view"    # Lcom/android/mms/ui/SlideViewInterface;
    .param p2, "vcardImage"    # Lcom/android/mms/model/VcardModel;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 114
    invoke-virtual {p2, v0, v0}, Lcom/android/mms/model/VcardModel;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-interface {p1, v1, v1, v0}, Lcom/android/mms/ui/SlideViewInterface;->setImage(Landroid/net/Uri;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 115
    return-void
.end method


# virtual methods
.method public cancelBackgroundLoading()V
    .locals 3

    .prologue
    .line 132
    iget-object v1, p0, Lcom/android/mms/ui/Presenter;->mModel:Lcom/android/mms/model/Model;

    check-cast v1, Lcom/android/mms/model/SlideshowModel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    .line 133
    .local v0, "slide":Lcom/android/mms/model/SlideModel;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/model/ImageModel;->cancelThumbnailLoading()V

    .line 136
    :cond_0
    return-void
.end method

.method public onModelChanged(Lcom/android/mms/model/Model;Z)V
    .locals 0
    .param p1, "model"    # Lcom/android/mms/model/Model;
    .param p2, "dataChanged"    # Z

    .prologue
    .line 127
    return-void
.end method

.method public present(Lcom/android/mms/util/ItemLoadedCallback;)V
    .locals 4
    .param p1, "callback"    # Lcom/android/mms/util/ItemLoadedCallback;

    .prologue
    const/4 v3, 0x0

    .line 46
    iput-object p1, p0, Lcom/android/mms/ui/MmsThumbnailPresenter;->mOnLoadedCallback:Lcom/android/mms/util/ItemLoadedCallback;

    .line 47
    iget-object v1, p0, Lcom/android/mms/ui/Presenter;->mModel:Lcom/android/mms/model/Model;

    check-cast v1, Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1, v3}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    .line 48
    .local v0, "slide":Lcom/android/mms/model/SlideModel;
    if-eqz v0, :cond_0

    .line 49
    iget-object v1, p0, Lcom/android/mms/ui/Presenter;->mView:Lcom/android/mms/ui/ViewInterface;

    check-cast v1, Lcom/android/mms/ui/SlideViewInterface;

    invoke-direct {p0, v1, v0}, Lcom/android/mms/ui/MmsThumbnailPresenter;->presentFirstSlide(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/SlideModel;)V

    .line 52
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/Presenter;->mModel:Lcom/android/mms/model/Model;

    check-cast v1, Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->hasAttachment()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 53
    iget-object v1, p0, Lcom/android/mms/ui/Presenter;->mView:Lcom/android/mms/ui/ViewInterface;

    check-cast v1, Lcom/android/mms/ui/SlideViewInterface;

    iget-object v2, p0, Lcom/android/mms/ui/Presenter;->mModel:Lcom/android/mms/model/Model;

    check-cast v2, Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2, v3}, Lcom/android/mms/model/SlideshowModel;->getAttachment(I)Lcom/android/mms/model/MediaModel;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/mms/ui/MmsThumbnailPresenter;->setAttachment(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/MediaModel;)V

    .line 55
    :cond_1
    return-void
.end method

.method protected presentAudioThumbnail(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/AudioModel;)V
    .locals 3
    .param p1, "view"    # Lcom/android/mms/ui/SlideViewInterface;
    .param p2, "audio"    # Lcom/android/mms/model/AudioModel;

    .prologue
    .line 122
    invoke-virtual {p2}, Lcom/android/mms/model/AudioModel;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/mms/model/AudioModel;->getSrc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/mms/model/AudioModel;->getExtras()Ljava/util/Map;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lcom/android/mms/ui/SlideViewInterface;->setAudio(Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)V

    .line 123
    return-void
.end method
