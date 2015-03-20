.class Lcom/motorola/messaging/activity/SlideshowActivity$4;
.super Ljava/lang/Object;
.source "SlideshowActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/activity/SlideshowActivity;->initMediaController()V
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
    .line 238
    iput-object p1, p0, Lcom/motorola/messaging/activity/SlideshowActivity$4;->this$0:Lcom/motorola/messaging/activity/SlideshowActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 240
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowActivity$4;->this$0:Lcom/motorola/messaging/activity/SlideshowActivity;

    # getter for: Lcom/motorola/messaging/activity/SlideshowActivity;->mSmilPlayer:Lcom/motorola/messaging/dom/smil/SmilPlayer;
    invoke-static {v0}, Lcom/motorola/messaging/activity/SlideshowActivity;->access$000(Lcom/motorola/messaging/activity/SlideshowActivity;)Lcom/motorola/messaging/dom/smil/SmilPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/messaging/dom/smil/SmilPlayer;->prev()V

    .line 241
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowActivity$4;->this$0:Lcom/motorola/messaging/activity/SlideshowActivity;

    # getter for: Lcom/motorola/messaging/activity/SlideshowActivity;->mMediaController:Lcom/motorola/messaging/slideshow/SlideshowMediaController;
    invoke-static {v0}, Lcom/motorola/messaging/activity/SlideshowActivity;->access$200(Lcom/motorola/messaging/activity/SlideshowActivity;)Lcom/motorola/messaging/slideshow/SlideshowMediaController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->show()V

    .line 242
    return-void
.end method
