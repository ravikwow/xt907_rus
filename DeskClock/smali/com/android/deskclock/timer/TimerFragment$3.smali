.class Lcom/android/deskclock/timer/TimerFragment$3;
.super Ljava/lang/Object;
.source "TimerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/timer/TimerFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/timer/TimerFragment;


# direct methods
.method constructor <init>(Lcom/android/deskclock/timer/TimerFragment;)V
    .locals 0

    .prologue
    .line 478
    iput-object p1, p0, Lcom/android/deskclock/timer/TimerFragment$3;->this$0:Lcom/android/deskclock/timer/TimerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 484
    iget-object v2, p0, Lcom/android/deskclock/timer/TimerFragment$3;->this$0:Lcom/android/deskclock/timer/TimerFragment;

    # getter for: Lcom/android/deskclock/timer/TimerFragment;->mTimerSetup:Lcom/android/deskclock/TimerSetupView;
    invoke-static {v2}, Lcom/android/deskclock/timer/TimerFragment;->access$1000(Lcom/android/deskclock/timer/TimerFragment;)Lcom/android/deskclock/TimerSetupView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/deskclock/TimerSetupView;->getTime()I

    move-result v1

    .line 485
    .local v1, "timerLength":I
    if-nez v1, :cond_0

    .line 497
    :goto_0
    return-void

    .line 488
    :cond_0
    new-instance v0, Lcom/android/deskclock/timer/TimerObj;

    mul-int/lit16 v2, v1, 0x3e8

    int-to-long v2, v2

    invoke-direct {v0, v2, v3}, Lcom/android/deskclock/timer/TimerObj;-><init>(J)V

    .line 489
    .local v0, "t":Lcom/android/deskclock/timer/TimerObj;
    const/4 v2, 0x1

    iput v2, v0, Lcom/android/deskclock/timer/TimerObj;->mState:I

    .line 490
    iget-object v2, p0, Lcom/android/deskclock/timer/TimerFragment$3;->this$0:Lcom/android/deskclock/timer/TimerFragment;

    # getter for: Lcom/android/deskclock/timer/TimerFragment;->mAdapter:Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;
    invoke-static {v2}, Lcom/android/deskclock/timer/TimerFragment;->access$600(Lcom/android/deskclock/timer/TimerFragment;)Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->addTimer(Lcom/android/deskclock/timer/TimerObj;)V

    .line 491
    iget-object v2, p0, Lcom/android/deskclock/timer/TimerFragment$3;->this$0:Lcom/android/deskclock/timer/TimerFragment;

    const-string v3, "start_timer"

    # invokes: Lcom/android/deskclock/timer/TimerFragment;->updateTimersState(Lcom/android/deskclock/timer/TimerObj;Ljava/lang/String;)V
    invoke-static {v2, v0, v3}, Lcom/android/deskclock/timer/TimerFragment;->access$1100(Lcom/android/deskclock/timer/TimerFragment;Lcom/android/deskclock/timer/TimerObj;Ljava/lang/String;)V

    .line 492
    iget-object v2, p0, Lcom/android/deskclock/timer/TimerFragment$3;->this$0:Lcom/android/deskclock/timer/TimerFragment;

    # invokes: Lcom/android/deskclock/timer/TimerFragment;->gotoTimersView()V
    invoke-static {v2}, Lcom/android/deskclock/timer/TimerFragment;->access$900(Lcom/android/deskclock/timer/TimerFragment;)V

    .line 493
    iget-object v2, p0, Lcom/android/deskclock/timer/TimerFragment$3;->this$0:Lcom/android/deskclock/timer/TimerFragment;

    # getter for: Lcom/android/deskclock/timer/TimerFragment;->mTimerSetup:Lcom/android/deskclock/TimerSetupView;
    invoke-static {v2}, Lcom/android/deskclock/timer/TimerFragment;->access$1000(Lcom/android/deskclock/timer/TimerFragment;)Lcom/android/deskclock/TimerSetupView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/deskclock/TimerSetupView;->reset()V

    .line 495
    iget-object v2, p0, Lcom/android/deskclock/timer/TimerFragment$3;->this$0:Lcom/android/deskclock/timer/TimerFragment;

    # getter for: Lcom/android/deskclock/timer/TimerFragment;->mTimersList:Lcom/android/deskclock/widget/sgv/StaggeredGridView;
    invoke-static {v2}, Lcom/android/deskclock/timer/TimerFragment;->access$100(Lcom/android/deskclock/timer/TimerFragment;)Lcom/android/deskclock/widget/sgv/StaggeredGridView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/deskclock/timer/TimerFragment$3;->this$0:Lcom/android/deskclock/timer/TimerFragment;

    # getter for: Lcom/android/deskclock/timer/TimerFragment;->mAdapter:Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;
    invoke-static {v3}, Lcom/android/deskclock/timer/TimerFragment;->access$600(Lcom/android/deskclock/timer/TimerFragment;)Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    move-result-object v3

    iget v4, v0, Lcom/android/deskclock/timer/TimerObj;->mTimerId:I

    invoke-virtual {v3, v4}, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->findTimerPositionById(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->setFirstPositionAndOffsets(II)V

    goto :goto_0
.end method
