.class Lcom/motorola/messaging/slideshow/SlideshowMediaController$1;
.super Landroid/os/Handler;
.source "SlideshowMediaController.java"


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
    .line 194
    iput-object p1, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController$1;->this$0:Lcom/motorola/messaging/slideshow/SlideshowMediaController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 197
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 199
    :pswitch_0
    iget-object v0, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController$1;->this$0:Lcom/motorola/messaging/slideshow/SlideshowMediaController;

    invoke-virtual {v0}, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->hide()V

    goto :goto_0

    .line 202
    :pswitch_1
    iget-object v0, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController$1;->this$0:Lcom/motorola/messaging/slideshow/SlideshowMediaController;

    # invokes: Lcom/motorola/messaging/slideshow/SlideshowMediaController;->setProgress()I
    invoke-static {v0}, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->access$000(Lcom/motorola/messaging/slideshow/SlideshowMediaController;)I

    .line 203
    iget-object v0, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController$1;->this$0:Lcom/motorola/messaging/slideshow/SlideshowMediaController;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController$1;->this$0:Lcom/motorola/messaging/slideshow/SlideshowMediaController;

    # getter for: Lcom/motorola/messaging/slideshow/SlideshowMediaController;->mPlayer:Lcom/motorola/messaging/slideshow/SlideshowMediaController$MediaPlayerControl;
    invoke-static {v0}, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->access$100(Lcom/motorola/messaging/slideshow/SlideshowMediaController;)Lcom/motorola/messaging/slideshow/SlideshowMediaController$MediaPlayerControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/motorola/messaging/slideshow/SlideshowMediaController$MediaPlayerControl;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 205
    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 197
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
