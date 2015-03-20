.class public Lcom/motorola/messaging/view/SlideView;
.super Landroid/widget/LinearLayout;
.source "SlideView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/messaging/view/SlideView$SlideVideoView;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final HORIZONTAL_TEXT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

.field private static final IMAGE_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

.field private static final LOCAL_LOG:Z

.field private static final VERTICAL_TEXT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

.field private static sUTState:I


# instance fields
.field private mAnimationInProgress:Z

.field private mAudioInfoView:Landroid/view/View;

.field private mAudioNameView:Landroid/widget/TextView;

.field private mAudioPlayer:Landroid/media/MediaPlayer;

.field private mHandler:Landroid/os/Handler;

.field private mImageView:Lcom/motorola/messaging/view/MessagingImageView;

.field private mIsPrepared:Z

.field mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private mSeekWhenPrepared:I

.field private mSendShowMediaControllerMsg:Z

.field private mStartWhenPrepared:Z

.field private mStopWhenPrepared:Z

.field private mTextView:Lcom/motorola/messaging/view/LinkedTextView;

.field private mVideoView:Lcom/motorola/messaging/view/SlideView$SlideVideoView;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/high16 v5, 0x3f800000

    const/16 v4, 0x11

    const/4 v1, 0x0

    const/4 v3, -0x2

    .line 60
    sput-boolean v0, Lcom/motorola/messaging/view/SlideView;->DEBUG:Z

    .line 61
    sget-boolean v2, Lcom/motorola/messaging/view/SlideView;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v2, :cond_0

    :goto_0
    sput-boolean v0, Lcom/motorola/messaging/view/SlideView;->LOCAL_LOG:Z

    .line 72
    sput v1, Lcom/motorola/messaging/view/SlideView;->sUTState:I

    .line 95
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/motorola/messaging/view/SlideView;->IMAGE_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    .line 98
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v1, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    sput-object v0, Lcom/motorola/messaging/view/SlideView;->VERTICAL_TEXT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    .line 99
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    sput-object v0, Lcom/motorola/messaging/view/SlideView;->HORIZONTAL_TEXT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    .line 106
    sget-object v0, Lcom/motorola/messaging/view/SlideView;->IMAGE_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 107
    sget-object v0, Lcom/motorola/messaging/view/SlideView;->VERTICAL_TEXT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 108
    sget-object v0, Lcom/motorola/messaging/view/SlideView;->HORIZONTAL_TEXT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 109
    return-void

    :cond_0
    move v0, v1

    .line 61
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 141
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/messaging/view/SlideView;->mAnimationInProgress:Z

    .line 86
    iput-boolean v1, p0, Lcom/motorola/messaging/view/SlideView;->mSendShowMediaControllerMsg:Z

    .line 111
    new-instance v0, Lcom/motorola/messaging/view/SlideView$1;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/view/SlideView$1;-><init>(Lcom/motorola/messaging/view/SlideView;)V

    iput-object v0, p0, Lcom/motorola/messaging/view/SlideView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 142
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 143
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x1

    .line 146
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/messaging/view/SlideView;->mAnimationInProgress:Z

    .line 86
    iput-boolean v1, p0, Lcom/motorola/messaging/view/SlideView;->mSendShowMediaControllerMsg:Z

    .line 111
    new-instance v0, Lcom/motorola/messaging/view/SlideView$1;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/view/SlideView$1;-><init>(Lcom/motorola/messaging/view/SlideView;)V

    iput-object v0, p0, Lcom/motorola/messaging/view/SlideView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 147
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 148
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 58
    sget-boolean v0, Lcom/motorola/messaging/view/SlideView;->LOCAL_LOG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/motorola/messaging/view/SlideView;)I
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/view/SlideView;

    .prologue
    .line 58
    iget v0, p0, Lcom/motorola/messaging/view/SlideView;->mSeekWhenPrepared:I

    return v0
.end method

.method static synthetic access$1000(I)Z
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 58
    invoke-static {p0}, Lcom/motorola/messaging/view/SlideView;->isVerticalDisposition(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/motorola/messaging/view/SlideView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/view/SlideView;
    .param p1, "x1"    # I

    .prologue
    .line 58
    iput p1, p0, Lcom/motorola/messaging/view/SlideView;->mSeekWhenPrepared:I

    return p1
.end method

.method static synthetic access$200(Lcom/motorola/messaging/view/SlideView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/view/SlideView;

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/motorola/messaging/view/SlideView;->mStartWhenPrepared:Z

    return v0
.end method

.method static synthetic access$202(Lcom/motorola/messaging/view/SlideView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/view/SlideView;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/motorola/messaging/view/SlideView;->mStartWhenPrepared:Z

    return p1
.end method

.method static synthetic access$300(Lcom/motorola/messaging/view/SlideView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/view/SlideView;

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/motorola/messaging/view/SlideView;->mStopWhenPrepared:Z

    return v0
.end method

.method static synthetic access$302(Lcom/motorola/messaging/view/SlideView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/view/SlideView;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/motorola/messaging/view/SlideView;->mStopWhenPrepared:Z

    return p1
.end method

.method static synthetic access$402(Lcom/motorola/messaging/view/SlideView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/view/SlideView;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/motorola/messaging/view/SlideView;->mIsPrepared:Z

    return p1
.end method

.method static synthetic access$500(Lcom/motorola/messaging/view/SlideView;)Landroid/media/MediaPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/view/SlideView;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/motorola/messaging/view/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$502(Lcom/motorola/messaging/view/SlideView;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/view/SlideView;
    .param p1, "x1"    # Landroid/media/MediaPlayer;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/motorola/messaging/view/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$600(Lcom/motorola/messaging/view/SlideView;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/view/SlideView;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/motorola/messaging/view/SlideView;->displayAudioInfo()V

    return-void
.end method

.method static synthetic access$700(Lcom/motorola/messaging/view/SlideView;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/view/SlideView;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/motorola/messaging/view/SlideView;->hideAudioInfo()V

    return-void
.end method

.method static synthetic access$800(Lcom/motorola/messaging/view/SlideView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/view/SlideView;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/motorola/messaging/view/SlideView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/motorola/messaging/view/SlideView;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/view/SlideView;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/motorola/messaging/view/SlideView;->onPlaybackError()V

    return-void
.end method

.method private animateImage(Landroid/net/Uri;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "alternateImage"    # Landroid/graphics/Bitmap;

    .prologue
    const/16 v2, 0xa

    .line 386
    sget-boolean v0, Lcom/motorola/messaging/view/SlideView;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 387
    const-string v0, "SlideView"

    const-string v1, "Slideview::animateImage"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/view/SlideView;->mImageView:Lcom/motorola/messaging/view/MessagingImageView;

    if-eqz v0, :cond_1

    .line 391
    iget-object v0, p0, Lcom/motorola/messaging/view/SlideView;->mImageView:Lcom/motorola/messaging/view/MessagingImageView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/motorola/messaging/view/MessagingImageView;->startPlayingGif(Landroid/net/Uri;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 392
    iget-object v0, p0, Lcom/motorola/messaging/view/SlideView;->mImageView:Lcom/motorola/messaging/view/MessagingImageView;

    const/4 v1, 0x5

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 393
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/messaging/view/SlideView;->mAnimationInProgress:Z

    .line 395
    :cond_1
    return-void
.end method

.method private createMainViews(Lcom/motorola/messaging/model/SlideModel;)V
    .locals 5
    .param p1, "model"    # Lcom/motorola/messaging/model/SlideModel;

    .prologue
    .line 260
    invoke-virtual {p1}, Lcom/motorola/messaging/model/SlideModel;->getMediaCollection()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/messaging/model/MediaModel;

    .line 261
    .local v2, "media":Lcom/motorola/messaging/model/MediaModel;
    invoke-virtual {v2}, Lcom/motorola/messaging/model/Model;->getType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move-object v3, v2

    .line 264
    check-cast v3, Lcom/motorola/messaging/model/TextModel;

    invoke-virtual {v3}, Lcom/motorola/messaging/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 265
    new-instance v3, Lcom/motorola/messaging/view/LinkedTextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/motorola/messaging/view/LinkedTextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/motorola/messaging/view/SlideView;->mTextView:Lcom/motorola/messaging/view/LinkedTextView;

    .line 266
    iget-object v3, p0, Lcom/motorola/messaging/view/SlideView;->mTextView:Lcom/motorola/messaging/view/LinkedTextView;

    new-instance v4, Lcom/motorola/messaging/view/SlideView$2;

    invoke-direct {v4, p0}, Lcom/motorola/messaging/view/SlideView$2;-><init>(Lcom/motorola/messaging/view/SlideView;)V

    invoke-virtual {v3, v4}, Lcom/motorola/messaging/view/LinkedTextView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 272
    iget-object v3, p0, Lcom/motorola/messaging/view/SlideView;->mTextView:Lcom/motorola/messaging/view/LinkedTextView;

    invoke-virtual {v3, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 276
    :pswitch_1
    new-instance v3, Lcom/motorola/messaging/view/MessagingImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/motorola/messaging/view/MessagingImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/motorola/messaging/view/SlideView;->mImageView:Lcom/motorola/messaging/view/MessagingImageView;

    .line 277
    iget-object v3, p0, Lcom/motorola/messaging/view/SlideView;->mImageView:Lcom/motorola/messaging/view/MessagingImageView;

    invoke-virtual {v3, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 280
    :pswitch_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 281
    .local v0, "factory":Landroid/view/LayoutInflater;
    const v3, 0x7f030019

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/messaging/view/SlideView;->mAudioInfoView:Landroid/view/View;

    goto :goto_0

    .line 284
    .end local v0    # "factory":Landroid/view/LayoutInflater;
    :pswitch_3
    new-instance v3, Lcom/motorola/messaging/view/SlideView$SlideVideoView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/motorola/messaging/view/SlideView$SlideVideoView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/motorola/messaging/view/SlideView;->mVideoView:Lcom/motorola/messaging/view/SlideView$SlideVideoView;

    .line 285
    iget-object v3, p0, Lcom/motorola/messaging/view/SlideView;->mVideoView:Lcom/motorola/messaging/view/SlideView$SlideVideoView;

    invoke-virtual {v3, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 289
    .end local v2    # "media":Lcom/motorola/messaging/model/MediaModel;
    :cond_1
    return-void

    .line 261
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private displayAudioInfo()V
    .locals 3

    .prologue
    .line 420
    sget-boolean v0, Lcom/motorola/messaging/view/SlideView;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 421
    const-string v0, "SlideView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "displayAudioInfo, audioInfoView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/messaging/view/SlideView;->mAudioInfoView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/view/SlideView;->mAudioInfoView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 425
    iget-object v0, p0, Lcom/motorola/messaging/view/SlideView;->mAudioInfoView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 427
    :cond_1
    return-void
.end method

.method private getTextRelativePosition(Lcom/motorola/messaging/model/MediaModel;Lcom/motorola/messaging/model/MediaModel;)I
    .locals 6
    .param p1, "textModel"    # Lcom/motorola/messaging/model/MediaModel;
    .param p2, "mediaModel"    # Lcom/motorola/messaging/model/MediaModel;

    .prologue
    const/4 v4, 0x0

    .line 296
    invoke-virtual {p1}, Lcom/motorola/messaging/model/MediaModel;->getRegion()Lcom/motorola/messaging/model/RegionModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/motorola/messaging/model/RegionModel;->getTop()I

    move-result v3

    .line 297
    .local v3, "textTop":I
    invoke-virtual {p2}, Lcom/motorola/messaging/model/MediaModel;->getRegion()Lcom/motorola/messaging/model/RegionModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/motorola/messaging/model/RegionModel;->getTop()I

    move-result v1

    .line 298
    .local v1, "mediaTop":I
    if-le v3, v1, :cond_1

    .line 300
    const/4 v4, 0x1

    .line 317
    :cond_0
    :goto_0
    return v4

    .line 301
    :cond_1
    if-lt v3, v1, :cond_0

    .line 306
    invoke-virtual {p1}, Lcom/motorola/messaging/model/MediaModel;->getRegion()Lcom/motorola/messaging/model/RegionModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/motorola/messaging/model/RegionModel;->getLeft()I

    move-result v2

    .line 307
    .local v2, "textLeft":I
    invoke-virtual {p2}, Lcom/motorola/messaging/model/MediaModel;->getRegion()Lcom/motorola/messaging/model/RegionModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/motorola/messaging/model/RegionModel;->getLeft()I

    move-result v0

    .line 308
    .local v0, "mediaLeft":I
    if-le v2, v0, :cond_2

    .line 310
    const/4 v4, 0x3

    goto :goto_0

    .line 311
    :cond_2
    if-ge v2, v0, :cond_0

    .line 313
    const/4 v4, 0x2

    goto :goto_0
.end method

.method private hideAudioInfo()V
    .locals 2

    .prologue
    .line 430
    sget-boolean v0, Lcom/motorola/messaging/view/SlideView;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 431
    const-string v0, "SlideView"

    const-string v1, "hideAudioInfo"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/view/SlideView;->mAudioInfoView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 435
    iget-object v0, p0, Lcom/motorola/messaging/view/SlideView;->mAudioInfoView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 437
    :cond_1
    return-void
.end method

.method private initAudioInfoView(Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0xa

    const/4 v2, 0x5

    .line 409
    iget-object v0, p0, Lcom/motorola/messaging/view/SlideView;->mAudioNameView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/motorola/messaging/view/SlideView;->mAudioNameView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 413
    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/view/SlideView;->mAudioInfoView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 414
    iget-object v0, p0, Lcom/motorola/messaging/view/SlideView;->mAudioInfoView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 415
    iget-object v0, p0, Lcom/motorola/messaging/view/SlideView;->mAudioInfoView:Landroid/view/View;

    invoke-virtual {v0, v3, v2, v3, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 417
    :cond_1
    return-void
.end method

.method private static isVerticalDisposition(I)Z
    .locals 1
    .param p0, "textPosition"    # I

    .prologue
    .line 601
    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onPlaybackError()V
    .locals 2

    .prologue
    .line 151
    const-string v0, "SlideView"

    const-string v1, "Error occurred while playing audio."

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/messaging/view/SlideView;->mIsPrepared:Z

    .line 153
    invoke-virtual {p0}, Lcom/motorola/messaging/view/SlideView;->stopAudio()V

    .line 154
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 672
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 676
    iget-boolean v0, p0, Lcom/motorola/messaging/view/SlideView;->mSendShowMediaControllerMsg:Z

    if-eqz v0, :cond_0

    .line 677
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/messaging/view/SlideView;->mSendShowMediaControllerMsg:Z

    .line 678
    iget-object v0, p0, Lcom/motorola/messaging/view/SlideView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 680
    :cond_0
    return-void
.end method

.method public initViews(Lcom/motorola/messaging/model/SlideModel;)V
    .locals 14
    .param p1, "model"    # Lcom/motorola/messaging/model/SlideModel;

    .prologue
    const/4 v4, 0x1

    const/4 v13, -0x1

    const/high16 v12, 0x3f800000

    const/4 v9, 0x0

    .line 185
    invoke-direct {p0, p1}, Lcom/motorola/messaging/view/SlideView;->createMainViews(Lcom/motorola/messaging/model/SlideModel;)V

    .line 188
    const/4 v7, 0x0

    .line 190
    .local v7, "textPosition":I
    iget-object v10, p0, Lcom/motorola/messaging/view/SlideView;->mTextView:Lcom/motorola/messaging/view/LinkedTextView;

    if-eqz v10, :cond_0

    .line 191
    iget-object v10, p0, Lcom/motorola/messaging/view/SlideView;->mTextView:Lcom/motorola/messaging/view/LinkedTextView;

    invoke-virtual {v10}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/motorola/messaging/model/MediaModel;

    .line 192
    .local v5, "textModel":Lcom/motorola/messaging/model/MediaModel;
    iget-object v10, p0, Lcom/motorola/messaging/view/SlideView;->mImageView:Lcom/motorola/messaging/view/MessagingImageView;

    if-eqz v10, :cond_6

    .line 193
    iget-object v10, p0, Lcom/motorola/messaging/view/SlideView;->mImageView:Lcom/motorola/messaging/view/MessagingImageView;

    invoke-virtual {v10}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/model/MediaModel;

    .line 194
    .local v0, "mediaModel":Lcom/motorola/messaging/model/MediaModel;
    invoke-direct {p0, v5, v0}, Lcom/motorola/messaging/view/SlideView;->getTextRelativePosition(Lcom/motorola/messaging/model/MediaModel;Lcom/motorola/messaging/model/MediaModel;)I

    move-result v7

    .line 204
    .end local v0    # "mediaModel":Lcom/motorola/messaging/model/MediaModel;
    .end local v5    # "textModel":Lcom/motorola/messaging/model/MediaModel;
    :cond_0
    :goto_0
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v3, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 205
    .local v3, "textAndMediaLayout":Landroid/widget/LinearLayout;
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v10, v13, v9, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 207
    const/4 v6, 0x0

    .line 210
    .local v6, "textParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {v7}, Lcom/motorola/messaging/view/SlideView;->isVerticalDisposition(I)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 211
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 212
    sget-object v6, Lcom/motorola/messaging/view/SlideView;->VERTICAL_TEXT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    .line 219
    :goto_1
    const/4 v8, 0x0

    .line 222
    .local v8, "useFullScroll":Z
    iget-object v10, p0, Lcom/motorola/messaging/view/SlideView;->mImageView:Lcom/motorola/messaging/view/MessagingImageView;

    if-eqz v10, :cond_8

    .line 223
    iget-object v10, p0, Lcom/motorola/messaging/view/SlideView;->mImageView:Lcom/motorola/messaging/view/MessagingImageView;

    sget-object v11, Lcom/motorola/messaging/view/SlideView;->IMAGE_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v3, v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 224
    const/4 v8, 0x1

    .line 229
    :cond_1
    :goto_2
    iget-object v10, p0, Lcom/motorola/messaging/view/SlideView;->mTextView:Lcom/motorola/messaging/view/LinkedTextView;

    if-eqz v10, :cond_4

    .line 230
    iget-object v10, p0, Lcom/motorola/messaging/view/SlideView;->mTextView:Lcom/motorola/messaging/view/LinkedTextView;

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 231
    iget-object v10, p0, Lcom/motorola/messaging/view/SlideView;->mTextView:Lcom/motorola/messaging/view/LinkedTextView;

    const/high16 v11, 0x41900000

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextSize(F)V

    .line 233
    if-eqz v7, :cond_2

    const/4 v10, 0x2

    if-ne v7, v10, :cond_3

    :cond_2
    move v4, v9

    .line 234
    .local v4, "textIndex":I
    :cond_3
    if-nez v8, :cond_9

    .line 235
    new-instance v1, Landroid/widget/ScrollView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v1, v10}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 236
    .local v1, "scroll":Landroid/widget/ScrollView;
    iget-object v10, p0, Lcom/motorola/messaging/view/SlideView;->mTextView:Lcom/motorola/messaging/view/LinkedTextView;

    invoke-virtual {v1, v10}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 237
    invoke-virtual {v3, v1, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 243
    .end local v1    # "scroll":Landroid/widget/ScrollView;
    .end local v4    # "textIndex":I
    :cond_4
    :goto_3
    if-eqz v8, :cond_a

    .line 244
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v13, v9, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 245
    .local v2, "scrollParams":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v1, Landroid/widget/ScrollView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v1, v9}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 246
    .restart local v1    # "scroll":Landroid/widget/ScrollView;
    invoke-virtual {v1, v3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 247
    invoke-virtual {p0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 253
    .end local v1    # "scroll":Landroid/widget/ScrollView;
    .end local v2    # "scrollParams":Landroid/widget/LinearLayout$LayoutParams;
    :goto_4
    iget-object v9, p0, Lcom/motorola/messaging/view/SlideView;->mAudioInfoView:Landroid/view/View;

    if-eqz v9, :cond_5

    .line 254
    iget-object v9, p0, Lcom/motorola/messaging/view/SlideView;->mAudioInfoView:Landroid/view/View;

    const v10, 0x7f090051

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/motorola/messaging/view/SlideView;->mAudioNameView:Landroid/widget/TextView;

    .line 255
    iget-object v9, p0, Lcom/motorola/messaging/view/SlideView;->mAudioInfoView:Landroid/view/View;

    invoke-virtual {p0, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 257
    :cond_5
    return-void

    .line 195
    .end local v3    # "textAndMediaLayout":Landroid/widget/LinearLayout;
    .end local v6    # "textParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v8    # "useFullScroll":Z
    .restart local v5    # "textModel":Lcom/motorola/messaging/model/MediaModel;
    :cond_6
    iget-object v10, p0, Lcom/motorola/messaging/view/SlideView;->mVideoView:Lcom/motorola/messaging/view/SlideView$SlideVideoView;

    if-eqz v10, :cond_0

    .line 196
    iget-object v10, p0, Lcom/motorola/messaging/view/SlideView;->mVideoView:Lcom/motorola/messaging/view/SlideView$SlideVideoView;

    invoke-virtual {v10}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/model/MediaModel;

    .line 197
    .restart local v0    # "mediaModel":Lcom/motorola/messaging/model/MediaModel;
    invoke-direct {p0, v5, v0}, Lcom/motorola/messaging/view/SlideView;->getTextRelativePosition(Lcom/motorola/messaging/model/MediaModel;Lcom/motorola/messaging/model/MediaModel;)I

    move-result v7

    .line 198
    iget-object v10, p0, Lcom/motorola/messaging/view/SlideView;->mVideoView:Lcom/motorola/messaging/view/SlideView$SlideVideoView;

    invoke-virtual {v10, v7}, Lcom/motorola/messaging/view/SlideView$SlideVideoView;->setTextPosition(I)V

    goto/16 :goto_0

    .line 214
    .end local v0    # "mediaModel":Lcom/motorola/messaging/model/MediaModel;
    .end local v5    # "textModel":Lcom/motorola/messaging/model/MediaModel;
    .restart local v3    # "textAndMediaLayout":Landroid/widget/LinearLayout;
    .restart local v6    # "textParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_7
    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 215
    sget-object v6, Lcom/motorola/messaging/view/SlideView;->HORIZONTAL_TEXT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    goto/16 :goto_1

    .line 225
    .restart local v8    # "useFullScroll":Z
    :cond_8
    iget-object v10, p0, Lcom/motorola/messaging/view/SlideView;->mVideoView:Lcom/motorola/messaging/view/SlideView$SlideVideoView;

    if-eqz v10, :cond_1

    .line 226
    iget-object v10, p0, Lcom/motorola/messaging/view/SlideView;->mVideoView:Lcom/motorola/messaging/view/SlideView$SlideVideoView;

    invoke-virtual {v3, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_2

    .line 239
    .restart local v4    # "textIndex":I
    :cond_9
    iget-object v10, p0, Lcom/motorola/messaging/view/SlideView;->mTextView:Lcom/motorola/messaging/view/LinkedTextView;

    invoke-virtual {v3, v10, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    .line 249
    .end local v4    # "textIndex":I
    :cond_a
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_4
.end method

.method protected onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 606
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 607
    return-void
.end method

.method public pauseAudio()V
    .locals 2

    .prologue
    .line 537
    iget-object v0, p0, Lcom/motorola/messaging/view/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/motorola/messaging/view/SlideView;->mIsPrepared:Z

    if-eqz v0, :cond_1

    .line 538
    sget-boolean v0, Lcom/motorola/messaging/view/SlideView;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 539
    const-string v0, "SlideView"

    const-string v1, "Pausing audio playback."

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/view/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 543
    iget-object v0, p0, Lcom/motorola/messaging/view/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 546
    :cond_1
    invoke-direct {p0}, Lcom/motorola/messaging/view/SlideView;->displayAudioInfo()V

    .line 547
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/messaging/view/SlideView;->mStartWhenPrepared:Z

    .line 548
    return-void
.end method

.method public pauseVideo()V
    .locals 2

    .prologue
    .line 581
    iget-object v0, p0, Lcom/motorola/messaging/view/SlideView;->mVideoView:Lcom/motorola/messaging/view/SlideView$SlideVideoView;

    if-eqz v0, :cond_1

    .line 582
    sget-boolean v0, Lcom/motorola/messaging/view/SlideView;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 583
    const-string v0, "SlideView"

    const-string v1, "Pausing video playback."

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/view/SlideView;->mVideoView:Lcom/motorola/messaging/view/SlideView$SlideVideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 587
    :cond_1
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 157
    iget-object v0, p0, Lcom/motorola/messaging/view/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {p0}, Lcom/motorola/messaging/view/SlideView;->stopAudio()V

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/view/SlideView;->mVideoView:Lcom/motorola/messaging/view/SlideView$SlideVideoView;

    if-eqz v0, :cond_1

    .line 162
    invoke-virtual {p0}, Lcom/motorola/messaging/view/SlideView;->stopVideo()V

    .line 163
    iget-object v0, p0, Lcom/motorola/messaging/view/SlideView;->mVideoView:Lcom/motorola/messaging/view/SlideView$SlideVideoView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 167
    :cond_1
    iget-boolean v0, p0, Lcom/motorola/messaging/view/SlideView;->mAnimationInProgress:Z

    if-eqz v0, :cond_3

    .line 168
    sget-boolean v0, Lcom/motorola/messaging/view/SlideView;->LOCAL_LOG:Z

    if-eqz v0, :cond_2

    .line 169
    const-string v0, "SlideView"

    const-string v1, "Stopping animation"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :cond_2
    iget-object v0, p0, Lcom/motorola/messaging/view/SlideView;->mImageView:Lcom/motorola/messaging/view/MessagingImageView;

    invoke-virtual {v0}, Lcom/motorola/messaging/view/MessagingImageView;->stopPlayingGif()V

    .line 173
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/messaging/view/SlideView;->mAnimationInProgress:Z

    .line 176
    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 177
    iput-object v2, p0, Lcom/motorola/messaging/view/SlideView;->mImageView:Lcom/motorola/messaging/view/MessagingImageView;

    .line 178
    iput-object v2, p0, Lcom/motorola/messaging/view/SlideView;->mVideoView:Lcom/motorola/messaging/view/SlideView$SlideVideoView;

    .line 179
    iput-object v2, p0, Lcom/motorola/messaging/view/SlideView;->mAudioInfoView:Landroid/view/View;

    .line 180
    iput-object v2, p0, Lcom/motorola/messaging/view/SlideView;->mTextView:Lcom/motorola/messaging/view/LinkedTextView;

    .line 181
    return-void
.end method

.method public seekAudio(I)V
    .locals 3
    .param p1, "seekTo"    # I

    .prologue
    .line 551
    sget-boolean v0, Lcom/motorola/messaging/view/SlideView;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 552
    const-string v0, "SlideView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "seekAudio, seekTo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/view/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/motorola/messaging/view/SlideView;->mIsPrepared:Z

    if-eqz v0, :cond_1

    .line 556
    iget-object v0, p0, Lcom/motorola/messaging/view/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 560
    :goto_0
    return-void

    .line 558
    :cond_1
    iput p1, p0, Lcom/motorola/messaging/view/SlideView;->mSeekWhenPrepared:I

    goto :goto_0
.end method

.method public seekVideo(I)V
    .locals 3
    .param p1, "seekTo"    # I

    .prologue
    .line 590
    iget-object v0, p0, Lcom/motorola/messaging/view/SlideView;->mVideoView:Lcom/motorola/messaging/view/SlideView$SlideVideoView;

    if-eqz v0, :cond_1

    .line 591
    if-lez p1, :cond_1

    .line 592
    sget-boolean v0, Lcom/motorola/messaging/view/SlideView;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 593
    const-string v0, "SlideView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Seeking video playback to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/view/SlideView;->mVideoView:Lcom/motorola/messaging/view/SlideView$SlideVideoView;

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 598
    :cond_1
    return-void
.end method

.method public setAudio(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 6
    .param p1, "audio"    # Landroid/net/Uri;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 440
    sget-boolean v1, Lcom/motorola/messaging/view/SlideView;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 441
    const-string v1, "SlideView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAudio, name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    .line 445
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Audio/name may not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 448
    :cond_2
    sget-boolean v1, Lcom/motorola/messaging/view/SlideView;->LOCAL_LOG:Z

    if-eqz v1, :cond_3

    .line 449
    const-string v1, "SlideView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Changing audio source to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    :cond_3
    iget-object v1, p0, Lcom/motorola/messaging/view/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_4

    .line 453
    iget-object v1, p0, Lcom/motorola/messaging/view/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 454
    iget-object v1, p0, Lcom/motorola/messaging/view/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 455
    iput-object v5, p0, Lcom/motorola/messaging/view/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    .line 458
    :cond_4
    iput-boolean v4, p0, Lcom/motorola/messaging/view/SlideView;->mIsPrepared:Z

    .line 459
    iput-boolean v4, p0, Lcom/motorola/messaging/view/SlideView;->mStartWhenPrepared:Z

    .line 460
    iput v4, p0, Lcom/motorola/messaging/view/SlideView;->mSeekWhenPrepared:I

    .line 461
    iput-boolean v4, p0, Lcom/motorola/messaging/view/SlideView;->mStopWhenPrepared:Z

    .line 464
    :try_start_0
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/motorola/messaging/view/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    .line 465
    iget-object v1, p0, Lcom/motorola/messaging/view/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/motorola/messaging/view/SlideView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 466
    iget-object v1, p0, Lcom/motorola/messaging/view/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    new-instance v2, Lcom/motorola/messaging/view/SlideView$3;

    invoke-direct {v2, p0}, Lcom/motorola/messaging/view/SlideView$3;-><init>(Lcom/motorola/messaging/view/SlideView;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 473
    iget-object v1, p0, Lcom/motorola/messaging/view/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 474
    iget-object v1, p0, Lcom/motorola/messaging/view/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 485
    invoke-direct {p0, p2}, Lcom/motorola/messaging/view/SlideView;->initAudioInfoView(Ljava/lang/String;)V

    .line 486
    :goto_0
    return-void

    .line 475
    :catch_0
    move-exception v0

    .line 476
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "SlideView"

    const-string v2, "Unexpected IOException."

    invoke-static {v1, v2, v0}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 477
    iget-object v1, p0, Lcom/motorola/messaging/view/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_5

    .line 478
    iget-object v1, p0, Lcom/motorola/messaging/view/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 481
    :cond_5
    iput-object v5, p0, Lcom/motorola/messaging/view/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    goto :goto_0
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 683
    iput-object p1, p0, Lcom/motorola/messaging/view/SlideView;->mHandler:Landroid/os/Handler;

    .line 684
    return-void
.end method

.method public setImage(Lcom/motorola/messaging/model/ImageModel;)V
    .locals 7
    .param p1, "image"    # Lcom/motorola/messaging/model/ImageModel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/drm/DrmException;
        }
    .end annotation

    .prologue
    const/16 v6, 0xa

    .line 359
    invoke-virtual {p1}, Lcom/motorola/messaging/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v1

    .line 360
    .local v1, "contentType":Ljava/lang/String;
    sget-boolean v3, Lcom/motorola/messaging/view/SlideView;->LOCAL_LOG:Z

    if-eqz v3, :cond_0

    .line 361
    const-string v3, "SlideView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Slideview::setImage with model type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mAnimationInProgress: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/motorola/messaging/view/SlideView;->mAnimationInProgress:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    :cond_0
    const-string v3, "image/gif"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 366
    const/4 v0, 0x0

    .line 368
    .local v0, "alternateImage":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p1}, Lcom/motorola/messaging/model/ImageModel;->getBitmap()Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 373
    :goto_0
    iget-boolean v3, p0, Lcom/motorola/messaging/view/SlideView;->mAnimationInProgress:Z

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    .line 374
    invoke-virtual {p1}, Lcom/motorola/messaging/model/MediaModel;->getUriWithDrmCheck()Landroid/net/Uri;

    move-result-object v3

    invoke-direct {p0, v3, v1, v0}, Lcom/motorola/messaging/view/SlideView;->animateImage(Landroid/net/Uri;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 382
    .end local v0    # "alternateImage":Landroid/graphics/Bitmap;
    :cond_1
    :goto_1
    return-void

    .line 369
    .restart local v0    # "alternateImage":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v2

    .line 370
    .local v2, "e":Ljava/lang/OutOfMemoryError;
    const-string v3, "SlideView"

    const-string v4, "Could not decode bitmap"

    invoke-static {v3, v4}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 377
    .end local v0    # "alternateImage":Landroid/graphics/Bitmap;
    .end local v2    # "e":Ljava/lang/OutOfMemoryError;
    :cond_2
    iget-object v3, p0, Lcom/motorola/messaging/view/SlideView;->mImageView:Lcom/motorola/messaging/view/MessagingImageView;

    if-eqz v3, :cond_1

    .line 378
    iget-object v3, p0, Lcom/motorola/messaging/view/SlideView;->mImageView:Lcom/motorola/messaging/view/MessagingImageView;

    invoke-virtual {p1}, Lcom/motorola/messaging/model/ImageModel;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 379
    iget-object v3, p0, Lcom/motorola/messaging/view/SlideView;->mImageView:Lcom/motorola/messaging/view/MessagingImageView;

    const/4 v4, 0x5

    invoke-virtual {v3, v6, v6, v6, v4}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 489
    sget-boolean v0, Lcom/motorola/messaging/view/SlideView;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 490
    const-string v0, "SlideView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setText, name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", text="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/view/SlideView;->mTextView:Lcom/motorola/messaging/view/LinkedTextView;

    if-eqz v0, :cond_1

    .line 496
    iget-object v0, p0, Lcom/motorola/messaging/view/SlideView;->mTextView:Lcom/motorola/messaging/view/LinkedTextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 498
    :cond_1
    return-void
.end method

.method public setVideo(Lcom/motorola/messaging/model/VideoModel;)V
    .locals 5
    .param p1, "video"    # Lcom/motorola/messaging/model/VideoModel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/drm/DrmException;
        }
    .end annotation

    .prologue
    const/16 v4, 0xa

    const/4 v3, 0x5

    .line 398
    sget-boolean v0, Lcom/motorola/messaging/view/SlideView;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 399
    const-string v0, "SlideView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Changing video source to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/view/SlideView;->mVideoView:Lcom/motorola/messaging/view/SlideView$SlideVideoView;

    if-eqz v0, :cond_1

    .line 403
    iget-object v0, p0, Lcom/motorola/messaging/view/SlideView;->mVideoView:Lcom/motorola/messaging/view/SlideView$SlideVideoView;

    invoke-virtual {p1}, Lcom/motorola/messaging/model/MediaModel;->getUriWithDrmCheck()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 404
    iget-object v0, p0, Lcom/motorola/messaging/view/SlideView;->mVideoView:Lcom/motorola/messaging/view/SlideView$SlideVideoView;

    invoke-virtual {v0, v4, v3, v4, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 406
    :cond_1
    return-void
.end method

.method public startAudio()V
    .locals 3

    .prologue
    .line 501
    sget-boolean v0, Lcom/motorola/messaging/view/SlideView;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 502
    const-string v0, "SlideView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startAudio, isPrepared="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/motorola/messaging/view/SlideView;->mIsPrepared:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", audioPlayer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/messaging/view/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/view/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/motorola/messaging/view/SlideView;->mIsPrepared:Z

    if-eqz v0, :cond_1

    .line 508
    iget-object v0, p0, Lcom/motorola/messaging/view/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 509
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/messaging/view/SlideView;->mStartWhenPrepared:Z

    .line 510
    invoke-direct {p0}, Lcom/motorola/messaging/view/SlideView;->displayAudioInfo()V

    .line 514
    :goto_0
    return-void

    .line 512
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/messaging/view/SlideView;->mStartWhenPrepared:Z

    goto :goto_0
.end method

.method public startVideo()V
    .locals 2

    .prologue
    .line 563
    iget-object v0, p0, Lcom/motorola/messaging/view/SlideView;->mVideoView:Lcom/motorola/messaging/view/SlideView$SlideVideoView;

    if-eqz v0, :cond_1

    .line 564
    sget-boolean v0, Lcom/motorola/messaging/view/SlideView;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 565
    const-string v0, "SlideView"

    const-string v1, "Starting video playback."

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/view/SlideView;->mVideoView:Lcom/motorola/messaging/view/SlideView$SlideVideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 569
    :cond_1
    return-void
.end method

.method public stopAudio()V
    .locals 3

    .prologue
    .line 517
    sget-boolean v0, Lcom/motorola/messaging/view/SlideView;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 518
    const-string v0, "SlideView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopAudio, isPrepared="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/motorola/messaging/view/SlideView;->mIsPrepared:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", audioPlayer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/messaging/view/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/view/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/motorola/messaging/view/SlideView;->mIsPrepared:Z

    if-eqz v0, :cond_2

    .line 524
    sget-boolean v0, Lcom/motorola/messaging/view/SlideView;->LOCAL_LOG:Z

    if-eqz v0, :cond_1

    .line 525
    const-string v0, "SlideView"

    const-string v1, "Stopping audio playback."

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    :cond_1
    iget-object v0, p0, Lcom/motorola/messaging/view/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 528
    iget-object v0, p0, Lcom/motorola/messaging/view/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 529
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/messaging/view/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    .line 530
    invoke-direct {p0}, Lcom/motorola/messaging/view/SlideView;->hideAudioInfo()V

    .line 534
    :goto_0
    return-void

    .line 532
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/messaging/view/SlideView;->mStopWhenPrepared:Z

    goto :goto_0
.end method

.method public stopVideo()V
    .locals 2

    .prologue
    .line 572
    iget-object v0, p0, Lcom/motorola/messaging/view/SlideView;->mVideoView:Lcom/motorola/messaging/view/SlideView$SlideVideoView;

    if-eqz v0, :cond_1

    .line 573
    sget-boolean v0, Lcom/motorola/messaging/view/SlideView;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 574
    const-string v0, "SlideView"

    const-string v1, "Stopping video playback."

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/view/SlideView;->mVideoView:Lcom/motorola/messaging/view/SlideView$SlideVideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 578
    :cond_1
    return-void
.end method
