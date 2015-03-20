.class public Lcom/android/deskclock/DeskClock;
.super Landroid/app/Activity;
.source "DeskClock.java"


# instance fields
.field private final DIM_BEHIND_AMOUNT_DIMMED:F

.field private final DIM_BEHIND_AMOUNT_NORMAL:F

.field private SCREEN_SAVER_COLOR:I

.field private SCREEN_SAVER_COLOR_DIM:I

.field private final SCREEN_SAVER_MOVE_MSG:I

.field private final SCREEN_SAVER_TIMEOUT:J

.field private final SCREEN_SAVER_TIMEOUT_MSG:I

.field private mAlarmButton:Landroid/view/View;

.field private mBatteryDisplay:Landroid/widget/TextView;

.field private mBatteryLevel:I

.field private mDate:Landroid/widget/TextView;

.field private mDateFormat:Ljava/lang/String;

.field private mDimmed:Z

.field private final mHandy:Landroid/os/Handler;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLaunchedFromDock:Z

.field private mMidnightIntent:Landroid/app/PendingIntent;

.field private mNextAlarm:Landroid/widget/TextView;

.field private mPluggedIn:Z

.field private mRNG:Ljava/util/Random;

.field private mScreenSaverMode:Z

.field private mTime:Lcom/android/deskclock/DigitalClock;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 57
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 75
    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lcom/android/deskclock/DeskClock;->SCREEN_SAVER_TIMEOUT:J

    .line 81
    const v0, -0xff9978

    iput v0, p0, Lcom/android/deskclock/DeskClock;->SCREEN_SAVER_COLOR:I

    .line 82
    const v0, -0xffe9cc

    iput v0, p0, Lcom/android/deskclock/DeskClock;->SCREEN_SAVER_COLOR_DIM:I

    .line 85
    const v0, 0x3ecccccd

    iput v0, p0, Lcom/android/deskclock/DeskClock;->DIM_BEHIND_AMOUNT_NORMAL:F

    .line 86
    const v0, 0x3f4ccccd

    iput v0, p0, Lcom/android/deskclock/DeskClock;->DIM_BEHIND_AMOUNT_DIMMED:F

    .line 88
    const/16 v0, 0x2000

    iput v0, p0, Lcom/android/deskclock/DeskClock;->SCREEN_SAVER_TIMEOUT_MSG:I

    .line 89
    const/16 v0, 0x2001

    iput v0, p0, Lcom/android/deskclock/DeskClock;->SCREEN_SAVER_MOVE_MSG:I

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/deskclock/DeskClock;->mNextAlarm:Landroid/widget/TextView;

    .line 98
    iput-boolean v2, p0, Lcom/android/deskclock/DeskClock;->mDimmed:Z

    .line 99
    iput-boolean v2, p0, Lcom/android/deskclock/DeskClock;->mScreenSaverMode:Z

    .line 103
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/deskclock/DeskClock;->mBatteryLevel:I

    .line 104
    iput-boolean v2, p0, Lcom/android/deskclock/DeskClock;->mPluggedIn:Z

    .line 106
    iput-boolean v2, p0, Lcom/android/deskclock/DeskClock;->mLaunchedFromDock:Z

    .line 112
    new-instance v0, Lcom/android/deskclock/DeskClock$1;

    invoke-direct {v0, p0}, Lcom/android/deskclock/DeskClock$1;-><init>(Lcom/android/deskclock/DeskClock;)V

    iput-object v0, p0, Lcom/android/deskclock/DeskClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 142
    new-instance v0, Lcom/android/deskclock/DeskClock$2;

    invoke-direct {v0, p0}, Lcom/android/deskclock/DeskClock$2;-><init>(Lcom/android/deskclock/DeskClock;)V

    iput-object v0, p0, Lcom/android/deskclock/DeskClock;->mHandy:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/deskclock/DeskClock;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/deskclock/DeskClock;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/deskclock/DeskClock;->refreshDate()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/deskclock/DeskClock;III)V
    .locals 0
    .param p0, "x0"    # Lcom/android/deskclock/DeskClock;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/android/deskclock/DeskClock;->handleBatteryUpdate(III)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/deskclock/DeskClock;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/deskclock/DeskClock;

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/android/deskclock/DeskClock;->mLaunchedFromDock:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/deskclock/DeskClock;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/deskclock/DeskClock;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/android/deskclock/DeskClock;->mLaunchedFromDock:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/deskclock/DeskClock;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/deskclock/DeskClock;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/deskclock/DeskClock;->saveScreen()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/deskclock/DeskClock;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/deskclock/DeskClock;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/deskclock/DeskClock;->moveScreenSaver()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/deskclock/DeskClock;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/deskclock/DeskClock;

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/android/deskclock/DeskClock;->mDimmed:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/deskclock/DeskClock;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/deskclock/DeskClock;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/android/deskclock/DeskClock;->mDimmed:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/deskclock/DeskClock;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/deskclock/DeskClock;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/deskclock/DeskClock;->doDim(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/deskclock/DeskClock;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/deskclock/DeskClock;

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/android/deskclock/DeskClock;->mScreenSaverMode:Z

    return v0
.end method

.method private doDim(Z)V
    .locals 5
    .param p1, "fade"    # Z

    .prologue
    .line 348
    const v3, 0x7f0f001a

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 349
    .local v0, "tintView":Landroid/view/View;
    if-nez v0, :cond_0

    .line 384
    :goto_0
    return-void

    .line 351
    :cond_0
    iget-object v4, p0, Lcom/android/deskclock/DeskClock;->mTime:Lcom/android/deskclock/DigitalClock;

    iget-boolean v3, p0, Lcom/android/deskclock/DeskClock;->mDimmed:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v4, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 354
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 355
    .local v1, "win":Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 357
    .local v2, "winParams":Landroid/view/WindowManager$LayoutParams;
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v3, v3, 0x100

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 358
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v3, v3, 0x200

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 361
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 363
    iget-boolean v3, p0, Lcom/android/deskclock/DeskClock;->mDimmed:Z

    if-eqz v3, :cond_3

    .line 364
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v3, v3, 0x400

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 365
    const v3, 0x3f4ccccd

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 366
    const/4 v3, 0x0

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 369
    if-eqz p1, :cond_2

    const/high16 v3, 0x7f050000

    :goto_2
    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 383
    :goto_3
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0

    .line 351
    .end local v1    # "win":Landroid/view/Window;
    .end local v2    # "winParams":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 369
    .restart local v1    # "win":Landroid/view/Window;
    .restart local v2    # "winParams":Landroid/view/WindowManager$LayoutParams;
    :cond_2
    const v3, 0x7f050001

    goto :goto_2

    .line 373
    :cond_3
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v3, v3, -0x401

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 374
    const v3, 0x3ecccccd

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 375
    const/high16 v3, -0x40800000

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 378
    if-eqz p1, :cond_4

    const v3, 0x7f050002

    :goto_4
    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_3

    :cond_4
    const v3, 0x7f050003

    goto :goto_4
.end method

.method private handleBatteryUpdate(III)V
    .locals 2
    .param p1, "plugged"    # I
    .param p2, "status"    # I
    .param p3, "level"    # I

    .prologue
    .line 290
    if-eqz p1, :cond_3

    const/4 v0, 0x1

    .line 291
    .local v0, "pluggedIn":Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/deskclock/DeskClock;->mPluggedIn:Z

    if-eq v0, v1, :cond_0

    .line 292
    invoke-direct {p0, v0}, Lcom/android/deskclock/DeskClock;->setWakeLock(Z)V

    .line 294
    :cond_0
    iget-boolean v1, p0, Lcom/android/deskclock/DeskClock;->mPluggedIn:Z

    if-ne v0, v1, :cond_1

    iget v1, p0, Lcom/android/deskclock/DeskClock;->mBatteryLevel:I

    if-eq p3, v1, :cond_2

    .line 295
    :cond_1
    iput p3, p0, Lcom/android/deskclock/DeskClock;->mBatteryLevel:I

    .line 296
    iput-boolean v0, p0, Lcom/android/deskclock/DeskClock;->mPluggedIn:Z

    .line 297
    invoke-direct {p0}, Lcom/android/deskclock/DeskClock;->refreshBattery()V

    .line 299
    :cond_2
    return-void

    .line 290
    .end local v0    # "pluggedIn":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initViews()V
    .locals 7

    .prologue
    const v6, 0x7f0f0019

    .line 480
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    .line 481
    .local v2, "focused":Landroid/view/View;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    .line 483
    :cond_0
    const v4, 0x7f040007

    invoke-virtual {p0, v4}, Landroid/app/Activity;->setContentView(I)V

    .line 485
    const v4, 0x7f0f0021

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/deskclock/DigitalClock;

    iput-object v4, p0, Lcom/android/deskclock/DeskClock;->mTime:Lcom/android/deskclock/DigitalClock;

    .line 486
    const v4, 0x7f0f0022

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/deskclock/DeskClock;->mDate:Landroid/widget/TextView;

    .line 487
    const v4, 0x7f0f001b

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/deskclock/DeskClock;->mBatteryDisplay:Landroid/widget/TextView;

    .line 489
    iget-object v4, p0, Lcom/android/deskclock/DeskClock;->mTime:Lcom/android/deskclock/DigitalClock;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 490
    iget-object v4, p0, Lcom/android/deskclock/DeskClock;->mTime:Lcom/android/deskclock/DigitalClock;

    invoke-virtual {v4}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 492
    new-instance v0, Lcom/android/deskclock/DeskClock$3;

    invoke-direct {v0, p0}, Lcom/android/deskclock/DeskClock$3;-><init>(Lcom/android/deskclock/DeskClock;)V

    .line 503
    .local v0, "alarmClickListener":Landroid/view/View$OnClickListener;
    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/deskclock/DeskClock;->mNextAlarm:Landroid/widget/TextView;

    .line 504
    iget-object v4, p0, Lcom/android/deskclock/DeskClock;->mNextAlarm:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 506
    const v4, 0x7f0f001c

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/deskclock/DeskClock;->mAlarmButton:Landroid/view/View;

    .line 507
    iget-object v4, p0, Lcom/android/deskclock/DeskClock;->mAlarmButton:Landroid/view/View;

    if-eqz v4, :cond_1

    iget-object v1, p0, Lcom/android/deskclock/DeskClock;->mAlarmButton:Landroid/view/View;

    .line 508
    .local v1, "alarmControl":Landroid/view/View;
    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 510
    const v4, 0x7f0f0017

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 511
    .local v3, "touchView":Landroid/view/View;
    new-instance v4, Lcom/android/deskclock/DeskClock$4;

    invoke-direct {v4, p0}, Lcom/android/deskclock/DeskClock$4;-><init>(Lcom/android/deskclock/DeskClock;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 521
    new-instance v4, Lcom/android/deskclock/DeskClock$5;

    invoke-direct {v4, p0}, Lcom/android/deskclock/DeskClock$5;-><init>(Lcom/android/deskclock/DeskClock;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 528
    return-void

    .line 507
    .end local v1    # "alarmControl":Landroid/view/View;
    .end local v3    # "touchView":Landroid/view/View;
    :cond_1
    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method private moveScreenSaver()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 156
    invoke-direct {p0, v0, v0}, Lcom/android/deskclock/DeskClock;->moveScreenSaverTo(II)V

    .line 157
    return-void
.end method

.method private moveScreenSaverTo(II)V
    .locals 12
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const-wide/16 v10, 0x3e8

    const/4 v6, -0x2

    .line 159
    iget-boolean v4, p0, Lcom/android/deskclock/DeskClock;->mScreenSaverMode:Z

    if-nez v4, :cond_0

    .line 186
    :goto_0
    return-void

    .line 161
    :cond_0
    const v4, 0x7f0f0020

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 163
    .local v3, "saver_view":Landroid/view/View;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 164
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 166
    if-ltz p1, :cond_1

    if-gez p2, :cond_2

    .line 167
    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 168
    .local v2, "myWidth":I
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 169
    .local v1, "myHeight":I
    iget-object v4, p0, Lcom/android/deskclock/DeskClock;->mRNG:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextFloat()F

    move-result v4

    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr v5, v2

    int-to-float v5, v5

    mul-float/2addr v4, v5

    float-to-int p1, v4

    .line 170
    iget-object v4, p0, Lcom/android/deskclock/DeskClock;->mRNG:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextFloat()F

    move-result v4

    iget v5, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v5, v1

    int-to-float v5, v5

    mul-float/2addr v4, v5

    float-to-int p2, v4

    .line 176
    .end local v1    # "myHeight":I
    .end local v2    # "myWidth":I
    :cond_2
    new-instance v4, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v4, v6, v6, p1, p2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    iget-object v4, p0, Lcom/android/deskclock/DeskClock;->mHandy:Landroid/os/Handler;

    const/16 v5, 0x2001

    const-wide/32 v6, 0xea60

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    rem-long/2addr v8, v10

    sub-long v8, v10, v8

    add-long/2addr v6, v8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private refreshAlarm()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 326
    iget-object v1, p0, Lcom/android/deskclock/DeskClock;->mNextAlarm:Landroid/widget/TextView;

    if-nez v1, :cond_0

    .line 339
    :goto_0
    return-void

    .line 328
    :cond_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "next_alarm_formatted"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 330
    .local v0, "nextAlarm":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 331
    iget-object v1, p0, Lcom/android/deskclock/DeskClock;->mNextAlarm:Landroid/widget/TextView;

    const v2, 0x7f0b0042

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    iget-object v1, p0, Lcom/android/deskclock/DeskClock;->mNextAlarm:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 333
    :cond_1
    iget-object v1, p0, Lcom/android/deskclock/DeskClock;->mAlarmButton:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 334
    iget-object v1, p0, Lcom/android/deskclock/DeskClock;->mNextAlarm:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 336
    :cond_2
    iget-object v1, p0, Lcom/android/deskclock/DeskClock;->mNextAlarm:Landroid/widget/TextView;

    const v2, 0x7f0b0041

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 337
    iget-object v1, p0, Lcom/android/deskclock/DeskClock;->mNextAlarm:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private refreshAll()V
    .locals 0

    .prologue
    .line 342
    invoke-direct {p0}, Lcom/android/deskclock/DeskClock;->refreshDate()V

    .line 343
    invoke-direct {p0}, Lcom/android/deskclock/DeskClock;->refreshAlarm()V

    .line 344
    invoke-direct {p0}, Lcom/android/deskclock/DeskClock;->refreshBattery()V

    .line 345
    return-void
.end method

.method private refreshBattery()V
    .locals 0

    .prologue
    .line 305
    return-void
.end method

.method private refreshDate()V
    .locals 3

    .prologue
    .line 320
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 322
    .local v0, "now":Ljava/util/Date;
    iget-object v1, p0, Lcom/android/deskclock/DeskClock;->mDate:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/deskclock/DeskClock;->mDateFormat:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    return-void
.end method

.method private restoreScreen()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 220
    iget-boolean v0, p0, Lcom/android/deskclock/DeskClock;->mScreenSaverMode:Z

    if-nez v0, :cond_0

    .line 229
    :goto_0
    return-void

    .line 222
    :cond_0
    iput-boolean v1, p0, Lcom/android/deskclock/DeskClock;->mScreenSaverMode:Z

    .line 224
    invoke-direct {p0}, Lcom/android/deskclock/DeskClock;->initViews()V

    .line 225
    invoke-direct {p0, v1}, Lcom/android/deskclock/DeskClock;->doDim(Z)V

    .line 227
    invoke-direct {p0}, Lcom/android/deskclock/DeskClock;->scheduleScreenSaver()V

    .line 228
    invoke-direct {p0}, Lcom/android/deskclock/DeskClock;->refreshAll()V

    goto :goto_0
.end method

.method private saveScreen()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 236
    iget-boolean v6, p0, Lcom/android/deskclock/DeskClock;->mScreenSaverMode:Z

    if-eqz v6, :cond_0

    .line 280
    :goto_0
    return-void

    .line 240
    :cond_0
    const v6, 0x7f0f0023

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 241
    .local v3, "oldTimeDate":Landroid/view/View;
    const/4 v6, 0x2

    new-array v2, v6, [I

    .line 242
    .local v2, "oldLoc":[I
    const/4 v6, -0x1

    aput v6, v2, v7

    aput v6, v2, v8

    .line 243
    if-eqz v3, :cond_1

    .line 244
    invoke-virtual {v3, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 247
    :cond_1
    iput-boolean v7, p0, Lcom/android/deskclock/DeskClock;->mScreenSaverMode:Z

    .line 248
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 249
    .local v4, "win":Landroid/view/Window;
    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    .line 250
    .local v5, "winParams":Landroid/view/WindowManager$LayoutParams;
    iget v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v6, v6, 0x400

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 251
    invoke-virtual {v4, v5}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 254
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 255
    .local v1, "focused":Landroid/view/View;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    .line 257
    :cond_2
    const v6, 0x7f04000a

    invoke-virtual {p0, v6}, Landroid/app/Activity;->setContentView(I)V

    .line 259
    const v6, 0x7f0f0021

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/deskclock/DigitalClock;

    iput-object v6, p0, Lcom/android/deskclock/DeskClock;->mTime:Lcom/android/deskclock/DigitalClock;

    .line 260
    const v6, 0x7f0f0022

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/deskclock/DeskClock;->mDate:Landroid/widget/TextView;

    .line 262
    iget-boolean v6, p0, Lcom/android/deskclock/DeskClock;->mDimmed:Z

    if-eqz v6, :cond_3

    iget v0, p0, Lcom/android/deskclock/DeskClock;->SCREEN_SAVER_COLOR_DIM:I

    .line 264
    .local v0, "color":I
    :goto_1
    const v6, 0x7f0f0005

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/deskclock/AndroidClockTextView;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 265
    const v6, 0x7f0f0006

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/deskclock/AndroidClockTextView;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 266
    iget-object v6, p0, Lcom/android/deskclock/DeskClock;->mDate:Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 268
    iget-object v6, p0, Lcom/android/deskclock/DeskClock;->mTime:Lcom/android/deskclock/DigitalClock;

    invoke-virtual {v6, v7}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 270
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/deskclock/DeskClock;->mBatteryDisplay:Landroid/widget/TextView;

    .line 272
    invoke-direct {p0}, Lcom/android/deskclock/DeskClock;->refreshDate()V

    .line 273
    invoke-direct {p0}, Lcom/android/deskclock/DeskClock;->refreshAlarm()V

    .line 275
    aget v6, v2, v8

    if-ltz v6, :cond_4

    .line 276
    aget v6, v2, v8

    aget v7, v2, v7

    invoke-direct {p0, v6, v7}, Lcom/android/deskclock/DeskClock;->moveScreenSaverTo(II)V

    goto/16 :goto_0

    .line 262
    .end local v0    # "color":I
    :cond_3
    iget v0, p0, Lcom/android/deskclock/DeskClock;->SCREEN_SAVER_COLOR:I

    goto :goto_1

    .line 278
    .restart local v0    # "color":I
    :cond_4
    invoke-direct {p0}, Lcom/android/deskclock/DeskClock;->moveScreenSaver()V

    goto/16 :goto_0
.end method

.method private scheduleScreenSaver()V
    .locals 4

    .prologue
    const/16 v2, 0x2000

    .line 204
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f090000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    :goto_0
    return-void

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mHandy:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 210
    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mHandy:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/deskclock/DeskClock;->mHandy:Landroid/os/Handler;

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private setWakeLock(Z)V
    .locals 4
    .param p1, "hold"    # Z

    .prologue
    .line 190
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 191
    .local v0, "win":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 192
    .local v1, "winParams":Landroid/view/WindowManager$LayoutParams;
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, 0x680001

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 196
    if-eqz p1, :cond_0

    .line 197
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x80

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 200
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 201
    return-void

    .line 199
    :cond_0
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, -0x81

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 532
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 533
    iget-boolean v0, p0, Lcom/android/deskclock/DeskClock;->mScreenSaverMode:Z

    if-eqz v0, :cond_0

    .line 534
    invoke-direct {p0}, Lcom/android/deskclock/DeskClock;->moveScreenSaver()V

    .line 540
    :goto_0
    return-void

    .line 536
    :cond_0
    invoke-direct {p0}, Lcom/android/deskclock/DeskClock;->initViews()V

    .line 537
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/deskclock/DeskClock;->doDim(Z)V

    .line 538
    invoke-direct {p0}, Lcom/android/deskclock/DeskClock;->refreshAll()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 571
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 573
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/android/deskclock/DeskClock;->mRNG:Ljava/util/Random;

    .line 574
    if-eqz p1, :cond_0

    .line 575
    const-string v0, "dimmed"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/deskclock/DeskClock;->mDimmed:Z

    .line 576
    const-string v0, "screen_saver"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/deskclock/DeskClock;->mScreenSaverMode:Z

    .line 579
    :cond_0
    invoke-direct {p0}, Lcom/android/deskclock/DeskClock;->initViews()V

    .line 580
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 555
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 556
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f0e0002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 557
    const/4 v1, 0x1

    return v1
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "newIntent"    # Landroid/content/Intent;

    .prologue
    .line 388
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 393
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 394
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 544
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 549
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 546
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.DOCK_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 547
    const/4 v0, 0x1

    goto :goto_0

    .line 544
    nop

    :pswitch_data_0
    .packed-switch 0x7f0f0035
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 470
    iget-object v1, p0, Lcom/android/deskclock/DeskClock;->mHandy:Landroid/os/Handler;

    const/16 v2, 0x2000

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 472
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 473
    .local v0, "am":Landroid/app/AlarmManager;
    iget-object v1, p0, Lcom/android/deskclock/DeskClock;->mMidnightIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 475
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 476
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v0, 0x0

    .line 563
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.settings.DOCK_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 565
    .local v0, "isDockSupported":Z
    :cond_0
    const v1, 0x7f0f0035

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 566
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public onResume()V
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v9, 0x0

    .line 421
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 426
    const/high16 v4, 0x7f0b0000

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/deskclock/DeskClock;->mDateFormat:Ljava/lang/String;

    .line 429
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    .line 430
    .local v8, "today":Ljava/util/Calendar;
    const/16 v4, 0xb

    invoke-virtual {v8, v4, v9}, Ljava/util/Calendar;->set(II)V

    .line 431
    const/16 v4, 0xc

    invoke-virtual {v8, v4, v9}, Ljava/util/Calendar;->set(II)V

    .line 432
    const/16 v4, 0xd

    invoke-virtual {v8, v4, v9}, Ljava/util/Calendar;->set(II)V

    .line 433
    const/4 v4, 0x5

    invoke-virtual {v8, v4, v1}, Ljava/util/Calendar;->add(II)V

    .line 434
    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 436
    .local v2, "alarmTimeUTC":J
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.deskclock.MIDNIGHT"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v9, v4, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    iput-object v4, p0, Lcom/android/deskclock/DeskClock;->mMidnightIntent:Landroid/app/PendingIntent;

    .line 437
    const-string v4, "alarm"

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 438
    .local v0, "am":Landroid/app/AlarmManager;
    const-wide/32 v4, 0x5265c00

    iget-object v6, p0, Lcom/android/deskclock/DeskClock;->mMidnightIntent:Landroid/app/PendingIntent;

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 446
    invoke-direct {p0, v9}, Lcom/android/deskclock/DeskClock;->doDim(Z)V

    .line 447
    iget-boolean v1, p0, Lcom/android/deskclock/DeskClock;->mScreenSaverMode:Z

    if-nez v1, :cond_0

    .line 448
    invoke-direct {p0}, Lcom/android/deskclock/DeskClock;->restoreScreen()V

    .line 455
    :goto_0
    invoke-direct {p0}, Lcom/android/deskclock/DeskClock;->refreshAll()V

    .line 456
    iget-boolean v1, p0, Lcom/android/deskclock/DeskClock;->mPluggedIn:Z

    invoke-direct {p0, v1}, Lcom/android/deskclock/DeskClock;->setWakeLock(Z)V

    .line 457
    invoke-direct {p0}, Lcom/android/deskclock/DeskClock;->scheduleScreenSaver()V

    .line 459
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v4, "android.intent.category.DESK_DOCK"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v7

    .line 461
    .local v7, "launchedFromDock":Z
    iput-boolean v7, p0, Lcom/android/deskclock/DeskClock;->mLaunchedFromDock:Z

    .line 462
    return-void

    .line 452
    .end local v7    # "launchedFromDock":Z
    :cond_0
    iput-boolean v9, p0, Lcom/android/deskclock/DeskClock;->mScreenSaverMode:Z

    .line 453
    invoke-direct {p0}, Lcom/android/deskclock/DeskClock;->saveScreen()V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 584
    const-string v0, "dimmed"

    iget-boolean v1, p0, Lcom/android/deskclock/DeskClock;->mDimmed:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 585
    const-string v0, "screen_saver"

    iget-boolean v1, p0, Lcom/android/deskclock/DeskClock;->mScreenSaverMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 586
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 398
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 400
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/deskclock/DeskClock;->SCREEN_SAVER_COLOR:I

    .line 401
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/deskclock/DeskClock;->SCREEN_SAVER_COLOR_DIM:I

    .line 403
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 404
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 405
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 406
    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 407
    sget-object v1, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 408
    const-string v1, "com.android.deskclock.MIDNIGHT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 409
    iget-object v1, p0, Lcom/android/deskclock/DeskClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 410
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 414
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 416
    iget-object v0, p0, Lcom/android/deskclock/DeskClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 417
    return-void
.end method

.method public onUserInteraction()V
    .locals 1

    .prologue
    .line 284
    iget-boolean v0, p0, Lcom/android/deskclock/DeskClock;->mScreenSaverMode:Z

    if-eqz v0, :cond_0

    .line 285
    invoke-direct {p0}, Lcom/android/deskclock/DeskClock;->restoreScreen()V

    .line 286
    :cond_0
    return-void
.end method
