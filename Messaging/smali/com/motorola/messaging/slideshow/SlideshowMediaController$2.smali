.class Lcom/motorola/messaging/slideshow/SlideshowMediaController$2;
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
    .line 266
    iput-object p1, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController$2;->this$0:Lcom/motorola/messaging/slideshow/SlideshowMediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 268
    iget-object v0, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController$2;->this$0:Lcom/motorola/messaging/slideshow/SlideshowMediaController;

    # invokes: Lcom/motorola/messaging/slideshow/SlideshowMediaController;->doPauseResume()V
    invoke-static {v0}, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->access$200(Lcom/motorola/messaging/slideshow/SlideshowMediaController;)V

    .line 269
    iget-object v0, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController$2;->this$0:Lcom/motorola/messaging/slideshow/SlideshowMediaController;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->show(I)V

    .line 270
    return-void
.end method
