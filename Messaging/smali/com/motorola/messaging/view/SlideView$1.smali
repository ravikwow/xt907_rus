.class Lcom/motorola/messaging/view/SlideView$1;
.super Ljava/lang/Object;
.source "SlideView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/view/SlideView;
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
    .line 111
    iput-object p1, p0, Lcom/motorola/messaging/view/SlideView$1;->this$0:Lcom/motorola/messaging/view/SlideView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v3, 0x0

    .line 113
    # getter for: Lcom/motorola/messaging/view/SlideView;->LOCAL_LOG:Z
    invoke-static {}, Lcom/motorola/messaging/view/SlideView;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    const-string v0, "SlideView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPrepared, seekWhenPrepared="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/messaging/view/SlideView$1;->this$0:Lcom/motorola/messaging/view/SlideView;

    # getter for: Lcom/motorola/messaging/view/SlideView;->mSeekWhenPrepared:I
    invoke-static {v2}, Lcom/motorola/messaging/view/SlideView;->access$100(Lcom/motorola/messaging/view/SlideView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", startWhenPrepared="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/messaging/view/SlideView$1;->this$0:Lcom/motorola/messaging/view/SlideView;

    # getter for: Lcom/motorola/messaging/view/SlideView;->mStartWhenPrepared:Z
    invoke-static {v2}, Lcom/motorola/messaging/view/SlideView;->access$200(Lcom/motorola/messaging/view/SlideView;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", stopWhenPrepared="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/messaging/view/SlideView$1;->this$0:Lcom/motorola/messaging/view/SlideView;

    # getter for: Lcom/motorola/messaging/view/SlideView;->mStopWhenPrepared:Z
    invoke-static {v2}, Lcom/motorola/messaging/view/SlideView;->access$300(Lcom/motorola/messaging/view/SlideView;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/view/SlideView$1;->this$0:Lcom/motorola/messaging/view/SlideView;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/messaging/view/SlideView;->mIsPrepared:Z
    invoke-static {v0, v1}, Lcom/motorola/messaging/view/SlideView;->access$402(Lcom/motorola/messaging/view/SlideView;Z)Z

    .line 121
    iget-object v0, p0, Lcom/motorola/messaging/view/SlideView$1;->this$0:Lcom/motorola/messaging/view/SlideView;

    # getter for: Lcom/motorola/messaging/view/SlideView;->mSeekWhenPrepared:I
    invoke-static {v0}, Lcom/motorola/messaging/view/SlideView;->access$100(Lcom/motorola/messaging/view/SlideView;)I

    move-result v0

    if-lez v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/motorola/messaging/view/SlideView$1;->this$0:Lcom/motorola/messaging/view/SlideView;

    # getter for: Lcom/motorola/messaging/view/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/motorola/messaging/view/SlideView;->access$500(Lcom/motorola/messaging/view/SlideView;)Landroid/media/MediaPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/messaging/view/SlideView$1;->this$0:Lcom/motorola/messaging/view/SlideView;

    # getter for: Lcom/motorola/messaging/view/SlideView;->mSeekWhenPrepared:I
    invoke-static {v1}, Lcom/motorola/messaging/view/SlideView;->access$100(Lcom/motorola/messaging/view/SlideView;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 123
    iget-object v0, p0, Lcom/motorola/messaging/view/SlideView$1;->this$0:Lcom/motorola/messaging/view/SlideView;

    # setter for: Lcom/motorola/messaging/view/SlideView;->mSeekWhenPrepared:I
    invoke-static {v0, v3}, Lcom/motorola/messaging/view/SlideView;->access$102(Lcom/motorola/messaging/view/SlideView;I)I

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/motorola/messaging/view/SlideView$1;->this$0:Lcom/motorola/messaging/view/SlideView;

    # getter for: Lcom/motorola/messaging/view/SlideView;->mStartWhenPrepared:Z
    invoke-static {v0}, Lcom/motorola/messaging/view/SlideView;->access$200(Lcom/motorola/messaging/view/SlideView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 126
    iget-object v0, p0, Lcom/motorola/messaging/view/SlideView$1;->this$0:Lcom/motorola/messaging/view/SlideView;

    # getter for: Lcom/motorola/messaging/view/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/motorola/messaging/view/SlideView;->access$500(Lcom/motorola/messaging/view/SlideView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 127
    iget-object v0, p0, Lcom/motorola/messaging/view/SlideView$1;->this$0:Lcom/motorola/messaging/view/SlideView;

    # setter for: Lcom/motorola/messaging/view/SlideView;->mStartWhenPrepared:Z
    invoke-static {v0, v3}, Lcom/motorola/messaging/view/SlideView;->access$202(Lcom/motorola/messaging/view/SlideView;Z)Z

    .line 128
    iget-object v0, p0, Lcom/motorola/messaging/view/SlideView$1;->this$0:Lcom/motorola/messaging/view/SlideView;

    # invokes: Lcom/motorola/messaging/view/SlideView;->displayAudioInfo()V
    invoke-static {v0}, Lcom/motorola/messaging/view/SlideView;->access$600(Lcom/motorola/messaging/view/SlideView;)V

    .line 130
    :cond_2
    iget-object v0, p0, Lcom/motorola/messaging/view/SlideView$1;->this$0:Lcom/motorola/messaging/view/SlideView;

    # getter for: Lcom/motorola/messaging/view/SlideView;->mStopWhenPrepared:Z
    invoke-static {v0}, Lcom/motorola/messaging/view/SlideView;->access$300(Lcom/motorola/messaging/view/SlideView;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 131
    iget-object v0, p0, Lcom/motorola/messaging/view/SlideView$1;->this$0:Lcom/motorola/messaging/view/SlideView;

    # getter for: Lcom/motorola/messaging/view/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/motorola/messaging/view/SlideView;->access$500(Lcom/motorola/messaging/view/SlideView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 132
    iget-object v0, p0, Lcom/motorola/messaging/view/SlideView$1;->this$0:Lcom/motorola/messaging/view/SlideView;

    # getter for: Lcom/motorola/messaging/view/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/motorola/messaging/view/SlideView;->access$500(Lcom/motorola/messaging/view/SlideView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 133
    iget-object v0, p0, Lcom/motorola/messaging/view/SlideView$1;->this$0:Lcom/motorola/messaging/view/SlideView;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/messaging/view/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0, v1}, Lcom/motorola/messaging/view/SlideView;->access$502(Lcom/motorola/messaging/view/SlideView;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 134
    iget-object v0, p0, Lcom/motorola/messaging/view/SlideView$1;->this$0:Lcom/motorola/messaging/view/SlideView;

    # setter for: Lcom/motorola/messaging/view/SlideView;->mStopWhenPrepared:Z
    invoke-static {v0, v3}, Lcom/motorola/messaging/view/SlideView;->access$302(Lcom/motorola/messaging/view/SlideView;Z)Z

    .line 135
    iget-object v0, p0, Lcom/motorola/messaging/view/SlideView$1;->this$0:Lcom/motorola/messaging/view/SlideView;

    # invokes: Lcom/motorola/messaging/view/SlideView;->hideAudioInfo()V
    invoke-static {v0}, Lcom/motorola/messaging/view/SlideView;->access$700(Lcom/motorola/messaging/view/SlideView;)V

    .line 137
    :cond_3
    return-void
.end method
