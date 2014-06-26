.class public Lcom/android/deskclock/widget/sgv/SgvAnimationHelper;
.super Ljava/lang/Object;
.source "SgvAnimationHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationOut;,
        Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$AnimationIn;
    }
.end annotation


# static fields
.field private static sAnimationDuration:I

.field private static sDecelerateQuintInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    const/16 v0, 0x1c2

    sput v0, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper;->sAnimationDuration:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method public static addCollapseOutAnimators(Ljava/util/List;Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 251
    .local p0, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper;->addCollapseOutAnimators(Ljava/util/List;Landroid/view/View;I)V

    .line 252
    return-void
.end method

.method public static addCollapseOutAnimators(Ljava/util/List;Landroid/view/View;I)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "animationDelay"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation

    .prologue
    .local p0, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    const/4 v2, 0x2

    .line 228
    const/4 v1, 0x0

    invoke-virtual {p1, v2, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 230
    sget-object v1, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v2, v2, [F

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v4

    aput v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput v4, v2, v3

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 232
    .local v0, "scaleAnimatorY":Landroid/animation/ObjectAnimator;
    sget-object v1, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper;->sDecelerateQuintInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 233
    sget v1, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper;->sAnimationDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 234
    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 235
    new-instance v1, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$3;

    invoke-direct {v1, p1}, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$3;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 243
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    return-void
.end method

.method public static addExpandInAnimators(Ljava/util/List;Landroid/view/View;I)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "animationDelay"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation

    .prologue
    .local p0, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    const/4 v2, 0x2

    .line 204
    const/4 v1, 0x0

    invoke-virtual {p1, v2, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 205
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    .line 207
    sget-object v1, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v2, v2, [F

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v4

    aput v4, v2, v3

    const/4 v3, 0x1

    const/high16 v4, 0x3f800000

    aput v4, v2, v3

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 209
    .local v0, "scaleAnimatorY":Landroid/animation/ObjectAnimator;
    sget-object v1, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper;->sDecelerateQuintInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 210
    sget v1, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper;->sAnimationDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 211
    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 212
    new-instance v1, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$2;

    invoke-direct {v1, p1}, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$2;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 220
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    return-void
.end method

.method public static addFadeAnimators(Ljava/util/List;Landroid/view/View;FF)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "startAlpha"    # F
    .param p3, "endAlpha"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Landroid/view/View;",
            "FF)V"
        }
    .end annotation

    .prologue
    .line 332
    .local p0, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper;->addFadeAnimators(Ljava/util/List;Landroid/view/View;FFI)V

    .line 333
    return-void
.end method

.method public static addFadeAnimators(Ljava/util/List;Landroid/view/View;FFI)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "startAlpha"    # F
    .param p3, "endAlpha"    # F
    .param p4, "animationDelay"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Landroid/view/View;",
            "FFI)V"
        }
    .end annotation

    .prologue
    .local p0, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    const/4 v2, 0x2

    .line 304
    cmpl-float v1, p2, p3

    if-nez v1, :cond_0

    .line 324
    :goto_0
    return-void

    .line 308
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v2, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 309
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 311
    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v2, [F

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v4

    aput v4, v2, v3

    const/4 v3, 0x1

    aput p3, v2, v3

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 313
    .local v0, "fadeAnimator":Landroid/animation/ObjectAnimator;
    sget-object v1, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper;->sDecelerateQuintInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 314
    sget v1, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper;->sAnimationDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 315
    int-to-long v1, p4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 316
    new-instance v1, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$4;

    invoke-direct {v1, p1, p3}, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$4;-><init>(Landroid/view/View;F)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 323
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static addFlyOutAnimators(Ljava/util/List;Landroid/view/View;II)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "startTranslation"    # I
    .param p3, "endTranslation"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Landroid/view/View;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 267
    .local p0, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper;->addFlyOutAnimators(Ljava/util/List;Landroid/view/View;III)V

    .line 269
    return-void
.end method

.method public static addFlyOutAnimators(Ljava/util/List;Landroid/view/View;III)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "startTranslation"    # I
    .param p3, "endTranslation"    # I
    .param p4, "animationDelay"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Landroid/view/View;",
            "III)V"
        }
    .end annotation

    .prologue
    .line 261
    .local p0, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper;->addYTranslationAnimators(Ljava/util/List;Landroid/view/View;IIILandroid/animation/Animator$AnimatorListener;)V

    .line 263
    return-void
.end method

.method public static addSlideInFromRightAnimators(Ljava/util/List;Landroid/view/View;II)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "startTranslation"    # I
    .param p3, "animationDelay"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Landroid/view/View;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 273
    .local p0, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    invoke-static/range {v0 .. v5}, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper;->addXTranslationAnimators(Ljava/util/List;Landroid/view/View;IIILandroid/animation/Animator$AnimatorListener;)V

    .line 274
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000

    invoke-static {p0, p1, v0, v1, p3}, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper;->addFadeAnimators(Ljava/util/List;Landroid/view/View;FFI)V

    .line 275
    return-void
.end method

.method public static addSlideOutAnimators(Ljava/util/List;Landroid/view/View;II)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "startTranslation"    # I
    .param p3, "endTranslation"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Landroid/view/View;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 295
    .local p0, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper;->addSlideOutAnimators(Ljava/util/List;Landroid/view/View;III)V

    .line 297
    return-void
.end method

.method public static addSlideOutAnimators(Ljava/util/List;Landroid/view/View;III)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "startTranslation"    # I
    .param p3, "endTranslation"    # I
    .param p4, "animationDelay"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Landroid/view/View;",
            "III)V"
        }
    .end annotation

    .prologue
    .line 283
    .local p0, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p4}, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper;->addFadeAnimators(Ljava/util/List;Landroid/view/View;FFI)V

    .line 284
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper;->addXTranslationAnimators(Ljava/util/List;Landroid/view/View;IIILandroid/animation/Animator$AnimatorListener;)V

    .line 286
    return-void
.end method

.method public static addTranslationRotationAnimators(Ljava/util/List;Landroid/view/View;IIFI)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "xTranslation"    # I
    .param p3, "yTranslation"    # I
    .param p4, "rotation"    # F
    .param p5, "animationDelay"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Landroid/view/View;",
            "IIFI)V"
        }
    .end annotation

    .prologue
    .local p0, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    const/4 v2, 0x2

    .line 168
    invoke-static {p0, p1, p2, p3, p5}, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper;->addXYTranslationAnimators(Ljava/util/List;Landroid/view/View;III)V

    .line 170
    const/4 v1, 0x0

    invoke-virtual {p1, v2, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 171
    invoke-virtual {p1, p4}, Landroid/view/View;->setRotation(F)V

    .line 173
    sget-object v1, Landroid/view/View;->ROTATION:Landroid/util/Property;

    new-array v2, v2, [F

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getRotation()F

    move-result v4

    aput v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput v4, v2, v3

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 175
    .local v0, "rotateAnimatorY":Landroid/animation/ObjectAnimator;
    sget-object v1, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper;->sDecelerateQuintInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 176
    sget v1, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper;->sAnimationDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 177
    int-to-long v1, p5

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 178
    new-instance v1, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$1;

    invoke-direct {v1, p1}, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$1;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 196
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    return-void
.end method

.method private static addXTranslationAnimators(Ljava/util/List;Landroid/view/View;IIILandroid/animation/Animator$AnimatorListener;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "startTranslation"    # I
    .param p3, "endTranslation"    # I
    .param p4, "animationDelay"    # I
    .param p5, "listener"    # Landroid/animation/Animator$AnimatorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Landroid/view/View;",
            "III",
            "Landroid/animation/Animator$AnimatorListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 118
    .local p0, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    int-to-float v1, p2

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 119
    sget-object v1, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    int-to-float v4, p2

    aput v4, v2, v3

    const/4 v3, 0x1

    int-to-float v4, p3

    aput v4, v2, v3

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 121
    .local v0, "translateAnimatorX":Landroid/animation/ObjectAnimator;
    sget-object v1, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper;->sDecelerateQuintInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 122
    sget v1, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper;->sAnimationDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 123
    int-to-long v1, p4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 124
    if-eqz p5, :cond_0

    .line 125
    invoke-virtual {v0, p5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 128
    :cond_0
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    return-void
.end method

.method public static addXYTranslationAnimators(Ljava/util/List;Landroid/view/View;III)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "xTranslation"    # I
    .param p3, "yTranslation"    # I
    .param p4, "animationDelay"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Landroid/view/View;",
            "III)V"
        }
    .end annotation

    .prologue
    .local p0, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 158
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper;->addXTranslationAnimators(Ljava/util/List;Landroid/view/View;IIILandroid/animation/Animator$AnimatorListener;)V

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v4, p4

    .line 159
    invoke-static/range {v0 .. v5}, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper;->addYTranslationAnimators(Ljava/util/List;Landroid/view/View;IIILandroid/animation/Animator$AnimatorListener;)V

    .line 160
    return-void
.end method

.method private static addYTranslationAnimators(Ljava/util/List;Landroid/view/View;IIILandroid/animation/Animator$AnimatorListener;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "startTranslation"    # I
    .param p3, "endTranslation"    # I
    .param p4, "animationDelay"    # I
    .param p5, "listener"    # Landroid/animation/Animator$AnimatorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Landroid/view/View;",
            "III",
            "Landroid/animation/Animator$AnimatorListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 139
    .local p0, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    int-to-float v1, p2

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 140
    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    int-to-float v4, p2

    aput v4, v2, v3

    const/4 v3, 0x1

    int-to-float v4, p3

    aput v4, v2, v3

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 142
    .local v0, "translateAnimatorY":Landroid/animation/ObjectAnimator;
    sget-object v1, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper;->sDecelerateQuintInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 143
    sget v1, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper;->sAnimationDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 144
    int-to-long v1, p4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 146
    if-eqz p5, :cond_0

    .line 147
    invoke-virtual {v0, p5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 150
    :cond_0
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    return-void
.end method

.method public static getDefaultAnimationDuration()I
    .locals 1

    .prologue
    .line 103
    sget v0, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper;->sAnimationDuration:I

    return v0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 85
    const v2, 0x10c0005

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    sput-object v2, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper;->sDecelerateQuintInterpolator:Landroid/view/animation/Interpolator;

    .line 88
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 89
    .local v1, "size":Landroid/graphics/Point;
    const-string v2, "window"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 91
    iget v0, v1, Landroid/graphics/Point;->y:I

    .line 93
    .local v0, "screenHeight":I
    const/16 v2, 0x640

    if-lt v0, v2, :cond_0

    .line 94
    const/16 v2, 0x1f4

    sput v2, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper;->sAnimationDuration:I

    .line 100
    :goto_0
    return-void

    .line 95
    :cond_0
    const/16 v2, 0x4b0

    if-lt v0, v2, :cond_1

    .line 96
    const/16 v2, 0x1c2

    sput v2, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper;->sAnimationDuration:I

    goto :goto_0

    .line 98
    :cond_1
    const/16 v2, 0x190

    sput v2, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper;->sAnimationDuration:I

    goto :goto_0
.end method
