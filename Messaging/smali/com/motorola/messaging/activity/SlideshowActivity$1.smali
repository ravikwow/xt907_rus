.class Lcom/motorola/messaging/activity/SlideshowActivity$1;
.super Landroid/os/Handler;
.source "SlideshowActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/activity/SlideshowActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/activity/SlideshowActivity;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/activity/SlideshowActivity;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/motorola/messaging/activity/SlideshowActivity$1;->this$0:Lcom/motorola/messaging/activity/SlideshowActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 106
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 109
    :pswitch_0
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowActivity$1;->this$0:Lcom/motorola/messaging/activity/SlideshowActivity;

    # getter for: Lcom/motorola/messaging/activity/SlideshowActivity;->mSmilPlayer:Lcom/motorola/messaging/dom/smil/SmilPlayer;
    invoke-static {v0}, Lcom/motorola/messaging/activity/SlideshowActivity;->access$000(Lcom/motorola/messaging/activity/SlideshowActivity;)Lcom/motorola/messaging/dom/smil/SmilPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowActivity$1;->this$0:Lcom/motorola/messaging/activity/SlideshowActivity;

    # getter for: Lcom/motorola/messaging/activity/SlideshowActivity;->mSmilPlayer:Lcom/motorola/messaging/dom/smil/SmilPlayer;
    invoke-static {v0}, Lcom/motorola/messaging/activity/SlideshowActivity;->access$000(Lcom/motorola/messaging/activity/SlideshowActivity;)Lcom/motorola/messaging/dom/smil/SmilPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/messaging/dom/smil/SmilPlayer;->pause()V

    goto :goto_0

    .line 114
    :pswitch_1
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowActivity$1;->this$0:Lcom/motorola/messaging/activity/SlideshowActivity;

    # getter for: Lcom/motorola/messaging/activity/SlideshowActivity;->mShowMediaController:Z
    invoke-static {v0}, Lcom/motorola/messaging/activity/SlideshowActivity;->access$100(Lcom/motorola/messaging/activity/SlideshowActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowActivity$1;->this$0:Lcom/motorola/messaging/activity/SlideshowActivity;

    # getter for: Lcom/motorola/messaging/activity/SlideshowActivity;->mMediaController:Lcom/motorola/messaging/slideshow/SlideshowMediaController;
    invoke-static {v0}, Lcom/motorola/messaging/activity/SlideshowActivity;->access$200(Lcom/motorola/messaging/activity/SlideshowActivity;)Lcom/motorola/messaging/slideshow/SlideshowMediaController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowActivity$1;->this$0:Lcom/motorola/messaging/activity/SlideshowActivity;

    # getter for: Lcom/motorola/messaging/activity/SlideshowActivity;->mMediaController:Lcom/motorola/messaging/slideshow/SlideshowMediaController;
    invoke-static {v0}, Lcom/motorola/messaging/activity/SlideshowActivity;->access$200(Lcom/motorola/messaging/activity/SlideshowActivity;)Lcom/motorola/messaging/slideshow/SlideshowMediaController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->show()V

    goto :goto_0

    .line 106
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
