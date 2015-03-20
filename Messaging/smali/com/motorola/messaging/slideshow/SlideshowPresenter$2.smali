.class Lcom/motorola/messaging/slideshow/SlideshowPresenter$2;
.super Ljava/lang/Object;
.source "SlideshowPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/slideshow/SlideshowPresenter;->onModelChanged(Lcom/motorola/messaging/model/Model;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/slideshow/SlideshowPresenter;

.field final synthetic val$dataChanged:Z

.field final synthetic val$model:Lcom/motorola/messaging/model/Model;

.field final synthetic val$view:Lcom/motorola/messaging/view/SlideView;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/slideshow/SlideshowPresenter;Lcom/motorola/messaging/view/SlideView;Lcom/motorola/messaging/model/Model;Z)V
    .locals 0

    .prologue
    .line 257
    iput-object p1, p0, Lcom/motorola/messaging/slideshow/SlideshowPresenter$2;->this$0:Lcom/motorola/messaging/slideshow/SlideshowPresenter;

    iput-object p2, p0, Lcom/motorola/messaging/slideshow/SlideshowPresenter$2;->val$view:Lcom/motorola/messaging/view/SlideView;

    iput-object p3, p0, Lcom/motorola/messaging/slideshow/SlideshowPresenter$2;->val$model:Lcom/motorola/messaging/model/Model;

    iput-boolean p4, p0, Lcom/motorola/messaging/slideshow/SlideshowPresenter$2;->val$dataChanged:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 260
    :try_start_0
    iget-object v2, p0, Lcom/motorola/messaging/slideshow/SlideshowPresenter$2;->this$0:Lcom/motorola/messaging/slideshow/SlideshowPresenter;

    iget-object v3, p0, Lcom/motorola/messaging/slideshow/SlideshowPresenter$2;->val$view:Lcom/motorola/messaging/view/SlideView;

    iget-object v1, p0, Lcom/motorola/messaging/slideshow/SlideshowPresenter$2;->val$model:Lcom/motorola/messaging/model/Model;

    check-cast v1, Lcom/motorola/messaging/model/MediaModel;

    iget-boolean v4, p0, Lcom/motorola/messaging/slideshow/SlideshowPresenter$2;->val$dataChanged:Z

    invoke-virtual {v2, v3, v1, v4}, Lcom/motorola/messaging/slideshow/SlideshowPresenter;->presentMedia(Lcom/motorola/messaging/view/SlideView;Lcom/motorola/messaging/model/MediaModel;Z)V
    :try_end_0
    .catch Lcom/motorola/messaging/drm/DrmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    :goto_0
    return-void

    .line 261
    :catch_0
    move-exception v0

    .line 262
    .local v0, "e":Lcom/motorola/messaging/drm/DrmException;
    const-string v1, "SlideshowPresenter"

    const-string v2, "onModelChanged: Insufficient DRM rights."

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iget-object v1, p0, Lcom/motorola/messaging/slideshow/SlideshowPresenter$2;->this$0:Lcom/motorola/messaging/slideshow/SlideshowPresenter;

    iget-object v1, v1, Lcom/motorola/messaging/slideshow/SlideshowPresenter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/motorola/messaging/slideshow/SlideshowPresenter$2;->this$0:Lcom/motorola/messaging/slideshow/SlideshowPresenter;

    iget-object v2, v2, Lcom/motorola/messaging/slideshow/SlideshowPresenter;->mContext:Landroid/content/Context;

    const v3, 0x7f0b001e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
