.class public Lcom/android/deskclock/AlarmClockFragment;
.super Lcom/android/deskclock/DeskClockFragment;
.source "AlarmClockFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/android/datetimepicker/time/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/deskclock/DeskClockFragment;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Lcom/android/datetimepicker/time/TimePickerDialog$OnTimeSetListener;",
        "Landroid/view/View$OnTouchListener;"
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;

.field private mAddAlarmButton:Landroid/widget/ImageView;

.field private mAddedAlarm:Lcom/android/deskclock/provider/Alarm;

.field private mAlarmsList:Landroid/widget/ListView;

.field private mAlarmsView:Landroid/view/View;

.field private mCollapseInterpolator:Landroid/view/animation/Interpolator;

.field private mCursorLoader:Landroid/content/Loader;

.field private mDeletedAlarm:Lcom/android/deskclock/provider/Alarm;

.field private mEmptyView:Landroid/view/View;

.field private mExpandInterpolator:Landroid/view/animation/Interpolator;

.field private mFadeIn:Landroid/animation/Animator;

.field private mFadeOut:Landroid/animation/Animator;

.field private mFooterView:Landroid/view/View;

.field private mItemIdTopMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRingtoneTitleCache:Landroid/os/Bundle;

.field private mScrollToAlarmId:J

.field private mSelectedAlarm:Lcom/android/deskclock/provider/Alarm;

.field private mTimelineLayout:Landroid/view/View;

.field private mTimelineView:Lcom/android/deskclock/AlarmTimelineView;

.field private mTimelineViewWidth:I

.field private mUndoBar:Lcom/android/deskclock/widget/ActionableToastBar;

.field private mUndoBarInitialMargin:I

.field private mUndoFrame:Landroid/view/View;

.field private mUndoShowing:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/android/deskclock/DeskClockFragment;-><init>()V

    .line 126
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mScrollToAlarmId:J

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mCursorLoader:Landroid/content/Loader;

    .line 133
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mUndoShowing:Z

    .line 145
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mItemIdTopMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 149
    return-void
.end method

.method static synthetic access$000(Lcom/android/deskclock/AlarmClockFragment;ZLandroid/view/MotionEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/deskclock/AlarmClockFragment;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Landroid/view/MotionEvent;

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Lcom/android/deskclock/AlarmClockFragment;->hideUndoBar(ZLandroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/deskclock/AlarmClockFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/deskclock/AlarmClockFragment;

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/deskclock/AlarmClockFragment;->startCreatingAlarm()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/deskclock/AlarmClockFragment;)Landroid/view/animation/Interpolator;
    .locals 1
    .param p0, "x0"    # Lcom/android/deskclock/AlarmClockFragment;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mCollapseInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/deskclock/AlarmClockFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/deskclock/AlarmClockFragment;

    .prologue
    .line 84
    iget v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mTimelineViewWidth:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/deskclock/AlarmClockFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/deskclock/AlarmClockFragment;

    .prologue
    .line 84
    iget v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mUndoBarInitialMargin:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/deskclock/AlarmClockFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/deskclock/AlarmClockFragment;
    .param p1, "x1"    # I

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/android/deskclock/AlarmClockFragment;->setUndoBarRightMargin(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/deskclock/AlarmClockFragment;)Lcom/android/deskclock/AlarmTimelineView;
    .locals 1
    .param p0, "x0"    # Lcom/android/deskclock/AlarmClockFragment;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mTimelineView:Lcom/android/deskclock/AlarmTimelineView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/deskclock/AlarmClockFragment;)Landroid/animation/Animator;
    .locals 1
    .param p0, "x0"    # Lcom/android/deskclock/AlarmClockFragment;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mFadeOut:Landroid/animation/Animator;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/deskclock/AlarmClockFragment;)Landroid/view/animation/Interpolator;
    .locals 1
    .param p0, "x0"    # Lcom/android/deskclock/AlarmClockFragment;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mExpandInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/deskclock/AlarmClockFragment;Lcom/android/deskclock/provider/Alarm;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/deskclock/AlarmClockFragment;
    .param p1, "x1"    # Lcom/android/deskclock/provider/Alarm;

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/android/deskclock/AlarmClockFragment;->asyncAddAlarm(Lcom/android/deskclock/provider/Alarm;)V

    return-void
.end method

.method static synthetic access$1802(Lcom/android/deskclock/AlarmClockFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/deskclock/AlarmClockFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/android/deskclock/AlarmClockFragment;->mUndoShowing:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/deskclock/AlarmClockFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/deskclock/AlarmClockFragment;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mEmptyView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/deskclock/AlarmClockFragment;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/deskclock/AlarmClockFragment;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mItemIdTopMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/deskclock/AlarmClockFragment;)Lcom/android/deskclock/provider/Alarm;
    .locals 1
    .param p0, "x0"    # Lcom/android/deskclock/AlarmClockFragment;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mAddedAlarm:Lcom/android/deskclock/provider/Alarm;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/deskclock/AlarmClockFragment;Lcom/android/deskclock/provider/Alarm;)Lcom/android/deskclock/provider/Alarm;
    .locals 0
    .param p0, "x0"    # Lcom/android/deskclock/AlarmClockFragment;
    .param p1, "x1"    # Lcom/android/deskclock/provider/Alarm;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/deskclock/AlarmClockFragment;->mAddedAlarm:Lcom/android/deskclock/provider/Alarm;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/android/deskclock/AlarmClockFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/android/deskclock/AlarmClockFragment;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mAlarmsList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/android/deskclock/AlarmClockFragment;Lcom/android/deskclock/provider/Alarm;)Lcom/android/deskclock/provider/Alarm;
    .locals 0
    .param p0, "x0"    # Lcom/android/deskclock/AlarmClockFragment;
    .param p1, "x1"    # Lcom/android/deskclock/provider/Alarm;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/deskclock/AlarmClockFragment;->mSelectedAlarm:Lcom/android/deskclock/provider/Alarm;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/android/deskclock/AlarmClockFragment;Lcom/android/deskclock/provider/Alarm;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/deskclock/AlarmClockFragment;
    .param p1, "x1"    # Lcom/android/deskclock/provider/Alarm;
    .param p2, "x2"    # Z

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Lcom/android/deskclock/AlarmClockFragment;->asyncUpdateAlarm(Lcom/android/deskclock/provider/Alarm;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/deskclock/AlarmClockFragment;)Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/deskclock/AlarmClockFragment;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mAdapter:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/deskclock/AlarmClockFragment;Lcom/android/deskclock/provider/Alarm;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/deskclock/AlarmClockFragment;
    .param p1, "x1"    # Lcom/android/deskclock/provider/Alarm;
    .param p2, "x2"    # Landroid/view/View;

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Lcom/android/deskclock/AlarmClockFragment;->asyncDeleteAlarm(Lcom/android/deskclock/provider/Alarm;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/deskclock/AlarmClockFragment;Lcom/android/deskclock/provider/Alarm;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/deskclock/AlarmClockFragment;
    .param p1, "x1"    # Lcom/android/deskclock/provider/Alarm;

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/android/deskclock/AlarmClockFragment;->showLabelDialog(Lcom/android/deskclock/provider/Alarm;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/deskclock/AlarmClockFragment;)Lcom/android/deskclock/provider/Alarm;
    .locals 1
    .param p0, "x0"    # Lcom/android/deskclock/AlarmClockFragment;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mDeletedAlarm:Lcom/android/deskclock/provider/Alarm;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/deskclock/AlarmClockFragment;Lcom/android/deskclock/provider/Alarm;)Lcom/android/deskclock/provider/Alarm;
    .locals 0
    .param p0, "x0"    # Lcom/android/deskclock/AlarmClockFragment;
    .param p1, "x1"    # Lcom/android/deskclock/provider/Alarm;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/deskclock/AlarmClockFragment;->mDeletedAlarm:Lcom/android/deskclock/provider/Alarm;

    return-object p1
.end method

.method static synthetic access$4200(Lcom/android/deskclock/AlarmClockFragment;Lcom/android/deskclock/provider/Alarm;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/deskclock/AlarmClockFragment;
    .param p1, "x1"    # Lcom/android/deskclock/provider/Alarm;

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/android/deskclock/AlarmClockFragment;->launchRingTonePicker(Lcom/android/deskclock/provider/Alarm;)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/deskclock/AlarmClockFragment;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Lcom/android/deskclock/AlarmClockFragment;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mRingtoneTitleCache:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$4502(Lcom/android/deskclock/AlarmClockFragment;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/deskclock/AlarmClockFragment;
    .param p1, "x1"    # J

    .prologue
    .line 84
    iput-wide p1, p0, Lcom/android/deskclock/AlarmClockFragment;->mScrollToAlarmId:J

    return-wide p1
.end method

.method static synthetic access$4600(Landroid/content/Context;Lcom/android/deskclock/provider/Alarm;)Lcom/android/deskclock/provider/AlarmInstance;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Lcom/android/deskclock/provider/Alarm;

    .prologue
    .line 84
    invoke-static {p0, p1}, Lcom/android/deskclock/AlarmClockFragment;->setupAlarmInstance(Landroid/content/Context;Lcom/android/deskclock/provider/Alarm;)Lcom/android/deskclock/provider/AlarmInstance;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/deskclock/AlarmClockFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/deskclock/AlarmClockFragment;

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/deskclock/AlarmClockFragment;->showUndoBar()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/deskclock/AlarmClockFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/deskclock/AlarmClockFragment;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mAddAlarmButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/deskclock/AlarmClockFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/deskclock/AlarmClockFragment;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mTimelineLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/deskclock/AlarmClockFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/deskclock/AlarmClockFragment;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mAlarmsView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/deskclock/AlarmClockFragment;)Landroid/animation/Animator;
    .locals 1
    .param p0, "x0"    # Lcom/android/deskclock/AlarmClockFragment;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mFadeIn:Landroid/animation/Animator;

    return-object v0
.end method

.method private asyncAddAlarm(Lcom/android/deskclock/provider/Alarm;)V
    .locals 3
    .param p1, "alarm"    # Lcom/android/deskclock/provider/Alarm;

    .prologue
    .line 1732
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1733
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/android/deskclock/AlarmClockFragment$8;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/deskclock/AlarmClockFragment$8;-><init>(Lcom/android/deskclock/AlarmClockFragment;Landroid/content/Context;Lcom/android/deskclock/provider/Alarm;)V

    .line 1777
    .local v1, "updateTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Lcom/android/deskclock/provider/AlarmInstance;>;"
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1778
    return-void
.end method

.method private asyncDeleteAlarm(Lcom/android/deskclock/provider/Alarm;Landroid/view/View;)V
    .locals 3
    .param p1, "alarm"    # Lcom/android/deskclock/provider/Alarm;
    .param p2, "viewToRemove"    # Landroid/view/View;

    .prologue
    .line 1691
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1692
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/android/deskclock/AlarmClockFragment$7;

    invoke-direct {v1, p0, p2, v0, p1}, Lcom/android/deskclock/AlarmClockFragment$7;-><init>(Lcom/android/deskclock/AlarmClockFragment;Landroid/view/View;Landroid/content/Context;Lcom/android/deskclock/provider/Alarm;)V

    .line 1727
    .local v1, "deleteTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/deskclock/AlarmClockFragment;->mUndoShowing:Z

    .line 1728
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1729
    return-void
.end method

.method private asyncUpdateAlarm(Lcom/android/deskclock/provider/Alarm;Z)V
    .locals 3
    .param p1, "alarm"    # Lcom/android/deskclock/provider/Alarm;
    .param p2, "popToast"    # Z

    .prologue
    .line 1781
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1782
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/android/deskclock/AlarmClockFragment$9;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/android/deskclock/AlarmClockFragment$9;-><init>(Lcom/android/deskclock/AlarmClockFragment;Landroid/content/Context;Lcom/android/deskclock/provider/Alarm;Z)V

    .line 1807
    .local v1, "updateTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Lcom/android/deskclock/provider/AlarmInstance;>;"
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1808
    return-void
.end method

.method private hideUndoBar(ZLandroid/view/MotionEvent;)V
    .locals 2
    .param p1, "animate"    # Z
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 489
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mUndoBar:Lcom/android/deskclock/widget/ActionableToastBar;

    if-eqz v0, :cond_1

    .line 490
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mUndoFrame:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 491
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mUndoBar:Lcom/android/deskclock/widget/ActionableToastBar;

    invoke-virtual {v0, p2}, Lcom/android/deskclock/widget/ActionableToastBar;->isEventInToastBar(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 499
    :goto_0
    return-void

    .line 495
    :cond_0
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mUndoBar:Lcom/android/deskclock/widget/ActionableToastBar;

    invoke-virtual {v0, p1}, Lcom/android/deskclock/widget/ActionableToastBar;->hide(Z)V

    .line 497
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mDeletedAlarm:Lcom/android/deskclock/provider/Alarm;

    .line 498
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mUndoShowing:Z

    goto :goto_0
.end method

.method private launchRingTonePicker(Lcom/android/deskclock/provider/Alarm;)V
    .locals 4
    .param p1, "alarm"    # Lcom/android/deskclock/provider/Alarm;

    .prologue
    .line 635
    iput-object p1, p0, Lcom/android/deskclock/AlarmClockFragment;->mSelectedAlarm:Lcom/android/deskclock/provider/Alarm;

    .line 636
    sget-object v2, Lcom/android/deskclock/provider/Alarm;->NO_RINGTONE_URI:Landroid/net/Uri;

    iget-object v3, p1, Lcom/android/deskclock/provider/Alarm;->alert:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    .line 637
    .local v1, "oldRingtone":Landroid/net/Uri;
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.RINGTONE_PICKER"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 638
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 639
    const-string v2, "android.intent.extra.ringtone.TYPE"

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 640
    const-string v2, "android.intent.extra.ringtone.SHOW_DEFAULT"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 641
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 642
    return-void

    .line 636
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "oldRingtone":Landroid/net/Uri;
    :cond_0
    iget-object v1, p1, Lcom/android/deskclock/provider/Alarm;->alert:Landroid/net/Uri;

    goto :goto_0
.end method

.method private saveRingtoneUri(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 645
    const-string v1, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 646
    .local v0, "uri":Landroid/net/Uri;
    if-nez v0, :cond_0

    .line 647
    sget-object v0, Lcom/android/deskclock/provider/Alarm;->NO_RINGTONE_URI:Landroid/net/Uri;

    .line 649
    :cond_0
    iget-object v1, p0, Lcom/android/deskclock/AlarmClockFragment;->mSelectedAlarm:Lcom/android/deskclock/provider/Alarm;

    iput-object v0, v1, Lcom/android/deskclock/provider/Alarm;->alert:Landroid/net/Uri;

    .line 652
    sget-object v1, Lcom/android/deskclock/provider/Alarm;->NO_RINGTONE_URI:Landroid/net/Uri;

    invoke-virtual {v1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 653
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v1, v2, v0}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 656
    :cond_1
    iget-object v1, p0, Lcom/android/deskclock/AlarmClockFragment;->mSelectedAlarm:Lcom/android/deskclock/provider/Alarm;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/deskclock/AlarmClockFragment;->asyncUpdateAlarm(Lcom/android/deskclock/provider/Alarm;Z)V

    .line 657
    return-void
.end method

.method private scrollToAlarm(J)V
    .locals 8
    .param p1, "alarmId"    # J

    .prologue
    .line 606
    const/4 v0, -0x1

    .line 607
    .local v0, "alarmPosition":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v6, p0, Lcom/android/deskclock/AlarmClockFragment;->mAdapter:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;

    invoke-virtual {v6}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 608
    iget-object v6, p0, Lcom/android/deskclock/AlarmClockFragment;->mAdapter:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;

    invoke-virtual {v6, v2}, Landroid/widget/CursorAdapter;->getItemId(I)J

    move-result-wide v3

    .line 609
    .local v3, "id":J
    cmp-long v6, v3, p1

    if-nez v6, :cond_1

    .line 610
    move v0, v2

    .line 615
    .end local v3    # "id":J
    :cond_0
    if-ltz v0, :cond_2

    .line 616
    iget-object v6, p0, Lcom/android/deskclock/AlarmClockFragment;->mAdapter:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;

    invoke-virtual {v6, p1, p2}, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->setNewAlarm(J)V

    .line 617
    iget-object v6, p0, Lcom/android/deskclock/AlarmClockFragment;->mAlarmsList:Landroid/widget/ListView;

    const/4 v7, 0x0

    invoke-virtual {v6, v0, v7}, Landroid/widget/AbsListView;->smoothScrollToPositionFromTop(II)V

    .line 627
    :goto_1
    return-void

    .line 607
    .restart local v3    # "id":J
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 621
    .end local v3    # "id":J
    :cond_2
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 622
    .local v1, "context":Landroid/content/Context;
    const v6, 0x7f0d001e

    const/4 v7, 0x1

    invoke-static {v1, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    .line 624
    .local v5, "toast":Landroid/widget/Toast;
    invoke-static {v5}, Lcom/android/deskclock/ToastMaster;->setToast(Landroid/widget/Toast;)V

    .line 625
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method private setUndoBarRightMargin(I)V
    .locals 5
    .param p1, "margin"    # I

    .prologue
    .line 441
    iget-object v1, p0, Lcom/android/deskclock/AlarmClockFragment;->mUndoBar:Lcom/android/deskclock/widget/ActionableToastBar;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 443
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/android/deskclock/AlarmClockFragment;->mUndoBar:Lcom/android/deskclock/widget/ActionableToastBar;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v1, v2, v3, p1, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 445
    iget-object v1, p0, Lcom/android/deskclock/AlarmClockFragment;->mUndoBar:Lcom/android/deskclock/widget/ActionableToastBar;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 446
    return-void
.end method

.method private static setupAlarmInstance(Landroid/content/Context;Lcom/android/deskclock/provider/Alarm;)Lcom/android/deskclock/provider/AlarmInstance;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "alarm"    # Lcom/android/deskclock/provider/Alarm;

    .prologue
    .line 1682
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1683
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/deskclock/provider/Alarm;->createInstanceAfter(Ljava/util/Calendar;)Lcom/android/deskclock/provider/AlarmInstance;

    move-result-object v1

    .line 1684
    .local v1, "newInstance":Lcom/android/deskclock/provider/AlarmInstance;
    invoke-static {v0, v1}, Lcom/android/deskclock/provider/AlarmInstance;->addInstance(Landroid/content/ContentResolver;Lcom/android/deskclock/provider/AlarmInstance;)Lcom/android/deskclock/provider/AlarmInstance;

    move-result-object v1

    .line 1686
    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/android/deskclock/alarms/AlarmStateManager;->registerInstance(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;Z)V

    .line 1687
    return-object v1
.end method

.method private showLabelDialog(Lcom/android/deskclock/provider/Alarm;)V
    .locals 5
    .param p1, "alarm"    # Lcom/android/deskclock/provider/Alarm;

    .prologue
    .line 568
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 569
    .local v0, "ft":Landroid/app/FragmentTransaction;
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "label_dialog"

    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    .line 570
    .local v2, "prev":Landroid/app/Fragment;
    if-eqz v2, :cond_0

    .line 571
    invoke-virtual {v0, v2}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 573
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 576
    iget-object v3, p1, Lcom/android/deskclock/provider/Alarm;->label:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v3, v4}, Lcom/android/deskclock/LabelDialogFragment;->newInstance(Lcom/android/deskclock/provider/Alarm;Ljava/lang/String;Ljava/lang/String;)Lcom/android/deskclock/LabelDialogFragment;

    move-result-object v1

    .line 578
    .local v1, "newFragment":Lcom/android/deskclock/LabelDialogFragment;
    const-string v3, "label_dialog"

    invoke-virtual {v1, v0, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentTransaction;Ljava/lang/String;)I

    .line 579
    return-void
.end method

.method private showUndoBar()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 502
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mUndoFrame:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 503
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mUndoBar:Lcom/android/deskclock/widget/ActionableToastBar;

    new-instance v1, Lcom/android/deskclock/AlarmClockFragment$6;

    invoke-direct {v1, p0}, Lcom/android/deskclock/AlarmClockFragment$6;-><init>(Lcom/android/deskclock/AlarmClockFragment;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0d0094

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v5, 0x7f0d0093

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/deskclock/widget/ActionableToastBar;->show(Lcom/android/deskclock/widget/ActionableToastBar$ActionClickedListener;ILjava/lang/CharSequence;ZIZ)V

    .line 511
    return-void
.end method

.method private startCreatingAlarm()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1676
    iput-object v2, p0, Lcom/android/deskclock/AlarmClockFragment;->mSelectedAlarm:Lcom/android/deskclock/provider/Alarm;

    .line 1677
    invoke-virtual {p0}, Landroid/app/Fragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v0, v2, p0, v1}, Lcom/android/deskclock/AlarmUtils;->showTimeEditDialog(Landroid/app/FragmentManager;Lcom/android/deskclock/provider/Alarm;Lcom/android/datetimepicker/time/TimePickerDialog$OnTimeSetListener;Z)V

    .line 1679
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 661
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 662
    packed-switch p1, :pswitch_data_0

    .line 667
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unhandled request code in onActivityResult: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/deskclock/Log;->w(Ljava/lang/String;)V

    .line 670
    :cond_0
    :goto_0
    return-void

    .line 664
    :pswitch_0
    invoke-direct {p0, p3}, Lcom/android/deskclock/AlarmClockFragment;->saveRingtoneUri(Landroid/content/Intent;)V

    goto :goto_0

    .line 662
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 153
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 154
    invoke-virtual {p0}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mCursorLoader:Landroid/content/Loader;

    .line 155
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 1
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 588
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/deskclock/provider/Alarm;->getAlarmsCursorLoader(Landroid/content/Context;)Landroid/content/CursorLoader;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 161
    const v0, 0x7f040003

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    .line 163
    .local v11, "v":Landroid/view/View;
    const/4 v3, 0x0

    .line 164
    .local v3, "expandedIds":[J
    const/4 v4, 0x0

    .line 165
    .local v4, "repeatCheckedIds":[J
    const/4 v5, 0x0

    .line 166
    .local v5, "selectedAlarms":[J
    const/4 v6, 0x0

    .line 167
    .local v6, "previousDayMap":Landroid/os/Bundle;
    if-eqz p3, :cond_0

    .line 168
    const-string v0, "expandedIds"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v3

    .line 169
    const-string v0, "repeatCheckedIds"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v4

    .line 170
    const-string v0, "ringtoneTitleCache"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mRingtoneTitleCache:Landroid/os/Bundle;

    .line 171
    const-string v0, "deletedAlarm"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/provider/Alarm;

    iput-object v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mDeletedAlarm:Lcom/android/deskclock/provider/Alarm;

    .line 172
    const-string v0, "undoShowing"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mUndoShowing:Z

    .line 173
    const-string v0, "selectedAlarms"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v5

    .line 174
    const-string v0, "previousDayMap"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 175
    const-string v0, "selectedAlarm"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/provider/Alarm;

    iput-object v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mSelectedAlarm:Lcom/android/deskclock/provider/Alarm;

    .line 178
    :cond_0
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3f800000

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mExpandInterpolator:Landroid/view/animation/Interpolator;

    .line 179
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const v1, 0x3f333333

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mCollapseInterpolator:Landroid/view/animation/Interpolator;

    .line 181
    const v0, 0x7f0e0011

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mAddAlarmButton:Landroid/widget/ImageView;

    .line 182
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mAddAlarmButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/deskclock/AlarmClockFragment$1;

    invoke-direct {v1, p0}, Lcom/android/deskclock/AlarmClockFragment$1;-><init>(Lcom/android/deskclock/AlarmClockFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mAddAlarmButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 192
    .local v9, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    const/4 v8, 0x1

    .line 194
    .local v8, "isLandscape":Z
    :goto_0
    if-eqz v8, :cond_6

    .line 195
    const v0, 0x800005

    iput v0, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 199
    :goto_1
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mAddAlarmButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 201
    const v0, 0x7f0e0012

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 202
    .local v10, "menuButton":Landroid/view/View;
    if-eqz v10, :cond_1

    .line 203
    if-eqz v8, :cond_7

    .line 204
    const/16 v0, 0x8

    invoke-virtual {v10, v0}, Landroid/view/View;->setVisibility(I)V

    .line 211
    :cond_1
    :goto_2
    const v0, 0x7f0e000d

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mEmptyView:Landroid/view/View;

    .line 212
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mEmptyView:Landroid/view/View;

    new-instance v1, Lcom/android/deskclock/AlarmClockFragment$2;

    invoke-direct {v1, p0}, Lcom/android/deskclock/AlarmClockFragment$2;-><init>(Lcom/android/deskclock/AlarmClockFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    const v0, 0x7f0e000c

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mAlarmsList:Landroid/widget/ListView;

    .line 220
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f050002

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mFadeIn:Landroid/animation/Animator;

    .line 221
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mFadeIn:Landroid/animation/Animator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 222
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mFadeIn:Landroid/animation/Animator;

    new-instance v1, Lcom/android/deskclock/AlarmClockFragment$3;

    invoke-direct {v1, p0}, Lcom/android/deskclock/AlarmClockFragment$3;-><init>(Lcom/android/deskclock/AlarmClockFragment;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 244
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mFadeIn:Landroid/animation/Animator;

    iget-object v1, p0, Lcom/android/deskclock/AlarmClockFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 245
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f050003

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mFadeOut:Landroid/animation/Animator;

    .line 246
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mFadeOut:Landroid/animation/Animator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 247
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mFadeOut:Landroid/animation/Animator;

    new-instance v1, Lcom/android/deskclock/AlarmClockFragment$4;

    invoke-direct {v1, p0}, Lcom/android/deskclock/AlarmClockFragment$4;-><init>(Lcom/android/deskclock/AlarmClockFragment;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 269
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mFadeOut:Landroid/animation/Animator;

    iget-object v1, p0, Lcom/android/deskclock/AlarmClockFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 270
    const v0, 0x7f0e0013

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mAlarmsView:Landroid/view/View;

    .line 271
    const v0, 0x7f0e0014

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mTimelineLayout:Landroid/view/View;

    .line 273
    const v0, 0x7f0e000f

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/widget/ActionableToastBar;

    iput-object v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mUndoBar:Lcom/android/deskclock/widget/ActionableToastBar;

    .line 274
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090033

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mUndoBarInitialMargin:I

    .line 276
    const v0, 0x7f0e000e

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mUndoFrame:Landroid/view/View;

    .line 277
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mUndoFrame:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 279
    const v0, 0x7f0e0010

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mFooterView:Landroid/view/View;

    .line 280
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mFooterView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 283
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mTimelineLayout:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 284
    const v0, 0x7f0e0028

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/AlarmTimelineView;

    iput-object v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mTimelineView:Lcom/android/deskclock/AlarmTimelineView;

    .line 285
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mTimelineViewWidth:I

    .line 289
    :cond_2
    new-instance v0, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v7, p0, Lcom/android/deskclock/AlarmClockFragment;->mAlarmsList:Landroid/widget/ListView;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;-><init>(Lcom/android/deskclock/AlarmClockFragment;Landroid/content/Context;[J[J[JLandroid/os/Bundle;Landroid/widget/ListView;)V

    iput-object v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mAdapter:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;

    .line 291
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mAdapter:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;

    new-instance v1, Lcom/android/deskclock/AlarmClockFragment$5;

    invoke-direct {v1, p0}, Lcom/android/deskclock/AlarmClockFragment$5;-><init>(Lcom/android/deskclock/AlarmClockFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/BaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 426
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mRingtoneTitleCache:Landroid/os/Bundle;

    if-nez v0, :cond_3

    .line 427
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mRingtoneTitleCache:Landroid/os/Bundle;

    .line 430
    :cond_3
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mAlarmsList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/deskclock/AlarmClockFragment;->mAdapter:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 431
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mAlarmsList:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 432
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mAlarmsList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 434
    iget-boolean v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mUndoShowing:Z

    if-eqz v0, :cond_4

    .line 435
    invoke-direct {p0}, Lcom/android/deskclock/AlarmClockFragment;->showUndoBar()V

    .line 437
    :cond_4
    return-object v11

    .line 192
    .end local v8    # "isLandscape":Z
    .end local v10    # "menuButton":Landroid/view/View;
    :cond_5
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 197
    .restart local v8    # "isLandscape":Z
    :cond_6
    const/16 v0, 0x11

    iput v0, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto/16 :goto_1

    .line 206
    .restart local v10    # "menuButton":Landroid/view/View;
    :cond_7
    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Landroid/view/View;->setVisibility(I)V

    .line 207
    invoke-virtual {p0, v10}, Lcom/android/deskclock/DeskClockFragment;->setupFakeOverflowMenuButton(Landroid/view/View;)V

    goto/16 :goto_2
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 528
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 529
    invoke-static {}, Lcom/android/deskclock/ToastMaster;->cancelToast()V

    .line 530
    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 4
    .param p2, "data"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "cursorLoader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    const-wide/16 v2, -0x1

    .line 593
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mAdapter:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;

    invoke-virtual {v0, p2}, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 594
    iget-wide v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mScrollToAlarmId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 595
    iget-wide v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mScrollToAlarmId:J

    invoke-direct {p0, v0, v1}, Lcom/android/deskclock/AlarmClockFragment;->scrollToAlarm(J)V

    .line 596
    iput-wide v2, p0, Lcom/android/deskclock/AlarmClockFragment;->mScrollToAlarmId:J

    .line 598
    :cond_0
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 84
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/deskclock/AlarmClockFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 631
    .local p1, "cursorLoader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mAdapter:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 632
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 534
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 539
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/deskclock/AlarmClockFragment;->hideUndoBar(ZLandroid/view/MotionEvent;)V

    .line 540
    return-void
.end method

.method public onResume()V
    .locals 7

    .prologue
    const-wide/16 v5, -0x1

    .line 450
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 452
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 453
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "deskclock.create.new"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 454
    const-string v4, "deskclock.create.new"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 456
    invoke-direct {p0}, Lcom/android/deskclock/AlarmClockFragment;->startCreatingAlarm()V

    .line 460
    :cond_0
    const-string v4, "deskclock.create.new"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 480
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "time_dialog"

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/android/datetimepicker/time/TimePickerDialog;

    .line 482
    .local v3, "tpd":Lcom/android/datetimepicker/time/TimePickerDialog;
    if-eqz v3, :cond_2

    .line 484
    invoke-virtual {v3, p0}, Lcom/android/datetimepicker/time/TimePickerDialog;->setOnTimeSetListener(Lcom/android/datetimepicker/time/TimePickerDialog$OnTimeSetListener;)V

    .line 486
    :cond_2
    return-void

    .line 461
    .end local v3    # "tpd":Lcom/android/datetimepicker/time/TimePickerDialog;
    :cond_3
    const-string v4, "deskclock.scroll.to.alarm"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 462
    const-string v4, "deskclock.scroll.to.alarm"

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 463
    .local v0, "alarmId":J
    cmp-long v4, v0, v5

    if-eqz v4, :cond_4

    .line 464
    iput-wide v0, p0, Lcom/android/deskclock/AlarmClockFragment;->mScrollToAlarmId:J

    .line 465
    iget-object v4, p0, Lcom/android/deskclock/AlarmClockFragment;->mCursorLoader:Landroid/content/Loader;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/deskclock/AlarmClockFragment;->mCursorLoader:Landroid/content/Loader;

    invoke-virtual {v4}, Landroid/content/Loader;->isStarted()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 468
    iget-object v4, p0, Lcom/android/deskclock/AlarmClockFragment;->mCursorLoader:Landroid/content/Loader;

    invoke-virtual {v4}, Landroid/content/Loader;->forceLoad()V

    .line 473
    :cond_4
    const-string v4, "deskclock.scroll.to.alarm"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 515
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 516
    const-string v0, "expandedIds"

    iget-object v1, p0, Lcom/android/deskclock/AlarmClockFragment;->mAdapter:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;

    invoke-virtual {v1}, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->getExpandedArray()[J

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 517
    const-string v0, "repeatCheckedIds"

    iget-object v1, p0, Lcom/android/deskclock/AlarmClockFragment;->mAdapter:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;

    invoke-virtual {v1}, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->getRepeatArray()[J

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 518
    const-string v0, "selectedAlarms"

    iget-object v1, p0, Lcom/android/deskclock/AlarmClockFragment;->mAdapter:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;

    invoke-virtual {v1}, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->getSelectedAlarmsArray()[J

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 519
    const-string v0, "ringtoneTitleCache"

    iget-object v1, p0, Lcom/android/deskclock/AlarmClockFragment;->mRingtoneTitleCache:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 520
    const-string v0, "deletedAlarm"

    iget-object v1, p0, Lcom/android/deskclock/AlarmClockFragment;->mDeletedAlarm:Lcom/android/deskclock/provider/Alarm;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 521
    const-string v0, "undoShowing"

    iget-boolean v1, p0, Lcom/android/deskclock/AlarmClockFragment;->mUndoShowing:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 522
    const-string v0, "previousDayMap"

    iget-object v1, p0, Lcom/android/deskclock/AlarmClockFragment;->mAdapter:Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;

    invoke-virtual {v1}, Lcom/android/deskclock/AlarmClockFragment$AlarmItemAdapter;->getPreviousDaysOfWeekMap()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 523
    const-string v0, "selectedAlarm"

    iget-object v1, p0, Lcom/android/deskclock/AlarmClockFragment;->mSelectedAlarm:Lcom/android/deskclock/provider/Alarm;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 524
    return-void
.end method

.method public onTimeSet(Lcom/android/datetimepicker/time/RadialPickerLayout;II)V
    .locals 4
    .param p1, "view"    # Lcom/android/datetimepicker/time/RadialPickerLayout;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    .prologue
    const/4 v3, 0x1

    .line 545
    iget-object v1, p0, Lcom/android/deskclock/AlarmClockFragment;->mSelectedAlarm:Lcom/android/deskclock/provider/Alarm;

    if-nez v1, :cond_1

    .line 547
    new-instance v0, Lcom/android/deskclock/provider/Alarm;

    invoke-direct {v0}, Lcom/android/deskclock/provider/Alarm;-><init>()V

    .line 548
    .local v0, "a":Lcom/android/deskclock/provider/Alarm;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/android/deskclock/provider/Alarm;->alert:Landroid/net/Uri;

    .line 550
    iget-object v1, v0, Lcom/android/deskclock/provider/Alarm;->alert:Landroid/net/Uri;

    if-nez v1, :cond_0

    .line 551
    const-string v1, "content://settings/system/alarm_alert"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/android/deskclock/provider/Alarm;->alert:Landroid/net/Uri;

    .line 553
    :cond_0
    iput p2, v0, Lcom/android/deskclock/provider/Alarm;->hour:I

    .line 554
    iput p3, v0, Lcom/android/deskclock/provider/Alarm;->minutes:I

    .line 555
    iput-boolean v3, v0, Lcom/android/deskclock/provider/Alarm;->enabled:Z

    .line 556
    invoke-direct {p0, v0}, Lcom/android/deskclock/AlarmClockFragment;->asyncAddAlarm(Lcom/android/deskclock/provider/Alarm;)V

    .line 565
    .end local v0    # "a":Lcom/android/deskclock/provider/Alarm;
    :goto_0
    return-void

    .line 558
    :cond_1
    iget-object v1, p0, Lcom/android/deskclock/AlarmClockFragment;->mSelectedAlarm:Lcom/android/deskclock/provider/Alarm;

    iput p2, v1, Lcom/android/deskclock/provider/Alarm;->hour:I

    .line 559
    iget-object v1, p0, Lcom/android/deskclock/AlarmClockFragment;->mSelectedAlarm:Lcom/android/deskclock/provider/Alarm;

    iput p3, v1, Lcom/android/deskclock/provider/Alarm;->minutes:I

    .line 560
    iget-object v1, p0, Lcom/android/deskclock/AlarmClockFragment;->mSelectedAlarm:Lcom/android/deskclock/provider/Alarm;

    iput-boolean v3, v1, Lcom/android/deskclock/provider/Alarm;->enabled:Z

    .line 561
    iget-object v1, p0, Lcom/android/deskclock/AlarmClockFragment;->mSelectedAlarm:Lcom/android/deskclock/provider/Alarm;

    iget-wide v1, v1, Lcom/android/deskclock/provider/Alarm;->id:J

    iput-wide v1, p0, Lcom/android/deskclock/AlarmClockFragment;->mScrollToAlarmId:J

    .line 562
    iget-object v1, p0, Lcom/android/deskclock/AlarmClockFragment;->mSelectedAlarm:Lcom/android/deskclock/provider/Alarm;

    invoke-direct {p0, v1, v3}, Lcom/android/deskclock/AlarmClockFragment;->asyncUpdateAlarm(Lcom/android/deskclock/provider/Alarm;Z)V

    .line 563
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/deskclock/AlarmClockFragment;->mSelectedAlarm:Lcom/android/deskclock/provider/Alarm;

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1812
    const/4 v0, 0x1

    invoke-direct {p0, v0, p2}, Lcom/android/deskclock/AlarmClockFragment;->hideUndoBar(ZLandroid/view/MotionEvent;)V

    .line 1813
    const/4 v0, 0x0

    return v0
.end method

.method public setLabel(Lcom/android/deskclock/provider/Alarm;Ljava/lang/String;)V
    .locals 1
    .param p1, "alarm"    # Lcom/android/deskclock/provider/Alarm;
    .param p2, "label"    # Ljava/lang/String;

    .prologue
    .line 582
    iput-object p2, p1, Lcom/android/deskclock/provider/Alarm;->label:Ljava/lang/String;

    .line 583
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/deskclock/AlarmClockFragment;->asyncUpdateAlarm(Lcom/android/deskclock/provider/Alarm;Z)V

    .line 584
    return-void
.end method
