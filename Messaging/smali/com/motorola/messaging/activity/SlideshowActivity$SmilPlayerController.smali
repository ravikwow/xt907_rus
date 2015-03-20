.class Lcom/motorola/messaging/activity/SlideshowActivity$SmilPlayerController;
.super Ljava/lang/Object;
.source "SlideshowActivity.java"

# interfaces
.implements Lcom/motorola/messaging/slideshow/SlideshowMediaController$MediaPlayerControl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/activity/SlideshowActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SmilPlayerController"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/messaging/activity/SlideshowActivity$SmilPlayerController$PlayerListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/motorola/messaging/activity/SlideshowActivity$SmilPlayerController$PlayerListener;

.field private final mPlayer:Lcom/motorola/messaging/dom/smil/SmilPlayer;


# direct methods
.method public constructor <init>(Lcom/motorola/messaging/dom/smil/SmilPlayer;)V
    .locals 0
    .param p1, "player"    # Lcom/motorola/messaging/dom/smil/SmilPlayer;

    .prologue
    .line 422
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 423
    iput-object p1, p0, Lcom/motorola/messaging/activity/SlideshowActivity$SmilPlayerController;->mPlayer:Lcom/motorola/messaging/dom/smil/SmilPlayer;

    .line 424
    return-void
.end method


# virtual methods
.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowActivity$SmilPlayerController;->mPlayer:Lcom/motorola/messaging/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/motorola/messaging/dom/smil/SmilPlayer;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public getCurrentSlide()I
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowActivity$SmilPlayerController;->mPlayer:Lcom/motorola/messaging/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/motorola/messaging/dom/smil/SmilPlayer;->getCurrentSlide()I

    move-result v0

    return v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowActivity$SmilPlayerController;->mPlayer:Lcom/motorola/messaging/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/motorola/messaging/dom/smil/SmilPlayer;->getDuration()I

    move-result v0

    return v0
.end method

.method public getNumOfSlides()I
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowActivity$SmilPlayerController;->mPlayer:Lcom/motorola/messaging/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/motorola/messaging/dom/smil/SmilPlayer;->getNumOfSlides()I

    move-result v0

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowActivity$SmilPlayerController;->mPlayer:Lcom/motorola/messaging/dom/smil/SmilPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowActivity$SmilPlayerController;->mPlayer:Lcom/motorola/messaging/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/motorola/messaging/dom/smil/SmilPlayer;->isPlayingState()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowActivity$SmilPlayerController;->mPlayer:Lcom/motorola/messaging/dom/smil/SmilPlayer;

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowActivity$SmilPlayerController;->mPlayer:Lcom/motorola/messaging/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/motorola/messaging/dom/smil/SmilPlayer;->pause()V

    .line 453
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowActivity$SmilPlayerController;->mListener:Lcom/motorola/messaging/activity/SlideshowActivity$SmilPlayerController$PlayerListener;

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowActivity$SmilPlayerController;->mListener:Lcom/motorola/messaging/activity/SlideshowActivity$SmilPlayerController$PlayerListener;

    invoke-interface {v0}, Lcom/motorola/messaging/activity/SlideshowActivity$SmilPlayerController$PlayerListener;->onPause()V

    .line 457
    :cond_0
    return-void
.end method

.method public seekTo(I)V
    .locals 0
    .param p1, "pos"    # I

    .prologue
    .line 461
    return-void
.end method

.method public setListener(Lcom/motorola/messaging/activity/SlideshowActivity$SmilPlayerController$PlayerListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/motorola/messaging/activity/SlideshowActivity$SmilPlayerController$PlayerListener;

    .prologue
    .line 427
    iput-object p1, p0, Lcom/motorola/messaging/activity/SlideshowActivity$SmilPlayerController;->mListener:Lcom/motorola/messaging/activity/SlideshowActivity$SmilPlayerController$PlayerListener;

    .line 428
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowActivity$SmilPlayerController;->mPlayer:Lcom/motorola/messaging/dom/smil/SmilPlayer;

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowActivity$SmilPlayerController;->mPlayer:Lcom/motorola/messaging/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/motorola/messaging/dom/smil/SmilPlayer;->start()V

    .line 466
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowActivity$SmilPlayerController;->mListener:Lcom/motorola/messaging/activity/SlideshowActivity$SmilPlayerController$PlayerListener;

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowActivity$SmilPlayerController;->mListener:Lcom/motorola/messaging/activity/SlideshowActivity$SmilPlayerController$PlayerListener;

    invoke-interface {v0}, Lcom/motorola/messaging/activity/SlideshowActivity$SmilPlayerController$PlayerListener;->onStart()V

    .line 470
    :cond_0
    return-void
.end method
