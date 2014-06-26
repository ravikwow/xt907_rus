.class Lcom/android/deskclock/AlarmClockFragment$5;
.super Landroid/database/DataSetObserver;
.source "AlarmClockFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/AlarmClockFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private prevAdapterCount:I

.field final synthetic this$0:Lcom/android/deskclock/AlarmClockFragment;


# direct methods
.method constructor <init>(Lcom/android/deskclock/AlarmClockFragment;)V
    .locals 1

    .prologue
    .line 291
    iput-object p1, p0, Lcom/android/deskclock/AlarmClockFragment$5;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 293
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/deskclock/AlarmClockFragment$5;->prevAdapterCount:I

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 9

    .prologue
    const-wide/16 v7, 0x12c

    const/4 v6, 0x2

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 298
    iget-object v2, p0, Lcom/android/deskclock/AlarmClockFragment$5;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    # getter for: Lcom/android/deskclock/AlarmClockFragment;->mAdapter:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;
    invoke-static {v2}, Lcom/android/deskclock/AlarmClockFragment;->access$300(Lcom/android/deskclock/AlarmClockFragment;)Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v1

    .line 299
    .local v1, "count":I
    iget-object v2, p0, Lcom/android/deskclock/AlarmClockFragment$5;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    # getter for: Lcom/android/deskclock/AlarmClockFragment;->mDeletedAlarm:Lcom/android/deskclock/provider/Alarm;
    invoke-static {v2}, Lcom/android/deskclock/AlarmClockFragment;->access$400(Lcom/android/deskclock/AlarmClockFragment;)Lcom/android/deskclock/provider/Alarm;

    move-result-object v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/deskclock/AlarmClockFragment$5;->prevAdapterCount:I

    if-le v2, v1, :cond_0

    .line 300
    iget-object v2, p0, Lcom/android/deskclock/AlarmClockFragment$5;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    # invokes: Lcom/android/deskclock/AlarmClockFragment;->showUndoBar()V
    invoke-static {v2}, Lcom/android/deskclock/AlarmClockFragment;->access$500(Lcom/android/deskclock/AlarmClockFragment;)V

    .line 304
    :cond_0
    if-nez v1, :cond_3

    .line 305
    iget-object v2, p0, Lcom/android/deskclock/AlarmClockFragment$5;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    # getter for: Lcom/android/deskclock/AlarmClockFragment;->mAddAlarmButton:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/deskclock/AlarmClockFragment;->access$600(Lcom/android/deskclock/AlarmClockFragment;)Landroid/widget/ImageView;

    move-result-object v2

    const v3, 0x7f0200b2

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 308
    iget-object v2, p0, Lcom/android/deskclock/AlarmClockFragment$5;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    # getter for: Lcom/android/deskclock/AlarmClockFragment;->mTimelineLayout:Landroid/view/View;
    invoke-static {v2}, Lcom/android/deskclock/AlarmClockFragment;->access$700(Lcom/android/deskclock/AlarmClockFragment;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/deskclock/AlarmClockFragment$5;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    # getter for: Lcom/android/deskclock/AlarmClockFragment;->mAlarmsView:Landroid/view/View;
    invoke-static {v2}, Lcom/android/deskclock/AlarmClockFragment;->access$800(Lcom/android/deskclock/AlarmClockFragment;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 311
    iget v2, p0, Lcom/android/deskclock/AlarmClockFragment$5;->prevAdapterCount:I

    if-lez v2, :cond_1

    .line 314
    iget-object v2, p0, Lcom/android/deskclock/AlarmClockFragment$5;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    # getter for: Lcom/android/deskclock/AlarmClockFragment;->mFadeIn:Landroid/animation/Animator;
    invoke-static {v2}, Lcom/android/deskclock/AlarmClockFragment;->access$900(Lcom/android/deskclock/AlarmClockFragment;)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    .line 318
    iget-object v2, p0, Lcom/android/deskclock/AlarmClockFragment$5;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    # getter for: Lcom/android/deskclock/AlarmClockFragment;->mTimelineLayout:Landroid/view/View;
    invoke-static {v2}, Lcom/android/deskclock/AlarmClockFragment;->access$700(Lcom/android/deskclock/AlarmClockFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 319
    new-array v2, v6, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {v2, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 321
    .local v0, "animator":Landroid/animation/ValueAnimator;
    iget-object v2, p0, Lcom/android/deskclock/AlarmClockFragment$5;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    # getter for: Lcom/android/deskclock/AlarmClockFragment;->mCollapseInterpolator:Landroid/view/animation/Interpolator;
    invoke-static {v2}, Lcom/android/deskclock/AlarmClockFragment;->access$1000(Lcom/android/deskclock/AlarmClockFragment;)Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 322
    new-instance v2, Lcom/android/deskclock/AlarmClockFragment$5$1;

    invoke-direct {v2, p0}, Lcom/android/deskclock/AlarmClockFragment$5$1;-><init>(Lcom/android/deskclock/AlarmClockFragment$5;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 335
    new-instance v2, Lcom/android/deskclock/AlarmClockFragment$5$2;

    invoke-direct {v2, p0}, Lcom/android/deskclock/AlarmClockFragment$5$2;-><init>(Lcom/android/deskclock/AlarmClockFragment$5;)V

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 358
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 421
    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    :goto_0
    iput v1, p0, Lcom/android/deskclock/AlarmClockFragment$5;->prevAdapterCount:I

    .line 422
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 423
    return-void

    .line 362
    :cond_1
    iget-object v2, p0, Lcom/android/deskclock/AlarmClockFragment$5;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    # getter for: Lcom/android/deskclock/AlarmClockFragment;->mTimelineLayout:Landroid/view/View;
    invoke-static {v2}, Lcom/android/deskclock/AlarmClockFragment;->access$700(Lcom/android/deskclock/AlarmClockFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 363
    iget-object v2, p0, Lcom/android/deskclock/AlarmClockFragment$5;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    # getter for: Lcom/android/deskclock/AlarmClockFragment;->mEmptyView:Landroid/view/View;
    invoke-static {v2}, Lcom/android/deskclock/AlarmClockFragment;->access$200(Lcom/android/deskclock/AlarmClockFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 364
    iget-object v2, p0, Lcom/android/deskclock/AlarmClockFragment$5;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    iget-object v3, p0, Lcom/android/deskclock/AlarmClockFragment$5;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    # getter for: Lcom/android/deskclock/AlarmClockFragment;->mUndoBarInitialMargin:I
    invoke-static {v3}, Lcom/android/deskclock/AlarmClockFragment;->access$1200(Lcom/android/deskclock/AlarmClockFragment;)I

    move-result v3

    # invokes: Lcom/android/deskclock/AlarmClockFragment;->setUndoBarRightMargin(I)V
    invoke-static {v2, v3}, Lcom/android/deskclock/AlarmClockFragment;->access$1300(Lcom/android/deskclock/AlarmClockFragment;I)V

    goto :goto_0

    .line 369
    :cond_2
    iget-object v2, p0, Lcom/android/deskclock/AlarmClockFragment$5;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    # getter for: Lcom/android/deskclock/AlarmClockFragment;->mEmptyView:Landroid/view/View;
    invoke-static {v2}, Lcom/android/deskclock/AlarmClockFragment;->access$200(Lcom/android/deskclock/AlarmClockFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 374
    :cond_3
    iget-object v2, p0, Lcom/android/deskclock/AlarmClockFragment$5;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    # getter for: Lcom/android/deskclock/AlarmClockFragment;->mAddAlarmButton:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/deskclock/AlarmClockFragment;->access$600(Lcom/android/deskclock/AlarmClockFragment;)Landroid/widget/ImageView;

    move-result-object v2

    const v3, 0x7f0200b1

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 377
    iget-object v2, p0, Lcom/android/deskclock/AlarmClockFragment$5;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    # getter for: Lcom/android/deskclock/AlarmClockFragment;->mTimelineLayout:Landroid/view/View;
    invoke-static {v2}, Lcom/android/deskclock/AlarmClockFragment;->access$700(Lcom/android/deskclock/AlarmClockFragment;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/deskclock/AlarmClockFragment$5;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    # getter for: Lcom/android/deskclock/AlarmClockFragment;->mAlarmsView:Landroid/view/View;
    invoke-static {v2}, Lcom/android/deskclock/AlarmClockFragment;->access$800(Lcom/android/deskclock/AlarmClockFragment;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 379
    iget-object v2, p0, Lcom/android/deskclock/AlarmClockFragment$5;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    # getter for: Lcom/android/deskclock/AlarmClockFragment;->mTimelineLayout:Landroid/view/View;
    invoke-static {v2}, Lcom/android/deskclock/AlarmClockFragment;->access$700(Lcom/android/deskclock/AlarmClockFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 381
    iget v2, p0, Lcom/android/deskclock/AlarmClockFragment$5;->prevAdapterCount:I

    if-nez v2, :cond_4

    .line 384
    iget-object v2, p0, Lcom/android/deskclock/AlarmClockFragment$5;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    # getter for: Lcom/android/deskclock/AlarmClockFragment;->mFadeOut:Landroid/animation/Animator;
    invoke-static {v2}, Lcom/android/deskclock/AlarmClockFragment;->access$1500(Lcom/android/deskclock/AlarmClockFragment;)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    .line 388
    new-array v2, v6, [F

    fill-array-data v2, :array_1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {v2, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 390
    .restart local v0    # "animator":Landroid/animation/ValueAnimator;
    iget-object v2, p0, Lcom/android/deskclock/AlarmClockFragment$5;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    # getter for: Lcom/android/deskclock/AlarmClockFragment;->mExpandInterpolator:Landroid/view/animation/Interpolator;
    invoke-static {v2}, Lcom/android/deskclock/AlarmClockFragment;->access$1600(Lcom/android/deskclock/AlarmClockFragment;)Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 391
    new-instance v2, Lcom/android/deskclock/AlarmClockFragment$5$3;

    invoke-direct {v2, p0}, Lcom/android/deskclock/AlarmClockFragment$5$3;-><init>(Lcom/android/deskclock/AlarmClockFragment$5;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 407
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_0

    .line 409
    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    :cond_4
    iget-object v2, p0, Lcom/android/deskclock/AlarmClockFragment$5;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    # getter for: Lcom/android/deskclock/AlarmClockFragment;->mTimelineLayout:Landroid/view/View;
    invoke-static {v2}, Lcom/android/deskclock/AlarmClockFragment;->access$700(Lcom/android/deskclock/AlarmClockFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 410
    iget-object v2, p0, Lcom/android/deskclock/AlarmClockFragment$5;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    # getter for: Lcom/android/deskclock/AlarmClockFragment;->mEmptyView:Landroid/view/View;
    invoke-static {v2}, Lcom/android/deskclock/AlarmClockFragment;->access$200(Lcom/android/deskclock/AlarmClockFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 411
    iget-object v2, p0, Lcom/android/deskclock/AlarmClockFragment$5;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    iget-object v3, p0, Lcom/android/deskclock/AlarmClockFragment$5;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    # getter for: Lcom/android/deskclock/AlarmClockFragment;->mUndoBarInitialMargin:I
    invoke-static {v3}, Lcom/android/deskclock/AlarmClockFragment;->access$1200(Lcom/android/deskclock/AlarmClockFragment;)I

    move-result v3

    iget-object v4, p0, Lcom/android/deskclock/AlarmClockFragment$5;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    # getter for: Lcom/android/deskclock/AlarmClockFragment;->mTimelineViewWidth:I
    invoke-static {v4}, Lcom/android/deskclock/AlarmClockFragment;->access$1100(Lcom/android/deskclock/AlarmClockFragment;)I

    move-result v4

    add-int/2addr v3, v4

    # invokes: Lcom/android/deskclock/AlarmClockFragment;->setUndoBarRightMargin(I)V
    invoke-static {v2, v3}, Lcom/android/deskclock/AlarmClockFragment;->access$1300(Lcom/android/deskclock/AlarmClockFragment;I)V

    goto/16 :goto_0

    .line 416
    :cond_5
    iget-object v2, p0, Lcom/android/deskclock/AlarmClockFragment$5;->this$0:Lcom/android/deskclock/AlarmClockFragment;

    # getter for: Lcom/android/deskclock/AlarmClockFragment;->mEmptyView:Landroid/view/View;
    invoke-static {v2}, Lcom/android/deskclock/AlarmClockFragment;->access$200(Lcom/android/deskclock/AlarmClockFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 319
    :array_0
    .array-data 4
        0x3f800000
        0x0
    .end array-data

    .line 388
    :array_1
    .array-data 4
        0x0
        0x3f800000
    .end array-data
.end method
