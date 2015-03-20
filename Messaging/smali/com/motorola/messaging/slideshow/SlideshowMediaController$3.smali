.class Lcom/motorola/messaging/slideshow/SlideshowMediaController$3;
.super Ljava/lang/Object;
.source "SlideshowMediaController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/slideshow/SlideshowMediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/slideshow/SlideshowMediaController;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/slideshow/SlideshowMediaController;)V
    .locals 0

    .prologue
    .line 294
    iput-object p1, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController$3;->this$0:Lcom/motorola/messaging/slideshow/SlideshowMediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 296
    iget-object v1, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController$3;->this$0:Lcom/motorola/messaging/slideshow/SlideshowMediaController;

    # getter for: Lcom/motorola/messaging/slideshow/SlideshowMediaController;->mPlayer:Lcom/motorola/messaging/slideshow/SlideshowMediaController$MediaPlayerControl;
    invoke-static {v1}, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->access$100(Lcom/motorola/messaging/slideshow/SlideshowMediaController;)Lcom/motorola/messaging/slideshow/SlideshowMediaController$MediaPlayerControl;

    move-result-object v1

    invoke-interface {v1}, Lcom/motorola/messaging/slideshow/SlideshowMediaController$MediaPlayerControl;->getCurrentPosition()I

    move-result v0

    .line 297
    .local v0, "pos":I
    add-int/lit16 v0, v0, -0x1388

    .line 298
    iget-object v1, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController$3;->this$0:Lcom/motorola/messaging/slideshow/SlideshowMediaController;

    # getter for: Lcom/motorola/messaging/slideshow/SlideshowMediaController;->mPlayer:Lcom/motorola/messaging/slideshow/SlideshowMediaController$MediaPlayerControl;
    invoke-static {v1}, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->access$100(Lcom/motorola/messaging/slideshow/SlideshowMediaController;)Lcom/motorola/messaging/slideshow/SlideshowMediaController$MediaPlayerControl;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/motorola/messaging/slideshow/SlideshowMediaController$MediaPlayerControl;->seekTo(I)V

    .line 299
    iget-object v1, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController$3;->this$0:Lcom/motorola/messaging/slideshow/SlideshowMediaController;

    # invokes: Lcom/motorola/messaging/slideshow/SlideshowMediaController;->setProgress()I
    invoke-static {v1}, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->access$000(Lcom/motorola/messaging/slideshow/SlideshowMediaController;)I

    .line 301
    iget-object v1, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController$3;->this$0:Lcom/motorola/messaging/slideshow/SlideshowMediaController;

    const/16 v2, 0xbb8

    invoke-virtual {v1, v2}, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->show(I)V

    .line 302
    return-void
.end method
