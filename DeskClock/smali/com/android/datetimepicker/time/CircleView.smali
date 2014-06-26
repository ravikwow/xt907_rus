.class public Lcom/android/datetimepicker/time/CircleView;
.super Landroid/view/View;
.source "CircleView.java"


# instance fields
.field private mAmPmCircleRadiusMultiplier:F

.field private mCircleColor:I

.field private mCircleRadius:I

.field private mCircleRadiusMultiplier:F

.field private mDotColor:I

.field private mDrawValuesReady:Z

.field private mIs24HourMode:Z

.field private mIsInitialized:Z

.field private final mPaint:Landroid/graphics/Paint;

.field private mXCenter:I

.field private mYCenter:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 34
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/datetimepicker/time/CircleView;->mPaint:Landroid/graphics/Paint;

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 51
    .local v0, "res":Landroid/content/res/Resources;
    sget v1, Lcom/android/datetimepicker/R$color;->white:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/datetimepicker/time/CircleView;->mCircleColor:I

    .line 52
    sget v1, Lcom/android/datetimepicker/R$color;->numbers_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/datetimepicker/time/CircleView;->mDotColor:I

    .line 53
    iget-object v1, p0, Lcom/android/datetimepicker/time/CircleView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 55
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/datetimepicker/time/CircleView;->mIsInitialized:Z

    .line 56
    return-void
.end method


# virtual methods
.method public initialize(Landroid/content/Context;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "is24HourMode"    # Z

    .prologue
    .line 59
    iget-boolean v1, p0, Lcom/android/datetimepicker/time/CircleView;->mIsInitialized:Z

    if-eqz v1, :cond_0

    .line 60
    const-string v1, "CircleView"

    const-string v2, "CircleView may only be initialized once."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :goto_0
    return-void

    .line 64
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 65
    .local v0, "res":Landroid/content/res/Resources;
    iput-boolean p2, p0, Lcom/android/datetimepicker/time/CircleView;->mIs24HourMode:Z

    .line 66
    if-eqz p2, :cond_1

    .line 67
    sget v1, Lcom/android/datetimepicker/R$string;->circle_radius_multiplier_24HourMode:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/android/datetimepicker/time/CircleView;->mCircleRadiusMultiplier:F

    .line 76
    :goto_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/datetimepicker/time/CircleView;->mIsInitialized:Z

    goto :goto_0

    .line 70
    :cond_1
    sget v1, Lcom/android/datetimepicker/R$string;->circle_radius_multiplier:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/android/datetimepicker/time/CircleView;->mCircleRadiusMultiplier:F

    .line 72
    sget v1, Lcom/android/datetimepicker/R$string;->ampm_circle_radius_multiplier:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/android/datetimepicker/time/CircleView;->mAmPmCircleRadiusMultiplier:F

    goto :goto_1
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 93
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 94
    .local v1, "viewWidth":I
    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lcom/android/datetimepicker/time/CircleView;->mIsInitialized:Z

    if-nez v2, :cond_1

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    iget-boolean v2, p0, Lcom/android/datetimepicker/time/CircleView;->mDrawValuesReady:Z

    if-nez v2, :cond_3

    .line 99
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/datetimepicker/time/CircleView;->mXCenter:I

    .line 100
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/datetimepicker/time/CircleView;->mYCenter:I

    .line 101
    iget v2, p0, Lcom/android/datetimepicker/time/CircleView;->mXCenter:I

    iget v3, p0, Lcom/android/datetimepicker/time/CircleView;->mYCenter:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/datetimepicker/time/CircleView;->mCircleRadiusMultiplier:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/android/datetimepicker/time/CircleView;->mCircleRadius:I

    .line 103
    iget-boolean v2, p0, Lcom/android/datetimepicker/time/CircleView;->mIs24HourMode:Z

    if-nez v2, :cond_2

    .line 107
    iget v2, p0, Lcom/android/datetimepicker/time/CircleView;->mCircleRadius:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/datetimepicker/time/CircleView;->mAmPmCircleRadiusMultiplier:F

    mul-float/2addr v2, v3

    float-to-int v0, v2

    .line 108
    .local v0, "amPmCircleRadius":I
    iget v2, p0, Lcom/android/datetimepicker/time/CircleView;->mYCenter:I

    div-int/lit8 v3, v0, 0x2

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/datetimepicker/time/CircleView;->mYCenter:I

    .line 111
    .end local v0    # "amPmCircleRadius":I
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/datetimepicker/time/CircleView;->mDrawValuesReady:Z

    .line 115
    :cond_3
    iget-object v2, p0, Lcom/android/datetimepicker/time/CircleView;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/datetimepicker/time/CircleView;->mCircleColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 116
    iget v2, p0, Lcom/android/datetimepicker/time/CircleView;->mXCenter:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/datetimepicker/time/CircleView;->mYCenter:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/datetimepicker/time/CircleView;->mCircleRadius:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/datetimepicker/time/CircleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 119
    iget-object v2, p0, Lcom/android/datetimepicker/time/CircleView;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/datetimepicker/time/CircleView;->mDotColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 120
    iget v2, p0, Lcom/android/datetimepicker/time/CircleView;->mXCenter:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/datetimepicker/time/CircleView;->mYCenter:I

    int-to-float v3, v3

    const/high16 v4, 0x40000000

    iget-object v5, p0, Lcom/android/datetimepicker/time/CircleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method setTheme(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dark"    # Z

    .prologue
    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 81
    .local v0, "res":Landroid/content/res/Resources;
    if-eqz p2, :cond_0

    .line 82
    sget v1, Lcom/android/datetimepicker/R$color;->dark_gray:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/datetimepicker/time/CircleView;->mCircleColor:I

    .line 83
    sget v1, Lcom/android/datetimepicker/R$color;->light_gray:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/datetimepicker/time/CircleView;->mDotColor:I

    .line 88
    :goto_0
    return-void

    .line 85
    :cond_0
    sget v1, Lcom/android/datetimepicker/R$color;->white:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/datetimepicker/time/CircleView;->mCircleColor:I

    .line 86
    sget v1, Lcom/android/datetimepicker/R$color;->numbers_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/datetimepicker/time/CircleView;->mDotColor:I

    goto :goto_0
.end method
