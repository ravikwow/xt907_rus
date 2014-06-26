.class public Lcom/android/deskclock/stopwatch/StopwatchFragment;
.super Lcom/android/deskclock/DeskClockFragment;
.source "StopwatchFragment.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/deskclock/stopwatch/StopwatchFragment$ImageLabelAdapter;,
        Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;,
        Lcom/android/deskclock/stopwatch/StopwatchFragment$Lap;
    }
.end annotation


# instance fields
.field mAccumulatedTime:J

.field private mCenterButton:Landroid/widget/TextView;

.field private mCircleLayout:Lcom/android/deskclock/CircleButtonsLayout;

.field private mCircleLayoutTransition:Landroid/animation/LayoutTransition;

.field private mEndSpace:Landroid/view/View;

.field mLapsAdapter:Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;

.field private mLapsList:Landroid/widget/ListView;

.field private mLayoutTransition:Landroid/animation/LayoutTransition;

.field private mLeftButton:Landroid/widget/ImageButton;

.field private mShareButton:Landroid/widget/ImageButton;

.field private mSharePopup:Landroid/widget/ListPopupWindow;

.field private mSpacersUsed:Z

.field private mStartSpace:Landroid/view/View;

.field mStartTime:J

.field mState:I

.field private mTime:Lcom/android/deskclock/CircleTimerView;

.field private mTimeText:Lcom/android/deskclock/timer/CountingTimerView;

.field mTimeUpdateThread:Ljava/lang/Runnable;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 249
    invoke-direct {p0}, Lcom/android/deskclock/DeskClockFragment;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mState:I

    .line 72
    iput-wide v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mStartTime:J

    .line 73
    iput-wide v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mAccumulatedTime:J

    .line 887
    new-instance v0, Lcom/android/deskclock/stopwatch/StopwatchFragment$8;

    invoke-direct {v0, p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment$8;-><init>(Lcom/android/deskclock/stopwatch/StopwatchFragment;)V

    iput-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mTimeUpdateThread:Ljava/lang/Runnable;

    .line 250
    return-void
.end method

.method static synthetic access$000(Lcom/android/deskclock/stopwatch/StopwatchFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/android/deskclock/stopwatch/StopwatchFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mLapsList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/deskclock/stopwatch/StopwatchFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/deskclock/stopwatch/StopwatchFragment;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->showLaps()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/deskclock/stopwatch/StopwatchFragment;)Lcom/android/deskclock/CircleTimerView;
    .locals 1
    .param p0, "x0"    # Lcom/android/deskclock/stopwatch/StopwatchFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mTime:Lcom/android/deskclock/CircleTimerView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/deskclock/stopwatch/StopwatchFragment;)Lcom/android/deskclock/timer/CountingTimerView;
    .locals 1
    .param p0, "x0"    # Lcom/android/deskclock/stopwatch/StopwatchFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mTimeText:Lcom/android/deskclock/timer/CountingTimerView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/deskclock/stopwatch/StopwatchFragment;J)V
    .locals 0
    .param p0, "x0"    # Lcom/android/deskclock/stopwatch/StopwatchFragment;
    .param p1, "x1"    # J

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->updateCurrentLap(J)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/deskclock/stopwatch/StopwatchFragment;J)V
    .locals 0
    .param p0, "x0"    # Lcom/android/deskclock/stopwatch/StopwatchFragment;
    .param p1, "x1"    # J

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->addLapTime(J)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/deskclock/stopwatch/StopwatchFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/deskclock/stopwatch/StopwatchFragment;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->doLap()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/deskclock/stopwatch/StopwatchFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/deskclock/stopwatch/StopwatchFragment;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->doReset()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/deskclock/stopwatch/StopwatchFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/deskclock/stopwatch/StopwatchFragment;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->releaseWakeLock()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/deskclock/stopwatch/StopwatchFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/deskclock/stopwatch/StopwatchFragment;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->showSharePopup()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/deskclock/stopwatch/StopwatchFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/deskclock/stopwatch/StopwatchFragment;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->rightButtonAction()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/deskclock/stopwatch/StopwatchFragment;)Landroid/widget/ListPopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/android/deskclock/stopwatch/StopwatchFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mSharePopup:Landroid/widget/ListPopupWindow;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/deskclock/stopwatch/StopwatchFragment;Landroid/widget/ListPopupWindow;)Landroid/widget/ListPopupWindow;
    .locals 0
    .param p0, "x0"    # Lcom/android/deskclock/stopwatch/StopwatchFragment;
    .param p1, "x1"    # Landroid/widget/ListPopupWindow;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mSharePopup:Landroid/widget/ListPopupWindow;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/deskclock/stopwatch/StopwatchFragment;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/android/deskclock/stopwatch/StopwatchFragment;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->getShareIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private acquireWakeLock()V
    .locals 3

    .prologue
    .line 1034
    iget-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    .line 1035
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1037
    const v1, 0x2000000a

    const-string v2, "StopwatchFragment"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1039
    iget-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1041
    :cond_0
    iget-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1042
    return-void
.end method

.method private addLapTime(J)V
    .locals 13
    .param p1, "time"    # J

    .prologue
    .line 785
    iget-wide v4, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mStartTime:J

    sub-long v4, p1, v4

    iget-wide v6, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mAccumulatedTime:J

    add-long v2, v4, v6

    .line 786
    .local v2, "curTime":J
    iget-object v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mLapsAdapter:Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;

    invoke-virtual {v1}, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->getCount()I

    move-result v12

    .line 787
    .local v12, "size":I
    if-nez v12, :cond_1

    .line 789
    new-instance v0, Lcom/android/deskclock/stopwatch/StopwatchFragment$Lap;

    move-object v1, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/deskclock/stopwatch/StopwatchFragment$Lap;-><init>(Lcom/android/deskclock/stopwatch/StopwatchFragment;JJ)V

    .line 790
    .local v0, "firstLap":Lcom/android/deskclock/stopwatch/StopwatchFragment$Lap;
    iget-object v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mLapsAdapter:Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;

    invoke-virtual {v1, v0}, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->addLap(Lcom/android/deskclock/stopwatch/StopwatchFragment$Lap;)V

    .line 792
    iget-object v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mLapsAdapter:Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;

    new-instance v4, Lcom/android/deskclock/stopwatch/StopwatchFragment$Lap;

    const-wide/16 v6, 0x0

    move-object v5, p0

    move-wide v8, v2

    invoke-direct/range {v4 .. v9}, Lcom/android/deskclock/stopwatch/StopwatchFragment$Lap;-><init>(Lcom/android/deskclock/stopwatch/StopwatchFragment;JJ)V

    invoke-virtual {v1, v4}, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->addLap(Lcom/android/deskclock/stopwatch/StopwatchFragment$Lap;)V

    .line 794
    iget-object v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mTime:Lcom/android/deskclock/CircleTimerView;

    invoke-virtual {v1, v2, v3}, Lcom/android/deskclock/CircleTimerView;->setIntervalTime(J)V

    .line 795
    iget-object v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mLapsAdapter:Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;

    invoke-virtual {v1, v0}, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->updateTimeFormats(Lcom/android/deskclock/stopwatch/StopwatchFragment$Lap;)Z

    .line 808
    .end local v0    # "firstLap":Lcom/android/deskclock/stopwatch/StopwatchFragment$Lap;
    :goto_0
    iget-object v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mLapsAdapter:Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 811
    iget-object v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mTime:Lcom/android/deskclock/CircleTimerView;

    invoke-virtual {v1}, Lcom/android/deskclock/CircleTimerView;->stopIntervalAnimation()V

    .line 812
    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->reachedMaxLaps()Z

    move-result v1

    if-nez v1, :cond_0

    .line 813
    iget-object v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mTime:Lcom/android/deskclock/CircleTimerView;

    invoke-virtual {v1}, Lcom/android/deskclock/CircleTimerView;->startIntervalAnimation()V

    .line 815
    :cond_0
    return-void

    .line 798
    :cond_1
    iget-object v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mLapsAdapter:Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->getItem(I)Lcom/android/deskclock/stopwatch/StopwatchFragment$Lap;

    move-result-object v1

    iget-wide v4, v1, Lcom/android/deskclock/stopwatch/StopwatchFragment$Lap;->mTotalTime:J

    sub-long v10, v2, v4

    .line 799
    .local v10, "lapTime":J
    iget-object v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mLapsAdapter:Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->getItem(I)Lcom/android/deskclock/stopwatch/StopwatchFragment$Lap;

    move-result-object v1

    iput-wide v10, v1, Lcom/android/deskclock/stopwatch/StopwatchFragment$Lap;->mLapTime:J

    .line 800
    iget-object v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mLapsAdapter:Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->getItem(I)Lcom/android/deskclock/stopwatch/StopwatchFragment$Lap;

    move-result-object v1

    iput-wide v2, v1, Lcom/android/deskclock/stopwatch/StopwatchFragment$Lap;->mTotalTime:J

    .line 802
    iget-object v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mLapsAdapter:Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;

    new-instance v4, Lcom/android/deskclock/stopwatch/StopwatchFragment$Lap;

    const-wide/16 v6, 0x0

    move-object v5, p0

    move-wide v8, v2

    invoke-direct/range {v4 .. v9}, Lcom/android/deskclock/stopwatch/StopwatchFragment$Lap;-><init>(Lcom/android/deskclock/stopwatch/StopwatchFragment;JJ)V

    invoke-virtual {v1, v4}, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->addLap(Lcom/android/deskclock/stopwatch/StopwatchFragment$Lap;)V

    .line 804
    iget-object v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mTime:Lcom/android/deskclock/CircleTimerView;

    invoke-virtual {v1, v10, v11}, Lcom/android/deskclock/CircleTimerView;->setMarkerTime(J)V

    .line 805
    iget-object v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mLapsAdapter:Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;

    # invokes: Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->updateLapFormat()V
    invoke-static {v1}, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->access$1000(Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;)V

    goto :goto_0
.end method

.method private doLap()V
    .locals 1

    .prologue
    .line 548
    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->showLaps()V

    .line 549
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->setButtons(I)V

    .line 550
    return-void
.end method

.method private doReset()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 554
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 556
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/android/deskclock/Utils;->clearSwSharedPref(Landroid/content/SharedPreferences;)V

    .line 557
    iget-object v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mTime:Lcom/android/deskclock/CircleTimerView;

    const-string v2, "sw"

    invoke-virtual {v1, v0, v2}, Lcom/android/deskclock/CircleTimerView;->clearSharedPref(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 558
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mAccumulatedTime:J

    .line 559
    iget-object v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mLapsAdapter:Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;

    invoke-virtual {v1}, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->clearLaps()V

    .line 560
    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->showLaps()V

    .line 561
    iget-object v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mTime:Lcom/android/deskclock/CircleTimerView;

    invoke-virtual {v1}, Lcom/android/deskclock/CircleTimerView;->stopIntervalAnimation()V

    .line 562
    iget-object v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mTime:Lcom/android/deskclock/CircleTimerView;

    invoke-virtual {v1}, Lcom/android/deskclock/CircleTimerView;->reset()V

    .line 563
    iget-object v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mTimeText:Lcom/android/deskclock/timer/CountingTimerView;

    iget-wide v2, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mAccumulatedTime:J

    invoke-virtual {v1, v2, v3, v5, v5}, Lcom/android/deskclock/timer/CountingTimerView;->setTime(JZZ)V

    .line 564
    iget-object v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mTimeText:Lcom/android/deskclock/timer/CountingTimerView;

    invoke-virtual {v1, v4}, Lcom/android/deskclock/timer/CountingTimerView;->blinkTimeStr(Z)V

    .line 565
    invoke-direct {p0, v4}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->setButtons(I)V

    .line 566
    iput v4, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mState:I

    .line 567
    return-void
.end method

.method private doStart(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    const/4 v2, 0x1

    .line 536
    iput-wide p1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mStartTime:J

    .line 537
    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->startUpdateThread()V

    .line 538
    iget-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mTimeText:Lcom/android/deskclock/timer/CountingTimerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/deskclock/timer/CountingTimerView;->blinkTimeStr(Z)V

    .line 539
    iget-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mTime:Lcom/android/deskclock/CircleTimerView;

    invoke-virtual {v0}, Lcom/android/deskclock/CircleTimerView;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mTime:Lcom/android/deskclock/CircleTimerView;

    invoke-virtual {v0}, Lcom/android/deskclock/CircleTimerView;->startIntervalAnimation()V

    .line 542
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->setButtons(I)V

    .line 543
    iput v2, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mState:I

    .line 544
    return-void
.end method

.method private doStop()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 525
    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->stopUpdateThread()V

    .line 526
    iget-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mTime:Lcom/android/deskclock/CircleTimerView;

    invoke-virtual {v0}, Lcom/android/deskclock/CircleTimerView;->pauseIntervalAnimation()V

    .line 527
    iget-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mTimeText:Lcom/android/deskclock/timer/CountingTimerView;

    iget-wide v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mAccumulatedTime:J

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/android/deskclock/timer/CountingTimerView;->setTime(JZZ)V

    .line 528
    iget-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mTimeText:Lcom/android/deskclock/timer/CountingTimerView;

    invoke-virtual {v0, v3}, Lcom/android/deskclock/timer/CountingTimerView;->blinkTimeStr(Z)V

    .line 529
    iget-wide v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mAccumulatedTime:J

    invoke-direct {p0, v0, v1}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->updateCurrentLap(J)V

    .line 530
    invoke-direct {p0, v4}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->setButtons(I)V

    .line 531
    iput v4, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mState:I

    .line 532
    return-void
.end method

.method private getLapShareTimes([J)[J
    .locals 9
    .param p1, "input"    # [J

    .prologue
    .line 676
    if-nez p1, :cond_1

    .line 677
    const/4 v4, 0x0

    .line 689
    :cond_0
    return-object v4

    .line 680
    :cond_1
    array-length v3, p1

    .line 681
    .local v3, "numLaps":I
    new-array v4, v3, [J

    .line 682
    .local v4, "output":[J
    const-wide/16 v5, 0x0

    .line 683
    .local v5, "prevLapElapsedTime":J
    add-int/lit8 v2, v3, -0x1

    .local v2, "lap_i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 684
    aget-wide v0, p1, v2

    .line 685
    .local v0, "lap":J
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "lap "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 686
    sub-long v7, v0, v5

    aput-wide v7, v4, v2

    .line 687
    move-wide v5, v0

    .line 683
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method private getShareIntent()Landroid/content/Intent;
    .locals 5

    .prologue
    .line 663
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 664
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 665
    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 666
    const-string v1, "android.intent.extra.SUBJECT"

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/deskclock/stopwatch/Stopwatches;->getShareTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 668
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mTimeText:Lcom/android/deskclock/timer/CountingTimerView;

    invoke-virtual {v3}, Lcom/android/deskclock/timer/CountingTimerView;->getTimeString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mLapsAdapter:Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;

    invoke-virtual {v4}, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->getLapTimes()[J

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->getLapShareTimes([J)[J

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/deskclock/stopwatch/Stopwatches;->buildShareResults(Landroid/content/Context;Ljava/lang/String;[J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 671
    return-object v0
.end method

.method private reachedMaxLaps()Z
    .locals 2

    .prologue
    .line 720
    iget-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mLapsAdapter:Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;

    invoke-virtual {v0}, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->getCount()I

    move-result v0

    const/16 v1, 0x63

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private readFromSharedPref(Landroid/content/SharedPreferences;)V
    .locals 12
    .param p1, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    .line 935
    const-string v9, "sw_start_time"

    const-wide/16 v10, 0x0

    invoke-interface {p1, v9, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    iput-wide v9, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mStartTime:J

    .line 936
    const-string v9, "sw_accum_time"

    const-wide/16 v10, 0x0

    invoke-interface {p1, v9, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    iput-wide v9, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mAccumulatedTime:J

    .line 937
    const-string v9, "sw_state"

    const/4 v10, 0x0

    invoke-interface {p1, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mState:I

    .line 938
    const-string v9, "sw_lap_num"

    const/4 v10, 0x0

    invoke-interface {p1, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 939
    .local v5, "numLaps":I
    iget-object v9, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mLapsAdapter:Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;

    if-eqz v9, :cond_2

    .line 940
    iget-object v9, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mLapsAdapter:Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;

    invoke-virtual {v9}, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->getLapTimes()[J

    move-result-object v6

    .line 941
    .local v6, "oldLaps":[J
    if-eqz v6, :cond_0

    array-length v9, v6

    if-ge v9, v5, :cond_2

    .line 942
    :cond_0
    new-array v4, v5, [J

    .line 943
    .local v4, "laps":[J
    const-wide/16 v7, 0x0

    .line 944
    .local v7, "prevLapElapsedTime":J
    const/4 v3, 0x0

    .local v3, "lap_i":I
    :goto_0
    if-ge v3, v5, :cond_1

    .line 945
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sw_lap_time_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v10, v3, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 946
    .local v0, "key":Ljava/lang/String;
    const-wide/16 v9, 0x0

    invoke-interface {p1, v0, v9, v10}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 947
    .local v1, "lap":J
    sub-int v9, v5, v3

    add-int/lit8 v9, v9, -0x1

    sub-long v10, v1, v7

    aput-wide v10, v4, v9

    .line 948
    move-wide v7, v1

    .line 944
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 950
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "lap":J
    :cond_1
    iget-object v9, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mLapsAdapter:Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;

    invoke-virtual {v9, v4}, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->setLapTimes([J)V

    .line 953
    .end local v3    # "lap_i":I
    .end local v4    # "laps":[J
    .end local v6    # "oldLaps":[J
    .end local v7    # "prevLapElapsedTime":J
    :cond_2
    const-string v9, "sw_update_circle"

    const/4 v10, 0x1

    invoke-interface {p1, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 954
    iget v9, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mState:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_4

    .line 955
    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->doStop()V

    .line 962
    :cond_3
    :goto_1
    return-void

    .line 956
    :cond_4
    iget v9, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mState:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_5

    .line 957
    iget-wide v9, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mStartTime:J

    invoke-direct {p0, v9, v10}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->doStart(J)V

    goto :goto_1

    .line 958
    :cond_5
    iget v9, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mState:I

    if-nez v9, :cond_3

    .line 959
    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->doReset()V

    goto :goto_1
.end method

.method private releaseWakeLock()V
    .locals 1

    .prologue
    .line 1045
    iget-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1046
    iget-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1048
    :cond_0
    return-void
.end method

.method private rightButtonAction()V
    .locals 8

    .prologue
    .line 253
    invoke-static {}, Lcom/android/deskclock/Utils;->getTimeNow()J

    move-result-wide v0

    .line 254
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 255
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/android/deskclock/stopwatch/StopwatchService;

    invoke-direct {v3, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 256
    const-string v4, "message_time"

    invoke-virtual {v3, v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 257
    const-string v4, "show_notification"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 258
    iget v4, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mState:I

    packed-switch v4, :pswitch_data_0

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " while pressing the right stopwatch button"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/deskclock/Log;->wtf(Ljava/lang/String;)V

    .line 281
    :goto_0
    return-void

    .line 261
    :pswitch_0
    invoke-static {}, Lcom/android/deskclock/Utils;->getTimeNow()J

    move-result-wide v0

    .line 262
    iget-wide v4, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mAccumulatedTime:J

    iget-wide v6, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mStartTime:J

    sub-long/2addr v0, v6

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mAccumulatedTime:J

    .line 263
    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->doStop()V

    .line 264
    const-string v0, "stop_stopwatch"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 265
    invoke-virtual {v2, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 266
    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->releaseWakeLock()V

    goto :goto_0

    .line 271
    :pswitch_1
    invoke-direct {p0, v0, v1}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->doStart(J)V

    .line 272
    const-string v0, "start_stopwatch"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 273
    invoke-virtual {v2, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 274
    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->acquireWakeLock()V

    goto :goto_0

    .line 258
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setButton(Landroid/widget/ImageButton;IIZI)V
    .locals 1
    .param p1, "b"    # Landroid/widget/ImageButton;
    .param p2, "text"    # I
    .param p3, "drawableId"    # I
    .param p4, "enabled"    # Z
    .param p5, "visibility"    # I

    .prologue
    .line 732
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 733
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 734
    invoke-virtual {p1, p5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 735
    invoke-virtual {p1, p4}, Landroid/view/View;->setEnabled(Z)V

    .line 736
    return-void
.end method

.method private setButtons(I)V
    .locals 12
    .param p1, "state"    # I

    .prologue
    const v2, 0x7f0d005a

    const v11, 0x7f0d0058

    const v3, 0x7f020074

    const/4 v9, 0x1

    const/4 v4, 0x0

    .line 696
    packed-switch p1, :pswitch_data_0

    .line 718
    :goto_0
    return-void

    .line 698
    :pswitch_0
    iget-object v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mLeftButton:Landroid/widget/ImageButton;

    const/4 v5, 0x4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->setButton(Landroid/widget/ImageButton;IIZI)V

    .line 700
    iget-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mCircleLayout:Lcom/android/deskclock/CircleButtonsLayout;

    iget-object v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mCenterButton:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1, v11}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->setStartStopText(Landroid/view/ViewGroup;Landroid/widget/TextView;I)V

    .line 701
    invoke-direct {p0, v4}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->showShareButton(Z)V

    goto :goto_0

    .line 704
    :pswitch_1
    iget-object v6, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mLeftButton:Landroid/widget/ImageButton;

    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->reachedMaxLaps()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_1
    move-object v5, p0

    move v7, v2

    move v8, v3

    move v10, v4

    invoke-direct/range {v5 .. v10}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->setButton(Landroid/widget/ImageButton;IIZI)V

    .line 706
    iget-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mCircleLayout:Lcom/android/deskclock/CircleButtonsLayout;

    iget-object v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mCenterButton:Landroid/widget/TextView;

    const v2, 0x7f0d0059

    invoke-direct {p0, v0, v1, v2}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->setStartStopText(Landroid/view/ViewGroup;Landroid/widget/TextView;I)V

    .line 707
    invoke-direct {p0, v4}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->showShareButton(Z)V

    goto :goto_0

    :cond_0
    move v9, v4

    .line 704
    goto :goto_1

    .line 710
    :pswitch_2
    iget-object v6, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mLeftButton:Landroid/widget/ImageButton;

    const v7, 0x7f0d005b

    const v8, 0x7f020095

    move-object v5, p0

    move v10, v4

    invoke-direct/range {v5 .. v10}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->setButton(Landroid/widget/ImageButton;IIZI)V

    .line 712
    iget-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mCircleLayout:Lcom/android/deskclock/CircleButtonsLayout;

    iget-object v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mCenterButton:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1, v11}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->setStartStopText(Landroid/view/ViewGroup;Landroid/widget/TextView;I)V

    .line 713
    invoke-direct {p0, v9}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->showShareButton(Z)V

    goto :goto_0

    .line 696
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setStartStopText(Landroid/view/ViewGroup;Landroid/widget/TextView;I)V
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "textView"    # Landroid/widget/TextView;
    .param p3, "text"    # I

    .prologue
    .line 749
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    .line 751
    .local v0, "layoutTransition":Landroid/animation/LayoutTransition;
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 752
    .local v2, "viewTreeObserver":Landroid/view/ViewTreeObserver;
    if-eqz v2, :cond_0

    .line 753
    new-instance v3, Lcom/android/deskclock/stopwatch/StopwatchFragment$7;

    invoke-direct {v3, p0, p1, v0}, Lcom/android/deskclock/stopwatch/StopwatchFragment$7;-><init>(Lcom/android/deskclock/stopwatch/StopwatchFragment;Landroid/view/ViewGroup;Landroid/animation/LayoutTransition;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 772
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 774
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 775
    .local v1, "textStr":Ljava/lang/String;
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 776
    invoke-virtual {p2, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 777
    return-void
.end method

.method private showLaps()V
    .locals 12

    .prologue
    const/16 v6, 0x8

    const/4 v11, 0x4

    const/4 v9, 0x3

    const/4 v5, 0x0

    .line 841
    iget-object v7, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mLapsAdapter:Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;

    invoke-virtual {v7}, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->getCount()I

    move-result v7

    if-lez v7, :cond_3

    const/4 v0, 0x1

    .line 846
    .local v0, "lapsVisible":Z
    :goto_0
    iget-boolean v7, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mSpacersUsed:Z

    if-eqz v7, :cond_2

    .line 847
    if-eqz v0, :cond_4

    move v2, v6

    .line 848
    .local v2, "spacersVisibility":I
    :goto_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 849
    .local v1, "rootView":Landroid/view/ViewGroup;
    if-eqz v1, :cond_2

    .line 850
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 851
    iget-object v7, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mStartSpace:Landroid/view/View;

    if-eqz v7, :cond_0

    .line 852
    iget-object v7, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mStartSpace:Landroid/view/View;

    invoke-virtual {v7, v2}, Landroid/view/View;->setVisibility(I)V

    .line 854
    :cond_0
    iget-object v7, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mEndSpace:Landroid/view/View;

    if-eqz v7, :cond_1

    .line 855
    iget-object v7, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mEndSpace:Landroid/view/View;

    invoke-virtual {v7, v2}, Landroid/view/View;->setVisibility(I)V

    .line 857
    :cond_1
    iget-object v7, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 861
    .end local v1    # "rootView":Landroid/view/ViewGroup;
    .end local v2    # "spacersVisibility":I
    :cond_2
    if-eqz v0, :cond_5

    .line 865
    iget-object v6, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mCircleLayoutTransition:Landroid/animation/LayoutTransition;

    const-wide/16 v7, 0x0

    invoke-virtual {v6, v11, v7, v8}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    .line 867
    iget-object v6, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mLapsList:Landroid/widget/ListView;

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 877
    :goto_2
    return-void

    .end local v0    # "lapsVisible":Z
    :cond_3
    move v0, v5

    .line 841
    goto :goto_0

    .restart local v0    # "lapsVisible":Z
    :cond_4
    move v2, v5

    .line 847
    goto :goto_1

    .line 872
    :cond_5
    iget-object v5, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v5, v9}, Landroid/animation/LayoutTransition;->getStartDelay(I)J

    move-result-wide v7

    iget-object v5, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v5, v9}, Landroid/animation/LayoutTransition;->getDuration(I)J

    move-result-wide v9

    add-long v3, v7, v9

    .line 874
    .local v3, "startDelay":J
    iget-object v5, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mCircleLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v5, v11, v3, v4}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    .line 875
    iget-object v5, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mLapsList:Landroid/widget/ListView;

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method private showShareButton(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 570
    iget-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mShareButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 571
    iget-object v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mShareButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 572
    iget-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mShareButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 574
    :cond_0
    return-void

    .line 571
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private showSharePopup()V
    .locals 26

    .prologue
    .line 577
    invoke-direct/range {p0 .. p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->getShareIntent()Landroid/content/Intent;

    move-result-object v20

    .line 579
    .local v20, "intent":Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 580
    .local v4, "parent":Landroid/app/Activity;
    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v24

    .line 583
    .local v24, "packageManager":Landroid/content/pm/PackageManager;
    const/high16 v3, 0x10000

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v25

    .line 586
    .local v25, "shareOptions":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 660
    :goto_0
    return-void

    .line 589
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 590
    .local v6, "shareOptionTitles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 591
    .local v7, "shareOptionIcons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/drawable/Drawable;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 592
    .local v14, "shareOptionThreeTitles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 593
    .local v15, "shareOptionThreeIcons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/drawable/Drawable;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 594
    .local v8, "shareOptionPackageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 596
    .local v9, "shareOptionClassNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v23, 0x0

    .local v23, "option_i":I
    :goto_1
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v23

    if-ge v0, v3, :cond_2

    .line 597
    move-object/from16 v0, v25

    move/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/content/pm/ResolveInfo;

    .line 598
    .local v22, "option":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v21

    .line 599
    .local v21, "label":Ljava/lang/CharSequence;
    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    .line 600
    .local v19, "icon":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 601
    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 602
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x4

    if-le v3, v5, :cond_1

    const/4 v3, 0x3

    move/from16 v0, v23

    if-ge v0, v3, :cond_1

    .line 603
    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 604
    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 606
    :cond_1
    move-object/from16 v0, v22

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 607
    move-object/from16 v0, v22

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 596
    add-int/lit8 v23, v23, 0x1

    goto :goto_1

    .line 609
    .end local v19    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v21    # "label":Ljava/lang/CharSequence;
    .end local v22    # "option":Landroid/content/pm/ResolveInfo;
    :cond_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x4

    if-le v3, v5, :cond_3

    .line 610
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0d0081

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 611
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x106000d

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 614
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mSharePopup:Landroid/widget/ListPopupWindow;

    if-eqz v3, :cond_4

    .line 615
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mSharePopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v3}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 616
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mSharePopup:Landroid/widget/ListPopupWindow;

    .line 618
    :cond_4
    new-instance v3, Landroid/widget/ListPopupWindow;

    invoke-direct {v3, v4}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mSharePopup:Landroid/widget/ListPopupWindow;

    .line 619
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mSharePopup:Landroid/widget/ListPopupWindow;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mShareButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v5}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 620
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mSharePopup:Landroid/widget/ListPopupWindow;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 622
    new-instance v2, Lcom/android/deskclock/stopwatch/StopwatchFragment$ImageLabelAdapter;

    const v5, 0x7f04001e

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/deskclock/stopwatch/StopwatchFragment$ImageLabelAdapter;-><init>(Lcom/android/deskclock/stopwatch/StopwatchFragment;Landroid/content/Context;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 625
    .local v2, "showAllAdapter":Lcom/android/deskclock/stopwatch/StopwatchFragment$ImageLabelAdapter;
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x4

    if-le v3, v5, :cond_5

    .line 626
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mSharePopup:Landroid/widget/ListPopupWindow;

    new-instance v10, Lcom/android/deskclock/stopwatch/StopwatchFragment$ImageLabelAdapter;

    const v13, 0x7f04001e

    move-object/from16 v11, p0

    move-object v12, v4

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-object/from16 v18, v2

    invoke-direct/range {v10 .. v18}, Lcom/android/deskclock/stopwatch/StopwatchFragment$ImageLabelAdapter;-><init>(Lcom/android/deskclock/stopwatch/StopwatchFragment;Landroid/content/Context;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/deskclock/stopwatch/StopwatchFragment$ImageLabelAdapter;)V

    invoke-virtual {v3, v10}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 633
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mSharePopup:Landroid/widget/ListPopupWindow;

    new-instance v5, Lcom/android/deskclock/stopwatch/StopwatchFragment$5;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/deskclock/stopwatch/StopwatchFragment$5;-><init>(Lcom/android/deskclock/stopwatch/StopwatchFragment;)V

    invoke-virtual {v3, v5}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 652
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mSharePopup:Landroid/widget/ListPopupWindow;

    new-instance v5, Lcom/android/deskclock/stopwatch/StopwatchFragment$6;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/deskclock/stopwatch/StopwatchFragment$6;-><init>(Lcom/android/deskclock/stopwatch/StopwatchFragment;)V

    invoke-virtual {v3, v5}, Landroid/widget/ListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 658
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mSharePopup:Landroid/widget/ListPopupWindow;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v10, 0x7f090016

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v3, v5}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 659
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mSharePopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v3}, Landroid/widget/ListPopupWindow;->show()V

    goto/16 :goto_0

    .line 630
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mSharePopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v3, v2}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_2
.end method

.method private startUpdateThread()V
    .locals 2

    .prologue
    .line 880
    iget-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mTime:Lcom/android/deskclock/CircleTimerView;

    iget-object v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mTimeUpdateThread:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 881
    return-void
.end method

.method private stopUpdateThread()V
    .locals 2

    .prologue
    .line 884
    iget-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mTime:Lcom/android/deskclock/CircleTimerView;

    iget-object v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mTimeUpdateThread:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 885
    return-void
.end method

.method private updateCurrentLap(J)V
    .locals 3
    .param p1, "totalTime"    # J

    .prologue
    .line 819
    iget-object v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mLapsAdapter:Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;

    invoke-virtual {v1}, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 820
    iget-object v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mLapsAdapter:Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->getItem(I)Lcom/android/deskclock/stopwatch/StopwatchFragment$Lap;

    move-result-object v0

    .line 821
    .local v0, "curLap":Lcom/android/deskclock/stopwatch/StopwatchFragment$Lap;
    iget-object v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mLapsAdapter:Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->getItem(I)Lcom/android/deskclock/stopwatch/StopwatchFragment$Lap;

    move-result-object v1

    iget-wide v1, v1, Lcom/android/deskclock/stopwatch/StopwatchFragment$Lap;->mTotalTime:J

    sub-long v1, p1, v1

    iput-wide v1, v0, Lcom/android/deskclock/stopwatch/StopwatchFragment$Lap;->mLapTime:J

    .line 822
    iput-wide p1, v0, Lcom/android/deskclock/stopwatch/StopwatchFragment$Lap;->mTotalTime:J

    .line 826
    iget-object v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mLapsAdapter:Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;

    invoke-virtual {v1, v0}, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->updateTimeFormats(Lcom/android/deskclock/stopwatch/StopwatchFragment$Lap;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 827
    iget-object v1, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mLapsAdapter:Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 832
    .end local v0    # "curLap":Lcom/android/deskclock/stopwatch/StopwatchFragment$Lap;
    :cond_0
    :goto_0
    return-void

    .line 829
    .restart local v0    # "curLap":Lcom/android/deskclock/stopwatch/StopwatchFragment$Lap;
    :cond_1
    invoke-virtual {v0}, Lcom/android/deskclock/stopwatch/StopwatchFragment$Lap;->updateView()V

    goto :goto_0
.end method

.method private writeToSharedPref(Landroid/content/SharedPreferences;)V
    .locals 13
    .param p1, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    const-wide/16 v11, -0x1

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 903
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 904
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "sw_start_time"

    iget-wide v5, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mStartTime:J

    invoke-interface {v0, v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 905
    const-string v4, "sw_accum_time"

    iget-wide v5, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mAccumulatedTime:J

    invoke-interface {v0, v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 906
    const-string v4, "sw_state"

    iget v5, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mState:I

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 907
    iget-object v4, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mLapsAdapter:Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;

    if-eqz v4, :cond_0

    .line 908
    iget-object v4, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mLapsAdapter:Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;

    invoke-virtual {v4}, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->getLapTimes()[J

    move-result-object v3

    .line 909
    .local v3, "laps":[J
    if-eqz v3, :cond_0

    .line 910
    const-string v4, "sw_lap_num"

    array-length v5, v3

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 911
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 912
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sw_lap_time_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v3

    sub-int/2addr v5, v1

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 913
    .local v2, "key":Ljava/lang/String;
    aget-wide v4, v3, v1

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 911
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 917
    .end local v1    # "i":I
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "laps":[J
    :cond_0
    iget v4, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mState:I

    if-ne v4, v10, :cond_2

    .line 918
    const-string v4, "notif_clock_base"

    iget-wide v5, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mStartTime:J

    iget-wide v7, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mAccumulatedTime:J

    sub-long/2addr v5, v7

    invoke-interface {v0, v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 919
    const-string v4, "notif_clock_elapsed"

    invoke-interface {v0, v4, v11, v12}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 920
    const-string v4, "notif_clock_running"

    invoke-interface {v0, v4, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 930
    :cond_1
    :goto_1
    const-string v4, "sw_update_circle"

    invoke-interface {v0, v4, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 931
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 932
    return-void

    .line 921
    :cond_2
    iget v4, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mState:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 922
    const-string v4, "notif_clock_elapsed"

    iget-wide v5, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mAccumulatedTime:J

    invoke-interface {v0, v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 923
    const-string v4, "notif_clock_base"

    invoke-interface {v0, v4, v11, v12}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 924
    const-string v4, "notif_clock_running"

    invoke-interface {v0, v4, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 925
    :cond_3
    iget v4, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mState:I

    if-nez v4, :cond_1

    .line 926
    const-string v4, "notif_clock_base"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 927
    const-string v4, "notif_clock_running"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 928
    const-string v4, "notif_clock_elapsed"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v4, 0x7f0e005a

    const v2, 0x7f0e0059

    const v1, 0x7f0e0058

    const/4 v10, 0x1

    const/4 v7, 0x0

    .line 287
    const v0, 0x7f040022

    invoke-virtual {p1, v0, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    .line 289
    .local v9, "v":Landroid/view/ViewGroup;
    invoke-virtual {v9, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mLeftButton:Landroid/widget/ImageButton;

    .line 290
    iget-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mLeftButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/android/deskclock/stopwatch/StopwatchFragment$1;

    invoke-direct {v3, p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment$1;-><init>(Lcom/android/deskclock/stopwatch/StopwatchFragment;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 323
    invoke-virtual {v9, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mCenterButton:Landroid/widget/TextView;

    .line 324
    const v0, 0x7f0e005b

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mShareButton:Landroid/widget/ImageButton;

    .line 326
    iget-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mShareButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/android/deskclock/stopwatch/StopwatchFragment$2;

    invoke-direct {v3, p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment$2;-><init>(Lcom/android/deskclock/stopwatch/StopwatchFragment;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 333
    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/CircleTimerView;

    iput-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mTime:Lcom/android/deskclock/CircleTimerView;

    .line 334
    const v0, 0x7f0e0057

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/timer/CountingTimerView;

    iput-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mTimeText:Lcom/android/deskclock/timer/CountingTimerView;

    .line 335
    const v0, 0x7f0e005d

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mLapsList:Landroid/widget/ListView;

    .line 336
    iget-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mLapsList:Landroid/widget/ListView;

    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 337
    new-instance v0, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, p0, v3}, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;-><init>(Lcom/android/deskclock/stopwatch/StopwatchFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mLapsAdapter:Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;

    .line 338
    iget-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mLapsList:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mLapsAdapter:Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 341
    iget-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mTimeText:Lcom/android/deskclock/timer/CountingTimerView;

    new-instance v3, Lcom/android/deskclock/stopwatch/StopwatchFragment$3;

    invoke-direct {v3, p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment$3;-><init>(Lcom/android/deskclock/stopwatch/StopwatchFragment;)V

    invoke-virtual {v0, v3}, Lcom/android/deskclock/timer/CountingTimerView;->registerVirtualButtonAction(Ljava/lang/Runnable;)V

    .line 347
    iget-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mTimeText:Lcom/android/deskclock/timer/CountingTimerView;

    iget-object v3, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mCenterButton:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Lcom/android/deskclock/timer/CountingTimerView;->registerStopTextView(Landroid/widget/TextView;)V

    .line 348
    iget-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mTimeText:Lcom/android/deskclock/timer/CountingTimerView;

    invoke-virtual {v0, v10}, Lcom/android/deskclock/timer/CountingTimerView;->setVirtualButtonEnabled(Z)V

    .line 350
    const v0, 0x7f0e0056

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/CircleButtonsLayout;

    iput-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mCircleLayout:Lcom/android/deskclock/CircleButtonsLayout;

    .line 351
    iget-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mCircleLayout:Lcom/android/deskclock/CircleButtonsLayout;

    const v3, 0x7f0e005b

    const v5, 0x7f090067

    const v6, 0x7f09006a

    move v8, v7

    invoke-virtual/range {v0 .. v8}, Lcom/android/deskclock/CircleButtonsLayout;->setCircleTimerViewIds(IIIIIIII)V

    .line 357
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    iput-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mLayoutTransition:Landroid/animation/LayoutTransition;

    .line 358
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    iput-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mCircleLayoutTransition:Landroid/animation/LayoutTransition;

    .line 361
    iget-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mCircleLayoutTransition:Landroid/animation/LayoutTransition;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 362
    iget-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mCircleLayoutTransition:Landroid/animation/LayoutTransition;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 363
    iget-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mCircleLayoutTransition:Landroid/animation/LayoutTransition;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 364
    iget-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mCircleLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, v7}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 365
    iget-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mCircleLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, v10}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 366
    iget-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mCircleLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, v7}, Landroid/animation/LayoutTransition;->setAnimateParentHierarchy(Z)V

    .line 369
    const v0, 0x7f0e0055

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mStartSpace:Landroid/view/View;

    .line 370
    const v0, 0x7f0e005c

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mEndSpace:Landroid/view/View;

    .line 371
    iget-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mStartSpace:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mEndSpace:Landroid/view/View;

    if-eqz v0, :cond_1

    :cond_0
    move v7, v10

    :cond_1
    iput-boolean v7, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mSpacersUsed:Z

    .line 373
    iget-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mLayoutTransition:Landroid/animation/LayoutTransition;

    new-instance v1, Lcom/android/deskclock/stopwatch/StopwatchFragment$4;

    invoke-direct {v1, p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment$4;-><init>(Lcom/android/deskclock/stopwatch/StopwatchFragment;)V

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->addTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    .line 429
    return-object v9
.end method

.method public onPageChanged(I)V
    .locals 2
    .param p1, "page"    # I

    .prologue
    .line 516
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 517
    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->acquireWakeLock()V

    .line 521
    :goto_0
    return-void

    .line 519
    :cond_0
    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->releaseWakeLock()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 490
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 491
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 492
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 495
    :cond_0
    iget v2, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 496
    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->stopUpdateThread()V

    .line 500
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 501
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 502
    invoke-direct {p0, v0}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->writeToSharedPref(Landroid/content/SharedPreferences;)V

    .line 503
    iget-object v2, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mTime:Lcom/android/deskclock/CircleTimerView;

    const-string v3, "sw"

    invoke-virtual {v2, v0, v3}, Lcom/android/deskclock/CircleTimerView;->writeToSharedPref(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 504
    iget-object v2, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mTimeText:Lcom/android/deskclock/timer/CountingTimerView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/deskclock/timer/CountingTimerView;->blinkTimeStr(Z)V

    .line 505
    iget-object v2, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mSharePopup:Landroid/widget/ListPopupWindow;

    if-eqz v2, :cond_2

    .line 506
    iget-object v2, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mSharePopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v2}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 507
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mSharePopup:Landroid/widget/ListPopupWindow;

    .line 509
    :cond_2
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/deskclock/DeskClock;

    invoke-virtual {v2, p0}, Lcom/android/deskclock/DeskClock;->unregisterPageChangedListener(Lcom/android/deskclock/DeskClockFragment;)V

    .line 510
    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->releaseWakeLock()V

    .line 511
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 512
    return-void
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 461
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 462
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 463
    invoke-direct {p0, v0}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->readFromSharedPref(Landroid/content/SharedPreferences;)V

    .line 464
    iget-object v2, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mTime:Lcom/android/deskclock/CircleTimerView;

    const-string v3, "sw"

    invoke-virtual {v2, v0, v3}, Lcom/android/deskclock/CircleTimerView;->readFromSharedPref(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 465
    iget-object v2, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mTime:Lcom/android/deskclock/CircleTimerView;

    invoke-virtual {v2}, Landroid/view/View;->postInvalidate()V

    .line 467
    iget v2, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mState:I

    invoke-direct {p0, v2}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->setButtons(I)V

    .line 468
    iget-object v2, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mTimeText:Lcom/android/deskclock/timer/CountingTimerView;

    iget-wide v3, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mAccumulatedTime:J

    invoke-virtual {v2, v3, v4, v6, v6}, Lcom/android/deskclock/timer/CountingTimerView;->setTime(JZZ)V

    .line 469
    iget v2, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mState:I

    if-ne v2, v6, :cond_2

    .line 470
    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->acquireWakeLock()V

    .line 471
    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->startUpdateThread()V

    .line 475
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->showLaps()V

    .line 476
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/deskclock/DeskClock;

    invoke-virtual {v2, p0}, Lcom/android/deskclock/DeskClock;->registerPageChangedListener(Lcom/android/deskclock/DeskClockFragment;)V

    .line 478
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 479
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 480
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 482
    :cond_1
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 483
    return-void

    .line 472
    .end local v1    # "v":Landroid/view/View;
    :cond_2
    iget v2, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    iget-wide v2, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mAccumulatedTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 473
    iget-object v2, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mTimeText:Lcom/android/deskclock/timer/CountingTimerView;

    invoke-virtual {v2, v6}, Lcom/android/deskclock/timer/CountingTimerView;->blinkTimeStr(Z)V

    goto :goto_0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 1020
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1021
    const-string v0, "sw_lap_num"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "sw_lap_time_"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1023
    invoke-direct {p0, p1}, Lcom/android/deskclock/stopwatch/StopwatchFragment;->readFromSharedPref(Landroid/content/SharedPreferences;)V

    .line 1024
    const-string v0, "sw_update_circle"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1025
    iget-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mTime:Lcom/android/deskclock/CircleTimerView;

    const-string v1, "sw"

    invoke-virtual {v0, p1, v1}, Lcom/android/deskclock/CircleTimerView;->readFromSharedPref(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 1029
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 6

    .prologue
    const/16 v4, 0x8

    const/4 v2, 0x0

    .line 441
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 443
    iget-object v3, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mLapsAdapter:Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;

    invoke-virtual {v3}, Lcom/android/deskclock/stopwatch/StopwatchFragment$LapsListAdapter;->getCount()I

    move-result v3

    if-lez v3, :cond_2

    const/4 v0, 0x1

    .line 445
    .local v0, "lapsVisible":Z
    :goto_0
    iget-object v5, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mLapsList:Landroid/widget/ListView;

    if-eqz v0, :cond_3

    move v3, v2

    :goto_1
    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 446
    iget-boolean v3, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mSpacersUsed:Z

    if-eqz v3, :cond_1

    .line 447
    if-eqz v0, :cond_4

    move v1, v4

    .line 448
    .local v1, "spacersVisibility":I
    :goto_2
    iget-object v2, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mStartSpace:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 449
    iget-object v2, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mStartSpace:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 451
    :cond_0
    iget-object v2, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mEndSpace:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 452
    iget-object v2, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mEndSpace:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 455
    .end local v1    # "spacersVisibility":I
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 456
    iget-object v2, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mCircleLayout:Lcom/android/deskclock/CircleButtonsLayout;

    iget-object v3, p0, Lcom/android/deskclock/stopwatch/StopwatchFragment;->mCircleLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 457
    return-void

    .end local v0    # "lapsVisible":Z
    :cond_2
    move v0, v2

    .line 443
    goto :goto_0

    .restart local v0    # "lapsVisible":Z
    :cond_3
    move v3, v4

    .line 445
    goto :goto_1

    :cond_4
    move v1, v2

    .line 447
    goto :goto_2
.end method
