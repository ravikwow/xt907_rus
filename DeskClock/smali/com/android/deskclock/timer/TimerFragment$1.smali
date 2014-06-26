.class Lcom/android/deskclock/timer/TimerFragment$1;
.super Ljava/lang/Object;
.source "TimerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/timer/TimerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mVisible:Z

.field final synthetic this$0:Lcom/android/deskclock/timer/TimerFragment;


# direct methods
.method constructor <init>(Lcom/android/deskclock/timer/TimerFragment;)V
    .locals 1

    .prologue
    .line 381
    iput-object p1, p0, Lcom/android/deskclock/timer/TimerFragment$1;->this$0:Lcom/android/deskclock/timer/TimerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 382
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/deskclock/timer/TimerFragment$1;->mVisible:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v14, 0x3

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 389
    invoke-static {}, Lcom/android/deskclock/Utils;->getTimeNow()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    rem-long/2addr v10, v12

    const-wide/16 v12, 0x1f4

    cmp-long v7, v10, v12

    if-gez v7, :cond_5

    move v6, v8

    .line 390
    .local v6, "visible":Z
    :goto_0
    iget-boolean v7, p0, Lcom/android/deskclock/timer/TimerFragment$1;->mVisible:Z

    if-eq v7, v6, :cond_6

    move v5, v8

    .line 391
    .local v5, "toggle":Z
    :goto_1
    iput-boolean v6, p0, Lcom/android/deskclock/timer/TimerFragment$1;->mVisible:Z

    .line 392
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget-object v7, p0, Lcom/android/deskclock/timer/TimerFragment$1;->this$0:Lcom/android/deskclock/timer/TimerFragment;

    # getter for: Lcom/android/deskclock/timer/TimerFragment;->mAdapter:Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;
    invoke-static {v7}, Lcom/android/deskclock/timer/TimerFragment;->access$600(Lcom/android/deskclock/timer/TimerFragment;)Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->getCount()I

    move-result v7

    if-ge v0, v7, :cond_7

    .line 393
    iget-object v7, p0, Lcom/android/deskclock/timer/TimerFragment$1;->this$0:Lcom/android/deskclock/timer/TimerFragment;

    # getter for: Lcom/android/deskclock/timer/TimerFragment;->mAdapter:Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;
    invoke-static {v7}, Lcom/android/deskclock/timer/TimerFragment;->access$600(Lcom/android/deskclock/timer/TimerFragment;)Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->getItem(I)Lcom/android/deskclock/timer/TimerObj;

    move-result-object v2

    .line 394
    .local v2, "t":Lcom/android/deskclock/timer/TimerObj;
    iget v7, v2, Lcom/android/deskclock/timer/TimerObj;->mState:I

    if-eq v7, v8, :cond_0

    iget v7, v2, Lcom/android/deskclock/timer/TimerObj;->mState:I

    if-ne v7, v14, :cond_1

    .line 395
    :cond_0
    invoke-virtual {v2, v9}, Lcom/android/deskclock/timer/TimerObj;->updateTimeLeft(Z)J

    move-result-wide v3

    .line 396
    .local v3, "timeLeft":J
    iget-object v7, v2, Lcom/android/deskclock/timer/TimerObj;->mView:Landroid/view/View;

    if-eqz v7, :cond_1

    .line 397
    iget-object v7, v2, Lcom/android/deskclock/timer/TimerObj;->mView:Landroid/view/View;

    check-cast v7, Lcom/android/deskclock/timer/TimerListItem;

    check-cast v7, Lcom/android/deskclock/timer/TimerListItem;

    invoke-virtual {v7, v3, v4, v9}, Lcom/android/deskclock/timer/TimerListItem;->setTime(JZ)V

    .line 399
    if-eqz v5, :cond_1

    .line 400
    iget-object v7, v2, Lcom/android/deskclock/timer/TimerObj;->mView:Landroid/view/View;

    const v10, 0x7f0e0093

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 402
    .local v1, "leftButton":Landroid/widget/ImageButton;
    iget-object v7, p0, Lcom/android/deskclock/timer/TimerFragment$1;->this$0:Lcom/android/deskclock/timer/TimerFragment;

    # invokes: Lcom/android/deskclock/timer/TimerFragment;->canAddMinute(Lcom/android/deskclock/timer/TimerObj;)Z
    invoke-static {v7, v2}, Lcom/android/deskclock/timer/TimerFragment;->access$700(Lcom/android/deskclock/timer/TimerFragment;Lcom/android/deskclock/timer/TimerObj;)Z

    move-result v7

    invoke-virtual {v1, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 406
    .end local v1    # "leftButton":Landroid/widget/ImageButton;
    .end local v3    # "timeLeft":J
    :cond_1
    iget-wide v10, v2, Lcom/android/deskclock/timer/TimerObj;->mTimeLeft:J

    const-wide/16 v12, 0x0

    cmp-long v7, v10, v12

    if-gtz v7, :cond_2

    iget v7, v2, Lcom/android/deskclock/timer/TimerObj;->mState:I

    const/4 v10, 0x4

    if-eq v7, v10, :cond_2

    iget v7, v2, Lcom/android/deskclock/timer/TimerObj;->mState:I

    const/4 v10, 0x5

    if-eq v7, v10, :cond_2

    .line 408
    iput v14, v2, Lcom/android/deskclock/timer/TimerObj;->mState:I

    .line 409
    iget-object v7, p0, Lcom/android/deskclock/timer/TimerFragment$1;->this$0:Lcom/android/deskclock/timer/TimerFragment;

    # invokes: Lcom/android/deskclock/timer/TimerFragment;->setTimerButtons(Lcom/android/deskclock/timer/TimerObj;)V
    invoke-static {v7, v2}, Lcom/android/deskclock/timer/TimerFragment;->access$300(Lcom/android/deskclock/timer/TimerFragment;Lcom/android/deskclock/timer/TimerObj;)V

    .line 410
    iget-object v7, v2, Lcom/android/deskclock/timer/TimerObj;->mView:Landroid/view/View;

    if-eqz v7, :cond_2

    .line 411
    iget-object v7, v2, Lcom/android/deskclock/timer/TimerObj;->mView:Landroid/view/View;

    check-cast v7, Lcom/android/deskclock/timer/TimerListItem;

    check-cast v7, Lcom/android/deskclock/timer/TimerListItem;

    invoke-virtual {v7}, Lcom/android/deskclock/timer/TimerListItem;->timesUp()V

    .line 416
    :cond_2
    if-eqz v5, :cond_4

    iget-object v7, v2, Lcom/android/deskclock/timer/TimerObj;->mView:Landroid/view/View;

    if-eqz v7, :cond_4

    .line 417
    iget v7, v2, Lcom/android/deskclock/timer/TimerObj;->mState:I

    if-ne v7, v14, :cond_3

    .line 418
    iget-object v7, v2, Lcom/android/deskclock/timer/TimerObj;->mView:Landroid/view/View;

    check-cast v7, Lcom/android/deskclock/timer/TimerListItem;

    check-cast v7, Lcom/android/deskclock/timer/TimerListItem;

    iget-boolean v10, p0, Lcom/android/deskclock/timer/TimerFragment$1;->mVisible:Z

    invoke-virtual {v7, v10}, Lcom/android/deskclock/timer/TimerListItem;->setCircleBlink(Z)V

    .line 420
    :cond_3
    iget v7, v2, Lcom/android/deskclock/timer/TimerObj;->mState:I

    const/4 v10, 0x2

    if-ne v7, v10, :cond_4

    .line 421
    iget-object v7, v2, Lcom/android/deskclock/timer/TimerObj;->mView:Landroid/view/View;

    check-cast v7, Lcom/android/deskclock/timer/TimerListItem;

    check-cast v7, Lcom/android/deskclock/timer/TimerListItem;

    iget-boolean v10, p0, Lcom/android/deskclock/timer/TimerFragment$1;->mVisible:Z

    invoke-virtual {v7, v10}, Lcom/android/deskclock/timer/TimerListItem;->setTextBlink(Z)V

    .line 392
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .end local v0    # "i":I
    .end local v2    # "t":Lcom/android/deskclock/timer/TimerObj;
    .end local v5    # "toggle":Z
    .end local v6    # "visible":Z
    :cond_5
    move v6, v9

    .line 389
    goto/16 :goto_0

    .restart local v6    # "visible":Z
    :cond_6
    move v5, v9

    .line 390
    goto/16 :goto_1

    .line 425
    .restart local v0    # "i":I
    .restart local v5    # "toggle":Z
    :cond_7
    iget-object v7, p0, Lcom/android/deskclock/timer/TimerFragment$1;->this$0:Lcom/android/deskclock/timer/TimerFragment;

    # getter for: Lcom/android/deskclock/timer/TimerFragment;->mTimersList:Lcom/android/deskclock/widget/sgv/StaggeredGridView;
    invoke-static {v7}, Lcom/android/deskclock/timer/TimerFragment;->access$100(Lcom/android/deskclock/timer/TimerFragment;)Lcom/android/deskclock/widget/sgv/StaggeredGridView;

    move-result-object v7

    iget-object v8, p0, Lcom/android/deskclock/timer/TimerFragment$1;->this$0:Lcom/android/deskclock/timer/TimerFragment;

    # getter for: Lcom/android/deskclock/timer/TimerFragment;->mClockTick:Ljava/lang/Runnable;
    invoke-static {v8}, Lcom/android/deskclock/timer/TimerFragment;->access$800(Lcom/android/deskclock/timer/TimerFragment;)Ljava/lang/Runnable;

    move-result-object v8

    const-wide/16 v9, 0x14

    invoke-virtual {v7, v8, v9, v10}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 426
    return-void
.end method
