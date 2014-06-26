.class Lcom/android/deskclock/widget/sgv/StaggeredGridView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "StaggeredGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/widget/sgv/StaggeredGridView;->handleLayoutAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/widget/sgv/StaggeredGridView;

.field final synthetic val$animatorSet:Landroid/animation/AnimatorSet;


# direct methods
.method constructor <init>(Lcom/android/deskclock/widget/sgv/StaggeredGridView;Landroid/animation/AnimatorSet;)V
    .locals 0

    .prologue
    .line 1717
    iput-object p1, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$2;->this$0:Lcom/android/deskclock/widget/sgv/StaggeredGridView;

    iput-object p2, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$2;->val$animatorSet:Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1726
    iget-object v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$2;->this$0:Lcom/android/deskclock/widget/sgv/StaggeredGridView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mIsCurrentAnimationCanceled:Z

    .line 1727
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1731
    iget-object v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$2;->this$0:Lcom/android/deskclock/widget/sgv/StaggeredGridView;

    iget-boolean v0, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mIsCurrentAnimationCanceled:Z

    if-nez v0, :cond_0

    .line 1737
    iget-object v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$2;->this$0:Lcom/android/deskclock/widget/sgv/StaggeredGridView;

    # invokes: Lcom/android/deskclock/widget/sgv/StaggeredGridView;->resetAnimationMode()V
    invoke-static {v0}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->access$1100(Lcom/android/deskclock/widget/sgv/StaggeredGridView;)V

    .line 1739
    :cond_0
    iget-object v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$2;->this$0:Lcom/android/deskclock/widget/sgv/StaggeredGridView;

    const/4 v1, 0x0

    # setter for: Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mCurrentRunningAnimatorSet:Landroid/animation/AnimatorSet;
    invoke-static {v0, v1}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->access$1002(Lcom/android/deskclock/widget/sgv/StaggeredGridView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 1740
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1720
    iget-object v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$2;->this$0:Lcom/android/deskclock/widget/sgv/StaggeredGridView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mIsCurrentAnimationCanceled:Z

    .line 1721
    iget-object v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$2;->this$0:Lcom/android/deskclock/widget/sgv/StaggeredGridView;

    iget-object v1, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$2;->val$animatorSet:Landroid/animation/AnimatorSet;

    # setter for: Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mCurrentRunningAnimatorSet:Landroid/animation/AnimatorSet;
    invoke-static {v0, v1}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->access$1002(Lcom/android/deskclock/widget/sgv/StaggeredGridView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 1722
    return-void
.end method
