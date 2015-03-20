.class public Lcom/motorola/messaging/slideshow/SlideshowMediaController;
.super Landroid/widget/PopupWindow;
.source "SlideshowMediaController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/messaging/slideshow/SlideshowMediaController$MediaPlayerControl;
    }
.end annotation


# instance fields
.field private mAnchor:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mCurrentTime:Landroid/widget/TextView;

.field private mEndTime:Landroid/widget/TextView;

.field private mFfwdButton:Landroid/widget/ImageButton;

.field private mFfwdListener:Landroid/view/View$OnClickListener;

.field mFormatBuilder:Ljava/lang/StringBuilder;

.field mFormatter:Ljava/util/Formatter;

.field private mHandler:Landroid/os/Handler;

.field private mHasSaveableMedia:Z

.field private mMediaListButton:Landroid/widget/ImageButton;

.field private mMediaListListener:Landroid/view/View$OnClickListener;

.field private mNextButton:Landroid/widget/ImageButton;

.field private mNextListener:Landroid/view/View$OnClickListener;

.field private mPauseButton:Landroid/widget/ImageButton;

.field private mPauseListener:Landroid/view/View$OnClickListener;

.field private mPlayer:Lcom/motorola/messaging/slideshow/SlideshowMediaController$MediaPlayerControl;

.field private mPrevButton:Landroid/widget/ImageButton;

.field private mPrevListener:Landroid/view/View$OnClickListener;

.field private mProgress:Landroid/widget/ProgressBar;

.field private mRewButton:Landroid/widget/ImageButton;

.field private mRewListener:Landroid/view/View$OnClickListener;

.field private mSlideshowCounter:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/motorola/messaging/slideshow/SlideshowMediaController$MediaPlayerControl;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "anchor"    # Landroid/view/View;
    .param p3, "player"    # Lcom/motorola/messaging/slideshow/SlideshowMediaController$MediaPlayerControl;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 194
    new-instance v0, Lcom/motorola/messaging/slideshow/SlideshowMediaController$1;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/slideshow/SlideshowMediaController$1;-><init>(Lcom/motorola/messaging/slideshow/SlideshowMediaController;)V

    iput-object v0, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->mHandler:Landroid/os/Handler;

    .line 266
    new-instance v0, Lcom/motorola/messaging/slideshow/SlideshowMediaController$2;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/slideshow/SlideshowMediaController$2;-><init>(Lcom/motorola/messaging/slideshow/SlideshowMediaController;)V

    iput-object v0, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->mPauseListener:Landroid/view/View$OnClickListener;

    .line 294
    new-instance v0, Lcom/motorola/messaging/slideshow/SlideshowMediaController$3;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/slideshow/SlideshowMediaController$3;-><init>(Lcom/motorola/messaging/slideshow/SlideshowMediaController;)V

    iput-object v0, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->mRewListener:Landroid/view/View$OnClickListener;

    .line 305
    new-instance v0, Lcom/motorola/messaging/slideshow/SlideshowMediaController$4;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/slideshow/SlideshowMediaController$4;-><init>(Lcom/motorola/messaging/slideshow/SlideshowMediaController;)V

    iput-object v0, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->mFfwdListener:Landroid/view/View$OnClickListener;

    .line 50
    iput-object p1, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->mContext:Landroid/content/Context;

    .line 51
    iput-object p3, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->mPlayer:Lcom/motorola/messaging/slideshow/SlideshowMediaController$MediaPlayerControl;

    .line 52
    iput-object p2, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->mAnchor:Landroid/view/View;

    .line 53
    invoke-virtual {p0}, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->makeControllerView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 54
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->initControllerView(Landroid/view/View;)V

    .line 55
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 56
    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/messaging/slideshow/SlideshowMediaController;)I
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/slideshow/SlideshowMediaController;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->setProgress()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/motorola/messaging/slideshow/SlideshowMediaController;)Lcom/motorola/messaging/slideshow/SlideshowMediaController$MediaPlayerControl;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/slideshow/SlideshowMediaController;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->mPlayer:Lcom/motorola/messaging/slideshow/SlideshowMediaController$MediaPlayerControl;

    return-object v0
.end method

.method static synthetic access$200(Lcom/motorola/messaging/slideshow/SlideshowMediaController;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/slideshow/SlideshowMediaController;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->doPauseResume()V

    return-void
.end method

.method private disableUnsupportedButtons()V
    .locals 2

    .prologue
    .line 140
    :try_start_0
    iget-object v0, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->mRewButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->mRewButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->mFfwdButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->mFfwdButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :cond_1
    :goto_0
    return-void

    .line 146
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private doPauseResume()V
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->mPlayer:Lcom/motorola/messaging/slideshow/SlideshowMediaController$MediaPlayerControl;

    invoke-interface {v0}, Lcom/motorola/messaging/slideshow/SlideshowMediaController$MediaPlayerControl;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->mPlayer:Lcom/motorola/messaging/slideshow/SlideshowMediaController$MediaPlayerControl;

    invoke-interface {v0}, Lcom/motorola/messaging/slideshow/SlideshowMediaController$MediaPlayerControl;->pause()V

    .line 291
    :goto_0
    invoke-direct {p0}, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->updatePausePlay()V

    .line 292
    return-void

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->mPlayer:Lcom/motorola/messaging/slideshow/SlideshowMediaController$MediaPlayerControl;

    invoke-interface {v0}, Lcom/motorola/messaging/slideshow/SlideshowMediaController$MediaPlayerControl;->start()V

    goto :goto_0
.end method

.method private initControllerView(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x1

    .line 80
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 82
    .local v0, "context":Landroid/content/Context;
    const v1, 0x7f090061

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->mSlideshowCounter:Landroid/widget/TextView;

    .line 83
    iget-object v1, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->mSlideshowCounter:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 84
    iget-object v1, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->mSlideshowCounter:Landroid/widget/TextView;

    const v2, 0x7f0b003f

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    iget-object v4, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->mPlayer:Lcom/motorola/messaging/slideshow/SlideshowMediaController$MediaPlayerControl;

    invoke-interface {v4}, Lcom/motorola/messaging/slideshow/SlideshowMediaController$MediaPlayerControl;->getNumOfSlides()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    :cond_0
    const v1, 0x7f090064

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->mPauseButton:Landroid/widget/ImageButton;

    .line 88
    iget-object v1, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->mPauseButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_1

    .line 89
    iget-object v1, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->mPauseButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->mPauseListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    :cond_1
    const v1, 0x7f090065

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->mFfwdButton:Landroid/widget/ImageButton;

    .line 93
    iget-object v1, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->mFfwdButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_2

    .line 94
    iget-object v1, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->mFfwdButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->mFfwdListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object v1, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->mFfwdButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 98
    :cond_2
    const v1, 0x7f090063

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->mRewButton:Landroid/widget/ImageButton;

    .line 99
    iget-object v1, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->mRewButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_3

    .line 100
    iget-object v1, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->mRewButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->mRewListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object v1, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->mRewButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 106
    :cond_3
    const v1, 0x7f090066

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->mNextButton:Landroid/widget/ImageButton;

    .line 107
    const v1, 0x7f090062

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->mPrevButton:Landroid/widget/ImageButton;

    .line 108
    invoke-direct {p0}, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->installPrevNextListeners()V

    .line 112
    const v1, 0x7f090067

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->mMediaListButton:Landroid/widget/ImageButton;

    .line 113
    invoke-direct {p0}, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->installMediaListListener()V

    .line 115
    const v1, 0x7f090069

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->mProgress:Landroid/widget/ProgressBar;

    .line 116
    iget-object v1, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_4

    .line 117
    iget-object v1, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->mProgress:Landroid/widget/ProgressBar;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 120
    :cond_4
    const v1, 0x7f09006a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->mEndTime:Landroid/widget/TextView;

    .line 121
    const v1, 0x7f090068

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->mCurrentTime:Landroid/widget/TextView;

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->mFormatBuilder:Ljava/lang/StringBuilder;

    .line 123
    new-instance v1, Ljava/util/Formatter;

    iget-object v2, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v1, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->mFormatter:Ljava/util/Formatter;

    .line 124
    return-void
.end method

.method private installMediaListListener()V
    .locals 2

    .prologue
    .line 336
    iget-object v0, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->mMediaListButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->mMediaListButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->mMediaListListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 338
    iget-object v1, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->mMediaListButton:Landroid/widget/ImageButton;

    iget-boolean v0, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->mHasSaveableMedia:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->mMediaListListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 340
    :cond_0
    return-void

    .line 338
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private installPrevNextListeners()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 317
    iget-object v0, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->mNextButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->mNextButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->mNextListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    iget-object v3, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->mNextButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->mNextListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->mPrevButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 323
    iget-object v0, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->mPrevButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->mPrevListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 324
    iget-object v0, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->mPrevButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->mPrevListener:Landroid/view/View$OnClickListener;

    if-eqz v3, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 326
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 319
    goto :goto_0

    :cond_3
    move v1, v2

    .line 324
    goto :goto_1
.end method

.method private setProgress()I
    .locals 13

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 228
    iget-object v6, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->mPlayer:Lcom/motorola/messaging/slideshow/SlideshowMediaController$MediaPlayerControl;

    if-nez v6, :cond_0

    .line 263
    :goto_0
    return v8

    .line 231
    :cond_0
    iget-object v6, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->mPlayer:Lcom/motorola/messaging/slideshow/SlideshowMediaController$MediaPlayerControl;

    invoke-interface {v6}, Lcom/motorola/messaging/slideshow/SlideshowMediaController$MediaPlayerControl;->getCurrentPosition()I

    move-result v5

    .line 232
    .local v5, "position":I
    iget-object v6, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->mPlayer:Lcom/motorola/messaging/slideshow/SlideshowMediaController$MediaPlayerControl;

    invoke-interface {v6}, Lcom/motorola/messaging/slideshow/SlideshowMediaController$MediaPlayerControl;->getDuration()I

    move-result v1

    .line 233
    .local v1, "duration":I
    iget-object v6, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v6, :cond_2

    .line 234
    if-lez v1, :cond_1

    .line 236
    const-wide/16 v9, 0x3e8

    int-to-long v11, v5

    mul-long/2addr v9, v11

    int-to-long v11, v1

    div-long v3, v9, v11

    .line 237
    .local v3, "pos":J
    iget-object v6, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->mProgress:Landroid/widget/ProgressBar;

    long-to-int v9, v3

    invoke-virtual {v6, v9}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 239
    .end local v3    # "pos":J
    :cond_1
    iget-object v6, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->mProgress:Landroid/widget/ProgressBar;

    const/16 v9, 0x3e8

    invoke-virtual {v6, v9}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 242
    :cond_2
    iget-object v6, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->mPlayer:Lcom/motorola/messaging/slideshow/SlideshowMediaController$MediaPlayerControl;

    invoke-interface {v6}, Lcom/motorola/messaging/slideshow/SlideshowMediaController$MediaPlayerControl;->getCurrentSlide()I

    move-result v0

    .line 243
    .local v0, "currentSlide":I
    iget-object v6, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->mPlayer:Lcom/motorola/messaging/slideshow/SlideshowMediaController$MediaPlayerControl;

    invoke-interface {v6}, Lcom/motorola/messaging/slideshow/SlideshowMediaController$MediaPlayerControl;->getNumOfSlides()I

    move-result v2

    .line 245
    .local v2, "numOfSlides":I
    if-ne v0, v2, :cond_6

    .line 246
    iget-object v6, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v6, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 251
    :goto_1
    invoke-direct {p0}, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->updatePausePlay()V

    .line 253
    iget-object v6, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->mSlideshowCounter:Landroid/widget/TextView;

    if-eqz v6, :cond_3

    .line 254
    iget-object v6, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->mSlideshowCounter:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->mContext:Landroid/content/Context;

    const v10, 0x7f0b003f

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v11, v7

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    :cond_3
    iget-object v6, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->mEndTime:Landroid/widget/TextView;

    if-eqz v6, :cond_4

    .line 257
    iget-object v6, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->mEndTime:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->stringForTime(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    :cond_4
    iget-object v6, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->mCurrentTime:Landroid/widget/TextView;

    if-eqz v6, :cond_5

    .line 260
    iget-object v6, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->mCurrentTime:Landroid/widget/TextView;

    invoke-direct {p0, v5}, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->stringForTime(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    move v8, v5

    .line 263
    goto :goto_0

    .line 248
    :cond_6
    iget-object v9, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->mNextButton:Landroid/widget/ImageButton;

    iget-object v6, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->mNextListener:Landroid/view/View$OnClickListener;

    if-eqz v6, :cond_7

    move v6, v7

    :goto_2
    invoke-virtual {v9, v6}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1

    :cond_7
    move v6, v8

    goto :goto_2
.end method

.method private stringForTime(I)Ljava/lang/String;
    .locals 11
    .param p1, "timeMs"    # I

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 213
    div-int/lit16 v3, p1, 0x3e8

    .line 215
    .local v3, "totalSeconds":I
    rem-int/lit8 v2, v3, 0x3c

    .line 216
    .local v2, "seconds":I
    div-int/lit8 v4, v3, 0x3c

    rem-int/lit8 v1, v4, 0x3c

    .line 217
    .local v1, "minutes":I
    div-int/lit16 v0, v3, 0xe10

    .line 219
    .local v0, "hours":I
    iget-object v4, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 220
    if-lez v0, :cond_0

    .line 221
    iget-object v4, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->mFormatter:Ljava/util/Formatter;

    const-string v5, "%d:%02d:%02d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {v4, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v4

    .line 223
    :goto_0
    return-object v4

    :cond_0
    iget-object v4, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->mFormatter:Ljava/util/Formatter;

    const-string v5, "%02d:%02d"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v4, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private updatePausePlay()V
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->mPauseButton:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    .line 283
    :goto_0
    return-void

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->mPlayer:Lcom/motorola/messaging/slideshow/SlideshowMediaController$MediaPlayerControl;

    invoke-interface {v0}, Lcom/motorola/messaging/slideshow/SlideshowMediaController$MediaPlayerControl;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 279
    iget-object v0, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->mPauseButton:Landroid/widget/ImageButton;

    const v1, 0x1080023

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 281
    :cond_1
    iget-object v0, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->mPauseButton:Landroid/widget/ImageButton;

    const v1, 0x1080024

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public hide()V
    .locals 2

    .prologue
    .line 187
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 189
    iget-object v0, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 190
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 192
    :cond_0
    return-void
.end method

.method protected makeControllerView()Landroid/view/View;
    .locals 4

    .prologue
    .line 72
    iget-object v2, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 73
    .local v1, "inflate":Landroid/view/LayoutInflater;
    const v2, 0x7f030023

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 75
    .local v0, "controller":Landroid/view/View;
    return-object v0
.end method

.method public setMediaListInfo(ZLandroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "hasSaveableMedia"    # Z
    .param p2, "medialist"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 343
    iput-boolean p1, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->mHasSaveableMedia:Z

    .line 344
    iput-object p2, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->mMediaListListener:Landroid/view/View$OnClickListener;

    .line 346
    invoke-direct {p0}, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->installMediaListListener()V

    .line 347
    return-void
.end method

.method public setMediaPlayer(Lcom/motorola/messaging/slideshow/SlideshowMediaController$MediaPlayerControl;)V
    .locals 0
    .param p1, "player"    # Lcom/motorola/messaging/slideshow/SlideshowMediaController$MediaPlayerControl;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->mPlayer:Lcom/motorola/messaging/slideshow/SlideshowMediaController$MediaPlayerControl;

    .line 62
    invoke-direct {p0}, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->updatePausePlay()V

    .line 63
    return-void
.end method

.method public setPrevNextListeners(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "next"    # Landroid/view/View$OnClickListener;
    .param p2, "prev"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 329
    iput-object p1, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->mNextListener:Landroid/view/View$OnClickListener;

    .line 330
    iput-object p2, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->mPrevListener:Landroid/view/View$OnClickListener;

    .line 332
    invoke-direct {p0}, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->installPrevNextListeners()V

    .line 333
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 131
    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->show(I)V

    .line 132
    return-void
.end method

.method public show(I)V
    .locals 5
    .param p1, "timeout"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 161
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 162
    invoke-direct {p0}, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->setProgress()I

    .line 163
    iget-object v1, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->mPauseButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_0

    .line 164
    iget-object v1, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 166
    :cond_0
    invoke-direct {p0}, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->disableUnsupportedButtons()V

    .line 167
    iget-object v1, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->mAnchor:Landroid/view/View;

    const/16 v2, 0x50

    invoke-virtual {p0, v1, v2, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 169
    :cond_1
    invoke-direct {p0}, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->updatePausePlay()V

    .line 174
    iget-object v1, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 176
    iget-object v1, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 177
    .local v0, "msg":Landroid/os/Message;
    if-eqz p1, :cond_2

    .line 178
    iget-object v1, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 179
    iget-object v1, p0, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->mHandler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 181
    :cond_2
    return-void
.end method

.method public toogle()V
    .locals 1

    .prologue
    .line 361
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    invoke-virtual {p0}, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->hide()V

    .line 366
    :goto_0
    return-void

    .line 364
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->show()V

    goto :goto_0
.end method
