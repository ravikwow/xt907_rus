.class public Lcom/android/calendar/month/SimpleWeekView;
.super Landroid/view/View;
.source "SimpleWeekView.java"


# static fields
.field protected static DAY_SEPARATOR_WIDTH:I

.field protected static DEFAULT_HEIGHT:I

.field protected static MINI_DAY_NUMBER_TEXT_SIZE:I

.field protected static MINI_TODAY_NUMBER_TEXT_SIZE:I

.field protected static MINI_TODAY_OUTLINE_WIDTH:I

.field protected static MINI_WK_NUMBER_TEXT_SIZE:I

.field protected static MIN_HEIGHT:I

.field protected static WEEK_NUM_MARGIN_BOTTOM:I

.field protected static mScale:F


# instance fields
.field protected mBGColor:I

.field protected mDayNumbers:[Ljava/lang/String;

.field protected mDaySeparatorColor:I

.field protected mFirstJulianDay:I

.field protected mFirstMonth:I

.field protected mFocusDay:[Z

.field protected mFocusMonthColor:I

.field protected mHasSelectedDay:Z

.field protected mHasToday:Z

.field protected mHeight:I

.field mLastHoverTime:Landroid/text/format/Time;

.field protected mLastMonth:I

.field protected mMonthNumPaint:Landroid/graphics/Paint;

.field protected mNumCells:I

.field protected mNumDays:I

.field protected mOddMonth:[Z

.field protected mOtherMonthColor:I

.field protected mPadding:I

.field protected mSelectedDay:I

.field protected mSelectedDayLine:Landroid/graphics/drawable/Drawable;

.field protected mSelectedLeft:I

.field protected mSelectedRight:I

.field protected mSelectedWeekBGColor:I

.field protected mShowWeekNum:Z

.field protected mTimeZone:Ljava/lang/String;

.field protected mToday:I

.field protected mTodayOutlineColor:I

.field protected mWeek:I

.field protected mWeekNumColor:I

.field protected mWeekStart:I

.field protected mWidth:I

.field protected p:Landroid/graphics/Paint;

.field protected r:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 91
    const/16 v0, 0x20

    sput v0, Lcom/android/calendar/month/SimpleWeekView;->DEFAULT_HEIGHT:I

    .line 92
    const/16 v0, 0xa

    sput v0, Lcom/android/calendar/month/SimpleWeekView;->MIN_HEIGHT:I

    .line 99
    const/4 v0, 0x1

    sput v0, Lcom/android/calendar/month/SimpleWeekView;->DAY_SEPARATOR_WIDTH:I

    .line 101
    const/16 v0, 0xe

    sput v0, Lcom/android/calendar/month/SimpleWeekView;->MINI_DAY_NUMBER_TEXT_SIZE:I

    .line 102
    const/16 v0, 0xc

    sput v0, Lcom/android/calendar/month/SimpleWeekView;->MINI_WK_NUMBER_TEXT_SIZE:I

    .line 103
    const/16 v0, 0x12

    sput v0, Lcom/android/calendar/month/SimpleWeekView;->MINI_TODAY_NUMBER_TEXT_SIZE:I

    .line 104
    const/4 v0, 0x2

    sput v0, Lcom/android/calendar/month/SimpleWeekView;->MINI_TODAY_OUTLINE_WIDTH:I

    .line 105
    const/4 v0, 0x4

    sput v0, Lcom/android/calendar/month/SimpleWeekView;->WEEK_NUM_MARGIN_BOTTOM:I

    .line 108
    const/4 v0, 0x0

    sput v0, Lcom/android/calendar/month/SimpleWeekView;->mScale:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 170
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 111
    iput v3, p0, Lcom/android/calendar/month/SimpleWeekView;->mPadding:I

    .line 113
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/month/SimpleWeekView;->r:Landroid/graphics/Rect;

    .line 114
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/month/SimpleWeekView;->p:Landroid/graphics/Paint;

    .line 125
    iput v2, p0, Lcom/android/calendar/month/SimpleWeekView;->mFirstJulianDay:I

    .line 127
    iput v2, p0, Lcom/android/calendar/month/SimpleWeekView;->mFirstMonth:I

    .line 129
    iput v2, p0, Lcom/android/calendar/month/SimpleWeekView;->mLastMonth:I

    .line 132
    iput v2, p0, Lcom/android/calendar/month/SimpleWeekView;->mWeek:I

    .line 136
    sget v1, Lcom/android/calendar/month/SimpleWeekView;->DEFAULT_HEIGHT:I

    iput v1, p0, Lcom/android/calendar/month/SimpleWeekView;->mHeight:I

    .line 138
    iput-boolean v3, p0, Lcom/android/calendar/month/SimpleWeekView;->mShowWeekNum:Z

    .line 140
    iput-boolean v3, p0, Lcom/android/calendar/month/SimpleWeekView;->mHasSelectedDay:Z

    .line 142
    iput-boolean v3, p0, Lcom/android/calendar/month/SimpleWeekView;->mHasToday:Z

    .line 144
    iput v2, p0, Lcom/android/calendar/month/SimpleWeekView;->mSelectedDay:I

    .line 146
    iput v2, p0, Lcom/android/calendar/month/SimpleWeekView;->mToday:I

    .line 148
    iput v3, p0, Lcom/android/calendar/month/SimpleWeekView;->mWeekStart:I

    .line 150
    const/4 v1, 0x7

    iput v1, p0, Lcom/android/calendar/month/SimpleWeekView;->mNumDays:I

    .line 152
    iget v1, p0, Lcom/android/calendar/month/SimpleWeekView;->mNumDays:I

    iput v1, p0, Lcom/android/calendar/month/SimpleWeekView;->mNumCells:I

    .line 154
    iput v2, p0, Lcom/android/calendar/month/SimpleWeekView;->mSelectedLeft:I

    .line 156
    iput v2, p0, Lcom/android/calendar/month/SimpleWeekView;->mSelectedRight:I

    .line 159
    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/month/SimpleWeekView;->mTimeZone:Ljava/lang/String;

    .line 550
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/calendar/month/SimpleWeekView;->mLastHoverTime:Landroid/text/format/Time;

    .line 172
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 174
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f080028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/month/SimpleWeekView;->mBGColor:I

    .line 175
    const v1, 0x7f080026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/month/SimpleWeekView;->mSelectedWeekBGColor:I

    .line 176
    const v1, 0x7f080018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/month/SimpleWeekView;->mFocusMonthColor:I

    .line 177
    const v1, 0x7f080024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/month/SimpleWeekView;->mOtherMonthColor:I

    .line 178
    const v1, 0x7f080023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/month/SimpleWeekView;->mDaySeparatorColor:I

    .line 179
    const v1, 0x7f080016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/month/SimpleWeekView;->mTodayOutlineColor:I

    .line 180
    const v1, 0x7f08001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/month/SimpleWeekView;->mWeekNumColor:I

    .line 181
    const v1, 0x7f020027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/month/SimpleWeekView;->mSelectedDayLine:Landroid/graphics/drawable/Drawable;

    .line 183
    sget v1, Lcom/android/calendar/month/SimpleWeekView;->mScale:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 184
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    sput v1, Lcom/android/calendar/month/SimpleWeekView;->mScale:F

    .line 185
    sget v1, Lcom/android/calendar/month/SimpleWeekView;->mScale:F

    const/high16 v2, 0x3f800000

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 186
    sget v1, Lcom/android/calendar/month/SimpleWeekView;->DEFAULT_HEIGHT:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/SimpleWeekView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/SimpleWeekView;->DEFAULT_HEIGHT:I

    .line 187
    sget v1, Lcom/android/calendar/month/SimpleWeekView;->MIN_HEIGHT:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/SimpleWeekView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/SimpleWeekView;->MIN_HEIGHT:I

    .line 188
    sget v1, Lcom/android/calendar/month/SimpleWeekView;->MINI_DAY_NUMBER_TEXT_SIZE:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/SimpleWeekView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/SimpleWeekView;->MINI_DAY_NUMBER_TEXT_SIZE:I

    .line 189
    sget v1, Lcom/android/calendar/month/SimpleWeekView;->MINI_TODAY_NUMBER_TEXT_SIZE:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/SimpleWeekView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/SimpleWeekView;->MINI_TODAY_NUMBER_TEXT_SIZE:I

    .line 190
    sget v1, Lcom/android/calendar/month/SimpleWeekView;->MINI_TODAY_OUTLINE_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/SimpleWeekView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/SimpleWeekView;->MINI_TODAY_OUTLINE_WIDTH:I

    .line 191
    sget v1, Lcom/android/calendar/month/SimpleWeekView;->WEEK_NUM_MARGIN_BOTTOM:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/SimpleWeekView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/SimpleWeekView;->WEEK_NUM_MARGIN_BOTTOM:I

    .line 192
    sget v1, Lcom/android/calendar/month/SimpleWeekView;->DAY_SEPARATOR_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/SimpleWeekView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/SimpleWeekView;->DAY_SEPARATOR_WIDTH:I

    .line 193
    sget v1, Lcom/android/calendar/month/SimpleWeekView;->MINI_WK_NUMBER_TEXT_SIZE:I

    int-to-float v1, v1

    sget v2, Lcom/android/calendar/month/SimpleWeekView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/month/SimpleWeekView;->MINI_WK_NUMBER_TEXT_SIZE:I

    .line 198
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/month/SimpleWeekView;->initView()V

    .line 199
    return-void
.end method


# virtual methods
.method protected drawBackground(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 407
    iget-boolean v0, p0, Lcom/android/calendar/month/SimpleWeekView;->mHasSelectedDay:Z

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/android/calendar/month/SimpleWeekView;->p:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/calendar/month/SimpleWeekView;->mSelectedWeekBGColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 409
    iget-object v0, p0, Lcom/android/calendar/month/SimpleWeekView;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 413
    iget-object v0, p0, Lcom/android/calendar/month/SimpleWeekView;->r:Landroid/graphics/Rect;

    const/4 v1, 0x1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 414
    iget-object v0, p0, Lcom/android/calendar/month/SimpleWeekView;->r:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/calendar/month/SimpleWeekView;->mHeight:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 415
    iget-object v0, p0, Lcom/android/calendar/month/SimpleWeekView;->r:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/calendar/month/SimpleWeekView;->mPadding:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 416
    iget-object v0, p0, Lcom/android/calendar/month/SimpleWeekView;->r:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/calendar/month/SimpleWeekView;->mSelectedLeft:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 417
    iget-object v0, p0, Lcom/android/calendar/month/SimpleWeekView;->r:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/calendar/month/SimpleWeekView;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 418
    iget-object v0, p0, Lcom/android/calendar/month/SimpleWeekView;->r:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/calendar/month/SimpleWeekView;->mSelectedRight:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 419
    iget-object v0, p0, Lcom/android/calendar/month/SimpleWeekView;->r:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/calendar/month/SimpleWeekView;->mWidth:I

    iget v2, p0, Lcom/android/calendar/month/SimpleWeekView;->mPadding:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 420
    iget-object v0, p0, Lcom/android/calendar/month/SimpleWeekView;->r:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/calendar/month/SimpleWeekView;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 421
    :cond_0
    return-void
.end method

.method protected drawDaySeparators(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 474
    iget-boolean v0, p0, Lcom/android/calendar/month/SimpleWeekView;->mHasSelectedDay:Z

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/android/calendar/month/SimpleWeekView;->r:Landroid/graphics/Rect;

    const/4 v1, 0x1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 476
    iget-object v0, p0, Lcom/android/calendar/month/SimpleWeekView;->r:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/calendar/month/SimpleWeekView;->mHeight:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 477
    iget-object v0, p0, Lcom/android/calendar/month/SimpleWeekView;->r:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/calendar/month/SimpleWeekView;->mSelectedLeft:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 478
    iget-object v0, p0, Lcom/android/calendar/month/SimpleWeekView;->r:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/calendar/month/SimpleWeekView;->mSelectedRight:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 479
    iget-object v0, p0, Lcom/android/calendar/month/SimpleWeekView;->p:Landroid/graphics/Paint;

    sget v1, Lcom/android/calendar/month/SimpleWeekView;->MINI_TODAY_OUTLINE_WIDTH:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 480
    iget-object v0, p0, Lcom/android/calendar/month/SimpleWeekView;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 481
    iget-object v0, p0, Lcom/android/calendar/month/SimpleWeekView;->p:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/calendar/month/SimpleWeekView;->mTodayOutlineColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 482
    iget-object v0, p0, Lcom/android/calendar/month/SimpleWeekView;->r:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/calendar/month/SimpleWeekView;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 484
    :cond_0
    iget-boolean v0, p0, Lcom/android/calendar/month/SimpleWeekView;->mShowWeekNum:Z

    if-eqz v0, :cond_1

    .line 485
    iget-object v0, p0, Lcom/android/calendar/month/SimpleWeekView;->p:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/calendar/month/SimpleWeekView;->mDaySeparatorColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 486
    iget-object v0, p0, Lcom/android/calendar/month/SimpleWeekView;->p:Landroid/graphics/Paint;

    sget v1, Lcom/android/calendar/month/SimpleWeekView;->DAY_SEPARATOR_WIDTH:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 488
    iget v0, p0, Lcom/android/calendar/month/SimpleWeekView;->mWidth:I

    iget v1, p0, Lcom/android/calendar/month/SimpleWeekView;->mPadding:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/calendar/month/SimpleWeekView;->mNumCells:I

    div-int/2addr v0, v1

    iget v1, p0, Lcom/android/calendar/month/SimpleWeekView;->mPadding:I

    add-int v6, v0, v1

    .line 489
    .local v6, "x":I
    int-to-float v1, v6

    const/4 v2, 0x0

    int-to-float v3, v6

    iget v0, p0, Lcom/android/calendar/month/SimpleWeekView;->mHeight:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/calendar/month/SimpleWeekView;->p:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 491
    .end local v6    # "x":I
    :cond_1
    return-void
.end method

.method protected drawWeekNums(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 430
    iget v6, p0, Lcom/android/calendar/month/SimpleWeekView;->mHeight:I

    sget v7, Lcom/android/calendar/month/SimpleWeekView;->MINI_DAY_NUMBER_TEXT_SIZE:I

    add-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    sget v7, Lcom/android/calendar/month/SimpleWeekView;->DAY_SEPARATOR_WIDTH:I

    sub-int v5, v6, v7

    .line 431
    .local v5, "y":I
    iget v3, p0, Lcom/android/calendar/month/SimpleWeekView;->mNumCells:I

    .line 433
    .local v3, "nDays":I
    const/4 v1, 0x0

    .line 434
    .local v1, "i":I
    mul-int/lit8 v0, v3, 0x2

    .line 435
    .local v0, "divisor":I
    iget-boolean v6, p0, Lcom/android/calendar/month/SimpleWeekView;->mShowWeekNum:Z

    if-eqz v6, :cond_0

    .line 436
    iget-object v6, p0, Lcom/android/calendar/month/SimpleWeekView;->p:Landroid/graphics/Paint;

    sget v7, Lcom/android/calendar/month/SimpleWeekView;->MINI_WK_NUMBER_TEXT_SIZE:I

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 437
    iget-object v6, p0, Lcom/android/calendar/month/SimpleWeekView;->p:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 438
    iget-object v6, p0, Lcom/android/calendar/month/SimpleWeekView;->p:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 439
    iget-object v6, p0, Lcom/android/calendar/month/SimpleWeekView;->p:Landroid/graphics/Paint;

    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 440
    iget-object v6, p0, Lcom/android/calendar/month/SimpleWeekView;->p:Landroid/graphics/Paint;

    iget v7, p0, Lcom/android/calendar/month/SimpleWeekView;->mWeekNumColor:I

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 441
    iget v6, p0, Lcom/android/calendar/month/SimpleWeekView;->mWidth:I

    iget v7, p0, Lcom/android/calendar/month/SimpleWeekView;->mPadding:I

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    div-int/2addr v6, v0

    iget v7, p0, Lcom/android/calendar/month/SimpleWeekView;->mPadding:I

    add-int v4, v6, v7

    .line 442
    .local v4, "x":I
    iget-object v6, p0, Lcom/android/calendar/month/SimpleWeekView;->mDayNumbers:[Ljava/lang/String;

    aget-object v6, v6, v10

    int-to-float v7, v4

    int-to-float v8, v5

    iget-object v9, p0, Lcom/android/calendar/month/SimpleWeekView;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 443
    add-int/lit8 v1, v1, 0x1

    .line 446
    .end local v4    # "x":I
    :cond_0
    iget-object v6, p0, Lcom/android/calendar/month/SimpleWeekView;->mFocusDay:[Z

    aget-boolean v2, v6, v1

    .line 447
    .local v2, "isFocusMonth":Z
    iget-object v7, p0, Lcom/android/calendar/month/SimpleWeekView;->mMonthNumPaint:Landroid/graphics/Paint;

    if-eqz v2, :cond_4

    iget v6, p0, Lcom/android/calendar/month/SimpleWeekView;->mFocusMonthColor:I

    :goto_0
    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 448
    iget-object v6, p0, Lcom/android/calendar/month/SimpleWeekView;->mMonthNumPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v10}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 449
    :goto_1
    if-ge v1, v3, :cond_6

    .line 450
    iget-object v6, p0, Lcom/android/calendar/month/SimpleWeekView;->mFocusDay:[Z

    aget-boolean v6, v6, v1

    if-eq v6, v2, :cond_1

    .line 451
    iget-object v6, p0, Lcom/android/calendar/month/SimpleWeekView;->mFocusDay:[Z

    aget-boolean v2, v6, v1

    .line 452
    iget-object v7, p0, Lcom/android/calendar/month/SimpleWeekView;->mMonthNumPaint:Landroid/graphics/Paint;

    if-eqz v2, :cond_5

    iget v6, p0, Lcom/android/calendar/month/SimpleWeekView;->mFocusMonthColor:I

    :goto_2
    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 454
    :cond_1
    iget-boolean v6, p0, Lcom/android/calendar/month/SimpleWeekView;->mHasToday:Z

    if-eqz v6, :cond_2

    iget v6, p0, Lcom/android/calendar/month/SimpleWeekView;->mToday:I

    if-ne v6, v1, :cond_2

    .line 455
    iget-object v6, p0, Lcom/android/calendar/month/SimpleWeekView;->mMonthNumPaint:Landroid/graphics/Paint;

    sget v7, Lcom/android/calendar/month/SimpleWeekView;->MINI_TODAY_NUMBER_TEXT_SIZE:I

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 456
    iget-object v6, p0, Lcom/android/calendar/month/SimpleWeekView;->mMonthNumPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 458
    :cond_2
    mul-int/lit8 v6, v1, 0x2

    add-int/lit8 v6, v6, 0x1

    iget v7, p0, Lcom/android/calendar/month/SimpleWeekView;->mWidth:I

    iget v8, p0, Lcom/android/calendar/month/SimpleWeekView;->mPadding:I

    mul-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    mul-int/2addr v6, v7

    div-int/2addr v6, v0

    iget v7, p0, Lcom/android/calendar/month/SimpleWeekView;->mPadding:I

    add-int v4, v6, v7

    .line 459
    .restart local v4    # "x":I
    iget-object v6, p0, Lcom/android/calendar/month/SimpleWeekView;->mDayNumbers:[Ljava/lang/String;

    aget-object v6, v6, v1

    int-to-float v7, v4

    int-to-float v8, v5

    iget-object v9, p0, Lcom/android/calendar/month/SimpleWeekView;->mMonthNumPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 460
    iget-boolean v6, p0, Lcom/android/calendar/month/SimpleWeekView;->mHasToday:Z

    if-eqz v6, :cond_3

    iget v6, p0, Lcom/android/calendar/month/SimpleWeekView;->mToday:I

    if-ne v6, v1, :cond_3

    .line 461
    iget-object v6, p0, Lcom/android/calendar/month/SimpleWeekView;->mMonthNumPaint:Landroid/graphics/Paint;

    sget v7, Lcom/android/calendar/month/SimpleWeekView;->MINI_DAY_NUMBER_TEXT_SIZE:I

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 462
    iget-object v6, p0, Lcom/android/calendar/month/SimpleWeekView;->mMonthNumPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v10}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 449
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 447
    .end local v4    # "x":I
    :cond_4
    iget v6, p0, Lcom/android/calendar/month/SimpleWeekView;->mOtherMonthColor:I

    goto :goto_0

    .line 452
    :cond_5
    iget v6, p0, Lcom/android/calendar/month/SimpleWeekView;->mOtherMonthColor:I

    goto :goto_2

    .line 465
    :cond_6
    return-void
.end method

.method public getDayFromLocation(F)Landroid/text/format/Time;
    .locals 9
    .param p1, "x"    # F

    .prologue
    const v8, 0x253d8c

    const/4 v7, 0x1

    .line 369
    iget-boolean v4, p0, Lcom/android/calendar/month/SimpleWeekView;->mShowWeekNum:Z

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/android/calendar/month/SimpleWeekView;->mWidth:I

    iget v5, p0, Lcom/android/calendar/month/SimpleWeekView;->mPadding:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/calendar/month/SimpleWeekView;->mNumCells:I

    div-int/2addr v4, v5

    iget v5, p0, Lcom/android/calendar/month/SimpleWeekView;->mPadding:I

    add-int v2, v4, v5

    .line 370
    .local v2, "dayStart":I
    :goto_0
    int-to-float v4, v2

    cmpg-float v4, p1, v4

    if-ltz v4, :cond_0

    iget v4, p0, Lcom/android/calendar/month/SimpleWeekView;->mWidth:I

    iget v5, p0, Lcom/android/calendar/month/SimpleWeekView;->mPadding:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    cmpl-float v4, p1, v4

    if-lez v4, :cond_2

    .line 371
    :cond_0
    const/4 v3, 0x0

    .line 390
    :goto_1
    return-object v3

    .line 369
    .end local v2    # "dayStart":I
    :cond_1
    iget v2, p0, Lcom/android/calendar/month/SimpleWeekView;->mPadding:I

    goto :goto_0

    .line 374
    .restart local v2    # "dayStart":I
    :cond_2
    int-to-float v4, v2

    sub-float v4, p1, v4

    iget v5, p0, Lcom/android/calendar/month/SimpleWeekView;->mNumDays:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/android/calendar/month/SimpleWeekView;->mWidth:I

    sub-int/2addr v5, v2

    iget v6, p0, Lcom/android/calendar/month/SimpleWeekView;->mPadding:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v4, v5

    float-to-int v1, v4

    .line 375
    .local v1, "dayPosition":I
    iget v4, p0, Lcom/android/calendar/month/SimpleWeekView;->mFirstJulianDay:I

    add-int v0, v4, v1

    .line 377
    .local v0, "day":I
    new-instance v3, Landroid/text/format/Time;

    iget-object v4, p0, Lcom/android/calendar/month/SimpleWeekView;->mTimeZone:Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 378
    .local v3, "time":Landroid/text/format/Time;
    iget v4, p0, Lcom/android/calendar/month/SimpleWeekView;->mWeek:I

    if-nez v4, :cond_3

    .line 380
    if-ge v0, v8, :cond_4

    .line 381
    add-int/lit8 v0, v0, 0x1

    .line 389
    :cond_3
    invoke-virtual {v3, v0}, Landroid/text/format/Time;->setJulianDay(I)J

    goto :goto_1

    .line 382
    :cond_4
    if-ne v0, v8, :cond_3

    .line 383
    const/4 v4, 0x0

    const/16 v5, 0x7b2

    invoke-virtual {v3, v7, v4, v5}, Landroid/text/format/Time;->set(III)V

    .line 384
    invoke-virtual {v3, v7}, Landroid/text/format/Time;->normalize(Z)J

    goto :goto_1
.end method

.method public getFirstJulianDay()I
    .locals 1

    .prologue
    .line 357
    iget v0, p0, Lcom/android/calendar/month/SimpleWeekView;->mFirstJulianDay:I

    return v0
.end method

.method public getFirstMonth()I
    .locals 1

    .prologue
    .line 339
    iget v0, p0, Lcom/android/calendar/month/SimpleWeekView;->mFirstMonth:I

    return v0
.end method

.method public getLastMonth()I
    .locals 1

    .prologue
    .line 348
    iget v0, p0, Lcom/android/calendar/month/SimpleWeekView;->mLastMonth:I

    return v0
.end method

.method protected initView()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 319
    iget-object v0, p0, Lcom/android/calendar/month/SimpleWeekView;->p:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 320
    iget-object v0, p0, Lcom/android/calendar/month/SimpleWeekView;->p:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 321
    iget-object v0, p0, Lcom/android/calendar/month/SimpleWeekView;->p:Landroid/graphics/Paint;

    sget v1, Lcom/android/calendar/month/SimpleWeekView;->MINI_DAY_NUMBER_TEXT_SIZE:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 322
    iget-object v0, p0, Lcom/android/calendar/month/SimpleWeekView;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 324
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/month/SimpleWeekView;->mMonthNumPaint:Landroid/graphics/Paint;

    .line 325
    iget-object v0, p0, Lcom/android/calendar/month/SimpleWeekView;->mMonthNumPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 326
    iget-object v0, p0, Lcom/android/calendar/month/SimpleWeekView;->mMonthNumPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 327
    iget-object v0, p0, Lcom/android/calendar/month/SimpleWeekView;->mMonthNumPaint:Landroid/graphics/Paint;

    sget v1, Lcom/android/calendar/month/SimpleWeekView;->MINI_DAY_NUMBER_TEXT_SIZE:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 328
    iget-object v0, p0, Lcom/android/calendar/month/SimpleWeekView;->mMonthNumPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/calendar/month/SimpleWeekView;->mFocusMonthColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 329
    iget-object v0, p0, Lcom/android/calendar/month/SimpleWeekView;->mMonthNumPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 330
    iget-object v0, p0, Lcom/android/calendar/month/SimpleWeekView;->mMonthNumPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 331
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 395
    invoke-virtual {p0, p1}, Lcom/android/calendar/month/SimpleWeekView;->drawBackground(Landroid/graphics/Canvas;)V

    .line 396
    invoke-virtual {p0, p1}, Lcom/android/calendar/month/SimpleWeekView;->drawWeekNums(Landroid/graphics/Canvas;)V

    .line 397
    invoke-virtual {p0, p1}, Lcom/android/calendar/month/SimpleWeekView;->drawDaySeparators(Landroid/graphics/Canvas;)V

    .line 398
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v11, 0x1

    .line 525
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 528
    .local v0, "context":Landroid/content/Context;
    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/accessibility/AccessibilityManager;

    .line 530
    .local v7, "am":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 531
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 547
    :goto_0
    return v1

    .line 533
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_3

    .line 534
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/calendar/month/SimpleWeekView;->getDayFromLocation(F)Landroid/text/format/Time;

    move-result-object v9

    .line 535
    .local v9, "hover":Landroid/text/format/Time;
    if-eqz v9, :cond_3

    iget-object v1, p0, Lcom/android/calendar/month/SimpleWeekView;->mLastHoverTime:Landroid/text/format/Time;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/calendar/month/SimpleWeekView;->mLastHoverTime:Landroid/text/format/Time;

    invoke-static {v9, v1}, Landroid/text/format/Time;->compare(Landroid/text/format/Time;Landroid/text/format/Time;)I

    move-result v1

    if-eqz v1, :cond_3

    .line 537
    :cond_2
    invoke-virtual {v9, v11}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 538
    .local v10, "millis":Ljava/lang/Long;
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const/16 v5, 0x10

    invoke-static/range {v0 .. v5}, Lcom/android/calendar/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v8

    .line 540
    .local v8, "date":Ljava/lang/String;
    const/16 v1, 0x40

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v6

    .line 542
    .local v6, "accessEvent":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 543
    invoke-virtual {p0, v6}, Landroid/view/View;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 544
    iput-object v9, p0, Lcom/android/calendar/month/SimpleWeekView;->mLastHoverTime:Landroid/text/format/Time;

    .end local v6    # "accessEvent":Landroid/view/accessibility/AccessibilityEvent;
    .end local v8    # "date":Ljava/lang/String;
    .end local v9    # "hover":Landroid/text/format/Time;
    .end local v10    # "millis":Ljava/lang/Long;
    :cond_3
    move v1, v11

    .line 547
    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 520
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v1, p0, Lcom/android/calendar/month/SimpleWeekView;->mHeight:I

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 521
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 495
    iput p1, p0, Lcom/android/calendar/month/SimpleWeekView;->mWidth:I

    .line 496
    invoke-virtual {p0}, Lcom/android/calendar/month/SimpleWeekView;->updateSelectionPositions()V

    .line 497
    return-void
.end method

.method public setWeekParams(Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 13
    .param p2, "tz"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v1, -0x1

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 213
    const-string v6, "week"

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 214
    new-instance v6, Ljava/security/InvalidParameterException;

    const-string v7, "You must specify the week number for this view"

    invoke-direct {v6, v7}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 216
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 217
    iput-object p2, p0, Lcom/android/calendar/month/SimpleWeekView;->mTimeZone:Ljava/lang/String;

    .line 219
    const-string v6, "height"

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 220
    const-string v6, "height"

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, p0, Lcom/android/calendar/month/SimpleWeekView;->mHeight:I

    .line 221
    iget v6, p0, Lcom/android/calendar/month/SimpleWeekView;->mHeight:I

    sget v9, Lcom/android/calendar/month/SimpleWeekView;->MIN_HEIGHT:I

    if-ge v6, v9, :cond_1

    .line 222
    sget v6, Lcom/android/calendar/month/SimpleWeekView;->MIN_HEIGHT:I

    iput v6, p0, Lcom/android/calendar/month/SimpleWeekView;->mHeight:I

    .line 225
    :cond_1
    const-string v6, "selected_day"

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 226
    const-string v6, "selected_day"

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, p0, Lcom/android/calendar/month/SimpleWeekView;->mSelectedDay:I

    .line 228
    :cond_2
    iget v6, p0, Lcom/android/calendar/month/SimpleWeekView;->mSelectedDay:I

    if-eq v6, v1, :cond_c

    move v6, v7

    :goto_0
    iput-boolean v6, p0, Lcom/android/calendar/month/SimpleWeekView;->mHasSelectedDay:Z

    .line 229
    const-string v6, "num_days"

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 230
    const-string v6, "num_days"

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, p0, Lcom/android/calendar/month/SimpleWeekView;->mNumDays:I

    .line 232
    :cond_3
    const-string v6, "show_wk_num"

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 233
    const-string v6, "show_wk_num"

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eqz v6, :cond_d

    .line 234
    iput-boolean v7, p0, Lcom/android/calendar/month/SimpleWeekView;->mShowWeekNum:Z

    .line 239
    :cond_4
    :goto_1
    iget-boolean v6, p0, Lcom/android/calendar/month/SimpleWeekView;->mShowWeekNum:Z

    if-eqz v6, :cond_e

    iget v6, p0, Lcom/android/calendar/month/SimpleWeekView;->mNumDays:I

    add-int/lit8 v6, v6, 0x1

    :goto_2
    iput v6, p0, Lcom/android/calendar/month/SimpleWeekView;->mNumCells:I

    .line 242
    iget v6, p0, Lcom/android/calendar/month/SimpleWeekView;->mNumCells:I

    new-array v6, v6, [Ljava/lang/String;

    iput-object v6, p0, Lcom/android/calendar/month/SimpleWeekView;->mDayNumbers:[Ljava/lang/String;

    .line 243
    iget v6, p0, Lcom/android/calendar/month/SimpleWeekView;->mNumCells:I

    new-array v6, v6, [Z

    iput-object v6, p0, Lcom/android/calendar/month/SimpleWeekView;->mFocusDay:[Z

    .line 244
    iget v6, p0, Lcom/android/calendar/month/SimpleWeekView;->mNumCells:I

    new-array v6, v6, [Z

    iput-object v6, p0, Lcom/android/calendar/month/SimpleWeekView;->mOddMonth:[Z

    .line 245
    const-string v6, "week"

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, p0, Lcom/android/calendar/month/SimpleWeekView;->mWeek:I

    .line 246
    iget v6, p0, Lcom/android/calendar/month/SimpleWeekView;->mWeek:I

    invoke-static {v6}, Lcom/android/calendar/Utils;->getJulianMondayFromWeeksSinceEpoch(I)I

    move-result v3

    .line 247
    .local v3, "julianMonday":I
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4, p2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 248
    .local v4, "time":Landroid/text/format/Time;
    invoke-virtual {v4, v3}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 251
    const/4 v2, 0x0

    .line 252
    .local v2, "i":I
    iget-boolean v6, p0, Lcom/android/calendar/month/SimpleWeekView;->mShowWeekNum:Z

    if-eqz v6, :cond_5

    .line 253
    iget-object v6, p0, Lcom/android/calendar/month/SimpleWeekView;->mDayNumbers:[Ljava/lang/String;

    invoke-virtual {v4}, Landroid/text/format/Time;->getWeekNumber()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    .line 254
    add-int/lit8 v2, v2, 0x1

    .line 257
    :cond_5
    const-string v6, "week_start"

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 258
    const-string v6, "week_start"

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, p0, Lcom/android/calendar/month/SimpleWeekView;->mWeekStart:I

    .line 264
    :cond_6
    iget v6, v4, Landroid/text/format/Time;->weekDay:I

    iget v9, p0, Lcom/android/calendar/month/SimpleWeekView;->mWeekStart:I

    if-eq v6, v9, :cond_8

    .line 265
    iget v6, v4, Landroid/text/format/Time;->weekDay:I

    iget v9, p0, Lcom/android/calendar/month/SimpleWeekView;->mWeekStart:I

    sub-int v0, v6, v9

    .line 266
    .local v0, "diff":I
    if-gez v0, :cond_7

    .line 267
    add-int/lit8 v0, v0, 0x7

    .line 269
    :cond_7
    iget v6, v4, Landroid/text/format/Time;->monthDay:I

    sub-int/2addr v6, v0

    iput v6, v4, Landroid/text/format/Time;->monthDay:I

    .line 270
    invoke-virtual {v4, v7}, Landroid/text/format/Time;->normalize(Z)J

    .line 273
    .end local v0    # "diff":I
    :cond_8
    invoke-virtual {v4, v7}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v9

    iget-wide v11, v4, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v9, v10, v11, v12}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v6

    iput v6, p0, Lcom/android/calendar/month/SimpleWeekView;->mFirstJulianDay:I

    .line 274
    iget v6, v4, Landroid/text/format/Time;->month:I

    iput v6, p0, Lcom/android/calendar/month/SimpleWeekView;->mFirstMonth:I

    .line 277
    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5, p2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 278
    .local v5, "today":Landroid/text/format/Time;
    invoke-virtual {v5}, Landroid/text/format/Time;->setToNow()V

    .line 279
    iput-boolean v8, p0, Lcom/android/calendar/month/SimpleWeekView;->mHasToday:Z

    .line 280
    iput v1, p0, Lcom/android/calendar/month/SimpleWeekView;->mToday:I

    .line 282
    const-string v6, "focus_month"

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    const-string v6, "focus_month"

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 286
    .local v1, "focusMonth":I
    :cond_9
    :goto_3
    iget v6, p0, Lcom/android/calendar/month/SimpleWeekView;->mNumCells:I

    if-ge v2, v6, :cond_11

    .line 287
    iget v6, v4, Landroid/text/format/Time;->monthDay:I

    if-ne v6, v7, :cond_a

    .line 288
    iget v6, v4, Landroid/text/format/Time;->month:I

    iput v6, p0, Lcom/android/calendar/month/SimpleWeekView;->mFirstMonth:I

    .line 290
    :cond_a
    iget-object v9, p0, Lcom/android/calendar/month/SimpleWeekView;->mOddMonth:[Z

    iget v6, v4, Landroid/text/format/Time;->month:I

    rem-int/lit8 v6, v6, 0x2

    if-ne v6, v7, :cond_f

    move v6, v7

    :goto_4
    aput-boolean v6, v9, v2

    .line 291
    iget v6, v4, Landroid/text/format/Time;->month:I

    if-ne v6, v1, :cond_10

    .line 292
    iget-object v6, p0, Lcom/android/calendar/month/SimpleWeekView;->mFocusDay:[Z

    aput-boolean v7, v6, v2

    .line 296
    :goto_5
    iget v6, v4, Landroid/text/format/Time;->year:I

    iget v9, v5, Landroid/text/format/Time;->year:I

    if-ne v6, v9, :cond_b

    iget v6, v4, Landroid/text/format/Time;->yearDay:I

    iget v9, v5, Landroid/text/format/Time;->yearDay:I

    if-ne v6, v9, :cond_b

    .line 297
    iput-boolean v7, p0, Lcom/android/calendar/month/SimpleWeekView;->mHasToday:Z

    .line 298
    iput v2, p0, Lcom/android/calendar/month/SimpleWeekView;->mToday:I

    .line 300
    :cond_b
    iget-object v6, p0, Lcom/android/calendar/month/SimpleWeekView;->mDayNumbers:[Ljava/lang/String;

    iget v9, v4, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v4, Landroid/text/format/Time;->monthDay:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v2

    .line 301
    invoke-virtual {v4, v7}, Landroid/text/format/Time;->normalize(Z)J

    .line 286
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .end local v1    # "focusMonth":I
    .end local v2    # "i":I
    .end local v3    # "julianMonday":I
    .end local v4    # "time":Landroid/text/format/Time;
    .end local v5    # "today":Landroid/text/format/Time;
    :cond_c
    move v6, v8

    .line 228
    goto/16 :goto_0

    .line 236
    :cond_d
    iput-boolean v8, p0, Lcom/android/calendar/month/SimpleWeekView;->mShowWeekNum:Z

    goto/16 :goto_1

    .line 239
    :cond_e
    iget v6, p0, Lcom/android/calendar/month/SimpleWeekView;->mNumDays:I

    goto/16 :goto_2

    .restart local v1    # "focusMonth":I
    .restart local v2    # "i":I
    .restart local v3    # "julianMonday":I
    .restart local v4    # "time":Landroid/text/format/Time;
    .restart local v5    # "today":Landroid/text/format/Time;
    :cond_f
    move v6, v8

    .line 290
    goto :goto_4

    .line 294
    :cond_10
    iget-object v6, p0, Lcom/android/calendar/month/SimpleWeekView;->mFocusDay:[Z

    aput-boolean v8, v6, v2

    goto :goto_5

    .line 305
    :cond_11
    iget v6, v4, Landroid/text/format/Time;->monthDay:I

    if-ne v6, v7, :cond_12

    .line 306
    iget v6, v4, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v6, v6, -0x1

    iput v6, v4, Landroid/text/format/Time;->monthDay:I

    .line 307
    invoke-virtual {v4, v7}, Landroid/text/format/Time;->normalize(Z)J

    .line 309
    :cond_12
    iget v6, v4, Landroid/text/format/Time;->month:I

    iput v6, p0, Lcom/android/calendar/month/SimpleWeekView;->mLastMonth:I

    .line 311
    invoke-virtual {p0}, Lcom/android/calendar/month/SimpleWeekView;->updateSelectionPositions()V

    .line 312
    return-void
.end method

.method protected updateSelectionPositions()V
    .locals 4

    .prologue
    .line 503
    iget-boolean v1, p0, Lcom/android/calendar/month/SimpleWeekView;->mHasSelectedDay:Z

    if-eqz v1, :cond_2

    .line 504
    iget v1, p0, Lcom/android/calendar/month/SimpleWeekView;->mSelectedDay:I

    iget v2, p0, Lcom/android/calendar/month/SimpleWeekView;->mWeekStart:I

    sub-int v0, v1, v2

    .line 505
    .local v0, "selectedPosition":I
    if-gez v0, :cond_0

    .line 506
    add-int/lit8 v0, v0, 0x7

    .line 508
    :cond_0
    iget-boolean v1, p0, Lcom/android/calendar/month/SimpleWeekView;->mShowWeekNum:Z

    if-eqz v1, :cond_1

    .line 509
    add-int/lit8 v0, v0, 0x1

    .line 511
    :cond_1
    iget v1, p0, Lcom/android/calendar/month/SimpleWeekView;->mWidth:I

    iget v2, p0, Lcom/android/calendar/month/SimpleWeekView;->mPadding:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    mul-int/2addr v1, v0

    iget v2, p0, Lcom/android/calendar/month/SimpleWeekView;->mNumCells:I

    div-int/2addr v1, v2

    iget v2, p0, Lcom/android/calendar/month/SimpleWeekView;->mPadding:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/calendar/month/SimpleWeekView;->mSelectedLeft:I

    .line 513
    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Lcom/android/calendar/month/SimpleWeekView;->mWidth:I

    iget v3, p0, Lcom/android/calendar/month/SimpleWeekView;->mPadding:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/android/calendar/month/SimpleWeekView;->mNumCells:I

    div-int/2addr v1, v2

    iget v2, p0, Lcom/android/calendar/month/SimpleWeekView;->mPadding:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/calendar/month/SimpleWeekView;->mSelectedRight:I

    .line 516
    .end local v0    # "selectedPosition":I
    :cond_2
    return-void
.end method
