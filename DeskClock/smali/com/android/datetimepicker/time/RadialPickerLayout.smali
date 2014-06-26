.class public Lcom/android/datetimepicker/time/RadialPickerLayout;
.super Landroid/widget/FrameLayout;
.source "RadialPickerLayout.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/datetimepicker/time/RadialPickerLayout$OnValueSelectedListener;
    }
.end annotation


# instance fields
.field private final TAP_TIMEOUT:I

.field private final TOUCH_SLOP:I

.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mAmPmCirclesView:Lcom/android/datetimepicker/time/AmPmCirclesView;

.field private mCircleView:Lcom/android/datetimepicker/time/CircleView;

.field private mCurrentHoursOfDay:I

.field private mCurrentItemShowing:I

.field private mCurrentMinutes:I

.field private mDoingMove:Z

.field private mDoingTouch:Z

.field private mDownDegrees:I

.field private mDownX:F

.field private mDownY:F

.field private mGrayBox:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mHapticFeedbackController:Lcom/android/datetimepicker/HapticFeedbackController;

.field private mHideAmPm:Z

.field private mHourRadialSelectorView:Lcom/android/datetimepicker/time/RadialSelectorView;

.field private mHourRadialTextsView:Lcom/android/datetimepicker/time/RadialTextsView;

.field private mInputEnabled:Z

.field private mIs24HourMode:Z

.field private mIsTouchingAmOrPm:I

.field private mLastValueSelected:I

.field private mListener:Lcom/android/datetimepicker/time/RadialPickerLayout$OnValueSelectedListener;

.field private mMinuteRadialSelectorView:Lcom/android/datetimepicker/time/RadialSelectorView;

.field private mMinuteRadialTextsView:Lcom/android/datetimepicker/time/RadialTextsView;

.field private mSnapPrefer30sMap:[I

.field private mTimeInitialized:Z

.field private mTransition:Landroid/animation/AnimatorSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 102
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 86
    iput v3, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mIsTouchingAmOrPm:I

    .line 95
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mHandler:Landroid/os/Handler;

    .line 104
    invoke-virtual {p0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 105
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 106
    .local v0, "vc":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->TOUCH_SLOP:I

    .line 107
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v1

    iput v1, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->TAP_TIMEOUT:I

    .line 108
    iput-boolean v4, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mDoingMove:Z

    .line 110
    new-instance v1, Lcom/android/datetimepicker/time/CircleView;

    invoke-direct {v1, p1}, Lcom/android/datetimepicker/time/CircleView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mCircleView:Lcom/android/datetimepicker/time/CircleView;

    .line 111
    iget-object v1, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mCircleView:Lcom/android/datetimepicker/time/CircleView;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 113
    new-instance v1, Lcom/android/datetimepicker/time/AmPmCirclesView;

    invoke-direct {v1, p1}, Lcom/android/datetimepicker/time/AmPmCirclesView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mAmPmCirclesView:Lcom/android/datetimepicker/time/AmPmCirclesView;

    .line 114
    iget-object v1, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mAmPmCirclesView:Lcom/android/datetimepicker/time/AmPmCirclesView;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 116
    new-instance v1, Lcom/android/datetimepicker/time/RadialTextsView;

    invoke-direct {v1, p1}, Lcom/android/datetimepicker/time/RadialTextsView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mHourRadialTextsView:Lcom/android/datetimepicker/time/RadialTextsView;

    .line 117
    iget-object v1, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mHourRadialTextsView:Lcom/android/datetimepicker/time/RadialTextsView;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 118
    new-instance v1, Lcom/android/datetimepicker/time/RadialTextsView;

    invoke-direct {v1, p1}, Lcom/android/datetimepicker/time/RadialTextsView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mMinuteRadialTextsView:Lcom/android/datetimepicker/time/RadialTextsView;

    .line 119
    iget-object v1, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mMinuteRadialTextsView:Lcom/android/datetimepicker/time/RadialTextsView;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 121
    new-instance v1, Lcom/android/datetimepicker/time/RadialSelectorView;

    invoke-direct {v1, p1}, Lcom/android/datetimepicker/time/RadialSelectorView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mHourRadialSelectorView:Lcom/android/datetimepicker/time/RadialSelectorView;

    .line 122
    iget-object v1, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mHourRadialSelectorView:Lcom/android/datetimepicker/time/RadialSelectorView;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 123
    new-instance v1, Lcom/android/datetimepicker/time/RadialSelectorView;

    invoke-direct {v1, p1}, Lcom/android/datetimepicker/time/RadialSelectorView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mMinuteRadialSelectorView:Lcom/android/datetimepicker/time/RadialSelectorView;

    .line 124
    iget-object v1, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mMinuteRadialSelectorView:Lcom/android/datetimepicker/time/RadialSelectorView;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 127
    invoke-direct {p0}, Lcom/android/datetimepicker/time/RadialPickerLayout;->preparePrefer30sMap()V

    .line 129
    iput v3, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mLastValueSelected:I

    .line 131
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mInputEnabled:Z

    .line 132
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mGrayBox:Landroid/view/View;

    .line 133
    iget-object v1, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mGrayBox:Landroid/view/View;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    iget-object v1, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mGrayBox:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/datetimepicker/R$color;->transparent_black:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 136
    iget-object v1, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mGrayBox:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 137
    iget-object v1, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mGrayBox:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 139
    const-string v1, "accessibility"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    iput-object v1, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 141
    iput-boolean v4, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mTimeInitialized:Z

    .line 142
    return-void
.end method

.method static synthetic access$000(Lcom/android/datetimepicker/time/RadialPickerLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/datetimepicker/time/RadialPickerLayout;

    .prologue
    .line 49
    iget v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mIsTouchingAmOrPm:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/datetimepicker/time/RadialPickerLayout;)Lcom/android/datetimepicker/time/AmPmCirclesView;
    .locals 1
    .param p0, "x0"    # Lcom/android/datetimepicker/time/RadialPickerLayout;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mAmPmCirclesView:Lcom/android/datetimepicker/time/AmPmCirclesView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/datetimepicker/time/RadialPickerLayout;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/datetimepicker/time/RadialPickerLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mDoingMove:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/datetimepicker/time/RadialPickerLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/datetimepicker/time/RadialPickerLayout;

    .prologue
    .line 49
    iget v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mDownDegrees:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/datetimepicker/time/RadialPickerLayout;IZZZ)I
    .locals 1
    .param p0, "x0"    # Lcom/android/datetimepicker/time/RadialPickerLayout;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/datetimepicker/time/RadialPickerLayout;->reselectSelector(IZZZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$502(Lcom/android/datetimepicker/time/RadialPickerLayout;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/datetimepicker/time/RadialPickerLayout;
    .param p1, "x1"    # I

    .prologue
    .line 49
    iput p1, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mLastValueSelected:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/datetimepicker/time/RadialPickerLayout;)Lcom/android/datetimepicker/time/RadialPickerLayout$OnValueSelectedListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/datetimepicker/time/RadialPickerLayout;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mListener:Lcom/android/datetimepicker/time/RadialPickerLayout$OnValueSelectedListener;

    return-object v0
.end method

.method private getCurrentlyShowingValue()I
    .locals 2

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/android/datetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v0

    .line 276
    .local v0, "currentIndex":I
    if-nez v0, :cond_0

    .line 277
    iget v1, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mCurrentHoursOfDay:I

    .line 281
    :goto_0
    return v1

    .line 278
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 279
    iget v1, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mCurrentMinutes:I

    goto :goto_0

    .line 281
    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private getDegreesFromCoords(FFZ[Ljava/lang/Boolean;)I
    .locals 2
    .param p1, "pointX"    # F
    .param p2, "pointY"    # F
    .param p3, "forceLegal"    # Z
    .param p4, "isInnerCircle"    # [Ljava/lang/Boolean;

    .prologue
    .line 496
    invoke-virtual {p0}, Lcom/android/datetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v0

    .line 497
    .local v0, "currentItem":I
    if-nez v0, :cond_0

    .line 498
    iget-object v1, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mHourRadialSelectorView:Lcom/android/datetimepicker/time/RadialSelectorView;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/datetimepicker/time/RadialSelectorView;->getDegreesFromCoords(FFZ[Ljava/lang/Boolean;)I

    move-result v1

    .line 504
    :goto_0
    return v1

    .line 500
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 501
    iget-object v1, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mMinuteRadialSelectorView:Lcom/android/datetimepicker/time/RadialSelectorView;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/datetimepicker/time/RadialSelectorView;->getDegreesFromCoords(FFZ[Ljava/lang/Boolean;)I

    move-result v1

    goto :goto_0

    .line 504
    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private isHourInnerCircle(I)Z
    .locals 1
    .param p1, "hourOfDay"    # I

    .prologue
    .line 259
    iget-boolean v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mIs24HourMode:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    if-gt p1, v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private preparePrefer30sMap()V
    .locals 6

    .prologue
    const/16 v5, 0x169

    .line 345
    new-array v4, v5, [I

    iput-object v4, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mSnapPrefer30sMap:[I

    .line 348
    const/4 v3, 0x0

    .line 350
    .local v3, "snappedOutputDegrees":I
    const/4 v0, 0x1

    .line 354
    .local v0, "count":I
    const/16 v2, 0x8

    .line 356
    .local v2, "expectedCount":I
    const/4 v1, 0x0

    .local v1, "degrees":I
    :goto_0
    if-ge v1, v5, :cond_3

    .line 358
    iget-object v4, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mSnapPrefer30sMap:[I

    aput v3, v4, v1

    .line 361
    if-ne v0, v2, :cond_2

    .line 362
    add-int/lit8 v3, v3, 0x6

    .line 363
    const/16 v4, 0x168

    if-ne v3, v4, :cond_0

    .line 364
    const/4 v2, 0x7

    .line 370
    :goto_1
    const/4 v0, 0x1

    .line 356
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 365
    :cond_0
    rem-int/lit8 v4, v3, 0x1e

    if-nez v4, :cond_1

    .line 366
    const/16 v2, 0xe

    goto :goto_1

    .line 368
    :cond_1
    const/4 v2, 0x4

    goto :goto_1

    .line 372
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 375
    :cond_3
    return-void
.end method

.method private reselectSelector(IZZZ)I
    .locals 8
    .param p1, "degrees"    # I
    .param p2, "isInnerCircle"    # Z
    .param p3, "forceToVisibleValue"    # Z
    .param p4, "forceDrawDot"    # Z

    .prologue
    const/16 v7, 0x168

    const/4 v6, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x1

    .line 436
    if-ne p1, v4, :cond_1

    .line 479
    :cond_0
    :goto_0
    return v4

    .line 439
    :cond_1
    invoke-virtual {p0}, Lcom/android/datetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v1

    .line 442
    .local v1, "currentShowing":I
    if-nez p3, :cond_3

    if-ne v1, v5, :cond_3

    move v0, v5

    .line 443
    .local v0, "allowFineGrained":Z
    :goto_1
    if-eqz v0, :cond_4

    .line 444
    invoke-direct {p0, p1}, Lcom/android/datetimepicker/time/RadialPickerLayout;->snapPrefer30s(I)I

    move-result p1

    .line 450
    :goto_2
    if-nez v1, :cond_5

    .line 451
    iget-object v2, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mHourRadialSelectorView:Lcom/android/datetimepicker/time/RadialSelectorView;

    .line 452
    .local v2, "radialSelectorView":Lcom/android/datetimepicker/time/RadialSelectorView;
    const/16 v3, 0x1e

    .line 457
    .local v3, "stepSize":I
    :goto_3
    invoke-virtual {v2, p1, p2, p4}, Lcom/android/datetimepicker/time/RadialSelectorView;->setSelection(IZZ)V

    .line 458
    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 461
    if-nez v1, :cond_8

    .line 462
    iget-boolean v5, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mIs24HourMode:Z

    if-eqz v5, :cond_7

    .line 463
    if-nez p1, :cond_6

    if-eqz p2, :cond_6

    .line 464
    const/16 p1, 0x168

    .line 475
    :cond_2
    :goto_4
    div-int v4, p1, v3

    .line 476
    .local v4, "value":I
    if-nez v1, :cond_0

    iget-boolean v5, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mIs24HourMode:Z

    if-eqz v5, :cond_0

    if-nez p2, :cond_0

    if-eqz p1, :cond_0

    .line 477
    add-int/lit8 v4, v4, 0xc

    goto :goto_0

    .end local v0    # "allowFineGrained":Z
    .end local v2    # "radialSelectorView":Lcom/android/datetimepicker/time/RadialSelectorView;
    .end local v3    # "stepSize":I
    .end local v4    # "value":I
    :cond_3
    move v0, v6

    .line 442
    goto :goto_1

    .line 446
    .restart local v0    # "allowFineGrained":Z
    :cond_4
    invoke-direct {p0, p1, v6}, Lcom/android/datetimepicker/time/RadialPickerLayout;->snapOnly30s(II)I

    move-result p1

    goto :goto_2

    .line 454
    :cond_5
    iget-object v2, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mMinuteRadialSelectorView:Lcom/android/datetimepicker/time/RadialSelectorView;

    .line 455
    .restart local v2    # "radialSelectorView":Lcom/android/datetimepicker/time/RadialSelectorView;
    const/4 v3, 0x6

    .restart local v3    # "stepSize":I
    goto :goto_3

    .line 465
    :cond_6
    if-ne p1, v7, :cond_2

    if-nez p2, :cond_2

    .line 466
    const/4 p1, 0x0

    goto :goto_4

    .line 468
    :cond_7
    if-nez p1, :cond_2

    .line 469
    const/16 p1, 0x168

    goto :goto_4

    .line 471
    :cond_8
    if-ne p1, v7, :cond_2

    if-ne v1, v5, :cond_2

    .line 472
    const/4 p1, 0x0

    goto :goto_4
.end method

.method private setItem(II)V
    .locals 5
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 240
    if-nez p1, :cond_1

    .line 241
    invoke-direct {p0, v4, p2}, Lcom/android/datetimepicker/time/RadialPickerLayout;->setValueForItem(II)V

    .line 242
    rem-int/lit8 v2, p2, 0xc

    mul-int/lit8 v0, v2, 0x1e

    .line 243
    .local v0, "hourDegrees":I
    iget-object v2, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mHourRadialSelectorView:Lcom/android/datetimepicker/time/RadialSelectorView;

    invoke-direct {p0, p2}, Lcom/android/datetimepicker/time/RadialPickerLayout;->isHourInnerCircle(I)Z

    move-result v3

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/datetimepicker/time/RadialSelectorView;->setSelection(IZZ)V

    .line 244
    iget-object v2, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mHourRadialSelectorView:Lcom/android/datetimepicker/time/RadialSelectorView;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 251
    .end local v0    # "hourDegrees":I
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    if-ne p1, v2, :cond_0

    .line 246
    invoke-direct {p0, v2, p2}, Lcom/android/datetimepicker/time/RadialPickerLayout;->setValueForItem(II)V

    .line 247
    mul-int/lit8 v1, p2, 0x6

    .line 248
    .local v1, "minuteDegrees":I
    iget-object v2, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mMinuteRadialSelectorView:Lcom/android/datetimepicker/time/RadialSelectorView;

    invoke-virtual {v2, v1, v4, v4}, Lcom/android/datetimepicker/time/RadialSelectorView;->setSelection(IZZ)V

    .line 249
    iget-object v2, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mMinuteRadialSelectorView:Lcom/android/datetimepicker/time/RadialSelectorView;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method private setValueForItem(II)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    const/4 v1, 0x1

    .line 298
    if-nez p1, :cond_1

    .line 299
    iput p2, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mCurrentHoursOfDay:I

    .line 309
    :cond_0
    :goto_0
    return-void

    .line 300
    :cond_1
    if-ne p1, v1, :cond_2

    .line 301
    iput p2, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mCurrentMinutes:I

    goto :goto_0

    .line 302
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 303
    if-nez p2, :cond_3

    .line 304
    iget v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mCurrentHoursOfDay:I

    rem-int/lit8 v0, v0, 0xc

    iput v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mCurrentHoursOfDay:I

    goto :goto_0

    .line 305
    :cond_3
    if-ne p2, v1, :cond_0

    .line 306
    iget v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mCurrentHoursOfDay:I

    rem-int/lit8 v0, v0, 0xc

    add-int/lit8 v0, v0, 0xc

    iput v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mCurrentHoursOfDay:I

    goto :goto_0
.end method

.method private snapOnly30s(II)I
    .locals 5
    .param p1, "degrees"    # I
    .param p2, "forceHigherOrLower"    # I

    .prologue
    .line 401
    const/16 v2, 0x1e

    .line 402
    .local v2, "stepSize":I
    div-int v3, p1, v2

    mul-int v1, v3, v2

    .line 403
    .local v1, "floor":I
    add-int v0, v1, v2

    .line 404
    .local v0, "ceiling":I
    const/4 v3, 0x1

    if-ne p2, v3, :cond_0

    .line 405
    move p1, v0

    .line 418
    :goto_0
    return p1

    .line 406
    :cond_0
    const/4 v3, -0x1

    if-ne p2, v3, :cond_2

    .line 407
    if-ne p1, v1, :cond_1

    .line 408
    sub-int/2addr v1, v2

    .line 410
    :cond_1
    move p1, v1

    goto :goto_0

    .line 412
    :cond_2
    sub-int v3, p1, v1

    sub-int v4, v0, p1

    if-ge v3, v4, :cond_3

    .line 413
    move p1, v1

    goto :goto_0

    .line 415
    :cond_3
    move p1, v0

    goto :goto_0
.end method

.method private snapPrefer30s(I)I
    .locals 1
    .param p1, "degrees"    # I

    .prologue
    .line 385
    iget-object v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mSnapPrefer30sMap:[I

    if-nez v0, :cond_0

    .line 386
    const/4 v0, -0x1

    .line 388
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mSnapPrefer30sMap:[I

    aget v0, v0, p1

    goto :goto_0
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    const/4 v5, 0x1

    .line 757
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v6

    const/16 v7, 0x20

    if-ne v6, v7, :cond_1

    .line 759
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 760
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 761
    .local v3, "time":Landroid/text/format/Time;
    invoke-virtual {p0}, Lcom/android/datetimepicker/time/RadialPickerLayout;->getHours()I

    move-result v6

    iput v6, v3, Landroid/text/format/Time;->hour:I

    .line 762
    invoke-virtual {p0}, Lcom/android/datetimepicker/time/RadialPickerLayout;->getMinutes()I

    move-result v6

    iput v6, v3, Landroid/text/format/Time;->minute:I

    .line 763
    invoke-virtual {v3, v5}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v1

    .line 764
    .local v1, "millis":J
    const/4 v0, 0x1

    .line 765
    .local v0, "flags":I
    iget-boolean v6, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mIs24HourMode:Z

    if-eqz v6, :cond_0

    .line 766
    or-int/lit16 v0, v0, 0x80

    .line 768
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v1, v2, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v4

    .line 769
    .local v4, "timeString":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 772
    .end local v0    # "flags":I
    .end local v1    # "millis":J
    .end local v3    # "time":Landroid/text/format/Time;
    .end local v4    # "timeString":Ljava/lang/String;
    :goto_0
    return v5

    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v5

    goto :goto_0
.end method

.method public getCurrentItemShowing()I
    .locals 3

    .prologue
    .line 512
    iget v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mCurrentItemShowing:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mCurrentItemShowing:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 513
    const-string v0, "RadialPickerLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current item showing was unfortunately set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mCurrentItemShowing:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    const/4 v0, -0x1

    .line 516
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mCurrentItemShowing:I

    goto :goto_0
.end method

.method public getHours()I
    .locals 1

    .prologue
    .line 263
    iget v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mCurrentHoursOfDay:I

    return v0
.end method

.method public getIsCurrentlyAmOrPm()I
    .locals 2

    .prologue
    .line 286
    iget v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mCurrentHoursOfDay:I

    const/16 v1, 0xc

    if-ge v0, v1, :cond_0

    .line 287
    const/4 v0, 0x0

    .line 291
    :goto_0
    return v0

    .line 288
    :cond_0
    iget v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mCurrentHoursOfDay:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_1

    .line 289
    const/4 v0, 0x1

    goto :goto_0

    .line 291
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getMinutes()I
    .locals 1

    .prologue
    .line 267
    iget v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mCurrentMinutes:I

    return v0
.end method

.method public initialize(Landroid/content/Context;Lcom/android/datetimepicker/HapticFeedbackController;IIZ)V
    .locals 24
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hapticFeedbackController"    # Lcom/android/datetimepicker/HapticFeedbackController;
    .param p3, "initialHoursOfDay"    # I
    .param p4, "initialMinutes"    # I
    .param p5, "is24HourMode"    # Z

    .prologue
    .line 172
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mTimeInitialized:Z

    if-eqz v2, :cond_0

    .line 173
    const-string v2, "RadialPickerLayout"

    const-string v5, "Time has already been initialized."

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :goto_0
    return-void

    .line 177
    :cond_0
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/datetimepicker/time/RadialPickerLayout;->mHapticFeedbackController:Lcom/android/datetimepicker/HapticFeedbackController;

    .line 178
    move/from16 v0, p5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/datetimepicker/time/RadialPickerLayout;->mIs24HourMode:Z

    .line 179
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mHideAmPm:Z

    .line 182
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mCircleView:Lcom/android/datetimepicker/time/CircleView;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mHideAmPm:Z

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v5}, Lcom/android/datetimepicker/time/CircleView;->initialize(Landroid/content/Context;Z)V

    .line 183
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mCircleView:Lcom/android/datetimepicker/time/CircleView;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 184
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mHideAmPm:Z

    if-nez v2, :cond_1

    .line 185
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mAmPmCirclesView:Lcom/android/datetimepicker/time/AmPmCirclesView;

    const/16 v2, 0xc

    move/from16 v0, p3

    if-ge v0, v2, :cond_3

    const/4 v2, 0x0

    :goto_2
    move-object/from16 v0, p1

    invoke-virtual {v5, v0, v2}, Lcom/android/datetimepicker/time/AmPmCirclesView;->initialize(Landroid/content/Context;I)V

    .line 186
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mAmPmCirclesView:Lcom/android/datetimepicker/time/AmPmCirclesView;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 190
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 191
    .local v3, "res":Landroid/content/res/Resources;
    const/16 v2, 0xc

    new-array v0, v2, [I

    move-object/from16 v18, v0

    fill-array-data v18, :array_0

    .line 192
    .local v18, "hours":[I
    const/16 v2, 0xc

    new-array v0, v2, [I

    move-object/from16 v19, v0

    fill-array-data v19, :array_1

    .line 193
    .local v19, "hours_24":[I
    const/16 v2, 0xc

    new-array v0, v2, [I

    move-object/from16 v22, v0

    fill-array-data v22, :array_2

    .line 194
    .local v22, "minutes":[I
    const/16 v2, 0xc

    new-array v4, v2, [Ljava/lang/String;

    .line 195
    .local v4, "hoursTexts":[Ljava/lang/String;
    const/16 v2, 0xc

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v21, v0

    .line 196
    .local v21, "innerHoursTexts":[Ljava/lang/String;
    const/16 v2, 0xc

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v23, v0

    .line 197
    .local v23, "minutesTexts":[Ljava/lang/String;
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_3
    const/16 v2, 0xc

    move/from16 v0, v20

    if-ge v0, v2, :cond_5

    .line 198
    if-eqz p5, :cond_4

    const-string v2, "%02d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget v7, v19, v20

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_4
    aput-object v2, v4, v20

    .line 200
    const-string v2, "%d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget v7, v18, v20

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v21, v20

    .line 201
    const-string v2, "%02d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget v7, v22, v20

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v23, v20

    .line 197
    add-int/lit8 v20, v20, 0x1

    goto :goto_3

    .line 179
    .end local v3    # "res":Landroid/content/res/Resources;
    .end local v4    # "hoursTexts":[Ljava/lang/String;
    .end local v18    # "hours":[I
    .end local v19    # "hours_24":[I
    .end local v20    # "i":I
    .end local v21    # "innerHoursTexts":[Ljava/lang/String;
    .end local v22    # "minutes":[I
    .end local v23    # "minutesTexts":[Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mIs24HourMode:Z

    goto/16 :goto_1

    .line 185
    :cond_3
    const/4 v2, 0x1

    goto/16 :goto_2

    .line 198
    .restart local v3    # "res":Landroid/content/res/Resources;
    .restart local v4    # "hoursTexts":[Ljava/lang/String;
    .restart local v18    # "hours":[I
    .restart local v19    # "hours_24":[I
    .restart local v20    # "i":I
    .restart local v21    # "innerHoursTexts":[Ljava/lang/String;
    .restart local v22    # "minutes":[I
    .restart local v23    # "minutesTexts":[Ljava/lang/String;
    :cond_4
    const-string v2, "%d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget v7, v18, v20

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 203
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mHourRadialTextsView:Lcom/android/datetimepicker/time/RadialTextsView;

    if-eqz p5, :cond_6

    move-object/from16 v5, v21

    :goto_5
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mHideAmPm:Z

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/android/datetimepicker/time/RadialTextsView;->initialize(Landroid/content/res/Resources;[Ljava/lang/String;[Ljava/lang/String;ZZ)V

    .line 205
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mHourRadialTextsView:Lcom/android/datetimepicker/time/RadialTextsView;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 206
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mMinuteRadialTextsView:Lcom/android/datetimepicker/time/RadialTextsView;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mHideAmPm:Z

    const/4 v10, 0x0

    move-object v6, v3

    move-object/from16 v7, v23

    invoke-virtual/range {v5 .. v10}, Lcom/android/datetimepicker/time/RadialTextsView;->initialize(Landroid/content/res/Resources;[Ljava/lang/String;[Ljava/lang/String;ZZ)V

    .line 207
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mMinuteRadialTextsView:Lcom/android/datetimepicker/time/RadialTextsView;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 210
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v2, v1}, Lcom/android/datetimepicker/time/RadialPickerLayout;->setValueForItem(II)V

    .line 211
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v2, v1}, Lcom/android/datetimepicker/time/RadialPickerLayout;->setValueForItem(II)V

    .line 212
    rem-int/lit8 v2, p3, 0xc

    mul-int/lit8 v10, v2, 0x1e

    .line 213
    .local v10, "hourDegrees":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mHourRadialSelectorView:Lcom/android/datetimepicker/time/RadialSelectorView;

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mHideAmPm:Z

    const/4 v9, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/datetimepicker/time/RadialPickerLayout;->isHourInnerCircle(I)Z

    move-result v11

    move-object/from16 v6, p1

    move/from16 v8, p5

    invoke-virtual/range {v5 .. v11}, Lcom/android/datetimepicker/time/RadialSelectorView;->initialize(Landroid/content/Context;ZZZIZ)V

    .line 215
    mul-int/lit8 v16, p4, 0x6

    .line 216
    .local v16, "minuteDegrees":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mMinuteRadialSelectorView:Lcom/android/datetimepicker/time/RadialSelectorView;

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mHideAmPm:Z

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    move-object/from16 v12, p1

    invoke-virtual/range {v11 .. v17}, Lcom/android/datetimepicker/time/RadialSelectorView;->initialize(Landroid/content/Context;ZZZIZ)V

    .line 219
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mTimeInitialized:Z

    goto/16 :goto_0

    .line 203
    .end local v10    # "hourDegrees":I
    .end local v16    # "minuteDegrees":I
    :cond_6
    const/4 v5, 0x0

    goto :goto_5

    .line 191
    :array_0
    .array-data 4
        0xc
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
    .end array-data

    .line 192
    :array_1
    .array-data 4
        0x0
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
    .end array-data

    .line 193
    :array_2
    .array-data 4
        0x0
        0x5
        0xa
        0xf
        0x14
        0x19
        0x1e
        0x23
        0x28
        0x2d
        0x32
        0x37
    .end array-data
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 747
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 748
    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 749
    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 750
    return-void
.end method

.method public onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 149
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 150
    .local v2, "measuredWidth":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 151
    .local v4, "widthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 152
    .local v1, "measuredHeight":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 153
    .local v0, "heightMode":I
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 155
    .local v3, "minDimension":I
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-super {p0, v5, v6}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 157
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 17
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 565
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 566
    .local v5, "eventX":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 569
    .local v6, "eventY":F
    const/4 v13, 0x1

    new-array v8, v13, [Ljava/lang/Boolean;

    .line 570
    .local v8, "isInnerCircle":[Ljava/lang/Boolean;
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    aput-object v14, v8, v13

    .line 572
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 574
    .local v10, "millis":J
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v13

    packed-switch v13, :pswitch_data_0

    .line 724
    :cond_0
    :goto_0
    const/4 v13, 0x0

    :goto_1
    return v13

    .line 576
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mInputEnabled:Z

    if-nez v13, :cond_1

    .line 577
    const/4 v13, 0x1

    goto :goto_1

    .line 580
    :cond_1
    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mDownX:F

    .line 581
    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mDownY:F

    .line 583
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mLastValueSelected:I

    .line 584
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mDoingMove:Z

    .line 585
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mDoingTouch:Z

    .line 587
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mHideAmPm:Z

    if-nez v13, :cond_4

    .line 588
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mAmPmCirclesView:Lcom/android/datetimepicker/time/AmPmCirclesView;

    invoke-virtual {v13, v5, v6}, Lcom/android/datetimepicker/time/AmPmCirclesView;->getIsTouchingAmOrPm(FF)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mIsTouchingAmOrPm:I

    .line 592
    :goto_2
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mIsTouchingAmOrPm:I

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mIsTouchingAmOrPm:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_5

    .line 595
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mHapticFeedbackController:Lcom/android/datetimepicker/HapticFeedbackController;

    invoke-virtual {v13}, Lcom/android/datetimepicker/HapticFeedbackController;->tryVibrate()V

    .line 596
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mDownDegrees:I

    .line 597
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mHandler:Landroid/os/Handler;

    new-instance v14, Lcom/android/datetimepicker/time/RadialPickerLayout$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/datetimepicker/time/RadialPickerLayout$1;-><init>(Lcom/android/datetimepicker/time/RadialPickerLayout;)V

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/datetimepicker/time/RadialPickerLayout;->TAP_TIMEOUT:I

    int-to-long v15, v15

    invoke-virtual/range {v13 .. v16}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 626
    :cond_3
    :goto_3
    const/4 v13, 0x1

    goto :goto_1

    .line 590
    :cond_4
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mIsTouchingAmOrPm:I

    goto :goto_2

    .line 607
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v13}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v7

    .line 609
    .local v7, "forceLegal":Z
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6, v7, v8}, Lcom/android/datetimepicker/time/RadialPickerLayout;->getDegreesFromCoords(FFZ[Ljava/lang/Boolean;)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mDownDegrees:I

    .line 610
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mDownDegrees:I

    const/4 v14, -0x1

    if-eq v13, v14, :cond_3

    .line 613
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mHapticFeedbackController:Lcom/android/datetimepicker/HapticFeedbackController;

    invoke-virtual {v13}, Lcom/android/datetimepicker/HapticFeedbackController;->tryVibrate()V

    .line 614
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mHandler:Landroid/os/Handler;

    new-instance v14, Lcom/android/datetimepicker/time/RadialPickerLayout$2;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v8}, Lcom/android/datetimepicker/time/RadialPickerLayout$2;-><init>(Lcom/android/datetimepicker/time/RadialPickerLayout;[Ljava/lang/Boolean;)V

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/datetimepicker/time/RadialPickerLayout;->TAP_TIMEOUT:I

    int-to-long v15, v15

    invoke-virtual/range {v13 .. v16}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    .line 628
    .end local v7    # "forceLegal":Z
    :pswitch_1
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mInputEnabled:Z

    if-nez v13, :cond_6

    .line 630
    const-string v13, "RadialPickerLayout"

    const-string v14, "Input was disabled, but received ACTION_MOVE."

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    const/4 v13, 0x1

    goto/16 :goto_1

    .line 634
    :cond_6
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mDownY:F

    sub-float v13, v6, v13

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 635
    .local v3, "dY":F
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mDownX:F

    sub-float v13, v5, v13

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 637
    .local v2, "dX":F
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mDoingMove:Z

    if-nez v13, :cond_7

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/datetimepicker/time/RadialPickerLayout;->TOUCH_SLOP:I

    int-to-float v13, v13

    cmpg-float v13, v2, v13

    if-gtz v13, :cond_7

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/datetimepicker/time/RadialPickerLayout;->TOUCH_SLOP:I

    int-to-float v13, v13

    cmpg-float v13, v3, v13

    if-lez v13, :cond_0

    .line 645
    :cond_7
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mIsTouchingAmOrPm:I

    if-eqz v13, :cond_8

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mIsTouchingAmOrPm:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_9

    .line 646
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mHandler:Landroid/os/Handler;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 647
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mAmPmCirclesView:Lcom/android/datetimepicker/time/AmPmCirclesView;

    invoke-virtual {v13, v5, v6}, Lcom/android/datetimepicker/time/AmPmCirclesView;->getIsTouchingAmOrPm(FF)I

    move-result v9

    .line 648
    .local v9, "isTouchingAmOrPm":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mIsTouchingAmOrPm:I

    if-eq v9, v13, :cond_0

    .line 649
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mAmPmCirclesView:Lcom/android/datetimepicker/time/AmPmCirclesView;

    const/4 v14, -0x1

    invoke-virtual {v13, v14}, Lcom/android/datetimepicker/time/AmPmCirclesView;->setAmOrPmPressed(I)V

    .line 650
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mAmPmCirclesView:Lcom/android/datetimepicker/time/AmPmCirclesView;

    invoke-virtual {v13}, Landroid/view/View;->invalidate()V

    .line 651
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mIsTouchingAmOrPm:I

    goto/16 :goto_0

    .line 656
    .end local v9    # "isTouchingAmOrPm":I
    :cond_9
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mDownDegrees:I

    const/4 v14, -0x1

    if-eq v13, v14, :cond_0

    .line 662
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mDoingMove:Z

    .line 663
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mHandler:Landroid/os/Handler;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 664
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6, v13, v8}, Lcom/android/datetimepicker/time/RadialPickerLayout;->getDegreesFromCoords(FFZ[Ljava/lang/Boolean;)I

    move-result v4

    .line 665
    .local v4, "degrees":I
    const/4 v13, -0x1

    if-eq v4, v13, :cond_a

    .line 666
    const/4 v13, 0x0

    aget-object v13, v8, v13

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v13, v14, v15}, Lcom/android/datetimepicker/time/RadialPickerLayout;->reselectSelector(IZZZ)I

    move-result v12

    .line 667
    .local v12, "value":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mLastValueSelected:I

    if-eq v12, v13, :cond_a

    .line 668
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mHapticFeedbackController:Lcom/android/datetimepicker/HapticFeedbackController;

    invoke-virtual {v13}, Lcom/android/datetimepicker/HapticFeedbackController;->tryVibrate()V

    .line 669
    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mLastValueSelected:I

    .line 670
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mListener:Lcom/android/datetimepicker/time/RadialPickerLayout$OnValueSelectedListener;

    invoke-virtual/range {p0 .. p0}, Lcom/android/datetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v14

    const/4 v15, 0x0

    invoke-interface {v13, v14, v12, v15}, Lcom/android/datetimepicker/time/RadialPickerLayout$OnValueSelectedListener;->onValueSelected(IIZ)V

    .line 673
    .end local v12    # "value":I
    :cond_a
    const/4 v13, 0x1

    goto/16 :goto_1

    .line 675
    .end local v2    # "dX":F
    .end local v3    # "dY":F
    .end local v4    # "degrees":I
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mInputEnabled:Z

    if-nez v13, :cond_b

    .line 677
    const-string v13, "RadialPickerLayout"

    const-string v14, "Input was disabled, but received ACTION_UP."

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mListener:Lcom/android/datetimepicker/time/RadialPickerLayout$OnValueSelectedListener;

    const/4 v14, 0x3

    const/4 v15, 0x1

    const/16 v16, 0x0

    invoke-interface/range {v13 .. v16}, Lcom/android/datetimepicker/time/RadialPickerLayout$OnValueSelectedListener;->onValueSelected(IIZ)V

    .line 679
    const/4 v13, 0x1

    goto/16 :goto_1

    .line 682
    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mHandler:Landroid/os/Handler;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 683
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mDoingTouch:Z

    .line 686
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mIsTouchingAmOrPm:I

    if-eqz v13, :cond_c

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mIsTouchingAmOrPm:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_e

    .line 687
    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mAmPmCirclesView:Lcom/android/datetimepicker/time/AmPmCirclesView;

    invoke-virtual {v13, v5, v6}, Lcom/android/datetimepicker/time/AmPmCirclesView;->getIsTouchingAmOrPm(FF)I

    move-result v9

    .line 688
    .restart local v9    # "isTouchingAmOrPm":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mAmPmCirclesView:Lcom/android/datetimepicker/time/AmPmCirclesView;

    const/4 v14, -0x1

    invoke-virtual {v13, v14}, Lcom/android/datetimepicker/time/AmPmCirclesView;->setAmOrPmPressed(I)V

    .line 689
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mAmPmCirclesView:Lcom/android/datetimepicker/time/AmPmCirclesView;

    invoke-virtual {v13}, Landroid/view/View;->invalidate()V

    .line 691
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mIsTouchingAmOrPm:I

    if-ne v9, v13, :cond_d

    .line 692
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mAmPmCirclesView:Lcom/android/datetimepicker/time/AmPmCirclesView;

    invoke-virtual {v13, v9}, Lcom/android/datetimepicker/time/AmPmCirclesView;->setAmOrPm(I)V

    .line 693
    invoke-virtual/range {p0 .. p0}, Lcom/android/datetimepicker/time/RadialPickerLayout;->getIsCurrentlyAmOrPm()I

    move-result v13

    if-eq v13, v9, :cond_d

    .line 694
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mListener:Lcom/android/datetimepicker/time/RadialPickerLayout$OnValueSelectedListener;

    const/4 v14, 0x2

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mIsTouchingAmOrPm:I

    const/16 v16, 0x0

    invoke-interface/range {v13 .. v16}, Lcom/android/datetimepicker/time/RadialPickerLayout$OnValueSelectedListener;->onValueSelected(IIZ)V

    .line 695
    const/4 v13, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v9}, Lcom/android/datetimepicker/time/RadialPickerLayout;->setValueForItem(II)V

    .line 698
    :cond_d
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mIsTouchingAmOrPm:I

    goto/16 :goto_0

    .line 703
    .end local v9    # "isTouchingAmOrPm":I
    :cond_e
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mDownDegrees:I

    const/4 v14, -0x1

    if-eq v13, v14, :cond_10

    .line 704
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mDoingMove:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6, v13, v8}, Lcom/android/datetimepicker/time/RadialPickerLayout;->getDegreesFromCoords(FFZ[Ljava/lang/Boolean;)I

    move-result v4

    .line 705
    .restart local v4    # "degrees":I
    const/4 v13, -0x1

    if-eq v4, v13, :cond_10

    .line 706
    const/4 v13, 0x0

    aget-object v13, v8, v13

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mDoingMove:Z

    if-nez v13, :cond_11

    const/4 v13, 0x1

    :goto_4
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v14, v13, v15}, Lcom/android/datetimepicker/time/RadialPickerLayout;->reselectSelector(IZZZ)I

    move-result v12

    .line 707
    .restart local v12    # "value":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/datetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v13

    if-nez v13, :cond_f

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mIs24HourMode:Z

    if-nez v13, :cond_f

    .line 708
    invoke-virtual/range {p0 .. p0}, Lcom/android/datetimepicker/time/RadialPickerLayout;->getIsCurrentlyAmOrPm()I

    move-result v1

    .line 709
    .local v1, "amOrPm":I
    if-nez v1, :cond_12

    const/16 v13, 0xc

    if-ne v12, v13, :cond_12

    .line 710
    const/4 v12, 0x0

    .line 715
    .end local v1    # "amOrPm":I
    :cond_f
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/datetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v12}, Lcom/android/datetimepicker/time/RadialPickerLayout;->setValueForItem(II)V

    .line 716
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mListener:Lcom/android/datetimepicker/time/RadialPickerLayout$OnValueSelectedListener;

    invoke-virtual/range {p0 .. p0}, Lcom/android/datetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v14

    const/4 v15, 0x1

    invoke-interface {v13, v14, v12, v15}, Lcom/android/datetimepicker/time/RadialPickerLayout$OnValueSelectedListener;->onValueSelected(IIZ)V

    .line 719
    .end local v4    # "degrees":I
    .end local v12    # "value":I
    :cond_10
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mDoingMove:Z

    .line 720
    const/4 v13, 0x1

    goto/16 :goto_1

    .line 706
    .restart local v4    # "degrees":I
    :cond_11
    const/4 v13, 0x0

    goto :goto_4

    .line 711
    .restart local v1    # "amOrPm":I
    .restart local v12    # "value":I
    :cond_12
    const/4 v13, 0x1

    if-ne v1, v13, :cond_f

    const/16 v13, 0xc

    if-eq v12, v13, :cond_f

    .line 712
    add-int/lit8 v12, v12, 0xc

    goto :goto_5

    .line 574
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 10
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 782
    invoke-super {p0, p1, p2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 830
    :goto_0
    return v7

    .line 786
    :cond_0
    const/4 v0, 0x0

    .line 787
    .local v0, "changeMultiplier":I
    const/16 v9, 0x1000

    if-ne p1, v9, :cond_4

    .line 788
    const/4 v0, 0x1

    .line 792
    :cond_1
    :goto_1
    if-eqz v0, :cond_9

    .line 793
    invoke-direct {p0}, Lcom/android/datetimepicker/time/RadialPickerLayout;->getCurrentlyShowingValue()I

    move-result v6

    .line 794
    .local v6, "value":I
    const/4 v5, 0x0

    .line 795
    .local v5, "stepSize":I
    invoke-virtual {p0}, Lcom/android/datetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v1

    .line 796
    .local v1, "currentItemShowing":I
    if-nez v1, :cond_5

    .line 797
    const/16 v5, 0x1e

    .line 798
    rem-int/lit8 v6, v6, 0xc

    .line 803
    :cond_2
    :goto_2
    mul-int v2, v6, v5

    .line 804
    .local v2, "degrees":I
    invoke-direct {p0, v2, v0}, Lcom/android/datetimepicker/time/RadialPickerLayout;->snapOnly30s(II)I

    move-result v2

    .line 805
    div-int v6, v2, v5

    .line 806
    const/4 v3, 0x0

    .line 807
    .local v3, "maxValue":I
    const/4 v4, 0x0

    .line 808
    .local v4, "minValue":I
    if-nez v1, :cond_7

    .line 809
    iget-boolean v9, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mIs24HourMode:Z

    if-eqz v9, :cond_6

    .line 810
    const/16 v3, 0x17

    .line 818
    :goto_3
    if-le v6, v3, :cond_8

    .line 820
    move v6, v4

    .line 825
    :cond_3
    :goto_4
    invoke-direct {p0, v1, v6}, Lcom/android/datetimepicker/time/RadialPickerLayout;->setItem(II)V

    .line 826
    iget-object v9, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mListener:Lcom/android/datetimepicker/time/RadialPickerLayout$OnValueSelectedListener;

    invoke-interface {v9, v1, v6, v8}, Lcom/android/datetimepicker/time/RadialPickerLayout$OnValueSelectedListener;->onValueSelected(IIZ)V

    goto :goto_0

    .line 789
    .end local v1    # "currentItemShowing":I
    .end local v2    # "degrees":I
    .end local v3    # "maxValue":I
    .end local v4    # "minValue":I
    .end local v5    # "stepSize":I
    .end local v6    # "value":I
    :cond_4
    const/16 v9, 0x2000

    if-ne p1, v9, :cond_1

    .line 790
    const/4 v0, -0x1

    goto :goto_1

    .line 799
    .restart local v1    # "currentItemShowing":I
    .restart local v5    # "stepSize":I
    .restart local v6    # "value":I
    :cond_5
    if-ne v1, v7, :cond_2

    .line 800
    const/4 v5, 0x6

    goto :goto_2

    .line 812
    .restart local v2    # "degrees":I
    .restart local v3    # "maxValue":I
    .restart local v4    # "minValue":I
    :cond_6
    const/16 v3, 0xc

    .line 813
    const/4 v4, 0x1

    goto :goto_3

    .line 816
    :cond_7
    const/16 v3, 0x37

    goto :goto_3

    .line 821
    :cond_8
    if-ge v6, v4, :cond_3

    .line 823
    move v6, v3

    goto :goto_4

    .end local v1    # "currentItemShowing":I
    .end local v2    # "degrees":I
    .end local v3    # "maxValue":I
    .end local v4    # "minValue":I
    .end local v5    # "stepSize":I
    .end local v6    # "value":I
    :cond_9
    move v7, v8

    .line 830
    goto :goto_0
.end method

.method public setAmOrPm(I)V
    .locals 1
    .param p1, "amOrPm"    # I

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mAmPmCirclesView:Lcom/android/datetimepicker/time/AmPmCirclesView;

    invoke-virtual {v0, p1}, Lcom/android/datetimepicker/time/AmPmCirclesView;->setAmOrPm(I)V

    .line 317
    iget-object v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mAmPmCirclesView:Lcom/android/datetimepicker/time/AmPmCirclesView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 318
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/android/datetimepicker/time/RadialPickerLayout;->setValueForItem(II)V

    .line 319
    return-void
.end method

.method public setCurrentItemShowing(IZ)V
    .locals 9
    .param p1, "index"    # I
    .param p2, "animate"    # Z

    .prologue
    const/16 v3, 0xff

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 524
    if-eqz p1, :cond_0

    if-eq p1, v6, :cond_0

    .line 525
    const-string v4, "RadialPickerLayout"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TimePicker does not support view at index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    :goto_0
    return-void

    .line 529
    :cond_0
    invoke-virtual {p0}, Lcom/android/datetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v2

    .line 530
    .local v2, "lastIndex":I
    iput p1, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mCurrentItemShowing:I

    .line 532
    if-eqz p2, :cond_4

    if-eq p1, v2, :cond_4

    .line 533
    const/4 v5, 0x4

    new-array v0, v5, [Landroid/animation/ObjectAnimator;

    .line 534
    .local v0, "anims":[Landroid/animation/ObjectAnimator;
    if-ne p1, v6, :cond_3

    .line 535
    iget-object v5, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mHourRadialTextsView:Lcom/android/datetimepicker/time/RadialTextsView;

    invoke-virtual {v5}, Lcom/android/datetimepicker/time/RadialTextsView;->getDisappearAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v0, v4

    .line 536
    iget-object v4, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mHourRadialSelectorView:Lcom/android/datetimepicker/time/RadialSelectorView;

    invoke-virtual {v4}, Lcom/android/datetimepicker/time/RadialSelectorView;->getDisappearAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v0, v6

    .line 537
    iget-object v4, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mMinuteRadialTextsView:Lcom/android/datetimepicker/time/RadialTextsView;

    invoke-virtual {v4}, Lcom/android/datetimepicker/time/RadialTextsView;->getReappearAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v0, v7

    .line 538
    iget-object v4, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mMinuteRadialSelectorView:Lcom/android/datetimepicker/time/RadialSelectorView;

    invoke-virtual {v4}, Lcom/android/datetimepicker/time/RadialSelectorView;->getReappearAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v0, v8

    .line 546
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mTransition:Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mTransition:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 547
    iget-object v4, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mTransition:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->end()V

    .line 549
    :cond_2
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mTransition:Landroid/animation/AnimatorSet;

    .line 550
    iget-object v4, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mTransition:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 551
    iget-object v4, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mTransition:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 539
    :cond_3
    if-nez p1, :cond_1

    .line 540
    iget-object v5, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mHourRadialTextsView:Lcom/android/datetimepicker/time/RadialTextsView;

    invoke-virtual {v5}, Lcom/android/datetimepicker/time/RadialTextsView;->getReappearAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v0, v4

    .line 541
    iget-object v4, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mHourRadialSelectorView:Lcom/android/datetimepicker/time/RadialSelectorView;

    invoke-virtual {v4}, Lcom/android/datetimepicker/time/RadialSelectorView;->getReappearAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v0, v6

    .line 542
    iget-object v4, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mMinuteRadialTextsView:Lcom/android/datetimepicker/time/RadialTextsView;

    invoke-virtual {v4}, Lcom/android/datetimepicker/time/RadialTextsView;->getDisappearAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v0, v7

    .line 543
    iget-object v4, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mMinuteRadialSelectorView:Lcom/android/datetimepicker/time/RadialSelectorView;

    invoke-virtual {v4}, Lcom/android/datetimepicker/time/RadialSelectorView;->getDisappearAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v0, v8

    goto :goto_1

    .line 553
    .end local v0    # "anims":[Landroid/animation/ObjectAnimator;
    :cond_4
    if-nez p1, :cond_5

    move v1, v3

    .line 554
    .local v1, "hourAlpha":I
    :goto_2
    if-ne p1, v6, :cond_6

    .line 555
    .local v3, "minuteAlpha":I
    :goto_3
    iget-object v4, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mHourRadialTextsView:Lcom/android/datetimepicker/time/RadialTextsView;

    int-to-float v5, v1

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    .line 556
    iget-object v4, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mHourRadialSelectorView:Lcom/android/datetimepicker/time/RadialSelectorView;

    int-to-float v5, v1

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    .line 557
    iget-object v4, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mMinuteRadialTextsView:Lcom/android/datetimepicker/time/RadialTextsView;

    int-to-float v5, v3

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    .line 558
    iget-object v4, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mMinuteRadialSelectorView:Lcom/android/datetimepicker/time/RadialSelectorView;

    int-to-float v5, v3

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_0

    .end local v1    # "hourAlpha":I
    .end local v3    # "minuteAlpha":I
    :cond_5
    move v1, v4

    .line 553
    goto :goto_2

    .restart local v1    # "hourAlpha":I
    :cond_6
    move v3, v4

    .line 554
    goto :goto_3
.end method

.method public setOnValueSelectedListener(Lcom/android/datetimepicker/time/RadialPickerLayout$OnValueSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/datetimepicker/time/RadialPickerLayout$OnValueSelectedListener;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mListener:Lcom/android/datetimepicker/time/RadialPickerLayout$OnValueSelectedListener;

    .line 161
    return-void
.end method

.method setTheme(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "themeDark"    # Z

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mCircleView:Lcom/android/datetimepicker/time/CircleView;

    invoke-virtual {v0, p1, p2}, Lcom/android/datetimepicker/time/CircleView;->setTheme(Landroid/content/Context;Z)V

    .line 224
    iget-object v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mAmPmCirclesView:Lcom/android/datetimepicker/time/AmPmCirclesView;

    invoke-virtual {v0, p1, p2}, Lcom/android/datetimepicker/time/AmPmCirclesView;->setTheme(Landroid/content/Context;Z)V

    .line 225
    iget-object v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mHourRadialTextsView:Lcom/android/datetimepicker/time/RadialTextsView;

    invoke-virtual {v0, p1, p2}, Lcom/android/datetimepicker/time/RadialTextsView;->setTheme(Landroid/content/Context;Z)V

    .line 226
    iget-object v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mMinuteRadialTextsView:Lcom/android/datetimepicker/time/RadialTextsView;

    invoke-virtual {v0, p1, p2}, Lcom/android/datetimepicker/time/RadialTextsView;->setTheme(Landroid/content/Context;Z)V

    .line 227
    iget-object v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mHourRadialSelectorView:Lcom/android/datetimepicker/time/RadialSelectorView;

    invoke-virtual {v0, p1, p2}, Lcom/android/datetimepicker/time/RadialSelectorView;->setTheme(Landroid/content/Context;Z)V

    .line 228
    iget-object v0, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mMinuteRadialSelectorView:Lcom/android/datetimepicker/time/RadialSelectorView;

    invoke-virtual {v0, p1, p2}, Lcom/android/datetimepicker/time/RadialSelectorView;->setTheme(Landroid/content/Context;Z)V

    .line 229
    return-void
.end method

.method public setTime(II)V
    .locals 1
    .param p1, "hours"    # I
    .param p2, "minutes"    # I

    .prologue
    .line 232
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/datetimepicker/time/RadialPickerLayout;->setItem(II)V

    .line 233
    const/4 v0, 0x1

    invoke-direct {p0, v0, p2}, Lcom/android/datetimepicker/time/RadialPickerLayout;->setItem(II)V

    .line 234
    return-void
.end method

.method public trySettingInputEnabled(Z)Z
    .locals 2
    .param p1, "inputEnabled"    # Z

    .prologue
    const/4 v0, 0x0

    .line 731
    iget-boolean v1, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mDoingTouch:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    .line 738
    :goto_0
    return v0

    .line 736
    :cond_0
    iput-boolean p1, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mInputEnabled:Z

    .line 737
    iget-object v1, p0, Lcom/android/datetimepicker/time/RadialPickerLayout;->mGrayBox:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x4

    :cond_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 738
    const/4 v0, 0x1

    goto :goto_0
.end method
