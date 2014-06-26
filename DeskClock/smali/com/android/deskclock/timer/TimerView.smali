.class public Lcom/android/deskclock/timer/TimerView;
.super Landroid/widget/LinearLayout;
.source "TimerView.java"


# instance fields
.field private final mAndroidClockMonoThin:Landroid/graphics/Typeface;

.field private final mGrayColor:I

.field private mHoursOnes:Landroid/widget/TextView;

.field private mMinutesOnes:Landroid/widget/TextView;

.field private mMinutesTens:Landroid/widget/TextView;

.field private mOriginalHoursTypeface:Landroid/graphics/Typeface;

.field private mOriginalMinutesTypeface:Landroid/graphics/Typeface;

.field private mSeconds:Landroid/widget/TextView;

.field private final mWhiteColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/deskclock/timer/TimerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "fonts/AndroidClockMono-Thin.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lcom/android/deskclock/timer/TimerView;->mAndroidClockMonoThin:Landroid/graphics/Typeface;

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 52
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x7f0b0017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/deskclock/timer/TimerView;->mWhiteColor:I

    .line 53
    const v1, 0x7f0b0018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/deskclock/timer/TimerView;->mGrayColor:I

    .line 54
    return-void
.end method

.method private addStartPadding(Landroid/widget/TextView;)V
    .locals 12
    .param p1, "textView"    # Landroid/widget/TextView;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 83
    const v1, 0x3ee66666

    .line 85
    .local v1, "gapPadding":F
    const-string v7, "%010d"

    new-array v8, v11, [Ljava/lang/Object;

    const v9, 0x75bcd15

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "allDigits":Ljava/lang/String;
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5, v11}, Landroid/graphics/Paint;-><init>(I)V

    .line 87
    .local v5, "paint":Landroid/graphics/Paint;
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result v7

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 88
    invoke-virtual {p1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 90
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    new-array v6, v7, [F

    .line 91
    .local v6, "widths":[F
    invoke-virtual {v5, v0, v6}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    move-result v4

    .line 92
    .local v4, "ll":I
    const/4 v3, 0x0

    .line 93
    .local v3, "largest":I
    const/4 v2, 0x1

    .local v2, "ii":I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 94
    aget v7, v6, v2

    aget v8, v6, v3

    cmpl-float v7, v7, v8

    if-lez v7, :cond_0

    .line 95
    move v3, v2

    .line 93
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 99
    :cond_1
    const v7, 0x3ee66666

    aget v8, v6, v3

    mul-float/2addr v7, v8

    float-to-int v7, v7

    invoke-virtual {p1, v7, v10, v10, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 100
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 60
    const v0, 0x7f0e0087

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/deskclock/timer/TimerView;->mHoursOnes:Landroid/widget/TextView;

    .line 61
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerView;->mHoursOnes:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerView;->mHoursOnes:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/timer/TimerView;->mOriginalHoursTypeface:Landroid/graphics/Typeface;

    .line 64
    :cond_0
    const v0, 0x7f0e0089

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/deskclock/timer/TimerView;->mMinutesTens:Landroid/widget/TextView;

    .line 65
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerView;->mHoursOnes:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/deskclock/timer/TimerView;->mMinutesTens:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 66
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerView;->mMinutesTens:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/android/deskclock/timer/TimerView;->addStartPadding(Landroid/widget/TextView;)V

    .line 68
    :cond_1
    const v0, 0x7f0e008a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/deskclock/timer/TimerView;->mMinutesOnes:Landroid/widget/TextView;

    .line 69
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerView;->mMinutesOnes:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 70
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerView;->mMinutesOnes:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/timer/TimerView;->mOriginalMinutesTypeface:Landroid/graphics/Typeface;

    .line 72
    :cond_2
    const v0, 0x7f0e008c

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/deskclock/timer/TimerView;->mSeconds:Landroid/widget/TextView;

    .line 73
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerView;->mSeconds:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 74
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerView;->mSeconds:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/android/deskclock/timer/TimerView;->addStartPadding(Landroid/widget/TextView;)V

    .line 76
    :cond_3
    return-void
.end method

.method public setTime(IIII)V
    .locals 7
    .param p1, "hoursOnesDigit"    # I
    .param p2, "minutesTensDigit"    # I
    .param p3, "minutesOnesDigit"    # I
    .param p4, "seconds"    # I

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 105
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerView;->mHoursOnes:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 106
    if-ne p1, v6, :cond_4

    .line 107
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerView;->mHoursOnes:Landroid/widget/TextView;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerView;->mHoursOnes:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/deskclock/timer/TimerView;->mAndroidClockMonoThin:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 109
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerView;->mHoursOnes:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/deskclock/timer/TimerView;->mGrayColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 117
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerView;->mMinutesTens:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 118
    if-ne p2, v6, :cond_5

    .line 119
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerView;->mMinutesTens:Landroid/widget/TextView;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerView;->mMinutesTens:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/deskclock/timer/TimerView;->mAndroidClockMonoThin:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 121
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerView;->mMinutesTens:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/deskclock/timer/TimerView;->mGrayColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 128
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerView;->mMinutesOnes:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 129
    if-ne p3, v6, :cond_6

    .line 130
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerView;->mMinutesOnes:Landroid/widget/TextView;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerView;->mMinutesOnes:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/deskclock/timer/TimerView;->mAndroidClockMonoThin:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 132
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerView;->mMinutesOnes:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/deskclock/timer/TimerView;->mGrayColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 140
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerView;->mSeconds:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 141
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerView;->mSeconds:Landroid/widget/TextView;

    const-string v1, "%02d"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    :cond_3
    return-void

    .line 111
    :cond_4
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerView;->mHoursOnes:Landroid/widget/TextView;

    const-string v1, "%d"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerView;->mHoursOnes:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/deskclock/timer/TimerView;->mOriginalHoursTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 113
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerView;->mHoursOnes:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/deskclock/timer/TimerView;->mWhiteColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 123
    :cond_5
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerView;->mMinutesTens:Landroid/widget/TextView;

    const-string v1, "%d"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerView;->mMinutesTens:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/deskclock/timer/TimerView;->mOriginalMinutesTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 125
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerView;->mMinutesTens:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/deskclock/timer/TimerView;->mWhiteColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 134
    :cond_6
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerView;->mMinutesOnes:Landroid/widget/TextView;

    const-string v1, "%d"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerView;->mMinutesOnes:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/deskclock/timer/TimerView;->mOriginalMinutesTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 136
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerView;->mMinutesOnes:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/deskclock/timer/TimerView;->mWhiteColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2
.end method
