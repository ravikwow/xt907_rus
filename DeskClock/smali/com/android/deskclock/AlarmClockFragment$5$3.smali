.class Lcom/android/deskclock/AlarmClockFragment$5$3;
.super Ljava/lang/Object;
.source "AlarmClockFragment.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/AlarmClockFragment$5;->onChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/deskclock/AlarmClockFragment$5;


# direct methods
.method constructor <init>(Lcom/android/deskclock/AlarmClockFragment$5;)V
    .locals 0

    .prologue
    .line 391
    iput-object p1, p0, Lcom/android/deskclock/AlarmClockFragment$5$3;->this$1:Lcom/android/deskclock/AlarmClockFragment$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 7
    .param p1, "animator"    # Landroid/animation/ValueAnimator;

    .prologue
    const/4 v6, 0x0

    .line 394
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    .line 395
    .local v2, "value":Ljava/lang/Float;
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v4, p0, Lcom/android/deskclock/AlarmClockFragment$5$3;->this$1:Lcom/android/deskclock/AlarmClockFragment$5;

    iget-object v4, v4, Lcom/android/deskclock/AlarmClockFragment$5;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    # getter for: Lcom/android/deskclock/AlarmClockFragment;->mTimelineViewWidth:I
    invoke-static {v4}, Lcom/android/deskclock/AlarmClockFragment;->access$1100(Lcom/android/deskclock/AlarmClockFragment;)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v0, v3

    .line 396
    .local v0, "currentTimelineWidth":I
    iget-object v3, p0, Lcom/android/deskclock/AlarmClockFragment$5$3;->this$1:Lcom/android/deskclock/AlarmClockFragment$5;

    iget-object v3, v3, Lcom/android/deskclock/AlarmClockFragment$5;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    # getter for: Lcom/android/deskclock/AlarmClockFragment;->mTimelineViewWidth:I
    invoke-static {v3}, Lcom/android/deskclock/AlarmClockFragment;->access$1100(Lcom/android/deskclock/AlarmClockFragment;)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f800000

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v5

    sub-float/2addr v4, v5

    mul-float v1, v3, v4

    .line 397
    .local v1, "rightOffset":F
    iget-object v3, p0, Lcom/android/deskclock/AlarmClockFragment$5$3;->this$1:Lcom/android/deskclock/AlarmClockFragment$5;

    iget-object v3, v3, Lcom/android/deskclock/AlarmClockFragment$5;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    # getter for: Lcom/android/deskclock/AlarmClockFragment;->mTimelineLayout:Landroid/view/View;
    invoke-static {v3}, Lcom/android/deskclock/AlarmClockFragment;->access$700(Lcom/android/deskclock/AlarmClockFragment;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 398
    iget-object v3, p0, Lcom/android/deskclock/AlarmClockFragment$5$3;->this$1:Lcom/android/deskclock/AlarmClockFragment$5;

    iget-object v3, v3, Lcom/android/deskclock/AlarmClockFragment$5;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    # getter for: Lcom/android/deskclock/AlarmClockFragment;->mTimelineLayout:Landroid/view/View;
    invoke-static {v3}, Lcom/android/deskclock/AlarmClockFragment;->access$700(Lcom/android/deskclock/AlarmClockFragment;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 399
    iget-object v3, p0, Lcom/android/deskclock/AlarmClockFragment$5$3;->this$1:Lcom/android/deskclock/AlarmClockFragment$5;

    iget-object v3, v3, Lcom/android/deskclock/AlarmClockFragment$5;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    # getter for: Lcom/android/deskclock/AlarmClockFragment;->mTimelineLayout:Landroid/view/View;
    invoke-static {v3}, Lcom/android/deskclock/AlarmClockFragment;->access$700(Lcom/android/deskclock/AlarmClockFragment;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->requestLayout()V

    .line 400
    iget-object v3, p0, Lcom/android/deskclock/AlarmClockFragment$5$3;->this$1:Lcom/android/deskclock/AlarmClockFragment$5;

    iget-object v3, v3, Lcom/android/deskclock/AlarmClockFragment$5;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    # getter for: Lcom/android/deskclock/AlarmClockFragment;->mAlarmsView:Landroid/view/View;
    invoke-static {v3}, Lcom/android/deskclock/AlarmClockFragment;->access$800(Lcom/android/deskclock/AlarmClockFragment;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    neg-float v4, v1

    float-to-int v4, v4

    invoke-virtual {v3, v6, v6, v4, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 402
    iget-object v3, p0, Lcom/android/deskclock/AlarmClockFragment$5$3;->this$1:Lcom/android/deskclock/AlarmClockFragment$5;

    iget-object v3, v3, Lcom/android/deskclock/AlarmClockFragment$5;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    # getter for: Lcom/android/deskclock/AlarmClockFragment;->mAlarmsView:Landroid/view/View;
    invoke-static {v3}, Lcom/android/deskclock/AlarmClockFragment;->access$800(Lcom/android/deskclock/AlarmClockFragment;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->requestLayout()V

    .line 403
    iget-object v3, p0, Lcom/android/deskclock/AlarmClockFragment$5$3;->this$1:Lcom/android/deskclock/AlarmClockFragment$5;

    iget-object v3, v3, Lcom/android/deskclock/AlarmClockFragment$5;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    iget-object v4, p0, Lcom/android/deskclock/AlarmClockFragment$5$3;->this$1:Lcom/android/deskclock/AlarmClockFragment$5;

    iget-object v4, v4, Lcom/android/deskclock/AlarmClockFragment$5;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    # getter for: Lcom/android/deskclock/AlarmClockFragment;->mUndoBarInitialMargin:I
    invoke-static {v4}, Lcom/android/deskclock/AlarmClockFragment;->access$1200(Lcom/android/deskclock/AlarmClockFragment;)I

    move-result v4

    add-int/2addr v4, v0

    # invokes: Lcom/android/deskclock/AlarmClockFragment;->setUndoBarRightMargin(I)V
    invoke-static {v3, v4}, Lcom/android/deskclock/AlarmClockFragment;->access$1300(Lcom/android/deskclock/AlarmClockFragment;I)V

    .line 405
    return-void
.end method
