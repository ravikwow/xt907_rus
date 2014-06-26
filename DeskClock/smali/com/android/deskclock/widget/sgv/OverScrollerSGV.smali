.class public Lcom/android/deskclock/widget/sgv/OverScrollerSGV;
.super Ljava/lang/Object;
.source "OverScrollerSGV.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;
    }
.end annotation


# instance fields
.field private final mFlywheel:Z

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mMode:I

.field private final mScrollerX:Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;

.field private final mScrollerY:Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/deskclock/widget/sgv/OverScrollerSGV;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 65
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/deskclock/widget/sgv/OverScrollerSGV;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p3, "flywheel"    # Z

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p2, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 78
    iput-boolean p3, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV;->mFlywheel:Z

    .line 79
    new-instance v0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;

    invoke-direct {v0, p1}, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV;->mScrollerX:Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;

    .line 80
    new-instance v0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;

    invoke-direct {v0, p1}, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV;->mScrollerY:Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;

    .line 81
    return-void
.end method


# virtual methods
.method public abortAnimation()V
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV;->mScrollerX:Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;

    invoke-virtual {v0}, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->finish()V

    .line 518
    iget-object v0, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV;->mScrollerY:Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;

    invoke-virtual {v0}, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->finish()V

    .line 519
    return-void
.end method

.method public computeScrollOffset()Z
    .locals 8

    .prologue
    .line 296
    invoke-virtual {p0}, Lcom/android/deskclock/widget/sgv/OverScrollerSGV;->isFinished()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 297
    const/4 v6, 0x0

    .line 344
    :goto_0
    return v6

    .line 300
    :cond_0
    iget v6, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV;->mMode:I

    packed-switch v6, :pswitch_data_0

    .line 344
    :cond_1
    :goto_1
    const/4 v6, 0x1

    goto :goto_0

    .line 302
    :pswitch_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    .line 305
    .local v4, "time":J
    iget-object v6, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV;->mScrollerX:Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;

    # getter for: Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mStartTime:J
    invoke-static {v6}, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->access$600(Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;)J

    move-result-wide v6

    sub-long v1, v4, v6

    .line 307
    .local v1, "elapsedTime":J
    iget-object v6, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV;->mScrollerX:Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;

    # getter for: Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mDuration:I
    invoke-static {v6}, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->access$500(Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;)I

    move-result v0

    .line 308
    .local v0, "duration":I
    int-to-long v6, v0

    cmp-long v6, v1, v6

    if-gez v6, :cond_3

    .line 309
    long-to-float v6, v1

    int-to-float v7, v0

    div-float v3, v6, v7

    .line 311
    .local v3, "q":F
    iget-object v6, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v6, :cond_2

    .line 312
    iget-object v6, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v6, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    .line 317
    :goto_2
    iget-object v6, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV;->mScrollerX:Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;

    invoke-virtual {v6, v3}, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->updateScroll(F)V

    .line 318
    iget-object v6, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV;->mScrollerY:Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;

    invoke-virtual {v6, v3}, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->updateScroll(F)V

    goto :goto_1

    .line 314
    :cond_2
    iget-object v6, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v6, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    goto :goto_2

    .line 320
    .end local v3    # "q":F
    :cond_3
    invoke-virtual {p0}, Lcom/android/deskclock/widget/sgv/OverScrollerSGV;->abortAnimation()V

    goto :goto_1

    .line 325
    .end local v0    # "duration":I
    .end local v1    # "elapsedTime":J
    .end local v4    # "time":J
    :pswitch_1
    iget-object v6, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV;->mScrollerX:Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;

    # getter for: Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mFinished:Z
    invoke-static {v6}, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->access$000(Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 326
    iget-object v6, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV;->mScrollerX:Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;

    invoke-virtual {v6}, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->update()Z

    move-result v6

    if-nez v6, :cond_4

    .line 327
    iget-object v6, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV;->mScrollerX:Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;

    invoke-virtual {v6}, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->continueWhenFinished()Z

    move-result v6

    if-nez v6, :cond_4

    .line 328
    iget-object v6, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV;->mScrollerX:Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;

    invoke-virtual {v6}, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->finish()V

    .line 333
    :cond_4
    iget-object v6, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV;->mScrollerY:Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;

    # getter for: Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mFinished:Z
    invoke-static {v6}, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->access$000(Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 334
    iget-object v6, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV;->mScrollerY:Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;

    invoke-virtual {v6}, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->update()Z

    move-result v6

    if-nez v6, :cond_1

    .line 335
    iget-object v6, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV;->mScrollerY:Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;

    invoke-virtual {v6}, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->continueWhenFinished()Z

    move-result v6

    if-nez v6, :cond_1

    .line 336
    iget-object v6, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV;->mScrollerY:Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;

    invoke-virtual {v6}, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->finish()V

    goto :goto_1

    .line 300
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public fling(IIIIIIII)V
    .locals 11
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "velocityX"    # I
    .param p4, "velocityY"    # I
    .param p5, "minX"    # I
    .param p6, "maxX"    # I
    .param p7, "minY"    # I
    .param p8, "maxY"    # I

    .prologue
    .line 407
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v10}, Lcom/android/deskclock/widget/sgv/OverScrollerSGV;->fling(IIIIIIIIII)V

    .line 408
    return-void
.end method

.method public fling(IIIIIIIIII)V
    .locals 8
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "velocityX"    # I
    .param p4, "velocityY"    # I
    .param p5, "minX"    # I
    .param p6, "maxX"    # I
    .param p7, "minY"    # I
    .param p8, "maxY"    # I
    .param p9, "overX"    # I
    .param p10, "overY"    # I

    .prologue
    .line 440
    iget-boolean v0, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV;->mFlywheel:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/deskclock/widget/sgv/OverScrollerSGV;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV;->mScrollerX:Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;

    # getter for: Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mCurrVelocity:F
    invoke-static {v0}, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->access$200(Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;)F

    move-result v6

    .line 442
    .local v6, "oldVelocityX":F
    iget-object v0, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV;->mScrollerY:Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;

    # getter for: Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mCurrVelocity:F
    invoke-static {v0}, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->access$200(Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;)F

    move-result v7

    .line 443
    .local v7, "oldVelocityY":F
    int-to-float v0, p3

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    invoke-static {v6}, Ljava/lang/Math;->signum(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    int-to-float v0, p4

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    invoke-static {v7}, Ljava/lang/Math;->signum(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 445
    int-to-float v0, p3

    add-float/2addr v0, v6

    float-to-int p3, v0

    .line 446
    int-to-float v0, p4

    add-float/2addr v0, v7

    float-to-int p4, v0

    .line 450
    .end local v6    # "oldVelocityX":F
    .end local v7    # "oldVelocityY":F
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV;->mMode:I

    .line 451
    iget-object v0, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV;->mScrollerX:Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;

    move v1, p1

    move v2, p3

    move v3, p5

    move v4, p6

    move/from16 v5, p9

    invoke-virtual/range {v0 .. v5}, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->fling(IIIII)V

    .line 452
    iget-object v0, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV;->mScrollerY:Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;

    move v1, p2

    move v2, p4

    move v3, p7

    move/from16 v4, p8

    move/from16 v5, p10

    invoke-virtual/range {v0 .. v5}, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->fling(IIIII)V

    .line 453
    return-void
.end method

.method public getCurrVelocity()F
    .locals 3

    .prologue
    .line 180
    iget-object v1, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV;->mScrollerX:Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;

    # getter for: Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mCurrVelocity:F
    invoke-static {v1}, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->access$200(Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;)F

    move-result v1

    iget-object v2, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV;->mScrollerX:Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;

    # getter for: Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mCurrVelocity:F
    invoke-static {v2}, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->access$200(Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;)F

    move-result v2

    mul-float v0, v1, v2

    .line 181
    .local v0, "squaredNorm":F
    iget-object v1, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV;->mScrollerY:Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;

    # getter for: Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mCurrVelocity:F
    invoke-static {v1}, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->access$200(Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;)F

    move-result v1

    iget-object v2, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV;->mScrollerY:Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;

    # getter for: Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mCurrVelocity:F
    invoke-static {v2}, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->access$200(Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;)F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 182
    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v1

    return v1
.end method

.method public final getCurrY()I
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV;->mScrollerY:Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;

    # getter for: Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mCurrentPosition:I
    invoke-static {v0}, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->access$100(Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final isFinished()Z
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV;->mScrollerX:Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;

    # getter for: Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mFinished:Z
    invoke-static {v0}, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->access$000(Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV;->mScrollerY:Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;

    # getter for: Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->mFinished:Z
    invoke-static {v0}, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->access$000(Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyVerticalEdgeReached(III)V
    .locals 1
    .param p1, "startY"    # I
    .param p2, "finalY"    # I
    .param p3, "overY"    # I

    .prologue
    .line 486
    iget-object v0, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV;->mScrollerY:Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->notifyEdgeReached(III)V

    .line 487
    return-void
.end method

.method public springBack(IIIIII)Z
    .locals 4
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "minX"    # I
    .param p4, "maxX"    # I
    .param p5, "minY"    # I
    .param p6, "maxY"    # I

    .prologue
    const/4 v2, 0x1

    .line 397
    iput v2, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV;->mMode:I

    .line 400
    iget-object v3, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV;->mScrollerX:Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;

    invoke-virtual {v3, p1, p3, p4}, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->springback(III)Z

    move-result v0

    .line 401
    .local v0, "spingbackX":Z
    iget-object v3, p0, Lcom/android/deskclock/widget/sgv/OverScrollerSGV;->mScrollerY:Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;

    invoke-virtual {v3, p2, p5, p6}, Lcom/android/deskclock/widget/sgv/OverScrollerSGV$SplineOverScroller;->springback(III)Z

    move-result v1

    .line 402
    .local v1, "spingbackY":Z
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
