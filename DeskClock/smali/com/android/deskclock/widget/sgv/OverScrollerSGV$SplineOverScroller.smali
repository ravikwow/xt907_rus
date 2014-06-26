.class Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;
.super Ljava/lang/Object;
.source "OverScrollerSGV.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/widget/sgv/OverScrollerSGV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SplineOverScroller"
.end annotation


# static fields
.field private static DECELERATION_RATE:F

.field private static final SPLINE_POSITION:[F

.field private static final SPLINE_TIME:[F


# instance fields
.field private mCurrVelocity:F

.field private mCurrentPosition:I

.field private mDeceleration:F

.field private mDuration:I

.field private mFinal:I

.field private mFinished:Z

.field private mFlingFriction:F

.field private mOver:I

.field private final mPhysicalCoeff:F

.field private mSplineDistance:I

.field private mSplineDuration:I

.field private mStart:I

.field private mStartTime:J

.field private mState:I

.field private mVelocity:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .prologue
    .line 593
    const-wide v11, 0x3fe8f5c28f5c28f6L

    invoke-static {v11, v12}, Ljava/lang/Math;->log(D)D

    move-result-wide v11

    const-wide v13, 0x3feccccccccccccdL

    invoke-static {v13, v14}, Ljava/lang/Math;->log(D)D

    move-result-wide v13

    div-double/2addr v11, v13

    double-to-float v11, v11

    sput v11, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->DECELERATION_RATE:F

    .line 601
    const/16 v11, 0x65

    new-array v11, v11, [F

    sput-object v11, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->SPLINE_POSITION:[F

    .line 602
    const/16 v11, 0x65

    new-array v11, v11, [F

    sput-object v11, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->SPLINE_TIME:[F

    .line 609
    const/4 v7, 0x0

    .line 610
    .local v7, "x_min":F
    const/4 v10, 0x0

    .line 611
    .local v10, "y_min":F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/16 v11, 0x64

    if-ge v3, v11, :cond_4

    .line 612
    int-to-float v11, v3

    const/high16 v12, 0x42c80000

    div-float v0, v11, v12

    .line 614
    .local v0, "alpha":F
    const/high16 v6, 0x3f800000

    .line 617
    .local v6, "x_max":F
    :goto_1
    sub-float v11, v6, v7

    const/high16 v12, 0x40000000

    div-float/2addr v11, v12

    add-float v5, v7, v11

    .line 618
    .local v5, "x":F
    const/high16 v11, 0x40400000

    mul-float/2addr v11, v5

    const/high16 v12, 0x3f800000

    sub-float/2addr v12, v5

    mul-float v1, v11, v12

    .line 619
    .local v1, "coef":F
    const/high16 v11, 0x3f800000

    sub-float/2addr v11, v5

    const v12, 0x3e333333

    mul-float/2addr v11, v12

    const v12, 0x3eb33334

    mul-float/2addr v12, v5

    add-float/2addr v11, v12

    mul-float/2addr v11, v1

    mul-float v12, v5, v5

    mul-float/2addr v12, v5

    add-float v4, v11, v12

    .line 620
    .local v4, "tx":F
    sub-float v11, v4, v0

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    float-to-double v11, v11

    const-wide v13, 0x3ee4f8b588e368f1L

    cmpg-double v11, v11, v13

    if-gez v11, :cond_0

    .line 624
    sget-object v11, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->SPLINE_POSITION:[F

    const/high16 v12, 0x3f800000

    sub-float/2addr v12, v5

    const/high16 v13, 0x3f000000

    mul-float/2addr v12, v13

    add-float/2addr v12, v5

    mul-float/2addr v12, v1

    mul-float v13, v5, v5

    mul-float/2addr v13, v5

    add-float/2addr v12, v13

    aput v12, v11, v3

    .line 626
    const/high16 v9, 0x3f800000

    .line 629
    .local v9, "y_max":F
    :goto_2
    sub-float v11, v9, v10

    const/high16 v12, 0x40000000

    div-float/2addr v11, v12

    add-float v8, v10, v11

    .line 630
    .local v8, "y":F
    const/high16 v11, 0x40400000

    mul-float/2addr v11, v8

    const/high16 v12, 0x3f800000

    sub-float/2addr v12, v8

    mul-float v1, v11, v12

    .line 631
    const/high16 v11, 0x3f800000

    sub-float/2addr v11, v8

    const/high16 v12, 0x3f000000

    mul-float/2addr v11, v12

    add-float/2addr v11, v8

    mul-float/2addr v11, v1

    mul-float v12, v8, v8

    mul-float/2addr v12, v8

    add-float v2, v11, v12

    .line 632
    .local v2, "dy":F
    sub-float v11, v2, v0

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    float-to-double v11, v11

    const-wide v13, 0x3ee4f8b588e368f1L

    cmpg-double v11, v11, v13

    if-gez v11, :cond_2

    .line 636
    sget-object v11, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->SPLINE_TIME:[F

    const/high16 v12, 0x3f800000

    sub-float/2addr v12, v8

    const v13, 0x3e333333

    mul-float/2addr v12, v13

    const v13, 0x3eb33334

    mul-float/2addr v13, v8

    add-float/2addr v12, v13

    mul-float/2addr v12, v1

    mul-float v13, v8, v8

    mul-float/2addr v13, v8

    add-float/2addr v12, v13

    aput v12, v11, v3

    .line 611
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 621
    .end local v2    # "dy":F
    .end local v8    # "y":F
    .end local v9    # "y_max":F
    :cond_0
    cmpl-float v11, v4, v0

    if-lez v11, :cond_1

    move v6, v5

    goto/16 :goto_1

    .line 622
    :cond_1
    move v7, v5

    goto/16 :goto_1

    .line 633
    .restart local v2    # "dy":F
    .restart local v8    # "y":F
    .restart local v9    # "y_max":F
    :cond_2
    cmpl-float v11, v2, v0

    if-lez v11, :cond_3

    move v9, v8

    goto :goto_2

    .line 634
    :cond_3
    move v10, v8

    goto :goto_2

    .line 638
    .end local v0    # "alpha":F
    .end local v1    # "coef":F
    .end local v2    # "dy":F
    .end local v4    # "tx":F
    .end local v5    # "x":F
    .end local v6    # "x_max":F
    .end local v8    # "y":F
    .end local v9    # "y_max":F
    :cond_4
    sget-object v11, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->SPLINE_POSITION:[F

    const/16 v12, 0x64

    sget-object v13, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->SPLINE_TIME:[F

    const/16 v14, 0x64

    const/high16 v15, 0x3f800000

    aput v15, v13, v14

    aput v15, v11, v12

    .line 639
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 645
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 582
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v1

    iput v1, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mFlingFriction:F

    .line 585
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mState:I

    .line 646
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mFinished:Z

    .line 647
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x43200000

    mul-float v0, v1, v2

    .line 648
    .local v0, "ppi":F
    const v1, 0x43c10b3d

    mul-float/2addr v1, v0

    const v2, 0x3f570a3d

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mPhysicalCoeff:F

    .line 652
    return-void
.end method

.method static synthetic access$000(Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;

    .prologue
    .line 544
    iget-boolean v0, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mFinished:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;

    .prologue
    .line 544
    iget v0, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mCurrentPosition:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;

    .prologue
    .line 544
    iget v0, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mCurrVelocity:F

    return v0
.end method

.method static synthetic access$500(Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;

    .prologue
    .line 544
    iget v0, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mDuration:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;

    .prologue
    .line 544
    iget-wide v0, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mStartTime:J

    return-wide v0
.end method

.method private adjustDuration(III)V
    .locals 12
    .param p1, "start"    # I
    .param p2, "oldFinal"    # I
    .param p3, "newFinal"    # I

    .prologue
    const/high16 v11, 0x42c80000

    .line 670
    sub-int v2, p2, p1

    .line 671
    .local v2, "oldDistance":I
    sub-int v1, p3, p1

    .line 672
    .local v1, "newDistance":I
    int-to-float v9, v1

    int-to-float v10, v2

    div-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 673
    .local v6, "x":F
    mul-float v9, v11, v6

    float-to-int v0, v9

    .line 674
    .local v0, "index":I
    const/16 v9, 0x64

    if-ge v0, v9, :cond_0

    .line 675
    int-to-float v9, v0

    div-float v7, v9, v11

    .line 676
    .local v7, "x_inf":F
    add-int/lit8 v9, v0, 0x1

    int-to-float v9, v9

    div-float v8, v9, v11

    .line 677
    .local v8, "x_sup":F
    sget-object v9, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->SPLINE_TIME:[F

    aget v3, v9, v0

    .line 678
    .local v3, "t_inf":F
    sget-object v9, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->SPLINE_TIME:[F

    add-int/lit8 v10, v0, 0x1

    aget v4, v9, v10

    .line 679
    .local v4, "t_sup":F
    sub-float v9, v6, v7

    sub-float v10, v8, v7

    div-float/2addr v9, v10

    sub-float v10, v4, v3

    mul-float/2addr v9, v10

    add-float v5, v3, v9

    .line 680
    .local v5, "timeCoef":F
    iget v9, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mDuration:I

    int-to-float v9, v9

    mul-float/2addr v9, v5

    float-to-int v9, v9

    iput v9, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mDuration:I

    .line 682
    .end local v3    # "t_inf":F
    .end local v4    # "t_sup":F
    .end local v5    # "timeCoef":F
    .end local v7    # "x_inf":F
    .end local v8    # "x_sup":F
    :cond_0
    return-void
.end method

.method private fitOnBounceCurve(III)V
    .locals 8
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "velocity"    # I

    .prologue
    .line 805
    neg-int v4, p3

    int-to-float v4, v4

    iget v5, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mDeceleration:F

    div-float v2, v4, v5

    .line 806
    .local v2, "durationToApex":F
    mul-int v4, p3, p3

    int-to-float v4, v4

    const/high16 v5, 0x40000000

    div-float/2addr v4, v5

    iget v5, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mDeceleration:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    div-float v0, v4, v5

    .line 807
    .local v0, "distanceToApex":F
    sub-int v4, p2, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v1, v4

    .line 808
    .local v1, "distanceToEdge":F
    const-wide/high16 v4, 0x4000000000000000L

    add-float v6, v0, v1

    float-to-double v6, v6

    mul-double/2addr v4, v6

    iget v6, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mDeceleration:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-double v6, v6

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v3, v4

    .line 810
    .local v3, "totalDuration":F
    iget-wide v4, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mStartTime:J

    const/high16 v6, 0x447a0000

    sub-float v7, v3, v2

    mul-float/2addr v6, v7

    float-to-int v6, v6

    int-to-long v6, v6

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mStartTime:J

    .line 811
    iput p2, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mStart:I

    .line 812
    iget v4, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mDeceleration:F

    neg-float v4, v4

    mul-float/2addr v4, v3

    float-to-int v4, v4

    iput v4, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mVelocity:I

    .line 813
    return-void
.end method

.method private static getDeceleration(I)F
    .locals 1
    .param p0, "velocity"    # I

    .prologue
    .line 662
    if-lez p0, :cond_0

    const/high16 v0, -0x3b060000

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x44fa0000

    goto :goto_0
.end method

.method private getSplineDeceleration(I)D
    .locals 3
    .param p1, "velocity"    # I

    .prologue
    .line 787
    const v0, 0x3eb33333

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mFlingFriction:F

    iget v2, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mPhysicalCoeff:F

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private getSplineFlingDistance(I)D
    .locals 8
    .param p1, "velocity"    # I

    .prologue
    .line 791
    invoke-direct {p0, p1}, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->getSplineDeceleration(I)D

    move-result-wide v2

    .line 792
    .local v2, "l":D
    sget v4, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->DECELERATION_RATE:F

    float-to-double v4, v4

    const-wide/high16 v6, 0x3ff0000000000000L

    sub-double v0, v4, v6

    .line 793
    .local v0, "decelMinusOne":D
    iget v4, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mFlingFriction:F

    iget v5, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mPhysicalCoeff:F

    mul-float/2addr v4, v5

    float-to-double v4, v4

    sget v6, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->DECELERATION_RATE:F

    float-to-double v6, v6

    div-double/2addr v6, v0

    mul-double/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    return-wide v4
.end method

.method private getSplineFlingDuration(I)I
    .locals 8
    .param p1, "velocity"    # I

    .prologue
    .line 798
    invoke-direct {p0, p1}, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->getSplineDeceleration(I)D

    move-result-wide v2

    .line 799
    .local v2, "l":D
    sget v4, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->DECELERATION_RATE:F

    float-to-double v4, v4

    const-wide/high16 v6, 0x3ff0000000000000L

    sub-double v0, v4, v6

    .line 800
    .local v0, "decelMinusOne":D
    const-wide v4, 0x408f400000000000L

    div-double v6, v2, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-int v4, v4

    return v4
.end method

.method private onEdgeReached()V
    .locals 5

    .prologue
    const/high16 v4, 0x40000000

    .line 858
    iget v2, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mVelocity:I

    iget v3, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mVelocity:I

    mul-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mDeceleration:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v3, v4

    div-float v0, v2, v3

    .line 859
    .local v0, "distance":F
    iget v2, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mVelocity:I

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v1

    .line 861
    .local v1, "sign":F
    iget v2, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mOver:I

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    .line 863
    neg-float v2, v1

    iget v3, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mVelocity:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mVelocity:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mOver:I

    int-to-float v3, v3

    mul-float/2addr v3, v4

    div-float/2addr v2, v3

    iput v2, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mDeceleration:F

    .line 864
    iget v2, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mOver:I

    int-to-float v0, v2

    .line 867
    :cond_0
    float-to-int v2, v0

    iput v2, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mOver:I

    .line 868
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mState:I

    .line 869
    iget v2, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mStart:I

    iget v3, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mVelocity:I

    if-lez v3, :cond_1

    .end local v0    # "distance":F
    :goto_0
    float-to-int v3, v0

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mFinal:I

    .line 870
    const/high16 v2, 0x447a0000

    iget v3, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mVelocity:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mDeceleration:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    neg-int v2, v2

    iput v2, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mDuration:I

    .line 871
    return-void

    .line 869
    .restart local v0    # "distance":F
    :cond_1
    neg-float v0, v0

    goto :goto_0
.end method

.method private startAfterEdge(IIII)V
    .locals 8
    .param p1, "start"    # I
    .param p2, "min"    # I
    .param p3, "max"    # I
    .param p4, "velocity"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x1

    .line 822
    if-le p1, p2, :cond_0

    if-ge p1, p3, :cond_0

    .line 823
    const-string v6, "OverScroller"

    const-string v7, "startAfterEdge called from a valid position"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    iput-boolean v1, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mFinished:Z

    .line 843
    :goto_0
    return-void

    .line 827
    :cond_0
    if-le p1, p3, :cond_1

    move v3, v1

    .line 828
    .local v3, "positive":Z
    :goto_1
    if-eqz v3, :cond_2

    move v0, p3

    .line 829
    .local v0, "edge":I
    :goto_2
    sub-int v2, p1, v0

    .line 830
    .local v2, "overDistance":I
    mul-int v7, v2, p4

    if-ltz v7, :cond_3

    .line 831
    .local v1, "keepIncreasing":Z
    :goto_3
    if-eqz v1, :cond_4

    .line 833
    invoke-direct {p0, p1, v0, p4}, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->startBounceAfterEdge(III)V

    goto :goto_0

    .end local v0    # "edge":I
    .end local v1    # "keepIncreasing":Z
    .end local v2    # "overDistance":I
    .end local v3    # "positive":Z
    :cond_1
    move v3, v6

    .line 827
    goto :goto_1

    .restart local v3    # "positive":Z
    :cond_2
    move v0, p2

    .line 828
    goto :goto_2

    .restart local v0    # "edge":I
    .restart local v2    # "overDistance":I
    :cond_3
    move v1, v6

    .line 830
    goto :goto_3

    .line 836
    .restart local v1    # "keepIncreasing":Z
    :cond_4
    invoke-direct {p0, p4}, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->getSplineFlingDistance(I)D

    move-result-wide v4

    .line 840
    .local v4, "totalDistance":D
    invoke-direct {p0, p1, v0, p4}, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->startSpringback(III)V

    goto :goto_0
.end method

.method private startBounceAfterEdge(III)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "velocity"    # I

    .prologue
    .line 816
    if-nez p3, :cond_0

    sub-int v0, p1, p2

    :goto_0
    invoke-static {v0}, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->getDeceleration(I)F

    move-result v0

    iput v0, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mDeceleration:F

    .line 817
    invoke-direct {p0, p1, p2, p3}, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->fitOnBounceCurve(III)V

    .line 818
    invoke-direct {p0}, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->onEdgeReached()V

    .line 819
    return-void

    :cond_0
    move v0, p3

    .line 816
    goto :goto_0
.end method

.method private startSpringback(III)V
    .locals 7
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "velocity"    # I

    .prologue
    .line 738
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mFinished:Z

    .line 739
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mState:I

    .line 740
    iput p1, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mStart:I

    .line 741
    iput p2, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mFinal:I

    .line 742
    sub-int v0, p1, p2

    .line 743
    .local v0, "delta":I
    invoke-static {v0}, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->getDeceleration(I)F

    move-result v1

    iput v1, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mDeceleration:F

    .line 745
    neg-int v1, v0

    iput v1, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mVelocity:I

    .line 746
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mOver:I

    .line 747
    const-wide v1, 0x408f400000000000L

    const-wide/high16 v3, -0x4000000000000000L

    int-to-double v5, v0

    mul-double/2addr v3, v5

    iget v5, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mDeceleration:F

    float-to-double v5, v5

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mDuration:I

    .line 748
    return-void
.end method


# virtual methods
.method continueWhenFinished()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 874
    iget v1, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mState:I

    packed-switch v1, :pswitch_data_0

    .line 898
    :goto_0
    invoke-virtual {p0}, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->update()Z

    .line 899
    const/4 v0, 0x1

    :cond_0
    :pswitch_0
    return v0

    .line 877
    :pswitch_1
    iget v1, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mDuration:I

    iget v2, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mSplineDuration:I

    if-ge v1, v2, :cond_0

    .line 879
    iget v0, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mFinal:I

    iput v0, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mStart:I

    .line 881
    iget v0, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mCurrVelocity:F

    float-to-int v0, v0

    iput v0, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mVelocity:I

    .line 882
    iget v0, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mVelocity:I

    invoke-static {v0}, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->getDeceleration(I)F

    move-result v0

    iput v0, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mDeceleration:F

    .line 883
    iget-wide v0, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mStartTime:J

    iget v2, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mDuration:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mStartTime:J

    .line 884
    invoke-direct {p0}, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->onEdgeReached()V

    goto :goto_0

    .line 891
    :pswitch_2
    iget-wide v1, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mStartTime:J

    iget v3, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mDuration:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mStartTime:J

    .line 892
    iget v1, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mFinal:I

    iget v2, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mStart:I

    invoke-direct {p0, v1, v2, v0}, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->startSpringback(III)V

    goto :goto_0

    .line 874
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method finish()V
    .locals 1

    .prologue
    .line 699
    iget v0, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mFinal:I

    iput v0, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mCurrentPosition:I

    .line 703
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mFinished:Z

    .line 704
    return-void
.end method

.method fling(IIIII)V
    .locals 5
    .param p1, "start"    # I
    .param p2, "velocity"    # I
    .param p3, "min"    # I
    .param p4, "max"    # I
    .param p5, "over"    # I

    .prologue
    const/4 v4, 0x0

    .line 751
    iput p5, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mOver:I

    .line 752
    iput-boolean v4, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mFinished:Z

    .line 753
    iput p2, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mVelocity:I

    int-to-float v2, p2

    iput v2, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mCurrVelocity:F

    .line 754
    iput v4, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mSplineDuration:I

    iput v4, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mDuration:I

    .line 755
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mStartTime:J

    .line 756
    iput p1, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mStart:I

    iput p1, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mCurrentPosition:I

    .line 758
    if-gt p1, p4, :cond_0

    if-ge p1, p3, :cond_2

    .line 759
    :cond_0
    invoke-direct {p0, p1, p3, p4, p2}, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->startAfterEdge(IIII)V

    .line 784
    :cond_1
    :goto_0
    return-void

    .line 763
    :cond_2
    iput v4, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mState:I

    .line 764
    const-wide/16 v0, 0x0

    .line 766
    .local v0, "totalDistance":D
    if-eqz p2, :cond_3

    .line 767
    invoke-direct {p0, p2}, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->getSplineFlingDuration(I)I

    move-result v2

    iput v2, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mSplineDuration:I

    iput v2, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mDuration:I

    .line 768
    invoke-direct {p0, p2}, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->getSplineFlingDistance(I)D

    move-result-wide v0

    .line 771
    :cond_3
    int-to-float v2, p2

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    float-to-double v2, v2

    mul-double/2addr v2, v0

    double-to-int v2, v2

    iput v2, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mSplineDistance:I

    .line 772
    iget v2, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mSplineDistance:I

    add-int/2addr v2, p1

    iput v2, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mFinal:I

    .line 775
    iget v2, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mFinal:I

    if-ge v2, p3, :cond_4

    .line 776
    iget v2, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mStart:I

    iget v3, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mFinal:I

    invoke-direct {p0, v2, v3, p3}, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->adjustDuration(III)V

    .line 777
    iput p3, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mFinal:I

    .line 780
    :cond_4
    iget v2, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mFinal:I

    if-le v2, p4, :cond_1

    .line 781
    iget v2, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mStart:I

    iget v3, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mFinal:I

    invoke-direct {p0, v2, v3, p4}, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->adjustDuration(III)V

    .line 782
    iput p4, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mFinal:I

    goto :goto_0
.end method

.method notifyEdgeReached(III)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "over"    # I

    .prologue
    .line 847
    iget v0, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mState:I

    if-nez v0, :cond_0

    .line 848
    iput p3, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mOver:I

    .line 849
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mStartTime:J

    .line 852
    iget v0, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mCurrVelocity:F

    float-to-int v0, v0

    invoke-direct {p0, p1, p2, p2, v0}, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->startAfterEdge(IIII)V

    .line 854
    :cond_0
    return-void
.end method

.method springback(III)Z
    .locals 4
    .param p1, "start"    # I
    .param p2, "min"    # I
    .param p3, "max"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 719
    iput-boolean v0, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mFinished:Z

    .line 721
    iput p1, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mFinal:I

    iput p1, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mStart:I

    .line 722
    iput v1, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mVelocity:I

    .line 724
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mStartTime:J

    .line 725
    iput v1, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mDuration:I

    .line 727
    if-ge p1, p2, :cond_1

    .line 728
    invoke-direct {p0, p1, p2, v1}, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->startSpringback(III)V

    .line 733
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mFinished:Z

    if-nez v2, :cond_2

    :goto_1
    return v0

    .line 729
    :cond_1
    if-le p1, p3, :cond_0

    .line 730
    invoke-direct {p0, p1, p3, v1}, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->startSpringback(III)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 733
    goto :goto_1
.end method

.method update()Z
    .locals 21

    .prologue
    .line 908
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v15

    .line 909
    .local v15, "time":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mStartTime:J

    move-wide/from16 v18, v0

    sub-long v2, v15, v18

    .line 911
    .local v2, "currentTime":J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mDuration:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    cmp-long v18, v2, v18

    if-lez v18, :cond_0

    .line 912
    const/16 v18, 0x0

    .line 955
    :goto_0
    return v18

    .line 915
    :cond_0
    const-wide/16 v6, 0x0

    .line 916
    .local v6, "distance":D
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mState:I

    move/from16 v18, v0

    packed-switch v18, :pswitch_data_0

    .line 953
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mStart:I

    move/from16 v18, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v19

    move-wide/from16 v0, v19

    long-to-int v0, v0

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mCurrentPosition:I

    .line 955
    const/16 v18, 0x1

    goto :goto_0

    .line 918
    :pswitch_0
    long-to-float v0, v2

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mSplineDuration:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v11, v18, v19

    .line 919
    .local v11, "t":F
    const/high16 v18, 0x42c80000

    mul-float v18, v18, v11

    move/from16 v0, v18

    float-to-int v9, v0

    .line 920
    .local v9, "index":I
    const/high16 v8, 0x3f800000

    .line 921
    .local v8, "distanceCoef":F
    const/16 v17, 0x0

    .line 922
    .local v17, "velocityCoef":F
    const/16 v18, 0x64

    move/from16 v0, v18

    if-ge v9, v0, :cond_1

    .line 923
    int-to-float v0, v9

    move/from16 v18, v0

    const/high16 v19, 0x42c80000

    div-float v13, v18, v19

    .line 924
    .local v13, "t_inf":F
    add-int/lit8 v18, v9, 0x1

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x42c80000

    div-float v14, v18, v19

    .line 925
    .local v14, "t_sup":F
    sget-object v18, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->SPLINE_POSITION:[F

    aget v4, v18, v9

    .line 926
    .local v4, "d_inf":F
    sget-object v18, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->SPLINE_POSITION:[F

    add-int/lit8 v19, v9, 0x1

    aget v5, v18, v19

    .line 927
    .local v5, "d_sup":F
    sub-float v18, v5, v4

    sub-float v19, v14, v13

    div-float v17, v18, v19

    .line 928
    sub-float v18, v11, v13

    mul-float v18, v18, v17

    add-float v8, v4, v18

    .line 931
    .end local v4    # "d_inf":F
    .end local v5    # "d_sup":F
    .end local v13    # "t_inf":F
    .end local v14    # "t_sup":F
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mSplineDistance:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v8

    move/from16 v0, v18

    float-to-double v6, v0

    .line 932
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mSplineDistance:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mSplineDuration:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v18, v18, v19

    const/high16 v19, 0x447a0000

    mul-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mCurrVelocity:F

    goto/16 :goto_1

    .line 937
    .end local v8    # "distanceCoef":F
    .end local v9    # "index":I
    .end local v11    # "t":F
    .end local v17    # "velocityCoef":F
    :pswitch_1
    long-to-float v0, v2

    move/from16 v18, v0

    const/high16 v19, 0x447a0000

    div-float v11, v18, v19

    .line 938
    .restart local v11    # "t":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mVelocity:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mDeceleration:F

    move/from16 v19, v0

    mul-float v19, v19, v11

    add-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mCurrVelocity:F

    .line 939
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mVelocity:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mDeceleration:F

    move/from16 v19, v0

    mul-float v19, v19, v11

    mul-float v19, v19, v11

    const/high16 v20, 0x40000000

    div-float v19, v19, v20

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-double v6, v0

    .line 940
    goto/16 :goto_1

    .line 944
    .end local v11    # "t":F
    :pswitch_2
    long-to-float v0, v2

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mDuration:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v11, v18, v19

    .line 945
    .restart local v11    # "t":F
    mul-float v12, v11, v11

    .line 946
    .local v12, "t2":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mVelocity:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->signum(F)F

    move-result v10

    .line 947
    .local v10, "sign":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mOver:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v10

    const/high16 v19, 0x40400000

    mul-float v19, v19, v12

    const/high16 v20, 0x40000000

    mul-float v20, v20, v11

    mul-float v20, v20, v12

    sub-float v19, v19, v20

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-double v6, v0

    .line 948
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mOver:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v10

    const/high16 v19, 0x40c00000

    mul-float v18, v18, v19

    neg-float v0, v11

    move/from16 v19, v0

    add-float v19, v19, v12

    mul-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mCurrVelocity:F

    goto/16 :goto_1

    .line 916
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method updateScroll(F)V
    .locals 3
    .param p1, "q"    # F

    .prologue
    .line 655
    iget v0, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mStart:I

    iget v1, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mFinal:I

    iget v2, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mStart:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mCurrentPosition:I

    .line 656
    return-void
.end method
