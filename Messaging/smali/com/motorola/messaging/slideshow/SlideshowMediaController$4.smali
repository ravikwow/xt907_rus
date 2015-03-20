.class Lcom/motorola/messaging/slideshow/SlideshowMediaController$4;
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
    .line 305
    iput-object p1, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController$4;->this$0:Lcom/motorola/messaging/slideshow/SlideshowMediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 307
    iget-object v1, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController$4;->this$0:Lcom/motorola/messaging/slideshow/SlideshowMediaController;

    # getter for: Lcom/motorola/messaging/slideshow/SlideshowMediaController;->mPlayer:Lcom/motorola/messaging/slideshow/SlideshowMediaController$MediaPlayerControl;
    invoke-static {v1}, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->access$100(Lcom/motorola/messaging/slideshow/SlideshowMediaController;)Lcom/motorola/messaging/slideshow/SlideshowMediaController$MediaPlayerControl;

    move-result-object v1

    invoke-interface {v1}, Lcom/motorola/messaging/slideshow/SlideshowMediaController$MediaPlayerControl;->getCurrentPosition()I

    move-result v0

    .line 308
    .local v0, "pos":I
    add-int/lit16 v0, v0, 0x3a98

    .line 309
    iget-object v1, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController$4;->this$0:Lcom/motorola/messaging/slideshow/SlideshowMediaController;

    # getter for: Lcom/motorola/messaging/slideshow/SlideshowMediaController;->mPlayer:Lcom/motorola/messaging/slideshow/SlideshowMediaController$MediaPlayerControl;
    invoke-static {v1}, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->access$100(Lcom/motorola/messaging/slideshow/SlideshowMediaController;)Lcom/motorola/messaging/slideshow/SlideshowMediaController$MediaPlayerControl;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/motorola/messaging/slideshow/SlideshowMediaController$MediaPlayerControl;->seekTo(I)V

    .line 310
    iget-object v1, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController$4;->this$0:Lcom/motorola/messaging/slideshow/SlideshowMediaController;

    # invokes: Lcom/motorola/messaging/slideshow/SlideshowMediaController;->setProgress()I
    invoke-static {v1}, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->access$000(Lcom/motorola/messaging/slideshow/SlideshowMediaController;)I

    .line 312
    iget-object v1, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController$4;->this$0:Lcom/motorola/messaging/slideshow/SlideshowMediaController;

    const/16 v2, 0xbb8

    invoke-virtual {v1, v2}, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->show(I)V

    .line 313
    return-void
.end method
