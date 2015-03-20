.class public Lcom/motorola/messaging/slideshow/SlideshowPresenter;
.super Ljava/lang/Object;
.source "SlideshowPresenter.java"

# interfaces
.implements Lcom/motorola/messaging/model/IModelChangedObserver;


# static fields
.field private static final DEBUG:Z

.field private static final LOCAL_LOG:Z


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected final mHandler:Landroid/os/Handler;

.field protected mLocation:I

.field protected mSmilModel:Lcom/motorola/messaging/model/SmilModel;

.field protected mView:Lcom/motorola/messaging/view/SlideView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    sget-boolean v0, Lcom/motorola/messaging/logger/Logger;->MSG_DEBUG_ALL:Z

    sput-boolean v0, Lcom/motorola/messaging/slideshow/SlideshowPresenter;->DEBUG:Z

    .line 46
    sget-boolean v0, Lcom/motorola/messaging/slideshow/SlideshowPresenter;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/motorola/messaging/slideshow/SlideshowPresenter;->LOCAL_LOG:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/motorola/messaging/view/SlideView;Lcom/motorola/messaging/model/SmilModel;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Lcom/motorola/messaging/view/SlideView;
    .param p3, "smilModel"    # Lcom/motorola/messaging/model/SmilModel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/util/MmsException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/motorola/messaging/slideshow/SlideshowPresenter;->mHandler:Landroid/os/Handler;

    .line 60
    iput-object p1, p0, Lcom/motorola/messaging/slideshow/SlideshowPresenter;->mContext:Landroid/content/Context;

    .line 61
    iput-object p2, p0, Lcom/motorola/messaging/slideshow/SlideshowPresenter;->mView:Lcom/motorola/messaging/view/SlideView;

    .line 63
    iput-object p3, p0, Lcom/motorola/messaging/slideshow/SlideshowPresenter;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    .line 64
    iget-object v1, p0, Lcom/motorola/messaging/slideshow/SlideshowPresenter;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    invoke-virtual {v1}, Lcom/motorola/messaging/model/SmilModel;->clearActions()V

    .line 65
    invoke-virtual {p0}, Lcom/motorola/messaging/slideshow/SlideshowPresenter;->enable()V

    .line 67
    const/4 v1, 0x0

    iput v1, p0, Lcom/motorola/messaging/slideshow/SlideshowPresenter;->mLocation:I

    .line 68
    iget-object v1, p0, Lcom/motorola/messaging/slideshow/SlideshowPresenter;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    invoke-virtual {v1}, Lcom/motorola/messaging/model/SmilModel;->getSlideCount()I

    move-result v0

    .line 70
    .local v0, "slideNumber":I
    sget-boolean v1, Lcom/motorola/messaging/slideshow/SlideshowPresenter;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 71
    const-string v1, "SlideshowPresenter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SlideshowPresenter, slideNumber="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :cond_0
    if-nez v0, :cond_1

    .line 75
    new-instance v1, Lcom/motorola/messaging/util/MmsException;

    const-string v2, "Cannot play empty slide"

    invoke-direct {v1, v2}, Lcom/motorola/messaging/util/MmsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 77
    :cond_1
    return-void
.end method


# virtual methods
.method public disable()V
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/motorola/messaging/slideshow/SlideshowPresenter;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    invoke-virtual {v0, p0}, Lcom/motorola/messaging/model/Model;->unregisterModelChangedObserver(Lcom/motorola/messaging/model/IModelChangedObserver;)V

    .line 236
    iget-object v0, p0, Lcom/motorola/messaging/slideshow/SlideshowPresenter;->mView:Lcom/motorola/messaging/view/SlideView;

    invoke-virtual {v0}, Lcom/motorola/messaging/view/SlideView;->reset()V

    .line 237
    return-void
.end method

.method public enable()V
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/motorola/messaging/slideshow/SlideshowPresenter;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    invoke-virtual {v0, p0}, Lcom/motorola/messaging/model/Model;->registerModelChangedObserver(Lcom/motorola/messaging/model/IModelChangedObserver;)V

    .line 228
    return-void
.end method

.method public getModel()Lcom/motorola/messaging/model/SmilModel;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/motorola/messaging/slideshow/SlideshowPresenter;->mSmilModel:Lcom/motorola/messaging/model/SmilModel;

    return-object v0
.end method

.method public onModelChanged(Lcom/motorola/messaging/model/Model;Z)V
    .locals 3
    .param p1, "model"    # Lcom/motorola/messaging/model/Model;
    .param p2, "dataChanged"    # Z

    .prologue
    .line 240
    sget-boolean v1, Lcom/motorola/messaging/slideshow/SlideshowPresenter;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 241
    const-string v1, "SlideshowPresenter"

    const-string v2, "onModelChanged"

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/slideshow/SlideshowPresenter;->mView:Lcom/motorola/messaging/view/SlideView;

    .line 246
    .local v0, "view":Lcom/motorola/messaging/view/SlideView;
    instance-of v1, p1, Lcom/motorola/messaging/model/SlideModel;

    if-eqz v1, :cond_2

    move-object v1, p1

    .line 247
    check-cast v1, Lcom/motorola/messaging/model/SlideModel;

    invoke-virtual {v1}, Lcom/motorola/messaging/model/SlideModel;->getCurrentAction()Lcom/motorola/messaging/model/SlideModel$SlideAction;

    move-result-object v1

    sget-object v2, Lcom/motorola/messaging/model/SlideModel$SlideAction;->START:Lcom/motorola/messaging/model/SlideModel$SlideAction;

    if-ne v1, v2, :cond_1

    .line 248
    iget-object v1, p0, Lcom/motorola/messaging/slideshow/SlideshowPresenter;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/motorola/messaging/slideshow/SlideshowPresenter$1;

    invoke-direct {v2, p0, p1}, Lcom/motorola/messaging/slideshow/SlideshowPresenter$1;-><init>(Lcom/motorola/messaging/slideshow/SlideshowPresenter;Lcom/motorola/messaging/model/Model;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 270
    :cond_1
    :goto_0
    return-void

    .line 256
    :cond_2
    instance-of v1, p1, Lcom/motorola/messaging/model/MediaModel;

    if-eqz v1, :cond_1

    .line 257
    iget-object v1, p0, Lcom/motorola/messaging/slideshow/SlideshowPresenter;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/motorola/messaging/slideshow/SlideshowPresenter$2;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/motorola/messaging/slideshow/SlideshowPresenter$2;-><init>(Lcom/motorola/messaging/slideshow/SlideshowPresenter;Lcom/motorola/messaging/view/SlideView;Lcom/motorola/messaging/model/Model;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected presentAudio(Lcom/motorola/messaging/view/SlideView;Lcom/motorola/messaging/model/AudioModel;Z)V
    .locals 4
    .param p1, "view"    # Lcom/motorola/messaging/view/SlideView;
    .param p2, "audio"    # Lcom/motorola/messaging/model/AudioModel;
    .param p3, "dataChanged"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/drm/DrmException;
        }
    .end annotation

    .prologue
    .line 133
    sget-boolean v1, Lcom/motorola/messaging/slideshow/SlideshowPresenter;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 134
    const-string v1, "SlideshowPresenter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "presentAudio, audio="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", dataChanged="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :cond_0
    if-eqz p3, :cond_1

    .line 141
    invoke-virtual {p2}, Lcom/motorola/messaging/model/MediaModel;->getUriWithDrmCheck()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p2}, Lcom/motorola/messaging/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/motorola/messaging/view/SlideView;->setAudio(Landroid/net/Uri;Ljava/lang/String;)V

    .line 144
    :cond_1
    invoke-virtual {p2}, Lcom/motorola/messaging/model/MediaModel;->getCurrentAction()Lcom/motorola/messaging/model/MediaModel$MediaAction;

    move-result-object v0

    .line 145
    .local v0, "action":Lcom/motorola/messaging/model/MediaModel$MediaAction;
    sget-object v1, Lcom/motorola/messaging/model/MediaModel$MediaAction;->START:Lcom/motorola/messaging/model/MediaModel$MediaAction;

    if-ne v0, v1, :cond_3

    .line 146
    invoke-virtual {p1}, Lcom/motorola/messaging/view/SlideView;->startAudio()V

    .line 154
    :cond_2
    :goto_0
    return-void

    .line 147
    :cond_3
    sget-object v1, Lcom/motorola/messaging/model/MediaModel$MediaAction;->PAUSE:Lcom/motorola/messaging/model/MediaModel$MediaAction;

    if-ne v0, v1, :cond_4

    .line 148
    invoke-virtual {p1}, Lcom/motorola/messaging/view/SlideView;->pauseAudio()V

    goto :goto_0

    .line 149
    :cond_4
    sget-object v1, Lcom/motorola/messaging/model/MediaModel$MediaAction;->STOP:Lcom/motorola/messaging/model/MediaModel$MediaAction;

    if-ne v0, v1, :cond_5

    .line 150
    invoke-virtual {p1}, Lcom/motorola/messaging/view/SlideView;->stopAudio()V

    goto :goto_0

    .line 151
    :cond_5
    sget-object v1, Lcom/motorola/messaging/model/MediaModel$MediaAction;->SEEK:Lcom/motorola/messaging/model/MediaModel$MediaAction;

    if-ne v0, v1, :cond_2

    .line 152
    invoke-virtual {p2}, Lcom/motorola/messaging/model/MediaModel;->getSeekTo()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/motorola/messaging/view/SlideView;->seekAudio(I)V

    goto :goto_0
.end method

.method protected presentImage(Lcom/motorola/messaging/view/SlideView;Lcom/motorola/messaging/model/ImageModel;Z)V
    .locals 2
    .param p1, "view"    # Lcom/motorola/messaging/view/SlideView;
    .param p2, "image"    # Lcom/motorola/messaging/model/ImageModel;
    .param p3, "dataChanged"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/drm/DrmException;
        }
    .end annotation

    .prologue
    .line 175
    sget-boolean v0, Lcom/motorola/messaging/slideshow/SlideshowPresenter;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 176
    const-string v0, "SlideshowPresenter"

    const-string v1, "presentImage"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :cond_0
    if-eqz p3, :cond_1

    .line 180
    invoke-virtual {p1, p2}, Lcom/motorola/messaging/view/SlideView;->setImage(Lcom/motorola/messaging/model/ImageModel;)V

    .line 182
    :cond_1
    return-void
.end method

.method protected presentMedia(Lcom/motorola/messaging/view/SlideView;Lcom/motorola/messaging/model/MediaModel;Z)V
    .locals 2
    .param p1, "view"    # Lcom/motorola/messaging/view/SlideView;
    .param p2, "rMedia"    # Lcom/motorola/messaging/model/MediaModel;
    .param p3, "dataChanged"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/drm/DrmException;
        }
    .end annotation

    .prologue
    .line 110
    sget-boolean v0, Lcom/motorola/messaging/slideshow/SlideshowPresenter;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 111
    const-string v0, "SlideshowPresenter"

    const-string v1, "presentMedia"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :cond_0
    invoke-virtual {p2}, Lcom/motorola/messaging/model/Model;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 128
    .end local p2    # "rMedia":Lcom/motorola/messaging/model/MediaModel;
    :goto_0
    return-void

    .line 116
    .restart local p2    # "rMedia":Lcom/motorola/messaging/model/MediaModel;
    :pswitch_0
    check-cast p2, Lcom/motorola/messaging/model/TextModel;

    .end local p2    # "rMedia":Lcom/motorola/messaging/model/MediaModel;
    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/messaging/slideshow/SlideshowPresenter;->presentText(Lcom/motorola/messaging/view/SlideView;Lcom/motorola/messaging/model/TextModel;Z)V

    goto :goto_0

    .line 119
    .restart local p2    # "rMedia":Lcom/motorola/messaging/model/MediaModel;
    :pswitch_1
    check-cast p2, Lcom/motorola/messaging/model/ImageModel;

    .end local p2    # "rMedia":Lcom/motorola/messaging/model/MediaModel;
    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/messaging/slideshow/SlideshowPresenter;->presentImage(Lcom/motorola/messaging/view/SlideView;Lcom/motorola/messaging/model/ImageModel;Z)V

    goto :goto_0

    .line 122
    .restart local p2    # "rMedia":Lcom/motorola/messaging/model/MediaModel;
    :pswitch_2
    check-cast p2, Lcom/motorola/messaging/model/VideoModel;

    .end local p2    # "rMedia":Lcom/motorola/messaging/model/MediaModel;
    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/messaging/slideshow/SlideshowPresenter;->presentVideo(Lcom/motorola/messaging/view/SlideView;Lcom/motorola/messaging/model/VideoModel;Z)V

    goto :goto_0

    .line 125
    .restart local p2    # "rMedia":Lcom/motorola/messaging/model/MediaModel;
    :pswitch_3
    check-cast p2, Lcom/motorola/messaging/model/AudioModel;

    .end local p2    # "rMedia":Lcom/motorola/messaging/model/MediaModel;
    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/messaging/slideshow/SlideshowPresenter;->presentAudio(Lcom/motorola/messaging/view/SlideView;Lcom/motorola/messaging/model/AudioModel;Z)V

    goto :goto_0

    .line 114
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected presentSlide(Lcom/motorola/messaging/view/SlideView;Lcom/motorola/messaging/model/SlideModel;)V
    .locals 6
    .param p1, "view"    # Lcom/motorola/messaging/view/SlideView;
    .param p2, "model"    # Lcom/motorola/messaging/model/SlideModel;

    .prologue
    .line 84
    sget-boolean v3, Lcom/motorola/messaging/slideshow/SlideshowPresenter;->LOCAL_LOG:Z

    if-eqz v3, :cond_0

    .line 85
    const-string v3, "SlideshowPresenter"

    const-string v4, "presentSlide"

    invoke-static {v3, v4}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :cond_0
    invoke-virtual {p1}, Lcom/motorola/messaging/view/SlideView;->reset()V

    .line 89
    invoke-virtual {p1, p2}, Lcom/motorola/messaging/view/SlideView;->initViews(Lcom/motorola/messaging/model/SlideModel;)V

    .line 91
    :try_start_0
    invoke-virtual {p2}, Lcom/motorola/messaging/model/SlideModel;->getMediaCollection()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/messaging/model/MediaModel;

    .line 92
    .local v2, "media":Lcom/motorola/messaging/model/MediaModel;
    const/4 v3, 0x1

    invoke-virtual {p0, p1, v2, v3}, Lcom/motorola/messaging/slideshow/SlideshowPresenter;->presentMedia(Lcom/motorola/messaging/view/SlideView;Lcom/motorola/messaging/model/MediaModel;Z)V
    :try_end_0
    .catch Lcom/motorola/messaging/drm/DrmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 95
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "media":Lcom/motorola/messaging/model/MediaModel;
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Lcom/motorola/messaging/drm/DrmException;
    const-string v3, "SlideshowPresenter"

    const-string v4, "presentSlide: Insufficient DRM rights."

    invoke-static {v3, v4}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v3, p0, Lcom/motorola/messaging/slideshow/SlideshowPresenter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/motorola/messaging/slideshow/SlideshowPresenter;->mContext:Landroid/content/Context;

    const v5, 0x7f0b001e

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 101
    .end local v0    # "e":Lcom/motorola/messaging/drm/DrmException;
    :cond_1
    return-void
.end method

.method protected presentText(Lcom/motorola/messaging/view/SlideView;Lcom/motorola/messaging/model/TextModel;Z)V
    .locals 3
    .param p1, "view"    # Lcom/motorola/messaging/view/SlideView;
    .param p2, "text"    # Lcom/motorola/messaging/model/TextModel;
    .param p3, "dataChanged"    # Z

    .prologue
    .line 158
    sget-boolean v0, Lcom/motorola/messaging/slideshow/SlideshowPresenter;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 159
    const-string v0, "SlideshowPresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "presentText, dataChanged="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :cond_0
    if-eqz p3, :cond_1

    .line 163
    invoke-virtual {p2}, Lcom/motorola/messaging/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/motorola/messaging/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/motorola/messaging/view/SlideView;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    :cond_1
    return-void
.end method

.method protected presentVideo(Lcom/motorola/messaging/view/SlideView;Lcom/motorola/messaging/model/VideoModel;Z)V
    .locals 4
    .param p1, "view"    # Lcom/motorola/messaging/view/SlideView;
    .param p2, "video"    # Lcom/motorola/messaging/model/VideoModel;
    .param p3, "dataChanged"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/drm/DrmException;
        }
    .end annotation

    .prologue
    .line 186
    sget-boolean v1, Lcom/motorola/messaging/slideshow/SlideshowPresenter;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 187
    const-string v1, "SlideshowPresenter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "presentVideo, dataChanged"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    :cond_0
    if-eqz p3, :cond_1

    .line 191
    invoke-virtual {p1, p2}, Lcom/motorola/messaging/view/SlideView;->setVideo(Lcom/motorola/messaging/model/VideoModel;)V

    .line 194
    :cond_1
    invoke-virtual {p2}, Lcom/motorola/messaging/model/MediaModel;->getCurrentAction()Lcom/motorola/messaging/model/MediaModel$MediaAction;

    move-result-object v0

    .line 196
    .local v0, "action":Lcom/motorola/messaging/model/MediaModel$MediaAction;
    sget-object v1, Lcom/motorola/messaging/model/MediaModel$MediaAction;->START:Lcom/motorola/messaging/model/MediaModel$MediaAction;

    if-ne v0, v1, :cond_3

    .line 197
    invoke-virtual {p1}, Lcom/motorola/messaging/view/SlideView;->startVideo()V

    .line 205
    :cond_2
    :goto_0
    return-void

    .line 198
    :cond_3
    sget-object v1, Lcom/motorola/messaging/model/MediaModel$MediaAction;->PAUSE:Lcom/motorola/messaging/model/MediaModel$MediaAction;

    if-ne v0, v1, :cond_4

    .line 199
    invoke-virtual {p1}, Lcom/motorola/messaging/view/SlideView;->pauseVideo()V

    goto :goto_0

    .line 200
    :cond_4
    sget-object v1, Lcom/motorola/messaging/model/MediaModel$MediaAction;->STOP:Lcom/motorola/messaging/model/MediaModel$MediaAction;

    if-ne v0, v1, :cond_5

    .line 201
    invoke-virtual {p1}, Lcom/motorola/messaging/view/SlideView;->stopVideo()V

    goto :goto_0

    .line 202
    :cond_5
    sget-object v1, Lcom/motorola/messaging/model/MediaModel$MediaAction;->SEEK:Lcom/motorola/messaging/model/MediaModel$MediaAction;

    if-ne v0, v1, :cond_2

    .line 203
    invoke-virtual {p2}, Lcom/motorola/messaging/model/MediaModel;->getSeekTo()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/motorola/messaging/view/SlideView;->seekVideo(I)V

    goto :goto_0
.end method

.method public setView(Lcom/motorola/messaging/view/SlideView;)V
    .locals 0
    .param p1, "view"    # Lcom/motorola/messaging/view/SlideView;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/motorola/messaging/slideshow/SlideshowPresenter;->mView:Lcom/motorola/messaging/view/SlideView;

    .line 217
    return-void
.end method
