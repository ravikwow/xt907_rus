.class public Lcom/motorola/messaging/activity/SlideshowActivity;
.super Landroid/app/Activity;
.source "SlideshowActivity.java"

# interfaces
.implements Lorg/w3c/dom/events/EventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/messaging/activity/SlideshowActivity$SmilPlayerController;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final LOCAL_LOG:Z


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mMediaController:Lcom/motorola/messaging/slideshow/SlideshowMediaController;

.field private mPlayerController:Lcom/motorola/messaging/activity/SlideshowActivity$SmilPlayerController;

.field private mPlayerListener:Lcom/motorola/messaging/activity/SlideshowActivity$SmilPlayerController$PlayerListener;

.field private mPresenter:Lcom/motorola/messaging/slideshow/SlideshowPresenter;

.field private mShowMediaController:Z

.field private mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;

.field private mSmilPlayer:Lcom/motorola/messaging/dom/smil/SmilPlayer;

.field private mTouchStartY:I

.field private mTouchState:I

.field private mUserPaused:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 58
    sput-boolean v0, Lcom/motorola/messaging/activity/SlideshowActivity;->DEBUG:Z

    .line 59
    sget-boolean v1, Lcom/motorola/messaging/activity/SlideshowActivity;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v1, :cond_0

    :goto_0
    sput-boolean v0, Lcom/motorola/messaging/activity/SlideshowActivity;->LOCAL_LOG:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/messaging/activity/SlideshowActivity;->mTouchState:I

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/messaging/activity/SlideshowActivity;->mShowMediaController:Z

    .line 103
    new-instance v0, Lcom/motorola/messaging/activity/SlideshowActivity$1;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/activity/SlideshowActivity$1;-><init>(Lcom/motorola/messaging/activity/SlideshowActivity;)V

    iput-object v0, p0, Lcom/motorola/messaging/activity/SlideshowActivity;->mHandler:Landroid/os/Handler;

    .line 478
    new-instance v0, Lcom/motorola/messaging/activity/SlideshowActivity$6;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/activity/SlideshowActivity$6;-><init>(Lcom/motorola/messaging/activity/SlideshowActivity;)V

    iput-object v0, p0, Lcom/motorola/messaging/activity/SlideshowActivity;->mPlayerListener:Lcom/motorola/messaging/activity/SlideshowActivity$SmilPlayerController$PlayerListener;

    return-void
.end method

.method static synthetic access$000(Lcom/motorola/messaging/activity/SlideshowActivity;)Lcom/motorola/messaging/dom/smil/SmilPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/activity/SlideshowActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowActivity;->mSmilPlayer:Lcom/motorola/messaging/dom/smil/SmilPlayer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/motorola/messaging/activity/SlideshowActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/activity/SlideshowActivity;

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/motorola/messaging/activity/SlideshowActivity;->mShowMediaController:Z

    return v0
.end method

.method static synthetic access$200(Lcom/motorola/messaging/activity/SlideshowActivity;)Lcom/motorola/messaging/slideshow/SlideshowMediaController;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/activity/SlideshowActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowActivity;->mMediaController:Lcom/motorola/messaging/slideshow/SlideshowMediaController;

    return-object v0
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 54
    sget-boolean v0, Lcom/motorola/messaging/activity/SlideshowActivity;->LOCAL_LOG:Z

    return v0
.end method

.method static synthetic access$400(Lcom/motorola/messaging/activity/SlideshowActivity;)Lcom/motorola/messaging/slideshow/SlideshowPresenter;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/activity/SlideshowActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowActivity;->mPresenter:Lcom/motorola/messaging/slideshow/SlideshowPresenter;

    return-object v0
.end method

.method static synthetic access$502(Lcom/motorola/messaging/activity/SlideshowActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/activity/SlideshowActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/motorola/messaging/activity/SlideshowActivity;->mUserPaused:Z

    return p1
.end method

.method private initMediaController()V
    .locals 3

    .prologue
    .line 227
    new-instance v0, Lcom/motorola/messaging/activity/SlideshowActivity$SmilPlayerController;

    iget-object v1, p0, Lcom/motorola/messaging/activity/SlideshowActivity;->mSmilPlayer:Lcom/motorola/messaging/dom/smil/SmilPlayer;

    invoke-direct {v0, v1}, Lcom/motorola/messaging/activity/SlideshowActivity$SmilPlayerController;-><init>(Lcom/motorola/messaging/dom/smil/SmilPlayer;)V

    iput-object v0, p0, Lcom/motorola/messaging/activity/SlideshowActivity;->mPlayerController:Lcom/motorola/messaging/activity/SlideshowActivity$SmilPlayerController;

    .line 228
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowActivity;->mPlayerController:Lcom/motorola/messaging/activity/SlideshowActivity$SmilPlayerController;

    iget-object v1, p0, Lcom/motorola/messaging/activity/SlideshowActivity;->mPlayerListener:Lcom/motorola/messaging/activity/SlideshowActivity$SmilPlayerController$PlayerListener;

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/activity/SlideshowActivity$SmilPlayerController;->setListener(Lcom/motorola/messaging/activity/SlideshowActivity$SmilPlayerController$PlayerListener;)V

    .line 229
    new-instance v0, Lcom/motorola/messaging/slideshow/SlideshowMediaController;

    const v1, 0x7f09005b

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/messaging/activity/SlideshowActivity;->mPlayerController:Lcom/motorola/messaging/activity/SlideshowActivity$SmilPlayerController;

    invoke-direct {v0, p0, v1, v2}, Lcom/motorola/messaging/slideshow/SlideshowMediaController;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/motorola/messaging/slideshow/SlideshowMediaController$MediaPlayerControl;)V

    iput-object v0, p0, Lcom/motorola/messaging/activity/SlideshowActivity;->mMediaController:Lcom/motorola/messaging/slideshow/SlideshowMediaController;

    .line 230
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowActivity;->mMediaController:Lcom/motorola/messaging/slideshow/SlideshowMediaController;

    iget-object v1, p0, Lcom/motorola/messaging/activity/SlideshowActivity;->mPlayerController:Lcom/motorola/messaging/activity/SlideshowActivity$SmilPlayerController;

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->setMediaPlayer(Lcom/motorola/messaging/slideshow/SlideshowMediaController$MediaPlayerControl;)V

    .line 231
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowActivity;->mMediaController:Lcom/motorola/messaging/slideshow/SlideshowMediaController;

    new-instance v1, Lcom/motorola/messaging/activity/SlideshowActivity$3;

    invoke-direct {v1, p0}, Lcom/motorola/messaging/activity/SlideshowActivity$3;-><init>(Lcom/motorola/messaging/activity/SlideshowActivity;)V

    new-instance v2, Lcom/motorola/messaging/activity/SlideshowActivity$4;

    invoke-direct {v2, p0}, Lcom/motorola/messaging/activity/SlideshowActivity$4;-><init>(Lcom/motorola/messaging/activity/SlideshowActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->setPrevNextListeners(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 244
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowActivity;->mMediaController:Lcom/motorola/messaging/slideshow/SlideshowMediaController;

    iget-object v1, p0, Lcom/motorola/messaging/activity/SlideshowActivity;->mPresenter:Lcom/motorola/messaging/slideshow/SlideshowPresenter;

    invoke-virtual {v1}, Lcom/motorola/messaging/slideshow/SlideshowPresenter;->getModel()Lcom/motorola/messaging/model/SmilModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/messaging/model/SmilModel;->isSaveable()Z

    move-result v1

    new-instance v2, Lcom/motorola/messaging/activity/SlideshowActivity$5;

    invoke-direct {v2, p0}, Lcom/motorola/messaging/activity/SlideshowActivity$5;-><init>(Lcom/motorola/messaging/activity/SlideshowActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->setMediaListInfo(ZLandroid/view/View$OnClickListener;)V

    .line 257
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    .line 263
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 293
    :pswitch_0
    sget-boolean v1, Lcom/motorola/messaging/activity/SlideshowActivity;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 294
    const-string v1, "SlideshowActivity"

    const-string v2, "dispatchTouchEvent - ACTION_UP or default"

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    :cond_0
    iget v1, p0, Lcom/motorola/messaging/activity/SlideshowActivity;->mTouchState:I

    if-ne v1, v3, :cond_2

    .line 298
    sget-boolean v1, Lcom/motorola/messaging/activity/SlideshowActivity;->LOCAL_LOG:Z

    if-eqz v1, :cond_1

    .line 299
    const-string v1, "SlideshowActivity"

    const-string v2, "dispatchTouchEvent - simple click"

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    :cond_1
    iget-object v1, p0, Lcom/motorola/messaging/activity/SlideshowActivity;->mSmilPlayer:Lcom/motorola/messaging/dom/smil/SmilPlayer;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/motorola/messaging/activity/SlideshowActivity;->mMediaController:Lcom/motorola/messaging/slideshow/SlideshowMediaController;

    if-eqz v1, :cond_2

    .line 303
    iget-object v1, p0, Lcom/motorola/messaging/activity/SlideshowActivity;->mMediaController:Lcom/motorola/messaging/slideshow/SlideshowMediaController;

    invoke-virtual {v1}, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->toogle()V

    .line 306
    :cond_2
    const/4 v1, 0x0

    iput v1, p0, Lcom/motorola/messaging/activity/SlideshowActivity;->mTouchState:I

    .line 310
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 265
    :pswitch_1
    sget-boolean v1, Lcom/motorola/messaging/activity/SlideshowActivity;->LOCAL_LOG:Z

    if-eqz v1, :cond_4

    .line 266
    const-string v1, "SlideshowActivity"

    const-string v2, "dispatchTouchEvent - ACTION_DOWN"

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    :cond_4
    iput v3, p0, Lcom/motorola/messaging/activity/SlideshowActivity;->mTouchState:I

    .line 269
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/motorola/messaging/activity/SlideshowActivity;->mTouchStartY:I

    goto :goto_0

    .line 272
    :pswitch_2
    sget-boolean v1, Lcom/motorola/messaging/activity/SlideshowActivity;->LOCAL_LOG:Z

    if-eqz v1, :cond_5

    .line 273
    const-string v1, "SlideshowActivity"

    const-string v2, "dispatchTouchEvent - ACTION_MOVE"

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    :cond_5
    iget v1, p0, Lcom/motorola/messaging/activity/SlideshowActivity;->mTouchState:I

    if-ne v1, v3, :cond_3

    .line 276
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/motorola/messaging/activity/SlideshowActivity;->mTouchStartY:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 277
    .local v0, "scrolledYDistance":I
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    if-lt v0, v1, :cond_3

    .line 278
    sget-boolean v1, Lcom/motorola/messaging/activity/SlideshowActivity;->LOCAL_LOG:Z

    if-eqz v1, :cond_6

    .line 279
    const-string v1, "SlideshowActivity"

    const-string v2, "dispatchTouchEvent - scroll"

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    :cond_6
    iget-object v1, p0, Lcom/motorola/messaging/activity/SlideshowActivity;->mSmilPlayer:Lcom/motorola/messaging/dom/smil/SmilPlayer;

    if-eqz v1, :cond_7

    .line 284
    iget-object v1, p0, Lcom/motorola/messaging/activity/SlideshowActivity;->mSmilPlayer:Lcom/motorola/messaging/dom/smil/SmilPlayer;

    invoke-virtual {v1}, Lcom/motorola/messaging/dom/smil/SmilPlayer;->pause()V

    .line 285
    iput-boolean v3, p0, Lcom/motorola/messaging/activity/SlideshowActivity;->mUserPaused:Z

    .line 287
    :cond_7
    const/4 v1, 0x2

    iput v1, p0, Lcom/motorola/messaging/activity/SlideshowActivity;->mTouchState:I

    goto :goto_0

    .line 263
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public handleEvent(Lorg/w3c/dom/events/Event;)V
    .locals 4
    .param p1, "evt"    # Lorg/w3c/dom/events/Event;

    .prologue
    .line 489
    move-object v0, p1

    .line 490
    .local v0, "event":Lorg/w3c/dom/events/Event;
    invoke-interface {v0}, Lorg/w3c/dom/events/Event;->getType()Ljava/lang/String;

    move-result-object v1

    .line 491
    .local v1, "type":Ljava/lang/String;
    const-string v2, "SimlDocumentEnd"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 492
    sget-boolean v2, Lcom/motorola/messaging/activity/SlideshowActivity;->LOCAL_LOG:Z

    if-eqz v2, :cond_0

    .line 493
    const-string v2, "SlideshowActivity"

    const-string v3, "End Event received"

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 497
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x0

    .line 125
    sget-boolean v7, Lcom/motorola/messaging/activity/SlideshowActivity;->LOCAL_LOG:Z

    if-eqz v7, :cond_0

    .line 126
    const-string v7, "SlideshowActivity"

    const-string v8, "onCreate"

    invoke-static {v7, v8}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 132
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 133
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/4 v8, -0x3

    invoke-virtual {v7, v8}, Landroid/view/Window;->setFormat(I)V

    .line 134
    const v7, 0x7f03001f

    invoke-virtual {p0, v7}, Landroid/app/Activity;->setContentView(I)V

    .line 136
    const v7, 0x7f09005b

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/motorola/messaging/view/SlideView;

    .line 138
    .local v6, "view":Lcom/motorola/messaging/view/SlideView;
    iget-object v7, p0, Lcom/motorola/messaging/activity/SlideshowActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v7}, Lcom/motorola/messaging/view/SlideView;->setHandler(Landroid/os/Handler;)V

    .line 141
    const/4 v2, 0x0

    .line 143
    .local v2, "model":Lcom/motorola/messaging/model/SmilModel;
    if-eqz p1, :cond_1

    .line 144
    const-string v7, "user_paused"

    invoke-virtual {p1, v7, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/motorola/messaging/activity/SlideshowActivity;->mUserPaused:Z

    .line 145
    const-string v7, "player_bundle"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 146
    .local v3, "playerBundle":Landroid/os/Bundle;
    const-string v7, "controller_showing"

    invoke-virtual {p1, v7, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/motorola/messaging/activity/SlideshowActivity;->mShowMediaController:Z

    .line 147
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, p1}, Lcom/motorola/messaging/model/SmilModel;->readStateFromBundle(Landroid/content/Context;Landroid/os/Bundle;)Lcom/motorola/messaging/model/SmilModel;

    move-result-object v2

    .line 167
    :goto_0
    invoke-static {}, Lcom/motorola/messaging/dom/smil/SmilPlayer;->getPlayer()Lcom/motorola/messaging/dom/smil/SmilPlayer;

    move-result-object v7

    iput-object v7, p0, Lcom/motorola/messaging/activity/SlideshowActivity;->mSmilPlayer:Lcom/motorola/messaging/dom/smil/SmilPlayer;

    .line 170
    invoke-virtual {p0}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/motorola/messaging/slideshow/SlideshowPresenter;

    iput-object v7, p0, Lcom/motorola/messaging/activity/SlideshowActivity;->mPresenter:Lcom/motorola/messaging/slideshow/SlideshowPresenter;

    .line 172
    iget-object v7, p0, Lcom/motorola/messaging/activity/SlideshowActivity;->mPresenter:Lcom/motorola/messaging/slideshow/SlideshowPresenter;

    if-nez v7, :cond_4

    .line 173
    if-nez v2, :cond_3

    .line 174
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 218
    :goto_1
    return-void

    .line 149
    .end local v3    # "playerBundle":Landroid/os/Bundle;
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 150
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 152
    .local v5, "uri":Landroid/net/Uri;
    if-eqz v5, :cond_2

    .line 156
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    sget-object v8, Lcom/motorola/messaging/model/Model$CreationMode;->RETRIEVE:Lcom/motorola/messaging/model/Model$CreationMode;

    const/4 v9, 0x0

    invoke-static {v7, v8, v5, v9}, Lcom/motorola/messaging/model/SmilModel;->createNew(Landroid/content/Context;Lcom/motorola/messaging/model/Model$CreationMode;Landroid/net/Uri;Z)Lcom/motorola/messaging/model/SmilModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 164
    :goto_2
    const/4 v3, 0x0

    .restart local v3    # "playerBundle":Landroid/os/Bundle;
    goto :goto_0

    .line 157
    .end local v3    # "playerBundle":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "SlideshowActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not create model"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 161
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/motorola/messaging/model/SmilModel;->readStateFromBundle(Landroid/content/Context;Landroid/os/Bundle;)Lcom/motorola/messaging/model/SmilModel;

    move-result-object v2

    goto :goto_2

    .line 179
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v5    # "uri":Landroid/net/Uri;
    .restart local v3    # "playerBundle":Landroid/os/Bundle;
    :cond_3
    :try_start_1
    new-instance v7, Lcom/motorola/messaging/slideshow/SlideshowPresenter;

    invoke-direct {v7, p0, v6, v2}, Lcom/motorola/messaging/slideshow/SlideshowPresenter;-><init>(Landroid/content/Context;Lcom/motorola/messaging/view/SlideView;Lcom/motorola/messaging/model/SmilModel;)V

    iput-object v7, p0, Lcom/motorola/messaging/activity/SlideshowActivity;->mPresenter:Lcom/motorola/messaging/slideshow/SlideshowPresenter;
    :try_end_1
    .catch Lcom/motorola/messaging/util/MmsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 191
    :goto_3
    iget-object v7, p0, Lcom/motorola/messaging/activity/SlideshowActivity;->mPresenter:Lcom/motorola/messaging/slideshow/SlideshowPresenter;

    invoke-virtual {v7}, Lcom/motorola/messaging/slideshow/SlideshowPresenter;->getModel()Lcom/motorola/messaging/model/SmilModel;

    move-result-object v7

    invoke-virtual {v7}, Lcom/motorola/messaging/model/SmilModel;->getSmilDocument()Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v7

    iput-object v7, p0, Lcom/motorola/messaging/activity/SlideshowActivity;->mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;

    .line 194
    iget-object v7, p0, Lcom/motorola/messaging/activity/SlideshowActivity;->mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;

    check-cast v7, Lorg/w3c/dom/events/EventTarget;

    const-string v8, "SimlDocumentEnd"

    invoke-interface {v7, v8, p0, v10}, Lorg/w3c/dom/events/EventTarget;->addEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    .line 199
    :try_start_2
    iget-object v7, p0, Lcom/motorola/messaging/activity/SlideshowActivity;->mSmilPlayer:Lcom/motorola/messaging/dom/smil/SmilPlayer;

    iget-object v8, p0, Lcom/motorola/messaging/activity/SlideshowActivity;->mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;

    invoke-virtual {v7, v8}, Lcom/motorola/messaging/dom/smil/SmilPlayer;->init(Lorg/w3c/dom/smil/ElementTime;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 207
    invoke-direct {p0}, Lcom/motorola/messaging/activity/SlideshowActivity;->initMediaController()V

    .line 210
    iget-object v7, p0, Lcom/motorola/messaging/activity/SlideshowActivity;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/motorola/messaging/activity/SlideshowActivity$2;

    invoke-direct {v8, p0, v3}, Lcom/motorola/messaging/activity/SlideshowActivity$2;-><init>(Lcom/motorola/messaging/activity/SlideshowActivity;Landroid/os/Bundle;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 180
    :catch_1
    move-exception v0

    .line 181
    .local v0, "e":Lcom/motorola/messaging/util/MmsException;
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 186
    .end local v0    # "e":Lcom/motorola/messaging/util/MmsException;
    :cond_4
    iget-object v7, p0, Lcom/motorola/messaging/activity/SlideshowActivity;->mPresenter:Lcom/motorola/messaging/slideshow/SlideshowPresenter;

    invoke-virtual {v7, v6}, Lcom/motorola/messaging/slideshow/SlideshowPresenter;->setView(Lcom/motorola/messaging/view/SlideView;)V

    .line 188
    iget-object v7, p0, Lcom/motorola/messaging/activity/SlideshowActivity;->mPresenter:Lcom/motorola/messaging/slideshow/SlideshowPresenter;

    invoke-virtual {v7}, Lcom/motorola/messaging/slideshow/SlideshowPresenter;->enable()V

    goto :goto_3

    .line 200
    :catch_2
    move-exception v4

    .line 201
    .local v4, "t":Ljava/lang/Throwable;
    const-string v7, "SlideshowActivity"

    const-string v8, "Cannot play the slide show."

    invoke-static {v7, v8, v4}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 202
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_1
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 364
    sget-boolean v0, Lcom/motorola/messaging/activity/SlideshowActivity;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 365
    const-string v0, "SlideshowActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 371
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowActivity;->mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;

    if-eqz v0, :cond_1

    .line 372
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowActivity;->mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;

    check-cast v0, Lorg/w3c/dom/events/EventTarget;

    const-string v1, "SimlDocumentEnd"

    const/4 v2, 0x0

    invoke-interface {v0, v1, p0, v2}, Lorg/w3c/dom/events/EventTarget;->removeEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    .line 379
    :cond_1
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowActivity;->mSmilPlayer:Lcom/motorola/messaging/dom/smil/SmilPlayer;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 380
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowActivity;->mSmilPlayer:Lcom/motorola/messaging/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/motorola/messaging/dom/smil/SmilPlayer;->stop()V

    .line 383
    :cond_2
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowActivity;->mPlayerController:Lcom/motorola/messaging/activity/SlideshowActivity$SmilPlayerController;

    if-eqz v0, :cond_3

    .line 384
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowActivity;->mPlayerController:Lcom/motorola/messaging/activity/SlideshowActivity$SmilPlayerController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/activity/SlideshowActivity$SmilPlayerController;->setListener(Lcom/motorola/messaging/activity/SlideshowActivity$SmilPlayerController$PlayerListener;)V

    .line 388
    :cond_3
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowActivity;->mMediaController:Lcom/motorola/messaging/slideshow/SlideshowMediaController;

    if-eqz v0, :cond_4

    .line 389
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowActivity;->mMediaController:Lcom/motorola/messaging/slideshow/SlideshowMediaController;

    invoke-virtual {v0}, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->hide()V

    .line 393
    :cond_4
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowActivity;->mPresenter:Lcom/motorola/messaging/slideshow/SlideshowPresenter;

    if-eqz v0, :cond_5

    .line 394
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowActivity;->mPresenter:Lcom/motorola/messaging/slideshow/SlideshowPresenter;

    invoke-virtual {v0}, Lcom/motorola/messaging/slideshow/SlideshowPresenter;->disable()V

    .line 396
    :cond_5
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 400
    sparse-switch p1, :sswitch_data_0

    .line 411
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowActivity;->mSmilPlayer:Lcom/motorola/messaging/dom/smil/SmilPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowActivity;->mMediaController:Lcom/motorola/messaging/slideshow/SlideshowMediaController;

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowActivity;->mMediaController:Lcom/motorola/messaging/slideshow/SlideshowMediaController;

    invoke-virtual {v0}, Lcom/motorola/messaging/slideshow/SlideshowMediaController;->toogle()V

    .line 415
    :cond_0
    :sswitch_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 400
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 315
    sget-boolean v0, Lcom/motorola/messaging/activity/SlideshowActivity;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 316
    const-string v0, "SlideshowActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 321
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowActivity;->mSmilPlayer:Lcom/motorola/messaging/dom/smil/SmilPlayer;

    if-eqz v0, :cond_1

    .line 322
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowActivity;->mSmilPlayer:Lcom/motorola/messaging/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/motorola/messaging/dom/smil/SmilPlayer;->pause()V

    .line 324
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 328
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 330
    sget-boolean v0, Lcom/motorola/messaging/activity/SlideshowActivity;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 331
    const-string v0, "SlideshowActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowActivity;->mSmilPlayer:Lcom/motorola/messaging/dom/smil/SmilPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowActivity;->mSmilPlayer:Lcom/motorola/messaging/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/motorola/messaging/dom/smil/SmilPlayer;->isPausedState()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/motorola/messaging/activity/SlideshowActivity;->mUserPaused:Z

    if-nez v0, :cond_1

    .line 336
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowActivity;->mSmilPlayer:Lcom/motorola/messaging/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/motorola/messaging/dom/smil/SmilPlayer;->start()V

    .line 338
    :cond_1
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowActivity;->mPresenter:Lcom/motorola/messaging/slideshow/SlideshowPresenter;

    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 342
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 343
    sget-boolean v1, Lcom/motorola/messaging/activity/SlideshowActivity;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 344
    const-string v1, "SlideshowActivity"

    const-string v2, "onSaveInstanceState"

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    :cond_0
    const-string v1, "player_bundle"

    iget-object v2, p0, Lcom/motorola/messaging/activity/SlideshowActivity;->mSmilPlayer:Lcom/motorola/messaging/dom/smil/SmilPlayer;

    invoke-virtual {v2}, Lcom/motorola/messaging/dom/smil/SmilPlayer;->getCurrentState()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 351
    const-string v1, "controller_showing"

    iget-object v2, p0, Lcom/motorola/messaging/activity/SlideshowActivity;->mMediaController:Lcom/motorola/messaging/slideshow/SlideshowMediaController;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 353
    const-string v1, "user_paused"

    iget-boolean v2, p0, Lcom/motorola/messaging/activity/SlideshowActivity;->mUserPaused:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 356
    iget-object v1, p0, Lcom/motorola/messaging/activity/SlideshowActivity;->mPresenter:Lcom/motorola/messaging/slideshow/SlideshowPresenter;

    invoke-virtual {v1}, Lcom/motorola/messaging/slideshow/SlideshowPresenter;->getModel()Lcom/motorola/messaging/model/SmilModel;

    move-result-object v0

    .line 357
    .local v0, "smilModel":Lcom/motorola/messaging/model/SmilModel;
    if-eqz v0, :cond_1

    .line 358
    invoke-virtual {v0, p1}, Lcom/motorola/messaging/model/SmilModel;->writeStateToBundle(Landroid/os/Bundle;)V

    .line 360
    :cond_1
    return-void
.end method
