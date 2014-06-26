.class public Lcom/android/deskclock/CircleTimerView;
.super Landroid/view/View;
.source "CircleTimerView.java"


# static fields
.field private static mDotRadius:F

.field private static mMarkerStrokeSize:F

.field private static mStrokeSize:F


# instance fields
.field private mAccumulatedTime:J

.field private mAnimate:Z

.field private final mArcRect:Landroid/graphics/RectF;

.field private mCurrentIntervalTime:J

.field private final mFill:Landroid/graphics/Paint;

.field private mIntervalStartTime:J

.field private mIntervalTime:J

.field private mMarkerTime:J

.field private final mPaint:Landroid/graphics/Paint;

.field private mPaused:Z

.field private mRadiusOffset:F

.field private mRedColor:I

.field private mScreenDensity:F

.field private mTimerMode:Z

.field private mWhiteColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/high16 v0, 0x40800000

    sput v0, Lcom/android/deskclock/CircleTimerView;->mStrokeSize:F

    .line 33
    const/high16 v0, 0x40c00000

    sput v0, Lcom/android/deskclock/CircleTimerView;->mDotRadius:F

    .line 34
    const/high16 v0, 0x40000000

    sput v0, Lcom/android/deskclock/CircleTimerView;->mMarkerStrokeSize:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/deskclock/CircleTimerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const-wide/16 v4, -0x1

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 50
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    iput-wide v2, p0, Lcom/android/deskclock/CircleTimerView;->mIntervalTime:J

    .line 26
    iput-wide v4, p0, Lcom/android/deskclock/CircleTimerView;->mIntervalStartTime:J

    .line 27
    iput-wide v4, p0, Lcom/android/deskclock/CircleTimerView;->mMarkerTime:J

    .line 28
    iput-wide v2, p0, Lcom/android/deskclock/CircleTimerView;->mCurrentIntervalTime:J

    .line 29
    iput-wide v2, p0, Lcom/android/deskclock/CircleTimerView;->mAccumulatedTime:J

    .line 30
    iput-boolean v1, p0, Lcom/android/deskclock/CircleTimerView;->mPaused:Z

    .line 31
    iput-boolean v1, p0, Lcom/android/deskclock/CircleTimerView;->mAnimate:Z

    .line 35
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/deskclock/CircleTimerView;->mPaint:Landroid/graphics/Paint;

    .line 36
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/deskclock/CircleTimerView;->mFill:Landroid/graphics/Paint;

    .line 37
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/deskclock/CircleTimerView;->mArcRect:Landroid/graphics/RectF;

    .line 42
    iput-boolean v1, p0, Lcom/android/deskclock/CircleTimerView;->mTimerMode:Z

    .line 51
    invoke-direct {p0, p1}, Lcom/android/deskclock/CircleTimerView;->init(Landroid/content/Context;)V

    .line 52
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 5
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    .line 115
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 116
    .local v1, "resources":Landroid/content/res/Resources;
    const v2, 0x7f090035

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    sput v2, Lcom/android/deskclock/CircleTimerView;->mStrokeSize:F

    .line 117
    const v2, 0x7f090034

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 118
    .local v0, "dotDiameter":F
    const v2, 0x7f090036

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    sput v2, Lcom/android/deskclock/CircleTimerView;->mMarkerStrokeSize:F

    .line 119
    sget v2, Lcom/android/deskclock/CircleTimerView;->mStrokeSize:F

    sget v3, Lcom/android/deskclock/CircleTimerView;->mMarkerStrokeSize:F

    invoke-static {v2, v0, v3}, Lcom/android/deskclock/Utils;->calculateRadiusOffset(FFF)F

    move-result v2

    iput v2, p0, Lcom/android/deskclock/CircleTimerView;->mRadiusOffset:F

    .line 121
    iget-object v2, p0, Lcom/android/deskclock/CircleTimerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 122
    iget-object v2, p0, Lcom/android/deskclock/CircleTimerView;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 123
    const v2, 0x7f0b0017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/deskclock/CircleTimerView;->mWhiteColor:I

    .line 124
    const v2, 0x7f0b0016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/deskclock/CircleTimerView;->mRedColor:I

    .line 125
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    iput v2, p0, Lcom/android/deskclock/CircleTimerView;->mScreenDensity:F

    .line 126
    iget-object v2, p0, Lcom/android/deskclock/CircleTimerView;->mFill:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 127
    iget-object v2, p0, Lcom/android/deskclock/CircleTimerView;->mFill:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 128
    iget-object v2, p0, Lcom/android/deskclock/CircleTimerView;->mFill:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/deskclock/CircleTimerView;->mRedColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 129
    const/high16 v2, 0x40000000

    div-float v2, v0, v2

    sput v2, Lcom/android/deskclock/CircleTimerView;->mDotRadius:F

    .line 130
    return-void
.end method


# virtual methods
.method public abortIntervalAnimation()V
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/deskclock/CircleTimerView;->mAnimate:Z

    .line 93
    return-void
.end method

.method public clearSharedPref(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 248
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 249
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "sw_start_time"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 250
    const-string v1, "sw_accum_time"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 251
    const-string v1, "sw_state"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 252
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_ctv_paused"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 253
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_ctv_interval"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 254
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_ctv_interval_start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 255
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_ctv_current_interval"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 256
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_ctv_accum_time"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 257
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_ctv_marker_time"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 258
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_ctv_timer_mode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 259
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 260
    return-void
.end method

.method protected drawRedDot(Landroid/graphics/Canvas;FIIF)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "degrees"    # F
    .param p3, "xCenter"    # I
    .param p4, "yCenter"    # I
    .param p5, "radius"    # F

    .prologue
    const/high16 v6, 0x43b40000

    const/high16 v5, 0x43870000

    .line 202
    iget-object v3, p0, Lcom/android/deskclock/CircleTimerView;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/android/deskclock/CircleTimerView;->mRedColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 204
    iget-boolean v3, p0, Lcom/android/deskclock/CircleTimerView;->mTimerMode:Z

    if-eqz v3, :cond_0

    .line 205
    mul-float v3, p2, v6

    sub-float v0, v5, v3

    .line 210
    .local v0, "dotPercent":F
    :goto_0
    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    .line 211
    .local v1, "dotRadians":D
    int-to-float v3, p3

    float-to-double v4, p5

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-float v4, v4

    add-float/2addr v3, v4

    int-to-float v4, p4

    float-to-double v5, p5

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    double-to-float v5, v5

    add-float/2addr v4, v5

    sget v5, Lcom/android/deskclock/CircleTimerView;->mDotRadius:F

    iget-object v6, p0, Lcom/android/deskclock/CircleTimerView;->mFill:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 213
    return-void

    .line 207
    .end local v0    # "dotPercent":F
    .end local v1    # "dotRadians":D
    :cond_0
    mul-float v3, p2, v6

    add-float v0, v5, v3

    .restart local v0    # "dotPercent":F
    goto :goto_0
.end method

.method public isAnimating()Z
    .locals 4

    .prologue
    .line 82
    iget-wide v0, p0, Lcom/android/deskclock/CircleTimerView;->mIntervalStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 19
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 138
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v4, v1, 0x1

    .line 139
    .local v4, "xCenter":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v5, v1, 0x2

    .line 141
    .local v5, "yCenter":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/deskclock/CircleTimerView;->mPaint:Landroid/graphics/Paint;

    sget v2, Lcom/android/deskclock/CircleTimerView;->mStrokeSize:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 142
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/deskclock/CircleTimerView;->mRadiusOffset:F

    sub-float v6, v1, v2

    .line 144
    .local v6, "radius":F
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/deskclock/CircleTimerView;->mIntervalStartTime:J

    const-wide/16 v7, -0x1

    cmp-long v1, v1, v7

    if-nez v1, :cond_2

    .line 146
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/deskclock/CircleTimerView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/deskclock/CircleTimerView;->mWhiteColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 147
    int-to-float v1, v4

    int-to-float v2, v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/deskclock/CircleTimerView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 148
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/deskclock/CircleTimerView;->mTimerMode:Z

    if-eqz v1, :cond_0

    .line 149
    const/4 v3, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/deskclock/CircleTimerView;->drawRedDot(Landroid/graphics/Canvas;FIIF)V

    .line 195
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/deskclock/CircleTimerView;->mAnimate:Z

    if-eqz v1, :cond_1

    .line 196
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 198
    :cond_1
    return-void

    .line 152
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/deskclock/CircleTimerView;->mAnimate:Z

    if-eqz v1, :cond_3

    .line 153
    invoke-static {}, Lcom/android/deskclock/Utils;->getTimeNow()J

    move-result-wide v1

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/deskclock/CircleTimerView;->mIntervalStartTime:J

    sub-long/2addr v1, v7

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/deskclock/CircleTimerView;->mAccumulatedTime:J

    add-long/2addr v1, v7

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/deskclock/CircleTimerView;->mCurrentIntervalTime:J

    .line 156
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/deskclock/CircleTimerView;->mArcRect:Landroid/graphics/RectF;

    int-to-float v2, v5

    sub-float/2addr v2, v6

    iput v2, v1, Landroid/graphics/RectF;->top:F

    .line 157
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/deskclock/CircleTimerView;->mArcRect:Landroid/graphics/RectF;

    int-to-float v2, v5

    add-float/2addr v2, v6

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    .line 158
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/deskclock/CircleTimerView;->mArcRect:Landroid/graphics/RectF;

    int-to-float v2, v4

    sub-float/2addr v2, v6

    iput v2, v1, Landroid/graphics/RectF;->left:F

    .line 159
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/deskclock/CircleTimerView;->mArcRect:Landroid/graphics/RectF;

    int-to-float v2, v4

    add-float/2addr v2, v6

    iput v2, v1, Landroid/graphics/RectF;->right:F

    .line 160
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/deskclock/CircleTimerView;->mCurrentIntervalTime:J

    long-to-float v1, v1

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/deskclock/CircleTimerView;->mIntervalTime:J

    long-to-float v2, v7

    div-float v3, v1, v2

    .line 162
    .local v3, "redPercent":F
    const/high16 v1, 0x3f800000

    cmpl-float v1, v3, v1

    if-lez v1, :cond_4

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/deskclock/CircleTimerView;->mTimerMode:Z

    if-eqz v1, :cond_4

    const/high16 v3, 0x3f800000

    .line 164
    :cond_4
    const/high16 v2, 0x3f800000

    const/high16 v1, 0x3f800000

    cmpl-float v1, v3, v1

    if-lez v1, :cond_6

    const/high16 v1, 0x3f800000

    :goto_1
    sub-float v14, v2, v1

    .line 166
    .local v14, "whitePercent":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/deskclock/CircleTimerView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/deskclock/CircleTimerView;->mRedColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 167
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/deskclock/CircleTimerView;->mTimerMode:Z

    if-eqz v1, :cond_7

    .line 168
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/deskclock/CircleTimerView;->mArcRect:Landroid/graphics/RectF;

    const/high16 v9, 0x43870000

    neg-float v1, v3

    const/high16 v2, 0x43b40000

    mul-float v10, v1, v2

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/deskclock/CircleTimerView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 174
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/deskclock/CircleTimerView;->mPaint:Landroid/graphics/Paint;

    sget v2, Lcom/android/deskclock/CircleTimerView;->mStrokeSize:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 175
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/deskclock/CircleTimerView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/deskclock/CircleTimerView;->mWhiteColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 176
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/deskclock/CircleTimerView;->mTimerMode:Z

    if-eqz v1, :cond_8

    .line 177
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/deskclock/CircleTimerView;->mArcRect:Landroid/graphics/RectF;

    const/high16 v9, 0x43870000

    const/high16 v1, 0x43b40000

    mul-float v10, v14, v1

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/deskclock/CircleTimerView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 183
    :goto_3
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/deskclock/CircleTimerView;->mMarkerTime:J

    const-wide/16 v7, -0x1

    cmp-long v1, v1, v7

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    cmpl-float v1, v6, v1

    if-lez v1, :cond_5

    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/deskclock/CircleTimerView;->mIntervalTime:J

    const-wide/16 v7, 0x0

    cmp-long v1, v1, v7

    if-eqz v1, :cond_5

    .line 184
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/deskclock/CircleTimerView;->mPaint:Landroid/graphics/Paint;

    sget v2, Lcom/android/deskclock/CircleTimerView;->mMarkerStrokeSize:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 185
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/deskclock/CircleTimerView;->mMarkerTime:J

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/deskclock/CircleTimerView;->mIntervalTime:J

    rem-long/2addr v1, v7

    long-to-float v1, v1

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/deskclock/CircleTimerView;->mIntervalTime:J

    long-to-float v2, v7

    div-float/2addr v1, v2

    const/high16 v2, 0x43b40000

    mul-float v13, v1, v2

    .line 190
    .local v13, "angle":F
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/deskclock/CircleTimerView;->mArcRect:Landroid/graphics/RectF;

    const/high16 v1, 0x43870000

    add-float v9, v1, v13

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/deskclock/CircleTimerView;->mScreenDensity:F

    const-wide v10, 0x4076800000000000L

    float-to-double v15, v6

    const-wide v17, 0x400921fb54442d18L

    mul-double v15, v15, v17

    div-double/2addr v10, v15

    double-to-float v2, v10

    mul-float v10, v1, v2

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/deskclock/CircleTimerView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .end local v13    # "angle":F
    :cond_5
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 193
    invoke-virtual/range {v1 .. v6}, Lcom/android/deskclock/CircleTimerView;->drawRedDot(Landroid/graphics/Canvas;FIIF)V

    goto/16 :goto_0

    .end local v14    # "whitePercent":F
    :cond_6
    move v1, v3

    .line 164
    goto/16 :goto_1

    .line 170
    .restart local v14    # "whitePercent":F
    :cond_7
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/deskclock/CircleTimerView;->mArcRect:Landroid/graphics/RectF;

    const/high16 v9, 0x43870000

    const/high16 v1, 0x43b40000

    mul-float v10, v3, v1

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/deskclock/CircleTimerView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 179
    :cond_8
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/deskclock/CircleTimerView;->mArcRect:Landroid/graphics/RectF;

    const/high16 v1, 0x43870000

    const/high16 v2, 0x3f800000

    sub-float/2addr v2, v14

    const/high16 v7, 0x43b40000

    mul-float/2addr v2, v7

    add-float v9, v1, v2

    const/high16 v1, 0x43b40000

    mul-float v10, v14, v1

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/deskclock/CircleTimerView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/16 :goto_3
.end method

.method public pauseIntervalAnimation()V
    .locals 6

    .prologue
    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/deskclock/CircleTimerView;->mAnimate:Z

    .line 87
    iget-wide v0, p0, Lcom/android/deskclock/CircleTimerView;->mAccumulatedTime:J

    invoke-static {}, Lcom/android/deskclock/Utils;->getTimeNow()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/deskclock/CircleTimerView;->mIntervalStartTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/deskclock/CircleTimerView;->mAccumulatedTime:J

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/deskclock/CircleTimerView;->mPaused:Z

    .line 89
    return-void
.end method

.method public readFromSharedPref(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 7
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const-wide/16 v5, 0x0

    const-wide/16 v3, -0x1

    const/4 v0, 0x0

    .line 237
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_ctv_paused"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/deskclock/CircleTimerView;->mPaused:Z

    .line 238
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_ctv_interval"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/deskclock/CircleTimerView;->mIntervalTime:J

    .line 239
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_ctv_interval_start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/deskclock/CircleTimerView;->mIntervalStartTime:J

    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_ctv_current_interval"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/deskclock/CircleTimerView;->mCurrentIntervalTime:J

    .line 241
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_ctv_accum_time"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/deskclock/CircleTimerView;->mAccumulatedTime:J

    .line 242
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_ctv_marker_time"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/deskclock/CircleTimerView;->mMarkerTime:J

    .line 243
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_ctv_timer_mode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/deskclock/CircleTimerView;->mTimerMode:Z

    .line 244
    iget-wide v1, p0, Lcom/android/deskclock/CircleTimerView;->mIntervalStartTime:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/deskclock/CircleTimerView;->mPaused:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/deskclock/CircleTimerView;->mAnimate:Z

    .line 245
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    const-wide/16 v0, -0x1

    .line 65
    iput-wide v0, p0, Lcom/android/deskclock/CircleTimerView;->mIntervalStartTime:J

    .line 66
    iput-wide v0, p0, Lcom/android/deskclock/CircleTimerView;->mMarkerTime:J

    .line 67
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 68
    return-void
.end method

.method public setIntervalTime(J)V
    .locals 0
    .param p1, "t"    # J

    .prologue
    .line 55
    iput-wide p1, p0, Lcom/android/deskclock/CircleTimerView;->mIntervalTime:J

    .line 56
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 57
    return-void
.end method

.method public setMarkerTime(J)V
    .locals 0
    .param p1, "t"    # J

    .prologue
    .line 60
    iput-wide p1, p0, Lcom/android/deskclock/CircleTimerView;->mMarkerTime:J

    .line 61
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 62
    return-void
.end method

.method public setPassedTime(JZ)V
    .locals 2
    .param p1, "time"    # J
    .param p3, "drawRed"    # Z

    .prologue
    .line 104
    iput-wide p1, p0, Lcom/android/deskclock/CircleTimerView;->mAccumulatedTime:J

    iput-wide p1, p0, Lcom/android/deskclock/CircleTimerView;->mCurrentIntervalTime:J

    .line 105
    if-eqz p3, :cond_0

    .line 106
    invoke-static {}, Lcom/android/deskclock/Utils;->getTimeNow()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/deskclock/CircleTimerView;->mIntervalStartTime:J

    .line 108
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 109
    return-void
.end method

.method public setTimerMode(Z)V
    .locals 0
    .param p1, "mode"    # Z

    .prologue
    .line 133
    iput-boolean p1, p0, Lcom/android/deskclock/CircleTimerView;->mTimerMode:Z

    .line 134
    return-void
.end method

.method public startIntervalAnimation()V
    .locals 2

    .prologue
    .line 70
    invoke-static {}, Lcom/android/deskclock/Utils;->getTimeNow()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/deskclock/CircleTimerView;->mIntervalStartTime:J

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/deskclock/CircleTimerView;->mAnimate:Z

    .line 72
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/deskclock/CircleTimerView;->mPaused:Z

    .line 74
    return-void
.end method

.method public stopIntervalAnimation()V
    .locals 2

    .prologue
    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/deskclock/CircleTimerView;->mAnimate:Z

    .line 77
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/deskclock/CircleTimerView;->mIntervalStartTime:J

    .line 78
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/deskclock/CircleTimerView;->mAccumulatedTime:J

    .line 79
    return-void
.end method

.method public writeToSharedPref(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 4
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 225
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 226
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_ctv_paused"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/deskclock/CircleTimerView;->mPaused:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 227
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_ctv_interval"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/deskclock/CircleTimerView;->mIntervalTime:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_ctv_interval_start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/deskclock/CircleTimerView;->mIntervalStartTime:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 229
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_ctv_current_interval"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/deskclock/CircleTimerView;->mCurrentIntervalTime:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 230
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_ctv_accum_time"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/deskclock/CircleTimerView;->mAccumulatedTime:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_ctv_marker_time"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/deskclock/CircleTimerView;->mMarkerTime:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_ctv_timer_mode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/deskclock/CircleTimerView;->mTimerMode:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 233
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 234
    return-void
.end method
