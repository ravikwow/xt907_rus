.class Lcom/android/deskclock/stopwatch/StopwatchFragment$8;
.super Ljava/lang/Object;
.source "StopwatchFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/stopwatch/StopwatchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/stopwatch/StopwatchFragment;


# direct methods
.method constructor <init>(Lcom/android/deskclock/stopwatch/StopwatchFragment;)V
    .locals 0

    .prologue
    .line 887
    iput-object p1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$8;->this$0:Lcom/android/deskclock/stopwatch/StopwatchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 890
    invoke-static {}, Lcom/android/deskclock/Utils;->getTimeNow()J

    move-result-wide v0

    .line 891
    .local v0, "curTime":J
    iget-object v4, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$8;->this$0:Lcom/android/deskclock/stopwatch/StopwatchFragment;

    iget-wide v4, v4, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mAccumulatedTime:J

    iget-object v6, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$8;->this$0:Lcom/android/deskclock/stopwatch/StopwatchFragment;

    iget-wide v6, v6, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mStartTime:J

    sub-long v6, v0, v6

    add-long v2, v4, v6

    .line 892
    .local v2, "totalTime":J
    iget-object v4, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$8;->this$0:Lcom/android/deskclock/stopwatch/StopwatchFragment;

    # getter for: Lcom/android/deskclock/stopwatch/StopwatchFragment;->mTime:Lcom/android/deskclock/CircleTimerView;
    invoke-static {v4}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->access$1100(Lcom/android/deskclock/stopwatch/StopwatchFragment;)Lcom/android/deskclock/CircleTimerView;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 893
    iget-object v4, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$8;->this$0:Lcom/android/deskclock/stopwatch/StopwatchFragment;

    # getter for: Lcom/android/deskclock/stopwatch/StopwatchFragment;->mTimeText:Lcom/android/deskclock/timer/CountingTimerView;
    invoke-static {v4}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->access$1200(Lcom/android/deskclock/stopwatch/StopwatchFragment;)Lcom/android/deskclock/timer/CountingTimerView;

    move-result-object v4

    invoke-virtual {v4, v2, v3, v8, v8}, Lcom/android/deskclock/timer/CountingTimerView;->setTime(JZZ)V

    .line 895
    :cond_0
    iget-object v4, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$8;->this$0:Lcom/android/deskclock/stopwatch/StopwatchFragment;

    iget-object v4, v4, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mLapsAdapter:Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;

    invoke-virtual {v4}, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->getCount()I

    move-result v4

    if-lez v4, :cond_1

    .line 896
    iget-object v4, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$8;->this$0:Lcom/android/deskclock/stopwatch/StopwatchFragment;

    # invokes: Lcom/android/deskclock/stopwatch/StopwatchFragment;->updateCurrentLap(J)V
    invoke-static {v4, v2, v3}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->access$1300(Lcom/android/deskclock/stopwatch/StopwatchFragment;J)V

    .line 898
    :cond_1
    iget-object v4, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$8;->this$0:Lcom/android/deskclock/stopwatch/StopwatchFragment;

    # getter for: Lcom/android/deskclock/stopwatch/StopwatchFragment;->mTime:Lcom/android/deskclock/CircleTimerView;
    invoke-static {v4}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->access$1100(Lcom/android/deskclock/stopwatch/StopwatchFragment;)Lcom/android/deskclock/CircleTimerView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment$8;->this$0:Lcom/android/deskclock/stopwatch/StopwatchFragment;

    iget-object v5, v5, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mTimeUpdateThread:Ljava/lang/Runnable;

    const-wide/16 v6, 0xa

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 899
    return-void
.end method
