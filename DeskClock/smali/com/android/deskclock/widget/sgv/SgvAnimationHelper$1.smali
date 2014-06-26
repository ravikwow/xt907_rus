.class final Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SgvAnimationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/widget/sgv/SgvAnimationHelper;->addTranslationRotationAnimators(Ljava/util/List;Landroid/view/View;IIFI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private mIsCanceled:Z

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 179
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$1;->mIsCanceled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 183
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$1;->mIsCanceled:Z

    .line 184
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$1;->mIsCanceled:Z

    if-nez v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$1;->val$view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$1;->val$view:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 193
    return-void
.end method
