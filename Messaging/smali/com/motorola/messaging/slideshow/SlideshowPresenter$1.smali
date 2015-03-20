.class Lcom/motorola/messaging/slideshow/SlideshowPresenter$1;
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

.field final synthetic val$model:Lcom/motorola/messaging/model/Model;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/slideshow/SlideshowPresenter;Lcom/motorola/messaging/model/Model;)V
    .locals 0

    .prologue
    .line 248
    iput-object p1, p0, Lcom/motorola/messaging/slideshow/SlideshowPresenter$1;->this$0:Lcom/motorola/messaging/slideshow/SlideshowPresenter;

    iput-object p2, p0, Lcom/motorola/messaging/slideshow/SlideshowPresenter$1;->val$model:Lcom/motorola/messaging/model/Model;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 250
    iget-object v0, p0, Lcom/motorola/messaging/slideshow/SlideshowPresenter$1;->this$0:Lcom/motorola/messaging/slideshow/SlideshowPresenter;

    iget-object v0, v0, Lcom/motorola/messaging/slideshow/SlideshowPresenter;->mView:Lcom/motorola/messaging/view/SlideView;

    if-eqz v0, :cond_0

    .line 251
    iget-object v1, p0, Lcom/motorola/messaging/slideshow/SlideshowPresenter$1;->this$0:Lcom/motorola/messaging/slideshow/SlideshowPresenter;

    iget-object v0, p0, Lcom/motorola/messaging/slideshow/SlideshowPresenter$1;->this$0:Lcom/motorola/messaging/slideshow/SlideshowPresenter;

    iget-object v2, v0, Lcom/motorola/messaging/slideshow/SlideshowPresenter;->mView:Lcom/motorola/messaging/view/SlideView;

    iget-object v0, p0, Lcom/motorola/messaging/slideshow/SlideshowPresenter$1;->val$model:Lcom/motorola/messaging/model/Model;

    check-cast v0, Lcom/motorola/messaging/model/SlideModel;

    invoke-virtual {v1, v2, v0}, Lcom/motorola/messaging/slideshow/SlideshowPresenter;->presentSlide(Lcom/motorola/messaging/view/SlideView;Lcom/motorola/messaging/model/SlideModel;)V

    .line 253
    :cond_0
    return-void
.end method
