.class Lcom/android/calendar/DayView$ContinueScroll;
.super Ljava/lang/Object;
.source "DayView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/DayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContinueScroll"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/DayView;


# direct methods
.method private constructor <init>(Lcom/android/calendar/DayView;)V
    .locals 0

    .prologue
    .line 4756
    iput-object p1, p0, Lcom/android/calendar/DayView$ContinueScroll;->this$0:Lcom/android/calendar/DayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendar/DayView;Lcom/android/calendar/DayView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/calendar/DayView;
    .param p2, "x1"    # Lcom/android/calendar/DayView$1;

    .prologue
    .line 4756
    invoke-direct {p0, p1}, Lcom/android/calendar/DayView$ContinueScroll;-><init>(Lcom/android/calendar/DayView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 4758
    iget-object v2, p0, Lcom/android/calendar/DayView$ContinueScroll;->this$0:Lcom/android/calendar/DayView;

    iget-object v0, p0, Lcom/android/calendar/DayView$ContinueScroll;->this$0:Lcom/android/calendar/DayView;

    # getter for: Lcom/android/calendar/DayView;->mScrolling:Z
    invoke-static {v0}, Lcom/android/calendar/DayView;->access$800(Lcom/android/calendar/DayView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/calendar/DayView$ContinueScroll;->this$0:Lcom/android/calendar/DayView;

    # getter for: Lcom/android/calendar/DayView;->mScroller:Landroid/widget/OverScroller;
    invoke-static {v0}, Lcom/android/calendar/DayView;->access$3000(Lcom/android/calendar/DayView;)Landroid/widget/OverScroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    # setter for: Lcom/android/calendar/DayView;->mScrolling:Z
    invoke-static {v2, v0}, Lcom/android/calendar/DayView;->access$802(Lcom/android/calendar/DayView;Z)Z

    .line 4759
    iget-object v0, p0, Lcom/android/calendar/DayView$ContinueScroll;->this$0:Lcom/android/calendar/DayView;

    # getter for: Lcom/android/calendar/DayView;->mScrolling:Z
    invoke-static {v0}, Lcom/android/calendar/DayView;->access$800(Lcom/android/calendar/DayView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/DayView$ContinueScroll;->this$0:Lcom/android/calendar/DayView;

    iget-boolean v0, v0, Lcom/android/calendar/DayView;->mPaused:Z

    if-eqz v0, :cond_2

    .line 4760
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/DayView$ContinueScroll;->this$0:Lcom/android/calendar/DayView;

    # invokes: Lcom/android/calendar/DayView;->resetSelectedHour()V
    invoke-static {v0}, Lcom/android/calendar/DayView;->access$900(Lcom/android/calendar/DayView;)V

    .line 4761
    iget-object v0, p0, Lcom/android/calendar/DayView$ContinueScroll;->this$0:Lcom/android/calendar/DayView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 4791
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 4758
    goto :goto_0

    .line 4765
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/DayView$ContinueScroll;->this$0:Lcom/android/calendar/DayView;

    iget-object v2, p0, Lcom/android/calendar/DayView$ContinueScroll;->this$0:Lcom/android/calendar/DayView;

    # getter for: Lcom/android/calendar/DayView;->mScroller:Landroid/widget/OverScroller;
    invoke-static {v2}, Lcom/android/calendar/DayView;->access$3000(Lcom/android/calendar/DayView;)Landroid/widget/OverScroller;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v2

    # setter for: Lcom/android/calendar/DayView;->mViewStartY:I
    invoke-static {v0, v2}, Lcom/android/calendar/DayView;->access$3102(Lcom/android/calendar/DayView;I)I

    .line 4767
    iget-object v0, p0, Lcom/android/calendar/DayView$ContinueScroll;->this$0:Lcom/android/calendar/DayView;

    # getter for: Lcom/android/calendar/DayView;->mCallEdgeEffectOnAbsorb:Z
    invoke-static {v0}, Lcom/android/calendar/DayView;->access$3200(Lcom/android/calendar/DayView;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4768
    iget-object v0, p0, Lcom/android/calendar/DayView$ContinueScroll;->this$0:Lcom/android/calendar/DayView;

    # getter for: Lcom/android/calendar/DayView;->mViewStartY:I
    invoke-static {v0}, Lcom/android/calendar/DayView;->access$3100(Lcom/android/calendar/DayView;)I

    move-result v0

    if-gez v0, :cond_7

    .line 4769
    iget-object v0, p0, Lcom/android/calendar/DayView$ContinueScroll;->this$0:Lcom/android/calendar/DayView;

    # getter for: Lcom/android/calendar/DayView;->mEdgeEffectTop:Landroid/widget/EdgeEffect;
    invoke-static {v0}, Lcom/android/calendar/DayView;->access$3400(Lcom/android/calendar/DayView;)Landroid/widget/EdgeEffect;

    move-result-object v0

    iget-object v2, p0, Lcom/android/calendar/DayView$ContinueScroll;->this$0:Lcom/android/calendar/DayView;

    # getter for: Lcom/android/calendar/DayView;->mLastVelocity:F
    invoke-static {v2}, Lcom/android/calendar/DayView;->access$3300(Lcom/android/calendar/DayView;)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 4770
    iget-object v0, p0, Lcom/android/calendar/DayView$ContinueScroll;->this$0:Lcom/android/calendar/DayView;

    # setter for: Lcom/android/calendar/DayView;->mCallEdgeEffectOnAbsorb:Z
    invoke-static {v0, v1}, Lcom/android/calendar/DayView;->access$3202(Lcom/android/calendar/DayView;Z)Z

    .line 4775
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/android/calendar/DayView$ContinueScroll;->this$0:Lcom/android/calendar/DayView;

    iget-object v2, p0, Lcom/android/calendar/DayView$ContinueScroll;->this$0:Lcom/android/calendar/DayView;

    # getter for: Lcom/android/calendar/DayView;->mScroller:Landroid/widget/OverScroller;
    invoke-static {v2}, Lcom/android/calendar/DayView;->access$3000(Lcom/android/calendar/DayView;)Landroid/widget/OverScroller;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v2

    # setter for: Lcom/android/calendar/DayView;->mLastVelocity:F
    invoke-static {v0, v2}, Lcom/android/calendar/DayView;->access$3302(Lcom/android/calendar/DayView;F)F

    .line 4778
    :cond_4
    iget-object v0, p0, Lcom/android/calendar/DayView$ContinueScroll;->this$0:Lcom/android/calendar/DayView;

    # getter for: Lcom/android/calendar/DayView;->mScrollStartY:I
    invoke-static {v0}, Lcom/android/calendar/DayView;->access$3700(Lcom/android/calendar/DayView;)I

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/calendar/DayView$ContinueScroll;->this$0:Lcom/android/calendar/DayView;

    # getter for: Lcom/android/calendar/DayView;->mScrollStartY:I
    invoke-static {v0}, Lcom/android/calendar/DayView;->access$3700(Lcom/android/calendar/DayView;)I

    move-result v0

    iget-object v2, p0, Lcom/android/calendar/DayView$ContinueScroll;->this$0:Lcom/android/calendar/DayView;

    # getter for: Lcom/android/calendar/DayView;->mMaxViewStartY:I
    invoke-static {v2}, Lcom/android/calendar/DayView;->access$3500(Lcom/android/calendar/DayView;)I

    move-result v2

    if-ne v0, v2, :cond_6

    .line 4781
    :cond_5
    iget-object v0, p0, Lcom/android/calendar/DayView$ContinueScroll;->this$0:Lcom/android/calendar/DayView;

    # getter for: Lcom/android/calendar/DayView;->mViewStartY:I
    invoke-static {v0}, Lcom/android/calendar/DayView;->access$3100(Lcom/android/calendar/DayView;)I

    move-result v0

    if-gez v0, :cond_8

    .line 4782
    iget-object v0, p0, Lcom/android/calendar/DayView$ContinueScroll;->this$0:Lcom/android/calendar/DayView;

    # setter for: Lcom/android/calendar/DayView;->mViewStartY:I
    invoke-static {v0, v1}, Lcom/android/calendar/DayView;->access$3102(Lcom/android/calendar/DayView;I)I

    .line 4788
    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/android/calendar/DayView$ContinueScroll;->this$0:Lcom/android/calendar/DayView;

    # invokes: Lcom/android/calendar/DayView;->computeFirstHour()V
    invoke-static {v0}, Lcom/android/calendar/DayView;->access$3800(Lcom/android/calendar/DayView;)V

    .line 4789
    iget-object v0, p0, Lcom/android/calendar/DayView$ContinueScroll;->this$0:Lcom/android/calendar/DayView;

    # getter for: Lcom/android/calendar/DayView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/calendar/DayView;->access$3900(Lcom/android/calendar/DayView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4790
    iget-object v0, p0, Lcom/android/calendar/DayView$ContinueScroll;->this$0:Lcom/android/calendar/DayView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_1

    .line 4771
    :cond_7
    iget-object v0, p0, Lcom/android/calendar/DayView$ContinueScroll;->this$0:Lcom/android/calendar/DayView;

    # getter for: Lcom/android/calendar/DayView;->mViewStartY:I
    invoke-static {v0}, Lcom/android/calendar/DayView;->access$3100(Lcom/android/calendar/DayView;)I

    move-result v0

    iget-object v2, p0, Lcom/android/calendar/DayView$ContinueScroll;->this$0:Lcom/android/calendar/DayView;

    # getter for: Lcom/android/calendar/DayView;->mMaxViewStartY:I
    invoke-static {v2}, Lcom/android/calendar/DayView;->access$3500(Lcom/android/calendar/DayView;)I

    move-result v2

    if-le v0, v2, :cond_3

    .line 4772
    iget-object v0, p0, Lcom/android/calendar/DayView$ContinueScroll;->this$0:Lcom/android/calendar/DayView;

    # getter for: Lcom/android/calendar/DayView;->mEdgeEffectBottom:Landroid/widget/EdgeEffect;
    invoke-static {v0}, Lcom/android/calendar/DayView;->access$3600(Lcom/android/calendar/DayView;)Landroid/widget/EdgeEffect;

    move-result-object v0

    iget-object v2, p0, Lcom/android/calendar/DayView$ContinueScroll;->this$0:Lcom/android/calendar/DayView;

    # getter for: Lcom/android/calendar/DayView;->mLastVelocity:F
    invoke-static {v2}, Lcom/android/calendar/DayView;->access$3300(Lcom/android/calendar/DayView;)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 4773
    iget-object v0, p0, Lcom/android/calendar/DayView$ContinueScroll;->this$0:Lcom/android/calendar/DayView;

    # setter for: Lcom/android/calendar/DayView;->mCallEdgeEffectOnAbsorb:Z
    invoke-static {v0, v1}, Lcom/android/calendar/DayView;->access$3202(Lcom/android/calendar/DayView;Z)Z

    goto :goto_2

    .line 4783
    :cond_8
    iget-object v0, p0, Lcom/android/calendar/DayView$ContinueScroll;->this$0:Lcom/android/calendar/DayView;

    # getter for: Lcom/android/calendar/DayView;->mViewStartY:I
    invoke-static {v0}, Lcom/android/calendar/DayView;->access$3100(Lcom/android/calendar/DayView;)I

    move-result v0

    iget-object v1, p0, Lcom/android/calendar/DayView$ContinueScroll;->this$0:Lcom/android/calendar/DayView;

    # getter for: Lcom/android/calendar/DayView;->mMaxViewStartY:I
    invoke-static {v1}, Lcom/android/calendar/DayView;->access$3500(Lcom/android/calendar/DayView;)I

    move-result v1

    if-le v0, v1, :cond_6

    .line 4784
    iget-object v0, p0, Lcom/android/calendar/DayView$ContinueScroll;->this$0:Lcom/android/calendar/DayView;

    iget-object v1, p0, Lcom/android/calendar/DayView$ContinueScroll;->this$0:Lcom/android/calendar/DayView;

    # getter for: Lcom/android/calendar/DayView;->mMaxViewStartY:I
    invoke-static {v1}, Lcom/android/calendar/DayView;->access$3500(Lcom/android/calendar/DayView;)I

    move-result v1

    # setter for: Lcom/android/calendar/DayView;->mViewStartY:I
    invoke-static {v0, v1}, Lcom/android/calendar/DayView;->access$3102(Lcom/android/calendar/DayView;I)I

    goto :goto_3
.end method
