.class Lcom/motorola/messaging/view/SlideView$3;
.super Ljava/lang/Object;
.source "SlideView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/view/SlideView;->setAudio(Landroid/net/Uri;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/view/SlideView;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/view/SlideView;)V
    .locals 0

    .prologue
    .line 466
    iput-object p1, p0, Lcom/motorola/messaging/view/SlideView$3;->this$0:Lcom/motorola/messaging/view/SlideView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 468
    iget-object v0, p0, Lcom/motorola/messaging/view/SlideView$3;->this$0:Lcom/motorola/messaging/view/SlideView;

    # invokes: Lcom/motorola/messaging/view/SlideView;->onPlaybackError()V
    invoke-static {v0}, Lcom/motorola/messaging/view/SlideView;->access$900(Lcom/motorola/messaging/view/SlideView;)V

    .line 469
    const/4 v0, 0x1

    return v0
.end method
