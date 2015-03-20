.class public interface abstract Lcom/motorola/messaging/slideshow/SlideshowMediaController$MediaPlayerControl;
.super Ljava/lang/Object;
.source "SlideshowMediaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/slideshow/SlideshowMediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MediaPlayerControl"
.end annotation


# virtual methods
.method public abstract getCurrentPosition()I
.end method

.method public abstract getCurrentSlide()I
.end method

.method public abstract getDuration()I
.end method

.method public abstract getNumOfSlides()I
.end method

.method public abstract isPlaying()Z
.end method

.method public abstract pause()V
.end method

.method public abstract seekTo(I)V
.end method

.method public abstract start()V
.end method
