.class final Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SgvAnimationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/widget/sgv/SgvAnimationHelper;->addCollapseOutAnimators(Ljava/util/List;Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$3;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$3;->val$view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 239
    iget-object v0, p0, Lcom/android/deskclock/widget/sgv/SgvAnimationHelper$3;->val$view:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 240
    return-void
.end method
