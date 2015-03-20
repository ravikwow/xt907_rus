.class public Lcom/android/calendar/AllInOneActivity;
.super Landroid/app/Activity;
.source "AllInOneActivity.java"

# interfaces
.implements Landroid/app/ActionBar$OnNavigationListener;
.implements Landroid/app/ActionBar$TabListener;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/widget/SearchView$OnQueryTextListener;
.implements Landroid/widget/SearchView$OnSuggestionListener;
.implements Lcom/android/calendar/CalendarController$EventHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/AllInOneActivity$QueryHandler;
    }
.end annotation


# static fields
.field private static mIsMultipane:Z

.field private static mIsTabletConfig:Z

.field private static mScale:F

.field private static mShowAgendaWithMonth:Z

.field private static mShowEventDetailsWithAgenda:Z


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mActionBarMenuSpinnerAdapter:Lcom/android/calendar/CalendarViewAdapter;

.field private mAgendaTab:Landroid/app/ActionBar$Tab;

.field private mBackToPreviousView:Z

.field mCalIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mCalendarControlsAnimationTime:I

.field private mCalendarsList:Landroid/view/View;

.field private mCheckForAccounts:Z

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mController:Lcom/android/calendar/CalendarController;

.field private mControlsAnimateHeight:I

.field private mControlsAnimateWidth:I

.field private mControlsMenu:Landroid/view/MenuItem;

.field private mControlsParams:Landroid/widget/RelativeLayout$LayoutParams;

.field private mCurrentView:I

.field private mDateRange:Landroid/widget/TextView;

.field private mDayTab:Landroid/app/ActionBar$Tab;

.field private mHandler:Lcom/android/calendar/AllInOneActivity$QueryHandler;

.field private mHideControls:Z

.field private mHideString:Ljava/lang/String;

.field private mHomeTime:Landroid/widget/TextView;

.field private final mHomeTimeUpdater:Ljava/lang/Runnable;

.field private mIntentAllDay:Z

.field private mIntentAttendeeResponse:I

.field private mIntentEventEndMillis:J

.field private mIntentEventStartMillis:J

.field private mIsIcsImport:Z

.field private mMiniMonth:Landroid/view/View;

.field private mMiniMonthContainer:Landroid/view/View;

.field private mMonthTab:Landroid/app/ActionBar$Tab;

.field private final mObserver:Landroid/database/ContentObserver;

.field private mOnSaveInstanceStateCalled:Z

.field private mOptionsMenu:Landroid/view/Menu;

.field mOrientation:I

.field private mPaused:Z

.field private mPreviousView:I

.field private mSearchMenu:Landroid/view/MenuItem;

.field private mSearchView:Landroid/widget/SearchView;

.field private mSecondaryPane:Landroid/view/View;

.field private mShowCalendarControls:Z

.field private mShowEventInfoFullScreen:Z

.field private mShowEventInfoFullScreenAgenda:Z

.field private mShowSideViews:Z

.field private mShowString:Ljava/lang/String;

.field private mShowWeekNum:Z

.field private final mSlideAnimationDoneListener:Landroid/animation/Animator$AnimatorListener;

.field private final mTimeChangesUpdater:Ljava/lang/Runnable;

.field private mTimeZone:Ljava/lang/String;

.field private mUpdateOnResume:Z

.field private mVerticalControlsParams:Landroid/widget/LinearLayout$LayoutParams;

.field private mViewEventId:J

.field private mWeekNum:I

.field private mWeekTab:Landroid/app/ActionBar$Tab;

.field private mWeekTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    sput v0, Lcom/android/calendar/AllInOneActivity;->mScale:F

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 92
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 118
    iput-boolean v0, p0, Lcom/android/calendar/AllInOneActivity;->mOnSaveInstanceStateCalled:Z

    .line 119
    iput-boolean v0, p0, Lcom/android/calendar/AllInOneActivity;->mBackToPreviousView:Z

    .line 123
    iput-boolean v1, p0, Lcom/android/calendar/AllInOneActivity;->mPaused:Z

    .line 124
    iput-boolean v0, p0, Lcom/android/calendar/AllInOneActivity;->mUpdateOnResume:Z

    .line 125
    iput-boolean v0, p0, Lcom/android/calendar/AllInOneActivity;->mHideControls:Z

    .line 126
    iput-boolean v1, p0, Lcom/android/calendar/AllInOneActivity;->mShowSideViews:Z

    .line 127
    iput-boolean v0, p0, Lcom/android/calendar/AllInOneActivity;->mShowWeekNum:Z

    .line 144
    iput-wide v2, p0, Lcom/android/calendar/AllInOneActivity;->mViewEventId:J

    .line 145
    iput-wide v2, p0, Lcom/android/calendar/AllInOneActivity;->mIntentEventStartMillis:J

    .line 146
    iput-wide v2, p0, Lcom/android/calendar/AllInOneActivity;->mIntentEventEndMillis:J

    .line 147
    iput v0, p0, Lcom/android/calendar/AllInOneActivity;->mIntentAttendeeResponse:I

    .line 148
    iput-boolean v0, p0, Lcom/android/calendar/AllInOneActivity;->mIntentAllDay:Z

    .line 150
    iput-boolean v0, p0, Lcom/android/calendar/AllInOneActivity;->mIsIcsImport:Z

    .line 165
    iput-boolean v1, p0, Lcom/android/calendar/AllInOneActivity;->mCheckForAccounts:Z

    .line 178
    new-instance v0, Lcom/android/calendar/AllInOneActivity$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/AllInOneActivity$1;-><init>(Lcom/android/calendar/AllInOneActivity;)V

    iput-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mSlideAnimationDoneListener:Landroid/animation/Animator$AnimatorListener;

    .line 253
    new-instance v0, Lcom/android/calendar/AllInOneActivity$2;

    invoke-direct {v0, p0}, Lcom/android/calendar/AllInOneActivity$2;-><init>(Lcom/android/calendar/AllInOneActivity;)V

    iput-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mHomeTimeUpdater:Ljava/lang/Runnable;

    .line 264
    new-instance v0, Lcom/android/calendar/AllInOneActivity$3;

    invoke-direct {v0, p0}, Lcom/android/calendar/AllInOneActivity$3;-><init>(Lcom/android/calendar/AllInOneActivity;)V

    iput-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mTimeChangesUpdater:Ljava/lang/Runnable;

    .line 276
    new-instance v0, Lcom/android/calendar/AllInOneActivity$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/calendar/AllInOneActivity$4;-><init>(Lcom/android/calendar/AllInOneActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/AllInOneActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/calendar/AllInOneActivity;

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/android/calendar/AllInOneActivity;->mShowSideViews:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/calendar/AllInOneActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/calendar/AllInOneActivity;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mMiniMonth:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/calendar/AllInOneActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/calendar/AllInOneActivity;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mCalendarsList:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/calendar/AllInOneActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/calendar/AllInOneActivity;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mMiniMonthContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/calendar/AllInOneActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/calendar/AllInOneActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/android/calendar/AllInOneActivity;->mCheckForAccounts:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/calendar/AllInOneActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/calendar/AllInOneActivity;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mTimeZone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/calendar/AllInOneActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/calendar/AllInOneActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/calendar/AllInOneActivity;->mTimeZone:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/calendar/AllInOneActivity;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/calendar/AllInOneActivity;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mHomeTimeUpdater:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/calendar/AllInOneActivity;J)V
    .locals 0
    .param p0, "x0"    # Lcom/android/calendar/AllInOneActivity;
    .param p1, "x1"    # J

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/AllInOneActivity;->updateSecondaryTitleFields(J)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/calendar/AllInOneActivity;)Lcom/android/calendar/AllInOneActivity$QueryHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/calendar/AllInOneActivity;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mHandler:Lcom/android/calendar/AllInOneActivity$QueryHandler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/calendar/AllInOneActivity;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/calendar/AllInOneActivity;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mTimeChangesUpdater:Ljava/lang/Runnable;

    return-object v0
.end method

.method private clearOptionsMenu()V
    .locals 3

    .prologue
    .line 533
    iget-object v1, p0, Lcom/android/calendar/AllInOneActivity;->mOptionsMenu:Landroid/view/Menu;

    if-nez v1, :cond_1

    .line 540
    :cond_0
    :goto_0
    return-void

    .line 536
    :cond_1
    iget-object v1, p0, Lcom/android/calendar/AllInOneActivity;->mOptionsMenu:Landroid/view/Menu;

    const v2, 0x7f10007e

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 537
    .local v0, "cancelItem":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 538
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private configureActionBar(I)V
    .locals 2
    .param p1, "viewType"    # I

    .prologue
    .line 473
    sget-boolean v0, Lcom/android/calendar/AllInOneActivity;->mIsTabletConfig:Z

    invoke-direct {p0, p1, v0}, Lcom/android/calendar/AllInOneActivity;->createButtonsSpinner(IZ)V

    .line 474
    sget-boolean v0, Lcom/android/calendar/AllInOneActivity;->mIsMultipane:Z

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 480
    :goto_0
    return-void

    .line 478
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    goto :goto_0
.end method

.method private createButtonsSpinner(IZ)V
    .locals 4
    .param p1, "viewType"    # I
    .param p2, "tabletConfig"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 509
    new-instance v3, Lcom/android/calendar/CalendarViewAdapter;

    if-nez p2, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {v3, p0, p1, v0}, Lcom/android/calendar/CalendarViewAdapter;-><init>(Landroid/content/Context;IZ)V

    iput-object v3, p0, Lcom/android/calendar/AllInOneActivity;->mActionBarMenuSpinnerAdapter:Lcom/android/calendar/CalendarViewAdapter;

    .line 510
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    .line 511
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 512
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object v3, p0, Lcom/android/calendar/AllInOneActivity;->mActionBarMenuSpinnerAdapter:Lcom/android/calendar/CalendarViewAdapter;

    invoke-virtual {v0, v3, p0}, Landroid/app/ActionBar;->setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V

    .line 513
    packed-switch p1, :pswitch_data_0

    .line 527
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 530
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 509
    goto :goto_0

    .line 515
    :pswitch_0
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    goto :goto_1

    .line 518
    :pswitch_1
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    goto :goto_1

    .line 521
    :pswitch_2
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    goto :goto_1

    .line 524
    :pswitch_3
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    goto :goto_1

    .line 513
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private initFragments(JILandroid/os/Bundle;)V
    .locals 10

    .prologue
    .line 658
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 660
    iget-boolean v0, p0, Lcom/android/calendar/AllInOneActivity;->mShowCalendarControls:Z

    if-eqz v0, :cond_0

    .line 661
    new-instance v0, Lcom/android/calendar/month/MonthByWeekFragment;

    const/4 v2, 0x1

    invoke-direct {v0, p1, p2, v2}, Lcom/android/calendar/month/MonthByWeekFragment;-><init>(JZ)V

    .line 662
    const v2, 0x7f100022

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 663
    iget-object v2, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    const v3, 0x7f100022

    check-cast v0, Lcom/android/calendar/CalendarController$EventHandler;

    invoke-virtual {v2, v3, v0}, Lcom/android/calendar/CalendarController;->registerEventHandler(ILcom/android/calendar/CalendarController$EventHandler;)V

    .line 665
    new-instance v0, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;

    invoke-direct {v0}, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;-><init>()V

    .line 666
    const v2, 0x7f100003

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 667
    iget-object v2, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    const v3, 0x7f100003

    check-cast v0, Lcom/android/calendar/CalendarController$EventHandler;

    invoke-virtual {v2, v3, v0}, Lcom/android/calendar/CalendarController;->registerEventHandler(ILcom/android/calendar/CalendarController$EventHandler;)V

    .line 670
    :cond_0
    iget-boolean v0, p0, Lcom/android/calendar/AllInOneActivity;->mShowCalendarControls:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    if-ne p3, v0, :cond_2

    .line 671
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mMiniMonth:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 672
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mCalendarsList:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 676
    :cond_2
    const/4 v0, 0x5

    if-ne p3, v0, :cond_8

    .line 677
    invoke-static {p0}, Lcom/android/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "preferred_startView"

    const/4 v3, 0x3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/AllInOneActivity;->mPreviousView:I

    .line 680
    const-wide/16 v2, -0x1

    .line 681
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 682
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 683
    if-eqz v4, :cond_7

    .line 685
    :try_start_0
    invoke-virtual {v4}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 695
    :cond_3
    :goto_0
    const-string v4, "beginTime"

    const-wide/16 v5, -0x1

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 696
    const-string v6, "endTime"

    const-wide/16 v7, -0x1

    invoke-virtual {v0, v6, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 697
    new-instance v0, Lcom/android/calendar/CalendarController$EventInfo;

    invoke-direct {v0}, Lcom/android/calendar/CalendarController$EventInfo;-><init>()V

    .line 698
    const-wide/16 v8, -0x1

    cmp-long v8, v6, v8

    if-eqz v8, :cond_4

    .line 699
    new-instance v8, Landroid/text/format/Time;

    invoke-direct {v8}, Landroid/text/format/Time;-><init>()V

    iput-object v8, v0, Lcom/android/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    .line 700
    iget-object v8, v0, Lcom/android/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    invoke-virtual {v8, v6, v7}, Landroid/text/format/Time;->set(J)V

    .line 702
    :cond_4
    const-wide/16 v6, -0x1

    cmp-long v6, v4, v6

    if-eqz v6, :cond_5

    .line 703
    new-instance v6, Landroid/text/format/Time;

    invoke-direct {v6}, Landroid/text/format/Time;-><init>()V

    iput-object v6, v0, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    .line 704
    iget-object v6, v0, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    invoke-virtual {v6, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 706
    :cond_5
    iput-wide v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->id:J

    .line 710
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v0, p3}, Lcom/android/calendar/CalendarController;->setViewType(I)V

    .line 711
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v0, v2, v3}, Lcom/android/calendar/CalendarController;->setEventId(J)V

    .line 716
    :goto_1
    const v2, 0x7f10001f

    const/4 v6, 0x1

    move-object v0, p0

    move v3, p3

    move-wide v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/calendar/AllInOneActivity;->setMainPane(Landroid/app/FragmentTransaction;IIJZ)V

    .line 717
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 719
    new-instance v4, Landroid/text/format/Time;

    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mTimeZone:Ljava/lang/String;

    invoke-direct {v4, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 720
    invoke-virtual {v4, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 721
    const/4 v0, 0x5

    if-eq p3, v0, :cond_6

    .line 722
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    const-wide/16 v2, 0x20

    const/4 v5, 0x0

    const-wide/16 v6, -0x1

    move-object v1, p0

    move v8, p3

    invoke-virtual/range {v0 .. v8}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JI)V

    .line 724
    :cond_6
    return-void

    .line 691
    :cond_7
    if-eqz p4, :cond_3

    const-string v4, "key_event_id"

    invoke-virtual {p4, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 692
    const-string v2, "key_event_id"

    invoke-virtual {p4, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_0

    .line 713
    :cond_8
    iput p3, p0, Lcom/android/calendar/AllInOneActivity;->mPreviousView:I

    goto :goto_1

    .line 686
    :catch_0
    move-exception v4

    goto/16 :goto_0
.end method

.method private parseViewAction(Landroid/content/Intent;)J
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    .line 446
    const-wide/16 v2, -0x1

    .line 447
    .local v2, "timeMillis":J
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 448
    .local v0, "data":Landroid/net/Uri;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->isHierarchical()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 449
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    .line 450
    .local v1, "path":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "events"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 452
    :try_start_0
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/calendar/AllInOneActivity;->mViewEventId:J

    .line 453
    iget-wide v4, p0, Lcom/android/calendar/AllInOneActivity;->mViewEventId:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 454
    const-string v4, "beginTime"

    const-wide/16 v5, 0x0

    invoke-virtual {p1, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/calendar/AllInOneActivity;->mIntentEventStartMillis:J

    .line 455
    const-string v4, "endTime"

    const-wide/16 v5, 0x0

    invoke-virtual {p1, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/calendar/AllInOneActivity;->mIntentEventEndMillis:J

    .line 456
    const-string v4, "attendeeStatus"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/calendar/AllInOneActivity;->mIntentAttendeeResponse:I

    .line 458
    const-string v4, "allDay"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/calendar/AllInOneActivity;->mIntentAllDay:Z

    .line 459
    iget-wide v2, p0, Lcom/android/calendar/AllInOneActivity;->mIntentEventStartMillis:J

    .line 461
    const-string v4, "com.android.calendar.ics.IMPORT_ICS"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/calendar/AllInOneActivity;->mIsIcsImport:Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 469
    .end local v1    # "path":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-wide v2

    .line 464
    .restart local v1    # "path":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private setMainPane(Landroid/app/FragmentTransaction;IIJZ)V
    .locals 9

    .prologue
    const/4 v1, 0x4

    const v8, 0x7f100020

    const/16 v7, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 871
    iget-boolean v0, p0, Lcom/android/calendar/AllInOneActivity;->mOnSaveInstanceStateCalled:Z

    if-eqz v0, :cond_1

    .line 1014
    :cond_0
    :goto_0
    return-void

    .line 874
    :cond_1
    if-nez p6, :cond_2

    iget v0, p0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    if-eq v0, p3, :cond_0

    .line 879
    :cond_2
    if-eq p3, v1, :cond_6

    iget v0, p0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    if-eq v0, v1, :cond_6

    move v2, v3

    .line 880
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    .line 883
    iget v0, p0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    if-ne v0, v3, :cond_3

    .line 886
    invoke-virtual {v5, p2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    .line 887
    instance-of v1, v0, Lcom/android/calendar/agenda/AgendaFragment;

    if-eqz v1, :cond_3

    .line 888
    check-cast v0, Lcom/android/calendar/agenda/AgendaFragment;

    invoke-virtual {v0, v5}, Lcom/android/calendar/agenda/AgendaFragment;->removeFragments(Landroid/app/FragmentManager;)V

    .line 892
    :cond_3
    iget v0, p0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    if-eq p3, v0, :cond_5

    .line 895
    iget v0, p0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_4

    iget v0, p0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    if-lez v0, :cond_4

    .line 896
    iget v0, p0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    iput v0, p0, Lcom/android/calendar/AllInOneActivity;->mPreviousView:I

    .line 898
    :cond_4
    iput p3, p0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    .line 902
    :cond_5
    const/4 v1, 0x0

    .line 903
    packed-switch p3, :pswitch_data_0

    .line 944
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Must be Agenda, Day, Week, or Month ViewType, not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    move v2, v4

    .line 879
    goto :goto_1

    .line 905
    :pswitch_0
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getSelectedTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    iget-object v6, p0, Lcom/android/calendar/AllInOneActivity;->mAgendaTab:Landroid/app/ActionBar$Tab;

    if-eq v0, v6, :cond_7

    .line 906
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object v6, p0, Lcom/android/calendar/AllInOneActivity;->mAgendaTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 908
    :cond_7
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBarMenuSpinnerAdapter:Lcom/android/calendar/CalendarViewAdapter;

    if-eqz v0, :cond_8

    .line 909
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    const/4 v6, 0x3

    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 911
    :cond_8
    new-instance v0, Lcom/android/calendar/agenda/AgendaFragment;

    invoke-direct {v0, p4, p5, v4}, Lcom/android/calendar/agenda/AgendaFragment;-><init>(JZ)V

    .line 950
    :cond_9
    :goto_2
    iget-object v6, p0, Lcom/android/calendar/AllInOneActivity;->mActionBarMenuSpinnerAdapter:Lcom/android/calendar/CalendarViewAdapter;

    if-eqz v6, :cond_a

    .line 951
    iget-object v6, p0, Lcom/android/calendar/AllInOneActivity;->mActionBarMenuSpinnerAdapter:Lcom/android/calendar/CalendarViewAdapter;

    invoke-virtual {v6, p3}, Lcom/android/calendar/CalendarViewAdapter;->setMainView(I)V

    .line 952
    sget-boolean v6, Lcom/android/calendar/AllInOneActivity;->mIsTabletConfig:Z

    if-nez v6, :cond_a

    .line 953
    iget-object v6, p0, Lcom/android/calendar/AllInOneActivity;->mActionBarMenuSpinnerAdapter:Lcom/android/calendar/CalendarViewAdapter;

    invoke-virtual {v6, p4, p5}, Lcom/android/calendar/CalendarViewAdapter;->setTime(J)V

    .line 959
    :cond_a
    sget-boolean v6, Lcom/android/calendar/AllInOneActivity;->mIsTabletConfig:Z

    if-nez v6, :cond_15

    .line 960
    iget-object v6, p0, Lcom/android/calendar/AllInOneActivity;->mDateRange:Landroid/widget/TextView;

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 968
    :goto_3
    if-eq p3, v3, :cond_b

    .line 969
    invoke-direct {p0}, Lcom/android/calendar/AllInOneActivity;->clearOptionsMenu()V

    .line 973
    :cond_b
    if-nez p1, :cond_19

    .line 975
    invoke-virtual {v5}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    .line 978
    :goto_4
    if-eqz v2, :cond_c

    .line 979
    const/16 v2, 0x1003

    invoke-virtual {p1, v2}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 982
    :cond_c
    invoke-virtual {p1, p2, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 983
    sget-boolean v2, Lcom/android/calendar/AllInOneActivity;->mShowAgendaWithMonth:Z

    if-eqz v2, :cond_d

    .line 987
    if-eqz v1, :cond_17

    .line 988
    invoke-virtual {p1, v8, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 989
    iget-object v2, p0, Lcom/android/calendar/AllInOneActivity;->mSecondaryPane:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1003
    :cond_d
    :goto_5
    iget-object v2, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    check-cast v0, Lcom/android/calendar/CalendarController$EventHandler;

    invoke-virtual {v2, p2, v0}, Lcom/android/calendar/CalendarController;->registerEventHandler(ILcom/android/calendar/CalendarController$EventHandler;)V

    .line 1004
    if-eqz v1, :cond_e

    .line 1005
    iget-object v2, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    move-object v0, v1

    check-cast v0, Lcom/android/calendar/CalendarController$EventHandler;

    invoke-virtual {v2, p2, v0}, Lcom/android/calendar/CalendarController;->registerEventHandler(ILcom/android/calendar/CalendarController$EventHandler;)V

    .line 1008
    :cond_e
    if-eqz v3, :cond_0

    .line 1012
    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    goto/16 :goto_0

    .line 914
    :pswitch_1
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getSelectedTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    iget-object v6, p0, Lcom/android/calendar/AllInOneActivity;->mDayTab:Landroid/app/ActionBar$Tab;

    if-eq v0, v6, :cond_f

    .line 915
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object v6, p0, Lcom/android/calendar/AllInOneActivity;->mDayTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 917
    :cond_f
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBarMenuSpinnerAdapter:Lcom/android/calendar/CalendarViewAdapter;

    if-eqz v0, :cond_10

    .line 918
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 920
    :cond_10
    new-instance v0, Lcom/android/calendar/DayFragment;

    invoke-direct {v0, p4, p5, v3}, Lcom/android/calendar/DayFragment;-><init>(JI)V

    goto :goto_2

    .line 923
    :pswitch_2
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getSelectedTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    iget-object v6, p0, Lcom/android/calendar/AllInOneActivity;->mWeekTab:Landroid/app/ActionBar$Tab;

    if-eq v0, v6, :cond_11

    .line 924
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object v6, p0, Lcom/android/calendar/AllInOneActivity;->mWeekTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 926
    :cond_11
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBarMenuSpinnerAdapter:Lcom/android/calendar/CalendarViewAdapter;

    if-eqz v0, :cond_12

    .line 927
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 929
    :cond_12
    new-instance v0, Lcom/android/calendar/DayFragment;

    const/4 v6, 0x7

    invoke-direct {v0, p4, p5, v6}, Lcom/android/calendar/DayFragment;-><init>(JI)V

    goto/16 :goto_2

    .line 932
    :pswitch_3
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getSelectedTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    iget-object v6, p0, Lcom/android/calendar/AllInOneActivity;->mMonthTab:Landroid/app/ActionBar$Tab;

    if-eq v0, v6, :cond_13

    .line 933
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object v6, p0, Lcom/android/calendar/AllInOneActivity;->mMonthTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 935
    :cond_13
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBarMenuSpinnerAdapter:Lcom/android/calendar/CalendarViewAdapter;

    if-eqz v0, :cond_14

    .line 936
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 938
    :cond_14
    new-instance v0, Lcom/android/calendar/month/MonthByWeekFragment;

    invoke-direct {v0, p4, p5, v4}, Lcom/android/calendar/month/MonthByWeekFragment;-><init>(JZ)V

    .line 939
    sget-boolean v6, Lcom/android/calendar/AllInOneActivity;->mShowAgendaWithMonth:Z

    if-eqz v6, :cond_9

    .line 940
    new-instance v1, Lcom/android/calendar/agenda/AgendaFragment;

    invoke-direct {v1, p4, p5, v4}, Lcom/android/calendar/agenda/AgendaFragment;-><init>(JZ)V

    goto/16 :goto_2

    .line 961
    :cond_15
    if-eq p3, v3, :cond_16

    .line 962
    iget-object v6, p0, Lcom/android/calendar/AllInOneActivity;->mDateRange:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 964
    :cond_16
    iget-object v6, p0, Lcom/android/calendar/AllInOneActivity;->mDateRange:Landroid/widget/TextView;

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 991
    :cond_17
    iget-object v2, p0, Lcom/android/calendar/AllInOneActivity;->mSecondaryPane:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 992
    invoke-virtual {v5, v8}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v2

    .line 993
    if-eqz v2, :cond_18

    .line 994
    invoke-virtual {p1, v2}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 996
    :cond_18
    iget-object v2, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/calendar/CalendarController;->deregisterEventHandler(Ljava/lang/Integer;)V

    goto/16 :goto_5

    :cond_19
    move v3, v4

    goto/16 :goto_4

    .line 903
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setTitleInActionBar(Lcom/android/calendar/CalendarController$EventInfo;)V
    .locals 13
    .param p1, "event"    # Lcom/android/calendar/CalendarController$EventInfo;

    .prologue
    const/16 v12, 0x8

    const/4 v5, 0x0

    .line 1017
    iget-wide v8, p1, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v10, 0x400

    cmp-long v0, v8, v10

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    if-nez v0, :cond_1

    .line 1040
    :cond_0
    :goto_0
    return-void

    .line 1021
    :cond_1
    iget-object v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    invoke-virtual {v0, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    .line 1023
    .local v1, "start":J
    iget-object v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    if-eqz v0, :cond_3

    .line 1024
    iget-object v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    invoke-virtual {v0, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    .line 1029
    .local v3, "end":J
    :goto_1
    iget-wide v8, p1, Lcom/android/calendar/CalendarController$EventInfo;->extraLong:J

    long-to-int v5, v8

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/calendar/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v6

    .line 1030
    .local v6, "msg":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mDateRange:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    .line 1031
    .local v7, "oldDate":Ljava/lang/CharSequence;
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mDateRange:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1032
    iget-object v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->selectedTime:Landroid/text/format/Time;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->selectedTime:Landroid/text/format/Time;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    .end local v1    # "start":J
    :cond_2
    invoke-direct {p0, v1, v2}, Lcom/android/calendar/AllInOneActivity;->updateSecondaryTitleFields(J)V

    .line 1034
    invoke-static {v7, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1035
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mDateRange:Landroid/widget/TextView;

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    .line 1036
    iget-boolean v0, p0, Lcom/android/calendar/AllInOneActivity;->mShowWeekNum:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mWeekTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1037
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mWeekTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    goto :goto_0

    .line 1026
    .end local v3    # "end":J
    .end local v6    # "msg":Ljava/lang/String;
    .end local v7    # "oldDate":Ljava/lang/CharSequence;
    .restart local v1    # "start":J
    :cond_3
    move-wide v3, v1

    .restart local v3    # "end":J
    goto :goto_1
.end method

.method private updateSecondaryTitleFields(J)V
    .locals 11

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v0, 0x1

    const/4 v7, 0x0

    .line 1043
    invoke-static {p0}, Lcom/android/calendar/Utils;->getShowWeekNumber(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/calendar/AllInOneActivity;->mShowWeekNum:Z

    .line 1044
    iget-object v1, p0, Lcom/android/calendar/AllInOneActivity;->mHomeTimeUpdater:Ljava/lang/Runnable;

    invoke-static {p0, v1}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/AllInOneActivity;->mTimeZone:Ljava/lang/String;

    .line 1045
    const-wide/16 v1, -0x1

    cmp-long v1, p1, v1

    if-eqz v1, :cond_0

    .line 1046
    invoke-static {p1, p2, p0}, Lcom/android/calendar/Utils;->getWeekNumberFromTime(JLandroid/content/Context;)I

    move-result v1

    .line 1047
    iput v1, p0, Lcom/android/calendar/AllInOneActivity;->mWeekNum:I

    .line 1050
    :cond_0
    iget-boolean v1, p0, Lcom/android/calendar/AllInOneActivity;->mShowWeekNum:Z

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    if-ne v1, v9, :cond_4

    sget-boolean v1, Lcom/android/calendar/AllInOneActivity;->mIsTabletConfig:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/calendar/AllInOneActivity;->mWeekTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    .line 1052
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0004

    iget v3, p0, Lcom/android/calendar/AllInOneActivity;->mWeekNum:I

    new-array v4, v0, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/calendar/AllInOneActivity;->mWeekNum:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1054
    iget-object v2, p0, Lcom/android/calendar/AllInOneActivity;->mWeekTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1055
    iget-object v1, p0, Lcom/android/calendar/AllInOneActivity;->mWeekTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1071
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/calendar/AllInOneActivity;->mHomeTime:Landroid/widget/TextView;

    if-eqz v1, :cond_8

    iget v1, p0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    if-eq v1, v8, :cond_2

    iget v1, p0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    if-eq v1, v9, :cond_2

    iget v1, p0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    if-ne v1, v0, :cond_8

    :cond_2
    iget-object v1, p0, Lcom/android/calendar/AllInOneActivity;->mTimeZone:Ljava/lang/String;

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 1075
    new-instance v3, Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/AllInOneActivity;->mTimeZone:Ljava/lang/String;

    invoke-direct {v3, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1076
    invoke-virtual {v3}, Landroid/text/format/Time;->setToNow()V

    .line 1077
    invoke-virtual {v3, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    .line 1078
    iget v3, v3, Landroid/text/format/Time;->isDst:I

    if-eqz v3, :cond_7

    move v6, v0

    .line 1080
    :goto_1
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1081
    const/16 v5, 0x81

    .line 1084
    :goto_2
    new-instance v8, Ljava/lang/StringBuilder;

    move-object v0, p0

    move-wide v3, v1

    invoke-static/range {v0 .. v5}, Lcom/android/calendar/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/calendar/AllInOneActivity;->mTimeZone:Ljava/lang/String;

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v3, v6, v7, v4}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1088
    iget-object v3, p0, Lcom/android/calendar/AllInOneActivity;->mHomeTime:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1089
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mHomeTime:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1091
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mHomeTime:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/calendar/AllInOneActivity;->mHomeTimeUpdater:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1092
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mHomeTime:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/calendar/AllInOneActivity;->mHomeTimeUpdater:Ljava/lang/Runnable;

    const-wide/32 v4, 0xea60

    const-wide/32 v6, 0xea60

    rem-long/2addr v1, v6

    sub-long v1, v4, v1

    invoke-virtual {v0, v3, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1098
    :cond_3
    :goto_3
    return-void

    .line 1056
    :cond_4
    const-wide/16 v1, -0x1

    cmp-long v1, p1, v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/calendar/AllInOneActivity;->mWeekTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    if-ne v1, v8, :cond_5

    sget-boolean v1, Lcom/android/calendar/AllInOneActivity;->mIsTabletConfig:Z

    if-eqz v1, :cond_5

    .line 1058
    new-instance v1, Landroid/text/format/Time;

    iget-object v2, p0, Lcom/android/calendar/AllInOneActivity;->mTimeZone:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1059
    invoke-virtual {v1, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 1060
    iget-wide v2, v1, Landroid/text/format/Time;->gmtoff:J

    invoke-static {p1, p2, v2, v3}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v2

    .line 1061
    invoke-virtual {v1}, Landroid/text/format/Time;->setToNow()V

    .line 1062
    invoke-virtual {v1, v7}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    iget-wide v5, v1, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v3, v4, v5, v6}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v1

    .line 1063
    invoke-static {v2, v1, p1, p2, p0}, Lcom/android/calendar/Utils;->getDayOfWeekString(IIJLandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1065
    iget-object v2, p0, Lcom/android/calendar/AllInOneActivity;->mWeekTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1066
    iget-object v1, p0, Lcom/android/calendar/AllInOneActivity;->mWeekTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 1067
    :cond_5
    iget-object v1, p0, Lcom/android/calendar/AllInOneActivity;->mWeekTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/android/calendar/AllInOneActivity;->mIsTabletConfig:Z

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    if-eq v1, v8, :cond_1

    .line 1068
    :cond_6
    iget-object v1, p0, Lcom/android/calendar/AllInOneActivity;->mWeekTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_7
    move v6, v7

    .line 1078
    goto/16 :goto_1

    .line 1095
    :cond_8
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mHomeTime:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 1096
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mHomeTime:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_9
    move v5, v0

    goto/16 :goto_2
.end method


# virtual methods
.method public eventsChanged()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 1258
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    const-wide/16 v2, 0x80

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    move-object v1, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v8}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JI)V

    .line 1259
    return-void
.end method

.method public getSupportedEventTypes()J
    .locals 2

    .prologue
    .line 1102
    const-wide/16 v0, 0x422

    return-wide v0
.end method

.method public handleEvent(Lcom/android/calendar/CalendarController$EventInfo;)V
    .locals 12

    .prologue
    .line 1107
    const-wide/16 v0, -0x1

    .line 1108
    iget-wide v2, p1, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v4, 0x20

    cmp-long v2, v2, v4

    if-nez v2, :cond_10

    .line 1109
    iget-wide v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->extraLong:J

    const-wide/16 v2, 0x4

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_7

    .line 1110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/AllInOneActivity;->mBackToPreviousView:Z

    .line 1117
    :cond_0
    :goto_0
    const/4 v1, 0x0

    const v2, 0x7f10001f

    iget v3, p1, Lcom/android/calendar/CalendarController$EventInfo;->viewType:I

    iget-object v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/calendar/AllInOneActivity;->setMainPane(Landroid/app/FragmentTransaction;IIJZ)V

    .line 1119
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mSearchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_1

    .line 1120
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    .line 1122
    :cond_1
    iget-boolean v0, p0, Lcom/android/calendar/AllInOneActivity;->mShowCalendarControls:Z

    if-eqz v0, :cond_5

    .line 1123
    iget v0, p0, Lcom/android/calendar/AllInOneActivity;->mOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    iget v0, p0, Lcom/android/calendar/AllInOneActivity;->mControlsAnimateWidth:I

    .line 1125
    :goto_1
    iget v1, p1, Lcom/android/calendar/CalendarController$EventInfo;->viewType:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    iget v1, p1, Lcom/android/calendar/CalendarController$EventInfo;->viewType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_9

    :cond_2
    const/4 v1, 0x1

    .line 1126
    :goto_2
    iget-object v2, p0, Lcom/android/calendar/AllInOneActivity;->mControlsMenu:Landroid/view/MenuItem;

    if-eqz v2, :cond_3

    .line 1127
    iget-object v3, p0, Lcom/android/calendar/AllInOneActivity;->mControlsMenu:Landroid/view/MenuItem;

    if-nez v1, :cond_a

    const/4 v2, 0x1

    :goto_3
    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1128
    iget-object v3, p0, Lcom/android/calendar/AllInOneActivity;->mControlsMenu:Landroid/view/MenuItem;

    if-nez v1, :cond_b

    const/4 v2, 0x1

    :goto_4
    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1130
    :cond_3
    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/android/calendar/AllInOneActivity;->mHideControls:Z

    if-eqz v1, :cond_d

    .line 1132
    :cond_4
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/calendar/AllInOneActivity;->mShowSideViews:Z

    .line 1133
    iget-boolean v1, p0, Lcom/android/calendar/AllInOneActivity;->mHideControls:Z

    if-nez v1, :cond_c

    .line 1134
    const-string v1, "controlsOffset"

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    const/4 v3, 0x1

    aput v0, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1136
    iget-object v1, p0, Lcom/android/calendar/AllInOneActivity;->mSlideAnimationDoneListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1137
    iget v1, p0, Lcom/android/calendar/AllInOneActivity;->mCalendarControlsAnimationTime:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1138
    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Landroid/animation/ObjectAnimator;->setFrameDelay(J)V

    .line 1139
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 1162
    :cond_5
    :goto_5
    iget-object v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->selectedTime:Landroid/text/format/Time;

    if-eqz v0, :cond_f

    iget-object v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->selectedTime:Landroid/text/format/Time;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    .line 1164
    :goto_6
    sget-boolean v2, Lcom/android/calendar/AllInOneActivity;->mIsTabletConfig:Z

    if-nez v2, :cond_6

    .line 1165
    iget-object v2, p0, Lcom/android/calendar/AllInOneActivity;->mActionBarMenuSpinnerAdapter:Lcom/android/calendar/CalendarViewAdapter;

    invoke-virtual {v2, v0, v1}, Lcom/android/calendar/CalendarViewAdapter;->setTime(J)V

    .line 1245
    :cond_6
    :goto_7
    invoke-direct {p0, v0, v1}, Lcom/android/calendar/AllInOneActivity;->updateSecondaryTitleFields(J)V

    .line 1246
    return-void

    .line 1111
    :cond_7
    iget v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->viewType:I

    iget-object v1, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v1}, Lcom/android/calendar/CalendarController;->getPreviousViewType()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->viewType:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 1114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/AllInOneActivity;->mBackToPreviousView:Z

    goto/16 :goto_0

    .line 1123
    :cond_8
    iget v0, p0, Lcom/android/calendar/AllInOneActivity;->mControlsAnimateHeight:I

    goto :goto_1

    .line 1125
    :cond_9
    const/4 v1, 0x0

    goto :goto_2

    .line 1127
    :cond_a
    const/4 v2, 0x0

    goto :goto_3

    .line 1128
    :cond_b
    const/4 v2, 0x0

    goto :goto_4

    .line 1141
    :cond_c
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mMiniMonth:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1142
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mCalendarsList:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1143
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mMiniMonthContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 1147
    :cond_d
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/calendar/AllInOneActivity;->mShowSideViews:Z

    .line 1148
    iget-object v1, p0, Lcom/android/calendar/AllInOneActivity;->mMiniMonth:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1149
    iget-object v1, p0, Lcom/android/calendar/AllInOneActivity;->mCalendarsList:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1150
    iget-object v1, p0, Lcom/android/calendar/AllInOneActivity;->mMiniMonthContainer:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1151
    iget-boolean v1, p0, Lcom/android/calendar/AllInOneActivity;->mHideControls:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v1}, Lcom/android/calendar/CalendarController;->getPreviousViewType()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_e

    iget-object v1, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v1}, Lcom/android/calendar/CalendarController;->getPreviousViewType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 1154
    :cond_e
    const-string v1, "controlsOffset"

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    const/4 v3, 0x0

    aput v3, v2, v0

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1156
    iget v1, p0, Lcom/android/calendar/AllInOneActivity;->mCalendarControlsAnimationTime:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1157
    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Landroid/animation/ObjectAnimator;->setFrameDelay(J)V

    .line 1158
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto/16 :goto_5

    .line 1162
    :cond_f
    iget-object v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    goto/16 :goto_6

    .line 1167
    :cond_10
    iget-wide v2, p1, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v4, 0x2

    cmp-long v2, v2, v4

    if-nez v2, :cond_1b

    .line 1175
    iget-object v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->extras:Landroid/os/Bundle;

    const-string v1, "com.android.calendar.ics.IMPORT_ICS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_14

    iget v0, p0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    sget-boolean v0, Lcom/android/calendar/AllInOneActivity;->mShowEventDetailsWithAgenda:Z

    if-eqz v0, :cond_14

    .line 1178
    iget-object v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    if-eqz v0, :cond_13

    iget-object v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    if-eqz v0, :cond_13

    .line 1180
    invoke-virtual {p1}, Lcom/android/calendar/CalendarController$EventInfo;->isAllDay()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1181
    iget-object v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    iget-object v1, p1, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/calendar/AllInOneActivity;->mTimeZone:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/android/calendar/Utils;->convertAlldayUtcToLocal(Landroid/text/format/Time;JLjava/lang/String;)J

    .line 1183
    iget-object v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    iget-object v1, p1, Lcom/android/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/calendar/AllInOneActivity;->mTimeZone:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/android/calendar/Utils;->convertAlldayUtcToLocal(Landroid/text/format/Time;JLjava/lang/String;)J

    .line 1186
    :cond_11
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    const-wide/16 v2, 0x20

    iget-object v4, p1, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    iget-object v5, p1, Lcom/android/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    iget-wide v6, p1, Lcom/android/calendar/CalendarController$EventInfo;->id:J

    const/4 v8, 0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v8}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JI)V

    .line 1238
    :cond_12
    :goto_8
    iget-object v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    goto/16 :goto_7

    .line 1188
    :cond_13
    iget-object v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->selectedTime:Landroid/text/format/Time;

    if-eqz v0, :cond_12

    .line 1189
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    const-wide/16 v2, 0x20

    iget-object v4, p1, Lcom/android/calendar/CalendarController$EventInfo;->selectedTime:Landroid/text/format/Time;

    iget-object v5, p1, Lcom/android/calendar/CalendarController$EventInfo;->selectedTime:Landroid/text/format/Time;

    iget-wide v6, p1, Lcom/android/calendar/CalendarController$EventInfo;->id:J

    const/4 v8, 0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v8}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JI)V

    goto :goto_8

    .line 1195
    :cond_14
    iget-object v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->selectedTime:Landroid/text/format/Time;

    if-eqz v0, :cond_15

    iget v0, p0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_15

    .line 1196
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    const-wide/16 v2, 0x20

    iget-object v4, p1, Lcom/android/calendar/CalendarController$EventInfo;->selectedTime:Landroid/text/format/Time;

    iget-object v5, p1, Lcom/android/calendar/CalendarController$EventInfo;->selectedTime:Landroid/text/format/Time;

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v8}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JI)V

    .line 1199
    :cond_15
    invoke-virtual {p1}, Lcom/android/calendar/CalendarController$EventInfo;->getResponse()I

    move-result v8

    .line 1200
    iget v0, p0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    iget-boolean v0, p0, Lcom/android/calendar/AllInOneActivity;->mShowEventInfoFullScreenAgenda:Z

    if-nez v0, :cond_18

    :cond_16
    iget v0, p0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_17

    iget v0, p0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_17

    iget v0, p0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_19

    :cond_17
    iget-boolean v0, p0, Lcom/android/calendar/AllInOneActivity;->mShowEventInfoFullScreen:Z

    if-eqz v0, :cond_19

    .line 1204
    :cond_18
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1205
    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, p1, Lcom/android/calendar/CalendarController$EventInfo;->id:J

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1206
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1207
    const-class v1, Lcom/android/calendar/EventInfoActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1209
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1211
    const-string v1, "beginTime"

    iget-object v2, p1, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1212
    const-string v1, "endTime"

    iget-object v2, p1, Lcom/android/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1213
    const-string v1, "attendeeStatus"

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1215
    const-string v1, "com.android.calendar.ics.IMPORT_ICS"

    iget-object v2, p1, Lcom/android/calendar/CalendarController$EventInfo;->extras:Landroid/os/Bundle;

    const-string v3, "com.android.calendar.ics.IMPORT_ICS"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1217
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_8

    .line 1221
    :cond_19
    new-instance v0, Lcom/android/calendar/EventInfoFragment;

    iget-wide v2, p1, Lcom/android/calendar/CalendarController$EventInfo;->id:J

    iget-object v1, p1, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    iget-object v1, p1, Lcom/android/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v6

    const/4 v9, 0x1

    const/4 v10, 0x1

    iget-object v11, p1, Lcom/android/calendar/CalendarController$EventInfo;->extras:Landroid/os/Bundle;

    move-object v1, p0

    invoke-direct/range {v0 .. v11}, Lcom/android/calendar/EventInfoFragment;-><init>(Landroid/content/Context;JJJIZILandroid/os/Bundle;)V

    .line 1226
    iget v1, p1, Lcom/android/calendar/CalendarController$EventInfo;->x:I

    iget v2, p1, Lcom/android/calendar/CalendarController$EventInfo;->y:I

    iget-object v3, p0, Lcom/android/calendar/AllInOneActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v3}, Landroid/app/ActionBar;->getHeight()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/calendar/EventInfoFragment;->setDialogParams(III)V

    .line 1227
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 1228
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 1230
    const-string v3, "EventInfoFragment"

    invoke-virtual {v1, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 1231
    if-eqz v1, :cond_1a

    invoke-virtual {v1}, Landroid/app/Fragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 1232
    invoke-virtual {v2, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1234
    :cond_1a
    const-string v1, "EventInfoFragment"

    invoke-virtual {v2, v0, v1}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1235
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    goto/16 :goto_8

    .line 1239
    :cond_1b
    iget-wide v2, p1, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v4, 0x400

    cmp-long v2, v2, v4

    if-nez v2, :cond_6

    .line 1240
    invoke-direct {p0, p1}, Lcom/android/calendar/AllInOneActivity;->setTitleInActionBar(Lcom/android/calendar/CalendarController$EventInfo;)V

    .line 1241
    sget-boolean v2, Lcom/android/calendar/AllInOneActivity;->mIsTabletConfig:Z

    if-nez v2, :cond_6

    .line 1242
    iget-object v2, p0, Lcom/android/calendar/AllInOneActivity;->mActionBarMenuSpinnerAdapter:Lcom/android/calendar/CalendarViewAdapter;

    iget-object v3, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v3}, Lcom/android/calendar/CalendarController;->getTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/android/calendar/CalendarViewAdapter;->setTime(J)V

    goto/16 :goto_7
.end method

.method public handleSelectSyncedCalendarsClicked(Landroid/view/View;)V
    .locals 14
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 1251
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    const-wide/16 v2, 0x40

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x2

    move-object v1, p0

    move-object v5, v4

    move-object v6, v4

    move-object v12, v4

    move-object v13, v4

    invoke-virtual/range {v0 .. v13}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;Landroid/text/format/Time;JIJLjava/lang/String;Landroid/content/ComponentName;)V

    .line 1254
    return-void
.end method

.method public onBackPressed()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 728
    iget v0, p0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/calendar/AllInOneActivity;->mBackToPreviousView:Z

    if-eqz v0, :cond_1

    .line 729
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    const-wide/16 v2, 0x20

    const-wide/16 v6, -0x1

    iget v8, p0, Lcom/android/calendar/AllInOneActivity;->mPreviousView:I

    move-object v1, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v8}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JI)V

    .line 733
    :goto_0
    return-void

    .line 731
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 21
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 313
    const-string v5, "preferences_tardis_1"

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v5, v6}, Lcom/android/calendar/Utils;->getSharedPreference(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 314
    const v5, 0x7f0e0019

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/view/ContextThemeWrapper;->setTheme(I)V

    .line 316
    :cond_0
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 318
    if-eqz p1, :cond_1

    const-string v5, "key_check_for_accounts"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 319
    const-string v5, "key_check_for_accounts"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/calendar/AllInOneActivity;->mCheckForAccounts:Z

    .line 323
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/calendar/AllInOneActivity;->mCheckForAccounts:Z

    if-eqz v5, :cond_2

    const-string v5, "preferences_skip_setup"

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v5, v6}, Lcom/android/calendar/Utils;->getSharedPreference(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_2

    .line 326
    new-instance v5, Lcom/android/calendar/AllInOneActivity$QueryHandler;

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v6}, Lcom/android/calendar/AllInOneActivity$QueryHandler;-><init>(Lcom/android/calendar/AllInOneActivity;Landroid/content/ContentResolver;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/calendar/AllInOneActivity;->mHandler:Lcom/android/calendar/AllInOneActivity$QueryHandler;

    .line 327
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/calendar/AllInOneActivity;->mHandler:Lcom/android/calendar/AllInOneActivity$QueryHandler;

    const/4 v6, 0x0

    const/4 v7, 0x0

    sget-object v8, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "_id"

    aput-object v11, v9, v10

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v12}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    :cond_2
    invoke-static/range {p0 .. p0}, Lcom/android/calendar/CalendarController;->getInstance(Landroid/content/Context;)Lcom/android/calendar/CalendarController;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    .line 337
    const-wide/16 v18, -0x1

    .line 338
    .local v18, "timeMillis":J
    const/16 v20, -0x1

    .line 339
    .local v20, "viewType":I
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v14

    .line 340
    .local v14, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_7

    .line 341
    const-string v5, "key_restore_time"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v18

    .line 342
    const-string v5, "key_restore_view"

    const/4 v6, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v20

    .line 355
    :cond_3
    :goto_0
    const/4 v5, -0x1

    move/from16 v0, v20

    if-ne v0, v5, :cond_4

    .line 356
    invoke-static/range {p0 .. p0}, Lcom/android/calendar/Utils;->getViewTypeFromIntentAndSharedPref(Landroid/app/Activity;)I

    move-result v20

    .line 358
    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/calendar/AllInOneActivity;->mHomeTimeUpdater:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/calendar/AllInOneActivity;->mTimeZone:Ljava/lang/String;

    .line 359
    new-instance v17, Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/calendar/AllInOneActivity;->mTimeZone:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-direct {v0, v5}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 360
    .local v17, "t":Landroid/text/format/Time;
    invoke-virtual/range {v17 .. v19}, Landroid/text/format/Time;->set(J)V

    .line 370
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    .line 371
    .local v16, "res":Landroid/content/res/Resources;
    const v5, 0x7f0c001b

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/calendar/AllInOneActivity;->mHideString:Ljava/lang/String;

    .line 372
    const v5, 0x7f0c001c

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/calendar/AllInOneActivity;->mShowString:Ljava/lang/String;

    .line 373
    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/calendar/AllInOneActivity;->mOrientation:I

    .line 374
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/calendar/AllInOneActivity;->mOrientation:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_9

    .line 375
    const v5, 0x7f0a001d

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/calendar/AllInOneActivity;->mControlsAnimateWidth:I

    .line 376
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/calendar/AllInOneActivity;->mControlsParams:Landroid/widget/RelativeLayout$LayoutParams;

    if-nez v5, :cond_5

    .line 377
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/calendar/AllInOneActivity;->mControlsAnimateWidth:I

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/calendar/AllInOneActivity;->mControlsParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 379
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/calendar/AllInOneActivity;->mControlsParams:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v6, 0xb

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 388
    :goto_1
    const v5, 0x7f0a0020

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/calendar/AllInOneActivity;->mControlsAnimateHeight:I

    .line 390
    const-string v5, "preferences_show_controls"

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v5, v6}, Lcom/android/calendar/Utils;->getSharedPreference(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_a

    const/4 v5, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/calendar/AllInOneActivity;->mHideControls:Z

    .line 392
    const v5, 0x7f090007

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/android/calendar/Utils;->getConfigBool(Landroid/content/Context;I)Z

    move-result v5

    sput-boolean v5, Lcom/android/calendar/AllInOneActivity;->mIsMultipane:Z

    .line 393
    const v5, 0x7f090006

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/android/calendar/Utils;->getConfigBool(Landroid/content/Context;I)Z

    move-result v5

    sput-boolean v5, Lcom/android/calendar/AllInOneActivity;->mIsTabletConfig:Z

    .line 394
    const v5, 0x7f090001

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/android/calendar/Utils;->getConfigBool(Landroid/content/Context;I)Z

    move-result v5

    sput-boolean v5, Lcom/android/calendar/AllInOneActivity;->mShowAgendaWithMonth:Z

    .line 395
    const/high16 v5, 0x7f090000

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/android/calendar/Utils;->getConfigBool(Landroid/content/Context;I)Z

    move-result v5

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/calendar/AllInOneActivity;->mShowCalendarControls:Z

    .line 397
    const v5, 0x7f090003

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/android/calendar/Utils;->getConfigBool(Landroid/content/Context;I)Z

    move-result v5

    sput-boolean v5, Lcom/android/calendar/AllInOneActivity;->mShowEventDetailsWithAgenda:Z

    .line 399
    const v5, 0x7f090004

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/android/calendar/Utils;->getConfigBool(Landroid/content/Context;I)Z

    move-result v5

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/calendar/AllInOneActivity;->mShowEventInfoFullScreenAgenda:Z

    .line 401
    const v5, 0x7f090005

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/android/calendar/Utils;->getConfigBool(Landroid/content/Context;I)Z

    move-result v5

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/calendar/AllInOneActivity;->mShowEventInfoFullScreen:Z

    .line 403
    const v5, 0x7f0b000a

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/calendar/AllInOneActivity;->mCalendarControlsAnimationTime:I

    .line 404
    sget-boolean v5, Lcom/android/calendar/AllInOneActivity;->mIsMultipane:Z

    invoke-static {v5}, Lcom/android/calendar/Utils;->setAllowWeekForDetailView(Z)V

    .line 407
    const v5, 0x7f04000c

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/Activity;->setContentView(I)V

    .line 409
    sget-boolean v5, Lcom/android/calendar/AllInOneActivity;->mIsTabletConfig:Z

    if-eqz v5, :cond_b

    .line 410
    const v5, 0x7f100024

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/calendar/AllInOneActivity;->mDateRange:Landroid/widget/TextView;

    .line 411
    const v5, 0x7f100025

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/calendar/AllInOneActivity;->mWeekTextView:Landroid/widget/TextView;

    .line 419
    :goto_3
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/calendar/AllInOneActivity;->configureActionBar(I)V

    .line 421
    const v5, 0x7f10001e

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/calendar/AllInOneActivity;->mHomeTime:Landroid/widget/TextView;

    .line 422
    const v5, 0x7f100022

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/calendar/AllInOneActivity;->mMiniMonth:Landroid/view/View;

    .line 423
    sget-boolean v5, Lcom/android/calendar/AllInOneActivity;->mIsTabletConfig:Z

    if-eqz v5, :cond_6

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/calendar/AllInOneActivity;->mOrientation:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_6

    .line 424
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/calendar/AllInOneActivity;->mMiniMonth:Landroid/view/View;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/calendar/AllInOneActivity;->mControlsAnimateWidth:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/calendar/AllInOneActivity;->mControlsAnimateHeight:I

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 427
    :cond_6
    const v5, 0x7f100003

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/calendar/AllInOneActivity;->mCalendarsList:Landroid/view/View;

    .line 428
    const v5, 0x7f100021

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/calendar/AllInOneActivity;->mMiniMonthContainer:Landroid/view/View;

    .line 429
    const v5, 0x7f100020

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/calendar/AllInOneActivity;->mSecondaryPane:Landroid/view/View;

    .line 434
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v5, v6, v0}, Lcom/android/calendar/CalendarController;->registerFirstEventHandler(ILcom/android/calendar/CalendarController$EventHandler;)V

    .line 436
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    move/from16 v3, v20

    move-object/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/calendar/AllInOneActivity;->initFragments(JILandroid/os/Bundle;)V

    .line 439
    invoke-static/range {p0 .. p0}, Lcom/android/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v15

    .line 440
    .local v15, "prefs":Landroid/content/SharedPreferences;
    move-object/from16 v0, p0

    invoke-interface {v15, v0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 442
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/calendar/AllInOneActivity;->mContentResolver:Landroid/content/ContentResolver;

    .line 443
    return-void

    .line 344
    .end local v15    # "prefs":Landroid/content/SharedPreferences;
    .end local v16    # "res":Landroid/content/res/Resources;
    .end local v17    # "t":Landroid/text/format/Time;
    :cond_7
    invoke-virtual {v14}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    .line 345
    .local v13, "action":Ljava/lang/String;
    const-string v5, "android.intent.action.VIEW"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 347
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/calendar/AllInOneActivity;->parseViewAction(Landroid/content/Intent;)J

    move-result-wide v18

    .line 350
    :cond_8
    const-wide/16 v5, -0x1

    cmp-long v5, v18, v5

    if-nez v5, :cond_3

    .line 351
    invoke-static {v14}, Lcom/android/calendar/Utils;->timeFromIntentInMillis(Landroid/content/Intent;)J

    move-result-wide v18

    goto/16 :goto_0

    .line 382
    .end local v13    # "action":Ljava/lang/String;
    .restart local v16    # "res":Landroid/content/res/Resources;
    .restart local v17    # "t":Landroid/text/format/Time;
    :cond_9
    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v5, v5, 0x2d

    div-int/lit8 v5, v5, 0x64

    const v6, 0x7f0a001e

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/calendar/AllInOneActivity;->mControlsAnimateWidth:I

    .line 384
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/calendar/AllInOneActivity;->mControlsAnimateWidth:I

    const v6, 0x7f0a001f

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/calendar/AllInOneActivity;->mControlsAnimateWidth:I

    goto/16 :goto_1

    .line 390
    :cond_a
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 413
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f040019

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/calendar/AllInOneActivity;->mDateRange:Landroid/widget/TextView;

    goto/16 :goto_3
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 737
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 738
    iput-object p1, p0, Lcom/android/calendar/AllInOneActivity;->mOptionsMenu:Landroid/view/Menu;

    .line 739
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0f0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 741
    const v0, 0x7f1000b8

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mSearchMenu:Landroid/view/MenuItem;

    .line 742
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mSearchMenu:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SearchView;

    iput-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mSearchView:Landroid/widget/SearchView;

    .line 743
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mSearchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_0

    .line 744
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-static {v0, p0}, Lcom/android/calendar/Utils;->setUpSearchView(Landroid/widget/SearchView;Landroid/app/Activity;)V

    .line 745
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 746
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, p0}, Landroid/widget/SearchView;->setOnSuggestionListener(Landroid/widget/SearchView$OnSuggestionListener;)V

    .line 752
    :cond_0
    const v0, 0x7f1000bb

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mControlsMenu:Landroid/view/MenuItem;

    .line 753
    iget-boolean v0, p0, Lcom/android/calendar/AllInOneActivity;->mShowCalendarControls:Z

    if-nez v0, :cond_2

    .line 754
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mControlsMenu:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    .line 755
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mControlsMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 756
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mControlsMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 769
    :cond_1
    :goto_0
    const v0, 0x7f1000b5

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 770
    iget-object v1, p0, Lcom/android/calendar/AllInOneActivity;->mTimeZone:Ljava/lang/String;

    invoke-static {v0, p0, v1}, Lcom/android/calendar/Utils;->setTodayIcon(Landroid/graphics/drawable/LayerDrawable;Landroid/content/Context;Ljava/lang/String;)V

    .line 771
    return v3

    .line 758
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mControlsMenu:Landroid/view/MenuItem;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v0}, Lcom/android/calendar/CalendarController;->getViewType()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v0}, Lcom/android/calendar/CalendarController;->getViewType()I

    move-result v0

    if-ne v0, v3, :cond_4

    .line 761
    :cond_3
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mControlsMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 762
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mControlsMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 763
    :cond_4
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mControlsMenu:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    .line 764
    iget-object v1, p0, Lcom/android/calendar/AllInOneActivity;->mControlsMenu:Landroid/view/MenuItem;

    iget-boolean v0, p0, Lcom/android/calendar/AllInOneActivity;->mHideControls:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mShowString:Ljava/lang/String;

    :goto_1
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mHideString:Ljava/lang/String;

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 644
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 646
    invoke-static {p0}, Lcom/android/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 647
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 649
    iget-object v1, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v1}, Lcom/android/calendar/CalendarController;->deregisterAllEventHandlers()V

    .line 651
    invoke-static {p0}, Lcom/android/calendar/CalendarController;->removeInstance(Landroid/content/Context;)V

    .line 652
    return-void
.end method

.method public onNavigationItemSelected(IJ)Z
    .locals 10

    .prologue
    const/4 v8, 0x2

    const/4 v9, 0x1

    const-wide/16 v2, 0x20

    const-wide/16 v6, -0x1

    const/4 v4, 0x0

    .line 1307
    packed-switch p1, :pswitch_data_0

    .line 1329
    const-string v0, "AllInOneActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ItemSelected event from unknown button: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1330
    const-string v0, "AllInOneActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CurrentView:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Button:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Day:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/AllInOneActivity;->mDayTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Week:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/AllInOneActivity;->mWeekTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Month:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/AllInOneActivity;->mMonthTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Agenda:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/AllInOneActivity;->mAgendaTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 1309
    :pswitch_0
    iget v0, p0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    if-eq v0, v8, :cond_0

    .line 1310
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    move-object v1, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v8}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JI)V

    goto :goto_0

    .line 1314
    :pswitch_1
    iget v0, p0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 1315
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    const/4 v8, 0x3

    move-object v1, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v8}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JI)V

    goto :goto_0

    .line 1319
    :pswitch_2
    iget v0, p0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 1320
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    const/4 v8, 0x4

    move-object v1, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v8}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JI)V

    goto :goto_0

    .line 1324
    :pswitch_3
    iget v0, p0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    if-eq v0, v9, :cond_0

    .line 1325
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    move-object v1, p0

    move-object v5, v4

    move v8, v9

    invoke-virtual/range {v0 .. v8}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JI)V

    goto :goto_0

    .line 1307
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 12
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x0

    const-wide/16 v6, -0x1

    .line 292
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    .line 296
    .local v9, "action":Ljava/lang/String;
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "KEY_HOME"

    invoke-virtual {p1, v0, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 298
    invoke-direct {p0, p1}, Lcom/android/calendar/AllInOneActivity;->parseViewAction(Landroid/content/Intent;)J

    move-result-wide v10

    .line 299
    .local v10, "millis":J
    cmp-long v0, v10, v6

    if-nez v0, :cond_0

    .line 300
    invoke-static {p1}, Lcom/android/calendar/Utils;->timeFromIntentInMillis(Landroid/content/Intent;)J

    move-result-wide v10

    .line 302
    :cond_0
    cmp-long v0, v10, v6

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/android/calendar/AllInOneActivity;->mViewEventId:J

    cmp-long v0, v0, v6

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    if-eqz v0, :cond_1

    .line 303
    new-instance v4, Landroid/text/format/Time;

    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mTimeZone:Ljava/lang/String;

    invoke-direct {v4, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 304
    .local v4, "time":Landroid/text/format/Time;
    invoke-virtual {v4, v10, v11}, Landroid/text/format/Time;->set(J)V

    .line 305
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Landroid/text/format/Time;->normalize(Z)J

    .line 306
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    const-wide/16 v2, 0x20

    move-object v1, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v8}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JI)V

    .line 309
    .end local v4    # "time":Landroid/text/format/Time;
    .end local v10    # "millis":J
    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 14

    .prologue
    .line 776
    .line 778
    const-wide/16 v0, 0x2

    .line 779
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 828
    const/4 v0, 0x0

    .line 831
    :goto_0
    return v0

    .line 781
    :pswitch_0
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v0}, Lcom/android/calendar/CalendarController;->refreshCalendars()V

    .line 782
    const/4 v0, 0x1

    goto :goto_0

    .line 784
    :pswitch_1
    const/4 v9, 0x0

    .line 785
    new-instance v4, Landroid/text/format/Time;

    iget-object v2, p0, Lcom/android/calendar/AllInOneActivity;->mTimeZone:Ljava/lang/String;

    invoke-direct {v4, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 786
    invoke-virtual {v4}, Landroid/text/format/Time;->setToNow()V

    .line 787
    const-wide/16 v2, 0x8

    or-long v10, v0, v2

    .line 830
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    const-wide/16 v2, 0x20

    const/4 v5, 0x0

    const-wide/16 v7, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v1, p0

    move-object v6, v4

    invoke-virtual/range {v0 .. v13}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;Landroid/text/format/Time;JIJLjava/lang/String;Landroid/content/ComponentName;)V

    .line 831
    const/4 v0, 0x1

    goto :goto_0

    .line 790
    :pswitch_2
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 791
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v0}, Lcom/android/calendar/CalendarController;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 792
    iget v0, v1, Landroid/text/format/Time;->minute:I

    const/16 v2, 0x1e

    if-le v0, v2, :cond_1

    .line 793
    iget v0, v1, Landroid/text/format/Time;->hour:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Landroid/text/format/Time;->hour:I

    .line 794
    const/4 v0, 0x0

    iput v0, v1, Landroid/text/format/Time;->minute:I

    .line 798
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    const-wide/16 v2, 0x1

    const-wide/16 v4, -0x1

    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, -0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v13}, Lcom/android/calendar/CalendarController;->sendEventRelatedEvent(Ljava/lang/Object;JJJJIIJ)V

    .line 800
    const/4 v0, 0x1

    goto :goto_0

    .line 795
    :cond_1
    iget v0, v1, Landroid/text/format/Time;->minute:I

    if-lez v0, :cond_0

    iget v0, v1, Landroid/text/format/Time;->minute:I

    const/16 v2, 0x1e

    if-ge v0, v2, :cond_0

    .line 796
    const/16 v0, 0x1e

    iput v0, v1, Landroid/text/format/Time;->minute:I

    goto :goto_1

    .line 802
    :pswitch_3
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    const-wide/16 v2, 0x800

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v8}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JI)V

    .line 804
    const/4 v0, 0x1

    goto :goto_0

    .line 806
    :pswitch_4
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    const-wide/16 v2, 0x40

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v8}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JI)V

    .line 807
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 809
    :pswitch_5
    iget-boolean v0, p0, Lcom/android/calendar/AllInOneActivity;->mHideControls:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, p0, Lcom/android/calendar/AllInOneActivity;->mHideControls:Z

    .line 810
    const-string v1, "preferences_show_controls"

    iget-boolean v0, p0, Lcom/android/calendar/AllInOneActivity;->mHideControls:Z

    if-nez v0, :cond_4

    const/4 v0, 0x1

    :goto_3
    invoke-static {p0, v1, v0}, Lcom/android/calendar/Utils;->setSharedPreference(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 812
    iget-boolean v0, p0, Lcom/android/calendar/AllInOneActivity;->mHideControls:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mShowString:Ljava/lang/String;

    :goto_4
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 813
    iget-boolean v0, p0, Lcom/android/calendar/AllInOneActivity;->mHideControls:Z

    if-nez v0, :cond_2

    .line 814
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mMiniMonth:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 815
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mCalendarsList:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 816
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mMiniMonthContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 818
    :cond_2
    const-string v1, "controlsOffset"

    const/4 v0, 0x2

    new-array v2, v0, [I

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/android/calendar/AllInOneActivity;->mHideControls:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    aput v0, v2, v3

    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/android/calendar/AllInOneActivity;->mHideControls:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/android/calendar/AllInOneActivity;->mControlsAnimateWidth:I

    :goto_6
    aput v0, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 821
    iget v1, p0, Lcom/android/calendar/AllInOneActivity;->mCalendarControlsAnimationTime:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 822
    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Landroid/animation/ObjectAnimator;->setFrameDelay(J)V

    .line 823
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 824
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 809
    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    .line 810
    :cond_4
    const/4 v0, 0x0

    goto :goto_3

    .line 812
    :cond_5
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mHideString:Ljava/lang/String;

    goto :goto_4

    .line 818
    :cond_6
    iget v0, p0, Lcom/android/calendar/AllInOneActivity;->mControlsAnimateWidth:I

    goto :goto_5

    :cond_7
    const/4 v0, 0x0

    goto :goto_6

    .line 826
    :pswitch_6
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 779
    nop

    :pswitch_data_0
    .packed-switch 0x7f1000b5
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_6
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 601
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 603
    iget-object v1, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/calendar/CalendarController;->deregisterEventHandler(Ljava/lang/Integer;)V

    .line 604
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/calendar/AllInOneActivity;->mPaused:Z

    .line 605
    iget-object v1, p0, Lcom/android/calendar/AllInOneActivity;->mHomeTime:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/calendar/AllInOneActivity;->mHomeTimeUpdater:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 606
    iget-object v1, p0, Lcom/android/calendar/AllInOneActivity;->mActionBarMenuSpinnerAdapter:Lcom/android/calendar/CalendarViewAdapter;

    if-eqz v1, :cond_0

    .line 607
    iget-object v1, p0, Lcom/android/calendar/AllInOneActivity;->mActionBarMenuSpinnerAdapter:Lcom/android/calendar/CalendarViewAdapter;

    invoke-virtual {v1}, Lcom/android/calendar/CalendarViewAdapter;->onPause()V

    .line 609
    :cond_0
    iget-object v1, p0, Lcom/android/calendar/AllInOneActivity;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/calendar/AllInOneActivity;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 610
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 612
    invoke-static {p0}, Lcom/android/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 613
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 616
    .end local v0    # "prefs":Landroid/content/SharedPreferences;
    :cond_1
    iget-object v1, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v1}, Lcom/android/calendar/CalendarController;->getViewType()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2

    .line 617
    iget-object v1, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v1}, Lcom/android/calendar/CalendarController;->getViewType()I

    move-result v1

    invoke-static {p0, v1}, Lcom/android/calendar/Utils;->setDefaultView(Landroid/content/Context;I)V

    .line 619
    :cond_2
    iget-object v1, p0, Lcom/android/calendar/AllInOneActivity;->mHandler:Lcom/android/calendar/AllInOneActivity$QueryHandler;

    iget-object v2, p0, Lcom/android/calendar/AllInOneActivity;->mTimeChangesUpdater:Ljava/lang/Runnable;

    invoke-static {v1, v2}, Lcom/android/calendar/Utils;->resetMidnightUpdater(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 620
    iget-object v1, p0, Lcom/android/calendar/AllInOneActivity;->mCalIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {p0, v1}, Lcom/android/calendar/Utils;->clearTimeChangesReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 621
    return-void
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1
    .param p1, "newText"    # Ljava/lang/String;

    .prologue
    .line 1263
    const/4 v0, 0x0

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 13

    .prologue
    const/4 v4, 0x0

    .line 1268
    const-string v0, "TARDIS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1269
    invoke-static {}, Lcom/android/calendar/Utils;->tardis()V

    .line 1271
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mSearchMenu:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->collapseActionView()Z

    .line 1272
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    const-wide/16 v2, 0x100

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v12

    move-object v1, p0

    move-object v5, v4

    move-object v11, p1

    invoke-virtual/range {v0 .. v12}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JIJLjava/lang/String;Landroid/content/ComponentName;)V

    .line 1274
    const/4 v0, 0x1

    return v0
.end method

.method protected onResume()V
    .locals 25

    .prologue
    .line 544
    invoke-super/range {p0 .. p0}, Landroid/app/Activity;->onResume()V

    .line 549
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v1, v2, v0}, Lcom/android/calendar/CalendarController;->registerFirstEventHandler(ILcom/android/calendar/CalendarController$EventHandler;)V

    .line 551
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/calendar/AllInOneActivity;->mOnSaveInstanceStateCalled:Z

    .line 552
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/AllInOneActivity;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/AllInOneActivity;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 554
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/calendar/AllInOneActivity;->mUpdateOnResume:Z

    if-eqz v1, :cond_0

    .line 555
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v1}, Lcom/android/calendar/CalendarController;->getTime()J

    move-result-wide v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v3}, Lcom/android/calendar/CalendarController;->getViewType()I

    move-result v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/calendar/AllInOneActivity;->initFragments(JILandroid/os/Bundle;)V

    .line 556
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/calendar/AllInOneActivity;->mUpdateOnResume:Z

    .line 558
    :cond_0
    new-instance v5, Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/AllInOneActivity;->mTimeZone:Ljava/lang/String;

    invoke-direct {v5, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 559
    .local v5, "t":Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v1}, Lcom/android/calendar/CalendarController;->getTime()J

    move-result-wide v1

    invoke-virtual {v5, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 560
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    const-wide/16 v3, 0x400

    const-wide/16 v7, -0x1

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v2}, Lcom/android/calendar/CalendarController;->getDateFlags()J

    move-result-wide v10

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v2, p0

    move-object v6, v5

    invoke-virtual/range {v1 .. v13}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JIJLjava/lang/String;Landroid/content/ComponentName;)V

    .line 563
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/AllInOneActivity;->mActionBarMenuSpinnerAdapter:Lcom/android/calendar/CalendarViewAdapter;

    if-eqz v1, :cond_1

    .line 564
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/AllInOneActivity;->mActionBarMenuSpinnerAdapter:Lcom/android/calendar/CalendarViewAdapter;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/android/calendar/CalendarViewAdapter;->refresh(Landroid/content/Context;)V

    .line 567
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/AllInOneActivity;->mControlsMenu:Landroid/view/MenuItem;

    if-eqz v1, :cond_2

    .line 568
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AllInOneActivity;->mControlsMenu:Landroid/view/MenuItem;

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/calendar/AllInOneActivity;->mHideControls:Z

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/AllInOneActivity;->mShowString:Ljava/lang/String;

    :goto_0
    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 570
    :cond_2
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/calendar/AllInOneActivity;->mPaused:Z

    .line 572
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/calendar/AllInOneActivity;->mViewEventId:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/calendar/AllInOneActivity;->mIntentEventStartMillis:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/calendar/AllInOneActivity;->mIntentEventEndMillis:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_4

    .line 573
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    .line 574
    .local v23, "currentMillis":J
    const-wide/16 v20, -0x1

    .line 575
    .local v20, "selectedTime":J
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/calendar/AllInOneActivity;->mIntentEventStartMillis:J

    cmp-long v1, v23, v1

    if-lez v1, :cond_3

    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/calendar/AllInOneActivity;->mIntentEventEndMillis:J

    cmp-long v1, v23, v1

    if-gez v1, :cond_3

    .line 576
    move-wide/from16 v20, v23

    .line 579
    :cond_3
    new-instance v22, Landroid/os/Bundle;

    invoke-direct/range {v22 .. v22}, Landroid/os/Bundle;-><init>()V

    .line 580
    .local v22, "extras":Landroid/os/Bundle;
    const-string v1, "com.android.calendar.ics.IMPORT_ICS"

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/calendar/AllInOneActivity;->mIsIcsImport:Z

    move-object/from16 v0, v22

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 581
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    const-wide/16 v8, 0x2

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/calendar/AllInOneActivity;->mViewEventId:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/calendar/AllInOneActivity;->mIntentEventStartMillis:J

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/calendar/AllInOneActivity;->mIntentEventEndMillis:J

    const/16 v16, -0x1

    const/16 v17, -0x1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/calendar/AllInOneActivity;->mIntentAttendeeResponse:I

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/calendar/AllInOneActivity;->mIntentAllDay:Z

    invoke-static {v1, v2}, Lcom/android/calendar/CalendarController$EventInfo;->buildViewExtraLong(IZ)J

    move-result-wide v18

    move-object/from16 v7, p0

    invoke-virtual/range {v6 .. v22}, Lcom/android/calendar/CalendarController;->sendEventRelatedEventWithExtra(Ljava/lang/Object;JJJJIIJJLandroid/os/Bundle;)V

    .line 585
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/calendar/AllInOneActivity;->mIsIcsImport:Z

    .line 587
    const-wide/16 v1, -0x1

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/calendar/AllInOneActivity;->mViewEventId:J

    .line 588
    const-wide/16 v1, -0x1

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/calendar/AllInOneActivity;->mIntentEventStartMillis:J

    .line 589
    const-wide/16 v1, -0x1

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/calendar/AllInOneActivity;->mIntentEventEndMillis:J

    .line 590
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/calendar/AllInOneActivity;->mIntentAllDay:Z

    .line 592
    .end local v20    # "selectedTime":J
    .end local v22    # "extras":Landroid/os/Bundle;
    .end local v23    # "currentMillis":J
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/AllInOneActivity;->mHandler:Lcom/android/calendar/AllInOneActivity$QueryHandler;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/AllInOneActivity;->mTimeChangesUpdater:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/AllInOneActivity;->mTimeZone:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/android/calendar/Utils;->setMidnightUpdater(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 594
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 596
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/AllInOneActivity;->mTimeChangesUpdater:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->setTimeChangesReceiver(Landroid/content/Context;Ljava/lang/Runnable;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/calendar/AllInOneActivity;->mCalIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 597
    return-void

    .line 568
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/AllInOneActivity;->mHideString:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 631
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/AllInOneActivity;->mOnSaveInstanceStateCalled:Z

    .line 632
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 634
    const-string v0, "key_restore_time"

    iget-object v1, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v1}, Lcom/android/calendar/CalendarController;->getTime()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 635
    const-string v0, "key_restore_view"

    iget v1, p0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 636
    iget v0, p0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 637
    const-string v0, "key_event_id"

    iget-object v1, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v1}, Lcom/android/calendar/CalendarController;->getEventId()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 639
    :cond_0
    const-string v0, "key_check_for_accounts"

    iget-boolean v1, p0, Lcom/android/calendar/AllInOneActivity;->mCheckForAccounts:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 640
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 1351
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mSearchMenu:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 1352
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mSearchMenu:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    .line 1354
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 860
    const-string v0, "preferences_week_start_day"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 861
    iget-boolean v0, p0, Lcom/android/calendar/AllInOneActivity;->mPaused:Z

    if-eqz v0, :cond_1

    .line 862
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/AllInOneActivity;->mUpdateOnResume:Z

    .line 867
    :cond_0
    :goto_0
    return-void

    .line 864
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v0}, Lcom/android/calendar/CalendarController;->getTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v2}, Lcom/android/calendar/CalendarController;->getViewType()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/calendar/AllInOneActivity;->initFragments(JILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onSuggestionClick(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1345
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mSearchMenu:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->collapseActionView()Z

    .line 1346
    const/4 v0, 0x0

    return v0
.end method

.method public onSuggestionSelect(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1340
    const/4 v0, 0x0

    return v0
.end method

.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "ft"    # Landroid/app/FragmentTransaction;

    .prologue
    .line 1298
    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 10

    .prologue
    const/4 v8, 0x2

    const/4 v9, 0x1

    const-wide/16 v2, 0x20

    const-wide/16 v6, -0x1

    const/4 v4, 0x0

    .line 1279
    const-string v0, "AllInOneActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TabSelected AllInOne="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " finishing:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mDayTab:Landroid/app/ActionBar$Tab;

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    if-eq v0, v8, :cond_0

    .line 1281
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    move-object v1, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v8}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JI)V

    .line 1294
    :goto_0
    return-void

    .line 1282
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mWeekTab:Landroid/app/ActionBar$Tab;

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 1283
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    const/4 v8, 0x3

    move-object v1, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v8}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JI)V

    goto :goto_0

    .line 1284
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mMonthTab:Landroid/app/ActionBar$Tab;

    if-ne p1, v0, :cond_2

    iget v0, p0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    .line 1285
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    const/4 v8, 0x4

    move-object v1, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v8}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JI)V

    goto :goto_0

    .line 1286
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mAgendaTab:Landroid/app/ActionBar$Tab;

    if-ne p1, v0, :cond_3

    iget v0, p0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    if-eq v0, v9, :cond_3

    .line 1287
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    move-object v1, p0

    move-object v5, v4

    move v8, v9

    invoke-virtual/range {v0 .. v8}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JI)V

    goto :goto_0

    .line 1289
    :cond_3
    const-string v1, "AllInOneActivity"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TabSelected event from unknown tab: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_4

    const-string v0, "null"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1291
    const-string v0, "AllInOneActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CurrentView:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/calendar/AllInOneActivity;->mCurrentView:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Tab:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Day:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/AllInOneActivity;->mDayTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Week:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/AllInOneActivity;->mWeekTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Month:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/AllInOneActivity;->mMonthTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Agenda:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/AllInOneActivity;->mAgendaTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1289
    :cond_4
    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_1
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "ft"    # Landroid/app/FragmentTransaction;

    .prologue
    .line 1302
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 625
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mController:Lcom/android/calendar/CalendarController;

    const-wide/16 v2, 0x200

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    move-object v1, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v8}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JI)V

    .line 626
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 627
    return-void
.end method

.method public setControlsOffset(I)V
    .locals 4
    .param p1, "controlsOffset"    # I

    .prologue
    const/4 v3, 0x0

    .line 841
    iget v0, p0, Lcom/android/calendar/AllInOneActivity;->mOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 842
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mMiniMonth:Landroid/view/View;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 843
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mCalendarsList:Landroid/view/View;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 844
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mControlsParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/android/calendar/AllInOneActivity;->mControlsAnimateWidth:I

    sub-int/2addr v1, p1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 845
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mMiniMonthContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/android/calendar/AllInOneActivity;->mControlsParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 856
    :goto_0
    return-void

    .line 847
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mMiniMonth:Landroid/view/View;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 848
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mCalendarsList:Landroid/view/View;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 849
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mVerticalControlsParams:Landroid/widget/LinearLayout$LayoutParams;

    if-nez v0, :cond_1

    .line 850
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    iget v2, p0, Lcom/android/calendar/AllInOneActivity;->mControlsAnimateHeight:I

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mVerticalControlsParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 853
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mVerticalControlsParams:Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/android/calendar/AllInOneActivity;->mControlsAnimateHeight:I

    sub-int/2addr v1, p1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 854
    iget-object v0, p0, Lcom/android/calendar/AllInOneActivity;->mMiniMonthContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/android/calendar/AllInOneActivity;->mVerticalControlsParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method
