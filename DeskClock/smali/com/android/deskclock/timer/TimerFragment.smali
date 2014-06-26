.class public Lcom/android/deskclock/timer/TimerFragment;
.super Lcom/android/deskclock/DeskClockFragment;
.source "TimerFragment.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/deskclock/timer/TimerFragment$TimesUpListAdapter;,
        Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;,
        Lcom/android/deskclock/timer/TimerFragment$OnEmptyListListener;,
        Lcom/android/deskclock/timer/TimerFragment$ClickAction;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

.field private mAddTimer:Landroid/widget/ImageButton;

.field private mCancel:Landroid/widget/Button;

.field private final mClockTick:Ljava/lang/Runnable;

.field private mColumnCount:I

.field private mLastVisibleView:Landroid/view/View;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mOnEmptyListListener:Lcom/android/deskclock/timer/TimerFragment$OnEmptyListListener;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mSeperator:Landroid/view/View;

.field private mStart:Landroid/widget/Button;

.field private mTicking:Z

.field private mTimerFooter:Landroid/view/View;

.field private mTimerSetup:Lcom/android/deskclock/TimerSetupView;

.field private mTimersList:Lcom/android/deskclock/widget/sgv/StaggeredGridView;

.field private mTimersListPage:Landroid/view/View;

.field private mViewState:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 90
    invoke-direct {p0}, Lcom/android/deskclock/DeskClockFragment;-><init>()V

    .line 74
    iput-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mViewState:Landroid/os/Bundle;

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mTicking:Z

    .line 88
    iput-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mLastVisibleView:Landroid/view/View;

    .line 381
    new-instance v0, Lcom/android/deskclock/timer/TimerFragment$1;

    invoke-direct {v0, p0}, Lcom/android/deskclock/timer/TimerFragment$1;-><init>(Lcom/android/deskclock/timer/TimerFragment;)V

    iput-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mClockTick:Ljava/lang/Runnable;

    .line 91
    return-void
.end method

.method static synthetic access$000(Lcom/android/deskclock/timer/TimerFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/deskclock/timer/TimerFragment;

    .prologue
    .line 66
    iget v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mColumnCount:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/deskclock/timer/TimerFragment;)Lcom/android/deskclock/widget/sgv/StaggeredGridView;
    .locals 1
    .param p0, "x0"    # Lcom/android/deskclock/timer/TimerFragment;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimersList:Lcom/android/deskclock/widget/sgv/StaggeredGridView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/deskclock/timer/TimerFragment;)Lcom/android/deskclock/TimerSetupView;
    .locals 1
    .param p0, "x0"    # Lcom/android/deskclock/timer/TimerFragment;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimerSetup:Lcom/android/deskclock/TimerSetupView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/deskclock/timer/TimerFragment;Lcom/android/deskclock/timer/TimerObj;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/deskclock/timer/TimerFragment;
    .param p1, "x1"    # Lcom/android/deskclock/timer/TimerObj;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/android/deskclock/timer/TimerFragment;->updateTimersState(Lcom/android/deskclock/timer/TimerObj;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/deskclock/timer/TimerFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/deskclock/timer/TimerFragment;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/deskclock/timer/TimerFragment;->gotoSetupView()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/deskclock/timer/TimerFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/deskclock/timer/TimerFragment;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimersListPage:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/deskclock/timer/TimerFragment;Lcom/android/deskclock/timer/TimerFragment$ClickAction;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/deskclock/timer/TimerFragment;
    .param p1, "x1"    # Lcom/android/deskclock/timer/TimerFragment$ClickAction;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/deskclock/timer/TimerFragment;->onClickHelper(Lcom/android/deskclock/timer/TimerFragment$ClickAction;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/deskclock/timer/TimerFragment;Lcom/android/deskclock/timer/TimerObj;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/deskclock/timer/TimerFragment;
    .param p1, "x1"    # Lcom/android/deskclock/timer/TimerObj;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/deskclock/timer/TimerFragment;->setTimerButtons(Lcom/android/deskclock/timer/TimerObj;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/deskclock/timer/TimerFragment;Lcom/android/deskclock/timer/TimerObj;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/deskclock/timer/TimerFragment;
    .param p1, "x1"    # Lcom/android/deskclock/timer/TimerObj;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/deskclock/timer/TimerFragment;->onLabelPressed(Lcom/android/deskclock/timer/TimerObj;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/deskclock/timer/TimerFragment;)Lcom/android/deskclock/timer/TimerFragment$OnEmptyListListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/deskclock/timer/TimerFragment;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mOnEmptyListListener:Lcom/android/deskclock/timer/TimerFragment$OnEmptyListListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/deskclock/timer/TimerFragment;)Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/deskclock/timer/TimerFragment;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mAdapter:Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/deskclock/timer/TimerFragment;Lcom/android/deskclock/timer/TimerObj;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/deskclock/timer/TimerFragment;
    .param p1, "x1"    # Lcom/android/deskclock/timer/TimerObj;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/deskclock/timer/TimerFragment;->canAddMinute(Lcom/android/deskclock/timer/TimerObj;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/deskclock/timer/TimerFragment;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/deskclock/timer/TimerFragment;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mClockTick:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/deskclock/timer/TimerFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/deskclock/timer/TimerFragment;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/deskclock/timer/TimerFragment;->gotoTimersView()V

    return-void
.end method

.method private canAddMinute(Lcom/android/deskclock/timer/TimerObj;)Z
    .locals 4
    .param p1, "t"    # Lcom/android/deskclock/timer/TimerObj;

    .prologue
    .line 996
    const-wide/32 v0, 0x24a8858

    iget-wide v2, p1, Lcom/android/deskclock/timer/TimerObj;->mTimeLeft:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cancelTimerNotification(I)V
    .locals 1
    .param p1, "timerId"    # I

    .prologue
    .line 1014
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1015
    return-void
.end method

.method private deleteTimer(Lcom/android/deskclock/timer/TimerObj;)V
    .locals 2
    .param p1, "t"    # Lcom/android/deskclock/timer/TimerObj;

    .prologue
    .line 871
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mAdapter:Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    iget v1, p1, Lcom/android/deskclock/timer/TimerObj;->mTimerId:I

    invoke-virtual {v0, v1}, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->deleteTimer(I)V

    .line 872
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimersList:Lcom/android/deskclock/widget/sgv/StaggeredGridView;

    invoke-virtual {v0}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->setSelectionToTop()V

    .line 873
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mAdapter:Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    invoke-virtual {v0}, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 874
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mOnEmptyListListener:Lcom/android/deskclock/timer/TimerFragment$OnEmptyListListener;

    if-nez v0, :cond_1

    .line 875
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimerSetup:Lcom/android/deskclock/TimerSetupView;

    invoke-virtual {v0}, Lcom/android/deskclock/TimerSetupView;->reset()V

    .line 876
    invoke-direct {p0}, Lcom/android/deskclock/timer/TimerFragment;->gotoSetupView()V

    .line 881
    :cond_0
    :goto_0
    return-void

    .line 878
    :cond_1
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mOnEmptyListListener:Lcom/android/deskclock/timer/TimerFragment$OnEmptyListListener;

    invoke-interface {v0}, Lcom/android/deskclock/timer/TimerFragment$OnEmptyListListener;->onEmptyList()V

    goto :goto_0
.end method

.method private gotoSetupView()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 688
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mLastVisibleView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mLastVisibleView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0e0086

    if-ne v1, v2, :cond_1

    .line 689
    :cond_0
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimerSetup:Lcom/android/deskclock/TimerSetupView;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 690
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimerSetup:Lcom/android/deskclock/TimerSetupView;

    const/high16 v2, 0x3f800000

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 691
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimersListPage:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 712
    :goto_0
    invoke-direct {p0}, Lcom/android/deskclock/timer/TimerFragment;->stopClockTicks()V

    .line 713
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mAdapter:Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    invoke-virtual {v1}, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->getCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 714
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mCancel:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 715
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mSeperator:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 720
    :goto_1
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimerSetup:Lcom/android/deskclock/TimerSetupView;

    invoke-virtual {v1}, Lcom/android/deskclock/TimerSetupView;->updateStartButton()V

    .line 721
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimerSetup:Lcom/android/deskclock/TimerSetupView;

    invoke-virtual {v1}, Lcom/android/deskclock/TimerSetupView;->updateDeleteButton()V

    .line 722
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimerSetup:Lcom/android/deskclock/TimerSetupView;

    iput-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mLastVisibleView:Landroid/view/View;

    .line 723
    return-void

    .line 694
    :cond_1
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimersListPage:Landroid/view/View;

    sget-object v2, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 695
    .local v0, "a":Landroid/animation/ObjectAnimator;
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 696
    const-wide/16 v1, 0x7d

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 697
    new-instance v1, Lcom/android/deskclock/timer/TimerFragment$5;

    invoke-direct {v1, p0}, Lcom/android/deskclock/timer/TimerFragment$5;-><init>(Lcom/android/deskclock/timer/TimerFragment;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 709
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 717
    .end local v0    # "a":Landroid/animation/ObjectAnimator;
    :cond_2
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mSeperator:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 718
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mCancel:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 694
    nop

    :array_0
    .array-data 4
        0x3f800000
        0x0
    .end array-data
.end method

.method private gotoTimersView()V
    .locals 4

    .prologue
    .line 725
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mLastVisibleView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mLastVisibleView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0e0082

    if-ne v1, v2, :cond_1

    .line 726
    :cond_0
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimerSetup:Lcom/android/deskclock/TimerSetupView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 727
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimersListPage:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 728
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimersListPage:Landroid/view/View;

    const/high16 v2, 0x3f800000

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 749
    :goto_0
    invoke-direct {p0}, Lcom/android/deskclock/timer/TimerFragment;->startClockTicks()V

    .line 750
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimersListPage:Landroid/view/View;

    iput-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mLastVisibleView:Landroid/view/View;

    .line 751
    return-void

    .line 731
    :cond_1
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimerSetup:Lcom/android/deskclock/TimerSetupView;

    sget-object v2, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 732
    .local v0, "a":Landroid/animation/ObjectAnimator;
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 733
    const-wide/16 v1, 0x7d

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 734
    new-instance v1, Lcom/android/deskclock/timer/TimerFragment$6;

    invoke-direct {v1, p0}, Lcom/android/deskclock/timer/TimerFragment$6;-><init>(Lcom/android/deskclock/timer/TimerFragment;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 747
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 731
    :array_0
    .array-data 4
        0x3f800000
        0x0
    .end array-data
.end method

.method private onClickHelper(Lcom/android/deskclock/timer/TimerFragment$ClickAction;)V
    .locals 3
    .param p1, "clickAction"    # Lcom/android/deskclock/timer/TimerFragment$ClickAction;

    .prologue
    .line 760
    iget v1, p1, Lcom/android/deskclock/timer/TimerFragment$ClickAction;->mAction:I

    packed-switch v1, :pswitch_data_0

    .line 783
    :goto_0
    return-void

    .line 762
    :pswitch_0
    iget-object v0, p1, Lcom/android/deskclock/timer/TimerFragment$ClickAction;->mTimer:Lcom/android/deskclock/timer/TimerObj;

    .line 763
    .local v0, "t":Lcom/android/deskclock/timer/TimerObj;
    iget v1, v0, Lcom/android/deskclock/timer/TimerObj;->mState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 764
    iget v1, v0, Lcom/android/deskclock/timer/TimerObj;->mTimerId:I

    invoke-direct {p0, v1}, Lcom/android/deskclock/timer/TimerFragment;->cancelTimerNotification(I)V

    .line 769
    :cond_0
    const/4 v1, 0x6

    iput v1, v0, Lcom/android/deskclock/timer/TimerObj;->mState:I

    .line 770
    const-string v1, "delete_timer"

    invoke-direct {p0, v0, v1}, Lcom/android/deskclock/timer/TimerFragment;->updateTimersState(Lcom/android/deskclock/timer/TimerObj;Ljava/lang/String;)V

    goto :goto_0

    .line 773
    .end local v0    # "t":Lcom/android/deskclock/timer/TimerObj;
    :pswitch_1
    iget-object v1, p1, Lcom/android/deskclock/timer/TimerFragment$ClickAction;->mTimer:Lcom/android/deskclock/timer/TimerObj;

    invoke-direct {p0, v1}, Lcom/android/deskclock/timer/TimerFragment;->onPlusOneButtonPressed(Lcom/android/deskclock/timer/TimerObj;)V

    .line 774
    iget-object v1, p1, Lcom/android/deskclock/timer/TimerFragment$ClickAction;->mTimer:Lcom/android/deskclock/timer/TimerObj;

    invoke-direct {p0, v1}, Lcom/android/deskclock/timer/TimerFragment;->setTimerButtons(Lcom/android/deskclock/timer/TimerObj;)V

    goto :goto_0

    .line 777
    :pswitch_2
    iget-object v1, p1, Lcom/android/deskclock/timer/TimerFragment$ClickAction;->mTimer:Lcom/android/deskclock/timer/TimerObj;

    invoke-direct {p0, v1}, Lcom/android/deskclock/timer/TimerFragment;->onStopButtonPressed(Lcom/android/deskclock/timer/TimerObj;)V

    .line 778
    iget-object v1, p1, Lcom/android/deskclock/timer/TimerFragment$ClickAction;->mTimer:Lcom/android/deskclock/timer/TimerObj;

    invoke-direct {p0, v1}, Lcom/android/deskclock/timer/TimerFragment;->setTimerButtons(Lcom/android/deskclock/timer/TimerObj;)V

    goto :goto_0

    .line 760
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onLabelPressed(Lcom/android/deskclock/timer/TimerObj;)V
    .locals 5
    .param p1, "t"    # Lcom/android/deskclock/timer/TimerObj;

    .prologue
    .line 884
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 885
    .local v0, "ft":Landroid/app/FragmentTransaction;
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "label_dialog"

    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    .line 886
    .local v2, "prev":Landroid/app/Fragment;
    if-eqz v2, :cond_0

    .line 887
    invoke-virtual {v0, v2}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 889
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 892
    iget-object v3, p1, Lcom/android/deskclock/timer/TimerObj;->mLabel:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v3, v4}, Lcom/android/deskclock/LabelDialogFragment;->newInstance(Lcom/android/deskclock/timer/TimerObj;Ljava/lang/String;Ljava/lang/String;)Lcom/android/deskclock/LabelDialogFragment;

    move-result-object v1

    .line 894
    .local v1, "newFragment":Lcom/android/deskclock/LabelDialogFragment;
    const-string v3, "label_dialog"

    invoke-virtual {v1, v0, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentTransaction;Ljava/lang/String;)I

    .line 895
    return-void
.end method

.method private onPlusOneButtonPressed(Lcom/android/deskclock/timer/TimerObj;)V
    .locals 9
    .param p1, "t"    # Lcom/android/deskclock/timer/TimerObj;

    .prologue
    const-wide/32 v2, 0xea60

    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 786
    iget v0, p1, Lcom/android/deskclock/timer/TimerObj;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 820
    :goto_0
    return-void

    .line 788
    :pswitch_0
    invoke-virtual {p1, v2, v3}, Lcom/android/deskclock/timer/TimerObj;->addTime(J)V

    .line 789
    invoke-virtual {p1, v8}, Lcom/android/deskclock/timer/TimerObj;->updateTimeLeft(Z)J

    move-result-wide v6

    .line 790
    .local v6, "timeLeft":J
    iget-object v0, p1, Lcom/android/deskclock/timer/TimerObj;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/deskclock/timer/TimerListItem;

    check-cast v0, Lcom/android/deskclock/timer/TimerListItem;

    invoke-virtual {v0, v6, v7, v8}, Lcom/android/deskclock/timer/TimerListItem;->setTime(JZ)V

    .line 791
    iget-object v0, p1, Lcom/android/deskclock/timer/TimerObj;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/deskclock/timer/TimerListItem;

    check-cast v0, Lcom/android/deskclock/timer/TimerListItem;

    invoke-virtual {v0, v6, v7}, Lcom/android/deskclock/timer/TimerListItem;->setLength(J)V

    .line 792
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mAdapter:Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 793
    const-string v0, "timer_update"

    invoke-direct {p0, p1, v0}, Lcom/android/deskclock/timer/TimerFragment;->updateTimersState(Lcom/android/deskclock/timer/TimerObj;Ljava/lang/String;)V

    goto :goto_0

    .line 797
    .end local v6    # "timeLeft":J
    :pswitch_1
    iput v5, p1, Lcom/android/deskclock/timer/TimerObj;->mState:I

    .line 798
    invoke-static {}, Lcom/android/deskclock/Utils;->getTimeNow()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/deskclock/timer/TimerObj;->mStartTime:J

    .line 799
    iput-wide v2, p1, Lcom/android/deskclock/timer/TimerObj;->mOriginalLength:J

    iput-wide v2, p1, Lcom/android/deskclock/timer/TimerObj;->mTimeLeft:J

    .line 800
    iget-object v0, p1, Lcom/android/deskclock/timer/TimerObj;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/deskclock/timer/TimerListItem;

    iget-wide v1, p1, Lcom/android/deskclock/timer/TimerObj;->mTimeLeft:J

    invoke-virtual {v0, v1, v2, v8}, Lcom/android/deskclock/timer/TimerListItem;->setTime(JZ)V

    .line 801
    iget-object v0, p1, Lcom/android/deskclock/timer/TimerObj;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/deskclock/timer/TimerListItem;

    iget-wide v1, p1, Lcom/android/deskclock/timer/TimerObj;->mOriginalLength:J

    iget-wide v3, p1, Lcom/android/deskclock/timer/TimerObj;->mTimeLeft:J

    invoke-virtual/range {v0 .. v5}, Lcom/android/deskclock/timer/TimerListItem;->set(JJZ)V

    .line 802
    iget-object v0, p1, Lcom/android/deskclock/timer/TimerObj;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/deskclock/timer/TimerListItem;

    invoke-virtual {v0}, Lcom/android/deskclock/timer/TimerListItem;->start()V

    .line 803
    const-string v0, "timer_reset"

    invoke-direct {p0, p1, v0}, Lcom/android/deskclock/timer/TimerFragment;->updateTimersState(Lcom/android/deskclock/timer/TimerObj;Ljava/lang/String;)V

    .line 804
    const-string v0, "start_timer"

    invoke-direct {p0, p1, v0}, Lcom/android/deskclock/timer/TimerFragment;->updateTimersState(Lcom/android/deskclock/timer/TimerObj;Ljava/lang/String;)V

    .line 805
    invoke-direct {p0, p1}, Lcom/android/deskclock/timer/TimerFragment;->updateTimesUpMode(Lcom/android/deskclock/timer/TimerObj;)V

    .line 806
    iget v0, p1, Lcom/android/deskclock/timer/TimerObj;->mTimerId:I

    invoke-direct {p0, v0}, Lcom/android/deskclock/timer/TimerFragment;->cancelTimerNotification(I)V

    goto :goto_0

    .line 810
    :pswitch_2
    const/4 v0, 0x5

    iput v0, p1, Lcom/android/deskclock/timer/TimerObj;->mState:I

    .line 811
    iget-wide v0, p1, Lcom/android/deskclock/timer/TimerObj;->mSetupLength:J

    iput-wide v0, p1, Lcom/android/deskclock/timer/TimerObj;->mOriginalLength:J

    iput-wide v0, p1, Lcom/android/deskclock/timer/TimerObj;->mTimeLeft:J

    .line 812
    iget-object v0, p1, Lcom/android/deskclock/timer/TimerObj;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/deskclock/timer/TimerListItem;

    invoke-virtual {v0}, Lcom/android/deskclock/timer/TimerListItem;->stop()V

    .line 813
    iget-object v0, p1, Lcom/android/deskclock/timer/TimerObj;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/deskclock/timer/TimerListItem;

    iget-wide v1, p1, Lcom/android/deskclock/timer/TimerObj;->mTimeLeft:J

    invoke-virtual {v0, v1, v2, v8}, Lcom/android/deskclock/timer/TimerListItem;->setTime(JZ)V

    .line 814
    iget-object v0, p1, Lcom/android/deskclock/timer/TimerObj;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/deskclock/timer/TimerListItem;

    iget-wide v1, p1, Lcom/android/deskclock/timer/TimerObj;->mOriginalLength:J

    iget-wide v3, p1, Lcom/android/deskclock/timer/TimerObj;->mTimeLeft:J

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/android/deskclock/timer/TimerListItem;->set(JJZ)V

    .line 815
    const-string v0, "timer_reset"

    invoke-direct {p0, p1, v0}, Lcom/android/deskclock/timer/TimerFragment;->updateTimersState(Lcom/android/deskclock/timer/TimerObj;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 786
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private onStopButtonPressed(Lcom/android/deskclock/timer/TimerObj;)V
    .locals 6
    .param p1, "t"    # Lcom/android/deskclock/timer/TimerObj;

    .prologue
    const/4 v1, 0x1

    .line 823
    iget v0, p1, Lcom/android/deskclock/timer/TimerObj;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 868
    :goto_0
    :pswitch_0
    return-void

    .line 826
    :pswitch_1
    const/4 v0, 0x2

    iput v0, p1, Lcom/android/deskclock/timer/TimerObj;->mState:I

    .line 827
    iget-object v0, p1, Lcom/android/deskclock/timer/TimerObj;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/deskclock/timer/TimerListItem;

    invoke-virtual {v0}, Lcom/android/deskclock/timer/TimerListItem;->pause()V

    .line 828
    invoke-virtual {p1, v1}, Lcom/android/deskclock/timer/TimerObj;->updateTimeLeft(Z)J

    .line 829
    const-string v0, "timer_stop"

    invoke-direct {p0, p1, v0}, Lcom/android/deskclock/timer/TimerFragment;->updateTimersState(Lcom/android/deskclock/timer/TimerObj;Ljava/lang/String;)V

    goto :goto_0

    .line 833
    :pswitch_2
    iput v1, p1, Lcom/android/deskclock/timer/TimerObj;->mState:I

    .line 834
    invoke-static {}, Lcom/android/deskclock/Utils;->getTimeNow()J

    move-result-wide v0

    iget-wide v2, p1, Lcom/android/deskclock/timer/TimerObj;->mOriginalLength:J

    iget-wide v4, p1, Lcom/android/deskclock/timer/TimerObj;->mTimeLeft:J

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    iput-wide v0, p1, Lcom/android/deskclock/timer/TimerObj;->mStartTime:J

    .line 835
    iget-object v0, p1, Lcom/android/deskclock/timer/TimerObj;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/deskclock/timer/TimerListItem;

    invoke-virtual {v0}, Lcom/android/deskclock/timer/TimerListItem;->start()V

    .line 836
    const-string v0, "start_timer"

    invoke-direct {p0, p1, v0}, Lcom/android/deskclock/timer/TimerFragment;->updateTimersState(Lcom/android/deskclock/timer/TimerObj;Ljava/lang/String;)V

    goto :goto_0

    .line 839
    :pswitch_3
    iget-boolean v0, p1, Lcom/android/deskclock/timer/TimerObj;->mDeleteAfterUse:Z

    if-eqz v0, :cond_0

    .line 840
    iget v0, p1, Lcom/android/deskclock/timer/TimerObj;->mTimerId:I

    invoke-direct {p0, v0}, Lcom/android/deskclock/timer/TimerFragment;->cancelTimerNotification(I)V

    .line 844
    const/4 v0, 0x6

    iput v0, p1, Lcom/android/deskclock/timer/TimerObj;->mState:I

    .line 845
    const-string v0, "delete_timer"

    invoke-direct {p0, p1, v0}, Lcom/android/deskclock/timer/TimerFragment;->updateTimersState(Lcom/android/deskclock/timer/TimerObj;Ljava/lang/String;)V

    goto :goto_0

    .line 847
    :cond_0
    const/4 v0, 0x4

    iput v0, p1, Lcom/android/deskclock/timer/TimerObj;->mState:I

    .line 849
    iget-object v0, p1, Lcom/android/deskclock/timer/TimerObj;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 850
    iget-object v0, p1, Lcom/android/deskclock/timer/TimerObj;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/deskclock/timer/TimerListItem;

    invoke-virtual {v0}, Lcom/android/deskclock/timer/TimerListItem;->done()V

    .line 852
    :cond_1
    const-string v0, "timer_done"

    invoke-direct {p0, p1, v0}, Lcom/android/deskclock/timer/TimerFragment;->updateTimersState(Lcom/android/deskclock/timer/TimerObj;Ljava/lang/String;)V

    .line 853
    iget v0, p1, Lcom/android/deskclock/timer/TimerObj;->mTimerId:I

    invoke-direct {p0, v0}, Lcom/android/deskclock/timer/TimerFragment;->cancelTimerNotification(I)V

    .line 854
    invoke-direct {p0, p1}, Lcom/android/deskclock/timer/TimerFragment;->updateTimesUpMode(Lcom/android/deskclock/timer/TimerObj;)V

    goto :goto_0

    .line 860
    :pswitch_4
    iput v1, p1, Lcom/android/deskclock/timer/TimerObj;->mState:I

    .line 861
    invoke-static {}, Lcom/android/deskclock/Utils;->getTimeNow()J

    move-result-wide v0

    iget-wide v2, p1, Lcom/android/deskclock/timer/TimerObj;->mOriginalLength:J

    iget-wide v4, p1, Lcom/android/deskclock/timer/TimerObj;->mTimeLeft:J

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    iput-wide v0, p1, Lcom/android/deskclock/timer/TimerObj;->mStartTime:J

    .line 862
    iget-object v0, p1, Lcom/android/deskclock/timer/TimerObj;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/deskclock/timer/TimerListItem;

    invoke-virtual {v0}, Lcom/android/deskclock/timer/TimerListItem;->start()V

    .line 863
    const-string v0, "start_timer"

    invoke-direct {p0, p1, v0}, Lcom/android/deskclock/timer/TimerFragment;->updateTimersState(Lcom/android/deskclock/timer/TimerObj;Ljava/lang/String;)V

    goto :goto_0

    .line 823
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private saveViewState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 642
    const-string v1, "_setup_selected"

    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimerSetup:Lcom/android/deskclock/TimerSetupView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 643
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimerSetup:Lcom/android/deskclock/TimerSetupView;

    const-string v1, "entry_state"

    invoke-virtual {v0, p1, v1}, Lcom/android/deskclock/TimerSetupView;->saveEntryState(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 644
    return-void

    .line 642
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setTimerButtons(Lcom/android/deskclock/timer/TimerObj;)V
    .locals 13
    .param p1, "t"    # Lcom/android/deskclock/timer/TimerObj;

    .prologue
    const v6, 0x7f0d006c

    const v12, 0x7f0d0068

    const v11, 0x7f0b0017

    const/4 v10, 0x1

    const/4 v7, 0x0

    .line 905
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 906
    .local v0, "a":Landroid/content/Context;
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v8, p1, Lcom/android/deskclock/timer/TimerObj;->mView:Landroid/view/View;

    if-nez v8, :cond_1

    .line 979
    :cond_0
    :goto_0
    return-void

    .line 909
    :cond_1
    iget-object v8, p1, Lcom/android/deskclock/timer/TimerObj;->mView:Landroid/view/View;

    const v9, 0x7f0e0093

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    .line 910
    .local v3, "leftButton":Landroid/widget/ImageButton;
    iget-object v8, p1, Lcom/android/deskclock/timer/TimerObj;->mView:Landroid/view/View;

    const v9, 0x7f0e0078

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/deskclock/timer/CountingTimerView;

    .line 912
    .local v1, "countingTimerView":Lcom/android/deskclock/timer/CountingTimerView;
    iget-object v8, p1, Lcom/android/deskclock/timer/TimerObj;->mView:Landroid/view/View;

    const v9, 0x7f0e0094

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 913
    .local v5, "stop":Landroid/widget/TextView;
    iget-object v8, p1, Lcom/android/deskclock/timer/TimerObj;->mView:Landroid/view/View;

    const v9, 0x7f0e0095

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 915
    .local v2, "delete":Landroid/widget/ImageButton;
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 917
    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 918
    .local v4, "r":Landroid/content/res/Resources;
    iget v8, p1, Lcom/android/deskclock/timer/TimerObj;->mState:I

    packed-switch v8, :pswitch_data_0

    goto :goto_0

    .line 921
    :pswitch_0
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 922
    const v8, 0x7f0d006a

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 923
    const v8, 0x7f020091

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 924
    invoke-direct {p0, p1}, Lcom/android/deskclock/timer/TimerFragment;->canAddMinute(Lcom/android/deskclock/timer/TimerObj;)Z

    move-result v8

    invoke-virtual {v3, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 925
    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 926
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 927
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 928
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 929
    invoke-virtual {v1, v10}, Lcom/android/deskclock/timer/CountingTimerView;->setVirtualButtonEnabled(Z)V

    goto :goto_0

    .line 933
    :pswitch_1
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 934
    const v6, 0x7f0d006e

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 935
    const v6, 0x7f020095

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 936
    invoke-virtual {v3, v10}, Landroid/view/View;->setEnabled(Z)V

    .line 937
    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 938
    invoke-virtual {v4, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 939
    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setText(I)V

    .line 940
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 941
    invoke-virtual {v1, v10}, Lcom/android/deskclock/timer/CountingTimerView;->setVirtualButtonEnabled(Z)V

    goto/16 :goto_0

    .line 945
    :pswitch_2
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 946
    const v8, 0x7f0d006a

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 947
    const v8, 0x7f020091

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 948
    invoke-virtual {v3, v10}, Landroid/view/View;->setEnabled(Z)V

    .line 949
    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 950
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 953
    iget-boolean v8, p1, Lcom/android/deskclock/timer/TimerObj;->mDeleteAfterUse:Z

    if-eqz v8, :cond_2

    const v6, 0x7f0d006d

    :cond_2
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 954
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 955
    iget-boolean v6, p1, Lcom/android/deskclock/timer/TimerObj;->mDeleteAfterUse:Z

    if-eqz v6, :cond_3

    const/4 v6, 0x4

    :goto_1
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 956
    invoke-virtual {v1, v10}, Lcom/android/deskclock/timer/CountingTimerView;->setVirtualButtonEnabled(Z)V

    goto/16 :goto_0

    :cond_3
    move v6, v7

    .line 955
    goto :goto_1

    .line 960
    :pswitch_3
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 961
    const v6, 0x7f0d006e

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 962
    const v6, 0x7f020095

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 963
    invoke-virtual {v3, v10}, Landroid/view/View;->setEnabled(Z)V

    .line 964
    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 965
    invoke-virtual {v1, v7}, Lcom/android/deskclock/timer/CountingTimerView;->setVirtualButtonEnabled(Z)V

    goto/16 :goto_0

    .line 968
    :pswitch_4
    const/4 v6, 0x4

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 969
    invoke-virtual {v3, v10}, Landroid/view/View;->setEnabled(Z)V

    .line 970
    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 971
    invoke-virtual {v4, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 972
    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setText(I)V

    .line 973
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 974
    invoke-virtual {v1, v10}, Lcom/android/deskclock/timer/CountingTimerView;->setVirtualButtonEnabled(Z)V

    goto/16 :goto_0

    .line 918
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private startClockTicks()V
    .locals 4

    .prologue
    .line 983
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimersList:Lcom/android/deskclock/widget/sgv/StaggeredGridView;

    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mClockTick:Ljava/lang/Runnable;

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 984
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mTicking:Z

    .line 985
    return-void
.end method

.method private stopClockTicks()V
    .locals 2

    .prologue
    .line 989
    iget-boolean v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mTicking:Z

    if-eqz v0, :cond_0

    .line 990
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimersList:Lcom/android/deskclock/widget/sgv/StaggeredGridView;

    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mClockTick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 991
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mTicking:Z

    .line 993
    :cond_0
    return-void
.end method

.method private updateTimersState(Lcom/android/deskclock/timer/TimerObj;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1000
    const-string v0, "delete_timer"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1001
    invoke-direct {p0, p1}, Lcom/android/deskclock/timer/TimerFragment;->deleteTimer(Lcom/android/deskclock/timer/TimerObj;)V

    .line 1005
    :goto_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1006
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1007
    const-string v1, "timer.intent.extra"

    iget v2, p1, Lcom/android/deskclock/timer/TimerObj;->mTimerId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1009
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1010
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 1011
    return-void

    .line 1003
    :cond_0
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mPrefs:Landroid/content/SharedPreferences;

    invoke-virtual {p1, v0}, Lcom/android/deskclock/timer/TimerObj;->writeToSharedPref(Landroid/content/SharedPreferences;)V

    goto :goto_0
.end method

.method private updateTimesUpMode(Lcom/android/deskclock/timer/TimerObj;)V
    .locals 2
    .param p1, "timerObj"    # Lcom/android/deskclock/timer/TimerObj;

    .prologue
    .line 1018
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mOnEmptyListListener:Lcom/android/deskclock/timer/TimerFragment$OnEmptyListListener;

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/android/deskclock/timer/TimerObj;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 1019
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mAdapter:Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->removeTimer(Lcom/android/deskclock/timer/TimerObj;)V

    .line 1020
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mAdapter:Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    invoke-virtual {v0}, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 1021
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mOnEmptyListListener:Lcom/android/deskclock/timer/TimerFragment$OnEmptyListListener;

    invoke-interface {v0}, Lcom/android/deskclock/timer/TimerFragment$OnEmptyListListener;->onEmptyList()V

    .line 1026
    :cond_0
    :goto_0
    return-void

    .line 1023
    :cond_1
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mOnEmptyListListener:Lcom/android/deskclock/timer/TimerFragment$OnEmptyListListener;

    invoke-interface {v0}, Lcom/android/deskclock/timer/TimerFragment$OnEmptyListListener;->onListChanged()V

    goto :goto_0
.end method


# virtual methods
.method createAdapter(Landroid/content/Context;Landroid/content/SharedPreferences;)Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mOnEmptyListListener:Lcom/android/deskclock/timer/TimerFragment$OnEmptyListListener;

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;-><init>(Lcom/android/deskclock/timer/TimerFragment;Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 117
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/deskclock/timer/TimerFragment$TimesUpListAdapter;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/deskclock/timer/TimerFragment$TimesUpListAdapter;-><init>(Lcom/android/deskclock/timer/TimerFragment;Landroid/content/Context;Landroid/content/SharedPreferences;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 755
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/timer/TimerFragment$ClickAction;

    .line 756
    .local v0, "tag":Lcom/android/deskclock/timer/TimerFragment$ClickAction;
    invoke-direct {p0, v0}, Lcom/android/deskclock/timer/TimerFragment;->onClickHelper(Lcom/android/deskclock/timer/TimerFragment$ClickAction;)V

    .line 757
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 432
    if-eqz p1, :cond_0

    .line 433
    iput-object p1, p0, Lcom/android/deskclock/timer/TimerFragment;->mViewState:Landroid/os/Bundle;

    .line 436
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 437
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 443
    const v4, 0x7f04002a

    invoke-virtual {p1, v4, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 446
    .local v3, "v":Landroid/view/View;
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 447
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v4, "times_up"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 448
    const-string v4, "times_up"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 450
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/android/deskclock/timer/TimerFragment$OnEmptyListListener;

    iput-object v4, p0, Lcom/android/deskclock/timer/TimerFragment;->mOnEmptyListListener:Lcom/android/deskclock/timer/TimerFragment$OnEmptyListListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 457
    :cond_0
    :goto_0
    const v4, 0x7f0e0083

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/deskclock/widget/sgv/StaggeredGridView;

    iput-object v4, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimersList:Lcom/android/deskclock/widget/sgv/StaggeredGridView;

    .line 459
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f08000a

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/android/deskclock/timer/TimerFragment;->mColumnCount:I

    .line 460
    iget-object v4, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimersList:Lcom/android/deskclock/widget/sgv/StaggeredGridView;

    iget v6, p0, Lcom/android/deskclock/timer/TimerFragment;->mColumnCount:I

    invoke-virtual {v4, v6}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->setColumnCount(I)V

    .line 463
    iget-object v4, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimersList:Lcom/android/deskclock/widget/sgv/StaggeredGridView;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->setGuardAgainstJaggedEdges(Z)V

    .line 465
    const v4, 0x7f0e0082

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimersListPage:Landroid/view/View;

    .line 466
    const v4, 0x7f0e0086

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/deskclock/TimerSetupView;

    iput-object v4, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimerSetup:Lcom/android/deskclock/TimerSetupView;

    .line 467
    const v4, 0x7f0e007e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/deskclock/timer/TimerFragment;->mSeperator:Landroid/view/View;

    .line 468
    const v4, 0x7f0e007d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/deskclock/timer/TimerFragment;->mCancel:Landroid/widget/Button;

    .line 469
    iget-object v4, p0, Lcom/android/deskclock/timer/TimerFragment;->mCancel:Landroid/widget/Button;

    new-instance v6, Lcom/android/deskclock/timer/TimerFragment$2;

    invoke-direct {v6, p0}, Lcom/android/deskclock/timer/TimerFragment$2;-><init>(Lcom/android/deskclock/timer/TimerFragment;)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 477
    const v4, 0x7f0e007f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/deskclock/timer/TimerFragment;->mStart:Landroid/widget/Button;

    .line 478
    iget-object v4, p0, Lcom/android/deskclock/timer/TimerFragment;->mStart:Landroid/widget/Button;

    new-instance v6, Lcom/android/deskclock/timer/TimerFragment$3;

    invoke-direct {v6, p0}, Lcom/android/deskclock/timer/TimerFragment$3;-><init>(Lcom/android/deskclock/timer/TimerFragment;)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 500
    iget-object v4, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimerSetup:Lcom/android/deskclock/TimerSetupView;

    iget-object v6, p0, Lcom/android/deskclock/timer/TimerFragment;->mStart:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Lcom/android/deskclock/TimerSetupView;->registerStartButton(Landroid/widget/Button;)V

    .line 501
    const v4, 0x7f0e0085

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/android/deskclock/timer/TimerFragment;->mAddTimer:Landroid/widget/ImageButton;

    .line 502
    iget-object v4, p0, Lcom/android/deskclock/timer/TimerFragment;->mAddTimer:Landroid/widget/ImageButton;

    new-instance v6, Lcom/android/deskclock/timer/TimerFragment$4;

    invoke-direct {v6, p0}, Lcom/android/deskclock/timer/TimerFragment$4;-><init>(Lcom/android/deskclock/timer/TimerFragment;)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 512
    iget-object v4, p0, Lcom/android/deskclock/timer/TimerFragment;->mAddTimer:Landroid/widget/ImageButton;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 514
    .local v2, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_1

    .line 515
    const v4, 0x800005

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 519
    :goto_1
    iget-object v4, p0, Lcom/android/deskclock/timer/TimerFragment;->mAddTimer:Landroid/widget/ImageButton;

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 521
    const v4, 0x7f0e0084

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimerFooter:Landroid/view/View;

    .line 522
    iget-object v6, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimerFooter:Landroid/view/View;

    iget-object v4, p0, Lcom/android/deskclock/timer/TimerFragment;->mOnEmptyListListener:Lcom/android/deskclock/timer/TimerFragment$OnEmptyListListener;

    if-nez v4, :cond_2

    move v4, v5

    :goto_2
    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    .line 523
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/android/deskclock/timer/TimerFragment;->mPrefs:Landroid/content/SharedPreferences;

    .line 524
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "notification"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    iput-object v4, p0, Lcom/android/deskclock/timer/TimerFragment;->mNotificationManager:Landroid/app/NotificationManager;

    .line 527
    return-object v3

    .line 451
    .end local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :catch_0
    move-exception v1

    .line 452
    .local v1, "e":Ljava/lang/ClassCastException;
    const-string v4, "TimerFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " must implement OnEmptyListListener"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 517
    .end local v1    # "e":Ljava/lang/ClassCastException;
    .restart local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    const/16 v4, 0x11

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_1

    .line 522
    :cond_2
    const/16 v4, 0x8

    goto :goto_2
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 532
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mViewState:Landroid/os/Bundle;

    .line 533
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mViewState:Landroid/os/Bundle;

    invoke-direct {p0, v0}, Lcom/android/deskclock/timer/TimerFragment;->saveViewState(Landroid/os/Bundle;)V

    .line 534
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 535
    return-void
.end method

.method public onPageChanged(I)V
    .locals 1
    .param p1, "page"    # I

    .prologue
    .line 623
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mAdapter:Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    if-eqz v0, :cond_0

    .line 624
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mAdapter:Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    invoke-virtual {v0}, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->sort()V

    .line 626
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 603
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/android/deskclock/DeskClock;

    if-eqz v1, :cond_0

    .line 604
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/deskclock/DeskClock;

    invoke-virtual {v1, p0}, Lcom/android/deskclock/DeskClock;->unregisterPageChangedListener(Lcom/android/deskclock/DeskClockFragment;)V

    .line 606
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 607
    invoke-direct {p0}, Lcom/android/deskclock/timer/TimerFragment;->stopClockTicks()V

    .line 608
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mAdapter:Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    if-eqz v1, :cond_1

    .line 609
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mAdapter:Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    invoke-virtual {v1}, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->saveGlobalState()V

    .line 611
    :cond_1
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 615
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 616
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 617
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 619
    :cond_2
    return-void
.end method

.method public onResume()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/16 v11, 0x8

    const/4 v10, 0x0

    .line 539
    const/4 v4, 0x0

    .line 541
    .local v4, "newIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    instance-of v7, v7, Lcom/android/deskclock/DeskClock;

    if-eqz v7, :cond_0

    .line 542
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/DeskClock;

    .line 543
    .local v0, "activity":Lcom/android/deskclock/DeskClock;
    invoke-virtual {v0, p0}, Lcom/android/deskclock/DeskClock;->registerPageChangedListener(Lcom/android/deskclock/DeskClockFragment;)V

    .line 544
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 546
    .end local v0    # "activity":Lcom/android/deskclock/DeskClock;
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 547
    iget-object v7, p0, Lcom/android/deskclock/timer/TimerFragment;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v7, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 549
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iget-object v8, p0, Lcom/android/deskclock/timer/TimerFragment;->mPrefs:Landroid/content/SharedPreferences;

    invoke-virtual {p0, v7, v8}, Lcom/android/deskclock/timer/TimerFragment;->createAdapter(Landroid/content/Context;Landroid/content/SharedPreferences;)Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    move-result-object v7

    iput-object v7, p0, Lcom/android/deskclock/timer/TimerFragment;->mAdapter:Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    .line 550
    iget-object v7, p0, Lcom/android/deskclock/timer/TimerFragment;->mAdapter:Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    invoke-virtual {v7, v12}, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 553
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f09006e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 554
    .local v1, "dividerHeight":F
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    instance-of v7, v7, Lcom/android/deskclock/DeskClock;

    if-eqz v7, :cond_1

    .line 559
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f040008

    iget-object v9, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimersList:Lcom/android/deskclock/widget/sgv/StaggeredGridView;

    invoke-virtual {v7, v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 561
    .local v3, "footerView":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 562
    .local v5, "params":Landroid/view/ViewGroup$LayoutParams;
    iget v7, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v7, v7

    sub-float/2addr v7, v1

    float-to-int v7, v7

    iput v7, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 563
    invoke-virtual {v3, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 564
    const v7, 0x7f0b0009

    invoke-virtual {v3, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 565
    iget-object v7, p0, Lcom/android/deskclock/timer/TimerFragment;->mAdapter:Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    invoke-virtual {v7, v3}, Lcom/android/deskclock/widget/sgv/GridAdapter;->setFooterView(Landroid/view/View;)V

    .line 568
    .end local v3    # "footerView":Landroid/view/View;
    .end local v5    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    iget-object v7, p0, Lcom/android/deskclock/timer/TimerFragment;->mPrefs:Landroid/content/SharedPreferences;

    const-string v8, "from_notification"

    invoke-interface {v7, v8, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 571
    iget-object v7, p0, Lcom/android/deskclock/timer/TimerFragment;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 572
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v7, "from_notification"

    invoke-interface {v2, v7, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 573
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 575
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_2
    iget-object v7, p0, Lcom/android/deskclock/timer/TimerFragment;->mPrefs:Landroid/content/SharedPreferences;

    const-string v8, "from_alert"

    invoke-interface {v7, v8, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 578
    iget-object v7, p0, Lcom/android/deskclock/timer/TimerFragment;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 579
    .restart local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v7, "from_alert"

    invoke-interface {v2, v7, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 580
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 583
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_3
    iget-object v7, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimersList:Lcom/android/deskclock/widget/sgv/StaggeredGridView;

    iget-object v8, p0, Lcom/android/deskclock/timer/TimerFragment;->mAdapter:Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    invoke-virtual {v7, v8}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->setAdapter(Lcom/android/deskclock/widget/sgv/GridAdapter;)V

    .line 584
    iget-object v7, p0, Lcom/android/deskclock/timer/TimerFragment;->mAdapter:Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    invoke-virtual {v7}, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->getCount()I

    move-result v7

    if-nez v7, :cond_4

    .line 585
    iget-object v7, p0, Lcom/android/deskclock/timer/TimerFragment;->mCancel:Landroid/widget/Button;

    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    .line 586
    iget-object v7, p0, Lcom/android/deskclock/timer/TimerFragment;->mSeperator:Landroid/view/View;

    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    .line 588
    :cond_4
    iput-object v12, p0, Lcom/android/deskclock/timer/TimerFragment;->mLastVisibleView:Landroid/view/View;

    .line 589
    invoke-virtual {p0}, Lcom/android/deskclock/timer/TimerFragment;->setPage()V

    .line 591
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v6

    .line 592
    .local v6, "v":Landroid/view/View;
    if-eqz v6, :cond_5

    .line 593
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    .line 596
    :cond_5
    if-eqz v4, :cond_6

    .line 597
    invoke-virtual {p0, v4}, Lcom/android/deskclock/timer/TimerFragment;->processIntent(Landroid/content/Intent;)V

    .line 599
    :cond_6
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 630
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 631
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mAdapter:Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    if-eqz v0, :cond_0

    .line 632
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mAdapter:Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 634
    :cond_0
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimerSetup:Lcom/android/deskclock/TimerSetupView;

    if-eqz v0, :cond_2

    .line 635
    invoke-direct {p0, p1}, Lcom/android/deskclock/timer/TimerFragment;->saveViewState(Landroid/os/Bundle;)V

    .line 639
    :cond_1
    :goto_0
    return-void

    .line 636
    :cond_2
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mViewState:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    .line 637
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mViewState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1044
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mPrefs:Landroid/content/SharedPreferences;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1045
    const-string v1, "from_alert"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "from_alert"

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "from_notification"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "from_notification"

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1050
    :cond_1
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1051
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p2, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1052
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1053
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/deskclock/timer/TimerFragment;->mPrefs:Landroid/content/SharedPreferences;

    invoke-virtual {p0, v1, v2}, Lcom/android/deskclock/timer/TimerFragment;->createAdapter(Landroid/content/Context;Landroid/content/SharedPreferences;)Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mAdapter:Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    .line 1054
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mAdapter:Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1055
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimersList:Lcom/android/deskclock/widget/sgv/StaggeredGridView;

    iget-object v2, p0, Lcom/android/deskclock/timer/TimerFragment;->mAdapter:Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    invoke-virtual {v1, v2}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->setAdapter(Lcom/android/deskclock/widget/sgv/GridAdapter;)V

    .line 1058
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_2
    return-void
.end method

.method public processIntent(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 1037
    const-string v0, "deskclock.timers.gotosetup"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1038
    invoke-direct {p0}, Lcom/android/deskclock/timer/TimerFragment;->gotoSetupView()V

    .line 1040
    :cond_0
    return-void
.end method

.method public restartAdapter()V
    .locals 2

    .prologue
    .line 1029
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mPrefs:Landroid/content/SharedPreferences;

    invoke-virtual {p0, v0, v1}, Lcom/android/deskclock/timer/TimerFragment;->createAdapter(Landroid/content/Context;Landroid/content/SharedPreferences;)Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mAdapter:Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    .line 1030
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mAdapter:Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1031
    return-void
.end method

.method public setLabel(Lcom/android/deskclock/timer/TimerObj;Ljava/lang/String;)V
    .locals 3
    .param p1, "timer"    # Lcom/android/deskclock/timer/TimerObj;
    .param p2, "label"    # Ljava/lang/String;

    .prologue
    .line 898
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mAdapter:Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mAdapter:Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    iget v2, p1, Lcom/android/deskclock/timer/TimerObj;->mTimerId:I

    invoke-virtual {v1, v2}, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->findTimerPositionById(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->getItem(I)Lcom/android/deskclock/timer/TimerObj;

    move-result-object v0

    iput-object p2, v0, Lcom/android/deskclock/timer/TimerObj;->mLabel:Ljava/lang/String;

    .line 899
    const-string v0, "timer_update"

    invoke-direct {p0, p1, v0}, Lcom/android/deskclock/timer/TimerFragment;->updateTimersState(Lcom/android/deskclock/timer/TimerObj;Ljava/lang/String;)V

    .line 901
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerFragment;->mAdapter:Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 902
    return-void
.end method

.method public setPage()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 648
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mViewState:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 649
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mViewState:Landroid/os/Bundle;

    const-string v2, "_setup_selected"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 650
    .local v0, "switchToSetupView":Z
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mTimerSetup:Lcom/android/deskclock/TimerSetupView;

    iget-object v2, p0, Lcom/android/deskclock/timer/TimerFragment;->mViewState:Landroid/os/Bundle;

    const-string v3, "entry_state"

    invoke-virtual {v1, v2, v3}, Lcom/android/deskclock/TimerSetupView;->restoreEntryState(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 651
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mViewState:Landroid/os/Bundle;

    .line 655
    :goto_0
    if-eqz v0, :cond_2

    .line 656
    invoke-direct {p0}, Lcom/android/deskclock/timer/TimerFragment;->gotoSetupView()V

    .line 660
    :goto_1
    return-void

    .line 653
    .end local v0    # "switchToSetupView":Z
    :cond_0
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerFragment;->mAdapter:Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    invoke-virtual {v1}, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .restart local v0    # "switchToSetupView":Z
    :cond_1
    goto :goto_0

    .line 658
    :cond_2
    invoke-direct {p0}, Lcom/android/deskclock/timer/TimerFragment;->gotoTimersView()V

    goto :goto_1
.end method

.method public stopAllTimesUpTimers()V
    .locals 7

    .prologue
    .line 663
    const/4 v2, 0x0

    .line 667
    .local v2, "notifyChange":Z
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 668
    .local v4, "timesupTimers":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/deskclock/timer/TimerObj;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/deskclock/timer/TimerFragment;->mAdapter:Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    invoke-virtual {v5}, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->getCount()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 669
    iget-object v5, p0, Lcom/android/deskclock/timer/TimerFragment;->mAdapter:Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;

    invoke-virtual {v5, v1}, Lcom/android/deskclock/timer/TimerFragment$TimersListAdapter;->getItem(I)Lcom/android/deskclock/timer/TimerObj;

    move-result-object v3

    .line 670
    .local v3, "timerObj":Lcom/android/deskclock/timer/TimerObj;
    iget v5, v3, Lcom/android/deskclock/timer/TimerObj;->mState:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    .line 671
    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 672
    const/4 v2, 0x1

    .line 668
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 676
    .end local v3    # "timerObj":Lcom/android/deskclock/timer/TimerObj;
    :cond_1
    :goto_1
    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 677
    invoke-virtual {v4}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/deskclock/timer/TimerObj;

    invoke-direct {p0, v5}, Lcom/android/deskclock/timer/TimerFragment;->onStopButtonPressed(Lcom/android/deskclock/timer/TimerObj;)V

    goto :goto_1

    .line 680
    :cond_2
    if-eqz v2, :cond_3

    .line 681
    iget-object v5, p0, Lcom/android/deskclock/timer/TimerFragment;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 682
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "from_alert"

    const/4 v6, 0x1

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 683
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 685
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_3
    return-void
.end method
