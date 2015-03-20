.class public Lcom/android/calendar/month/MonthByWeekFragment;
.super Lcom/android/calendar/month/SimpleDayPickerFragment;
.source "MonthByWeekFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/android/calendar/CalendarController$EventHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/month/SimpleDayPickerFragment;",
        "Lcom/android/calendar/CalendarController$EventHandler;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/widget/AbsListView$OnScrollListener;",
        "Landroid/view/View$OnTouchListener;"
    }
.end annotation


# static fields
.field protected static mShowDetailsInMonth:Z


# instance fields
.field private final mDesiredDay:Landroid/text/format/Time;

.field private mEventUri:Landroid/net/Uri;

.field private mEventsLoadingDelay:I

.field protected mFirstLoadedJulianDay:I

.field protected mHideDeclined:Z

.field private mIsDetached:Z

.field protected mIsMiniMonth:Z

.field protected mLastLoadedJulianDay:I

.field private mLoader:Landroid/content/CursorLoader;

.field mLoadingRunnable:Ljava/lang/Runnable;

.field protected mMinimumTwoMonthFlingVelocity:F

.field private volatile mShouldLoad:Z

.field private mShowCalendarControls:Z

.field private final mTZUpdater:Ljava/lang/Runnable;

.field private final mUpdateLoader:Ljava/lang/Runnable;

.field private mUserScrolled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/calendar/month/MonthByWeekFragment;->mShowDetailsInMonth:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 296
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/calendar/month/MonthByWeekFragment;-><init>(JZ)V

    .line 297
    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 1
    .param p1, "initialTime"    # J
    .param p3, "isMiniMonth"    # Z

    .prologue
    .line 300
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/month/SimpleDayPickerFragment;-><init>(J)V

    .line 85
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mDesiredDay:Landroid/text/format/Time;

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mShouldLoad:Z

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mUserScrolled:Z

    .line 94
    new-instance v0, Lcom/android/calendar/month/MonthByWeekFragment$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/month/MonthByWeekFragment$1;-><init>(Lcom/android/calendar/month/MonthByWeekFragment;)V

    iput-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mTZUpdater:Ljava/lang/Runnable;

    .line 112
    new-instance v0, Lcom/android/calendar/month/MonthByWeekFragment$2;

    invoke-direct {v0, p0}, Lcom/android/calendar/month/MonthByWeekFragment$2;-><init>(Lcom/android/calendar/month/MonthByWeekFragment;)V

    iput-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mUpdateLoader:Ljava/lang/Runnable;

    .line 135
    new-instance v0, Lcom/android/calendar/month/MonthByWeekFragment$3;

    invoke-direct {v0, p0}, Lcom/android/calendar/month/MonthByWeekFragment$3;-><init>(Lcom/android/calendar/month/MonthByWeekFragment;)V

    iput-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mLoadingRunnable:Ljava/lang/Runnable;

    .line 301
    iput-boolean p3, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mIsMiniMonth:Z

    .line 302
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/month/MonthByWeekFragment;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/calendar/month/MonthByWeekFragment;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mTZUpdater:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/calendar/month/MonthByWeekFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/calendar/month/MonthByWeekFragment;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mShouldLoad:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/calendar/month/MonthByWeekFragment;)Landroid/content/CursorLoader;
    .locals 1
    .param p0, "x0"    # Lcom/android/calendar/month/MonthByWeekFragment;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mLoader:Landroid/content/CursorLoader;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/calendar/month/MonthByWeekFragment;Landroid/content/CursorLoader;)Landroid/content/CursorLoader;
    .locals 0
    .param p0, "x0"    # Lcom/android/calendar/month/MonthByWeekFragment;
    .param p1, "x1"    # Landroid/content/CursorLoader;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mLoader:Landroid/content/CursorLoader;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/calendar/month/MonthByWeekFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/calendar/month/MonthByWeekFragment;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/calendar/month/MonthByWeekFragment;->stopLoader()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/calendar/month/MonthByWeekFragment;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/android/calendar/month/MonthByWeekFragment;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mEventUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/calendar/month/MonthByWeekFragment;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .param p0, "x0"    # Lcom/android/calendar/month/MonthByWeekFragment;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mEventUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/calendar/month/MonthByWeekFragment;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/android/calendar/month/MonthByWeekFragment;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/calendar/month/MonthByWeekFragment;->updateUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/calendar/month/MonthByWeekFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/calendar/month/MonthByWeekFragment;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mIsDetached:Z

    return v0
.end method

.method private stopLoader()V
    .locals 3

    .prologue
    .line 199
    iget-object v1, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mUpdateLoader:Ljava/lang/Runnable;

    monitor-enter v1

    .line 200
    :try_start_0
    iget-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mUpdateLoader:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 201
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mLoader:Landroid/content/CursorLoader;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mLoader:Landroid/content/CursorLoader;

    invoke-virtual {v0}, Landroid/content/Loader;->stopLoading()V

    .line 203
    const-string v0, "MonthFragment"

    const/4 v2, 0x3

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    const-string v0, "MonthFragment"

    const-string v2, "Stopped loader from loading"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_0
    monitor-exit v1

    .line 208
    return-void

    .line 207
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateLoadedDays()V
    .locals 8

    .prologue
    .line 175
    iget-object v6, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mEventUri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    .line 176
    .local v4, "pathSegments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 177
    .local v5, "size":I
    const/4 v6, 0x2

    if-gt v5, v6, :cond_0

    .line 186
    :goto_0
    return-void

    .line 180
    :cond_0
    add-int/lit8 v6, v5, -0x2

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 181
    .local v0, "first":J
    add-int/lit8 v6, v5, -0x1

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 182
    .local v2, "last":J
    iget-object v6, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mTempTime:Landroid/text/format/Time;

    invoke-virtual {v6, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 183
    iget-object v6, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mTempTime:Landroid/text/format/Time;

    iget-wide v6, v6, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v0, v1, v6, v7}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v6

    iput v6, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mFirstLoadedJulianDay:I

    .line 184
    iget-object v6, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mTempTime:Landroid/text/format/Time;

    invoke-virtual {v6, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 185
    iget-object v6, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mTempTime:Landroid/text/format/Time;

    iget-wide v6, v6, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v2, v3, v6, v7}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v6

    iput v6, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mLastLoadedJulianDay:I

    goto :goto_0
.end method

.method private updateUri()Landroid/net/Uri;
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 153
    iget-object v7, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mListView:Landroid/widget/ListView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/month/SimpleWeekView;

    .line 154
    .local v1, "child":Lcom/android/calendar/month/SimpleWeekView;
    if-eqz v1, :cond_0

    .line 155
    invoke-virtual {v1}, Lcom/android/calendar/month/SimpleWeekView;->getFirstJulianDay()I

    move-result v4

    .line 156
    .local v4, "julianDay":I
    iput v4, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mFirstLoadedJulianDay:I

    .line 159
    .end local v4    # "julianDay":I
    :cond_0
    iget-object v7, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mTempTime:Landroid/text/format/Time;

    iget v8, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mFirstLoadedJulianDay:I

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 160
    iget-object v7, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mTempTime:Landroid/text/format/Time;

    invoke-virtual {v7, v9}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v5

    .line 161
    .local v5, "start":J
    iget v7, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mFirstLoadedJulianDay:I

    iget v8, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mNumWeeks:I

    add-int/lit8 v8, v8, 0x2

    mul-int/lit8 v8, v8, 0x7

    add-int/2addr v7, v8

    iput v7, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mLastLoadedJulianDay:I

    .line 163
    iget-object v7, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mTempTime:Landroid/text/format/Time;

    iget v8, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mLastLoadedJulianDay:I

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 164
    iget-object v7, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mTempTime:Landroid/text/format/Time;

    invoke-virtual {v7, v9}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    .line 167
    .local v2, "end":J
    sget-object v7, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 168
    .local v0, "builder":Landroid/net/Uri$Builder;
    invoke-static {v0, v5, v6}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 169
    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 170
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v7

    return-object v7
.end method


# virtual methods
.method public doResumeUpdates()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 345
    iget-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/calendar/Utils;->getFirstDayOfWeek(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mFirstDayOfWeek:I

    .line 346
    iget-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/calendar/Utils;->getShowWeekNumber(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mShowWeekNumber:Z

    .line 347
    iget-boolean v6, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mHideDeclined:Z

    .line 348
    .local v6, "prevHideDeclined":Z
    iget-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/calendar/Utils;->getHideDeclinedEvents(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mHideDeclined:Z

    .line 349
    iget-boolean v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mHideDeclined:Z

    if-eq v6, v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mLoader:Landroid/content/CursorLoader;

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mLoader:Landroid/content/CursorLoader;

    invoke-virtual {p0}, Lcom/android/calendar/month/MonthByWeekFragment;->updateWhere()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/calendar/Utils;->getDaysPerWeek(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mDaysPerWeek:I

    .line 353
    invoke-virtual {p0}, Lcom/android/calendar/month/SimpleDayPickerFragment;->updateHeader()V

    .line 354
    iget-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mAdapter:Lcom/android/calendar/month/SimpleWeeksAdapter;

    iget-object v1, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mSelectedDay:Landroid/text/format/Time;

    invoke-virtual {v0, v1}, Lcom/android/calendar/month/SimpleWeeksAdapter;->setSelectedDay(Landroid/text/format/Time;)V

    .line 355
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mTZUpdater:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 356
    iget-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mTodayUpdater:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 357
    iget-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mSelectedDay:Landroid/text/format/Time;

    invoke-virtual {v0, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    move-object v0, p0

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/calendar/month/SimpleDayPickerFragment;->goTo(JZZZ)Z

    .line 358
    return-void
.end method

.method public eventsChanged()V
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mLoader:Landroid/content/CursorLoader;

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mLoader:Landroid/content/CursorLoader;

    invoke-virtual {v0}, Landroid/content/Loader;->forceLoad()V

    .line 394
    :cond_0
    return-void
.end method

.method public getSupportedEventTypes()J
    .locals 2

    .prologue
    .line 398
    const-wide/16 v0, 0xa0

    return-wide v0
.end method

.method public handleEvent(Lcom/android/calendar/CalendarController$EventInfo;)V
    .locals 14
    .param p1, "event"    # Lcom/android/calendar/CalendarController$EventInfo;

    .prologue
    const-wide/16 v8, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 403
    iget-wide v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v10, 0x20

    cmp-long v0, v0, v10

    if-nez v0, :cond_4

    .line 404
    const/4 v3, 0x1

    .line 405
    .local v3, "animate":Z
    iget v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mDaysPerWeek:I

    iget v1, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mNumWeeks:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p1, Lcom/android/calendar/CalendarController$EventInfo;->selectedTime:Landroid/text/format/Time;

    invoke-virtual {v1, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    iget-object v10, p1, Lcom/android/calendar/CalendarController$EventInfo;->selectedTime:Landroid/text/format/Time;

    iget-wide v10, v10, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v1, v2, v10, v11}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v1

    iget-object v2, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mFirstVisibleDay:Landroid/text/format/Time;

    invoke-virtual {v2, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v10

    iget-object v2, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mFirstVisibleDay:Landroid/text/format/Time;

    iget-wide v12, v2, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v10, v11, v12, v13}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mDaysPerWeek:I

    iget v10, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mNumWeeks:I

    mul-int/2addr v2, v10

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 409
    const/4 v3, 0x0

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mDesiredDay:Landroid/text/format/Time;

    iget-object v1, p1, Lcom/android/calendar/CalendarController$EventInfo;->selectedTime:Landroid/text/format/Time;

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 412
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mDesiredDay:Landroid/text/format/Time;

    invoke-virtual {v0, v4}, Landroid/text/format/Time;->normalize(Z)J

    .line 413
    iget-wide v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->extraLong:J

    const-wide/16 v10, 0x8

    and-long/2addr v0, v10

    cmp-long v0, v0, v8

    if-eqz v0, :cond_2

    move v6, v4

    .line 414
    .local v6, "animateToday":Z
    :goto_0
    iget-object v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->selectedTime:Landroid/text/format/Time;

    invoke-virtual {v0, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/calendar/month/SimpleDayPickerFragment;->goTo(JZZZ)Z

    move-result v7

    .line 415
    .local v7, "delayAnimation":Z
    if-eqz v6, :cond_1

    .line 418
    iget-object v2, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/calendar/month/MonthByWeekFragment$4;

    invoke-direct {v4, p0}, Lcom/android/calendar/month/MonthByWeekFragment$4;-><init>(Lcom/android/calendar/month/MonthByWeekFragment;)V

    if-eqz v7, :cond_3

    const-wide/16 v0, 0x1f4

    :goto_1
    invoke-virtual {v2, v4, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 429
    .end local v3    # "animate":Z
    .end local v6    # "animateToday":Z
    .end local v7    # "delayAnimation":Z
    :cond_1
    :goto_2
    return-void

    .restart local v3    # "animate":Z
    :cond_2
    move v6, v5

    .line 413
    goto :goto_0

    .restart local v6    # "animateToday":Z
    .restart local v7    # "delayAnimation":Z
    :cond_3
    move-wide v0, v8

    .line 418
    goto :goto_1

    .line 426
    .end local v3    # "animate":Z
    .end local v6    # "animateToday":Z
    .end local v7    # "delayAnimation":Z
    :cond_4
    iget-wide v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v4, 0x80

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    .line 427
    invoke-virtual {p0}, Lcom/android/calendar/month/MonthByWeekFragment;->eventsChanged()V

    goto :goto_2
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 279
    invoke-super {p0, p1}, Lcom/android/calendar/month/SimpleDayPickerFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 280
    iget-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 281
    iget-boolean v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mIsMiniMonth:Z

    if-nez v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080028

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 287
    :cond_0
    iget-boolean v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mShowCalendarControls:Z

    if-eqz v0, :cond_1

    .line 288
    iget-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mLoadingRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mEventsLoadingDelay:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 292
    :goto_0
    iget-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mAdapter:Lcom/android/calendar/month/SimpleWeeksAdapter;

    iget-object v1, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Lcom/android/calendar/month/SimpleWeeksAdapter;->setListView(Landroid/widget/ListView;)V

    .line 293
    return-void

    .line 290
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    move-result-object v0

    check-cast v0, Landroid/content/CursorLoader;

    iput-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mLoader:Landroid/content/CursorLoader;

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 212
    invoke-super {p0, p1}, Lcom/android/calendar/month/SimpleDayPickerFragment;->onAttach(Landroid/app/Activity;)V

    .line 213
    iget-object v2, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mTZUpdater:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 214
    iget-object v2, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mAdapter:Lcom/android/calendar/month/SimpleWeeksAdapter;

    if-eqz v2, :cond_0

    .line 215
    iget-object v2, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mAdapter:Lcom/android/calendar/month/SimpleWeeksAdapter;

    iget-object v3, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mSelectedDay:Landroid/text/format/Time;

    invoke-virtual {v2, v3}, Lcom/android/calendar/month/SimpleWeeksAdapter;->setSelectedDay(Landroid/text/format/Time;)V

    .line 217
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mIsDetached:Z

    .line 219
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 220
    .local v1, "viewConfig":Landroid/view/ViewConfiguration;
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mMinimumTwoMonthFlingVelocity:F

    .line 221
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 222
    .local v0, "res":Landroid/content/res/Resources;
    const/high16 v2, 0x7f090000

    invoke-static {p1, v2}, Lcom/android/calendar/Utils;->getConfigBool(Landroid/content/Context;I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mShowCalendarControls:Z

    .line 225
    iget-boolean v2, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mShowCalendarControls:Z

    if-eqz v2, :cond_1

    .line 226
    const v2, 0x7f0b000a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mEventsLoadingDelay:I

    .line 228
    :cond_1
    const v2, 0x7f090002

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    sput-boolean v2, Lcom/android/calendar/month/MonthByWeekFragment;->mShowDetailsInMonth:Z

    .line 229
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 8
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
    const/4 v0, 0x0

    .line 321
    iget-boolean v1, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mIsMiniMonth:Z

    if-eqz v1, :cond_1

    .line 340
    :cond_0
    :goto_0
    return-object v0

    .line 325
    :cond_1
    iget-object v7, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mUpdateLoader:Ljava/lang/Runnable;

    monitor-enter v7

    .line 326
    :try_start_0
    iget-object v1, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mSelectedDay:Landroid/text/format/Time;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mSelectedDay:Landroid/text/format/Time;

    iget-wide v5, v3, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v1, v2, v5, v6}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v1

    iget v2, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mNumWeeks:I

    mul-int/lit8 v2, v2, 0x7

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mFirstLoadedJulianDay:I

    .line 329
    invoke-direct {p0}, Lcom/android/calendar/month/MonthByWeekFragment;->updateUri()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mEventUri:Landroid/net/Uri;

    .line 330
    invoke-virtual {p0}, Lcom/android/calendar/month/MonthByWeekFragment;->updateWhere()Ljava/lang/String;

    move-result-object v4

    .line 332
    .local v4, "where":Ljava/lang/String;
    new-instance v0, Landroid/content/CursorLoader;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mEventUri:Landroid/net/Uri;

    sget-object v3, Lcom/android/calendar/Event;->EVENT_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "startDay,startMinute,title"

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    .local v0, "loader":Landroid/content/CursorLoader;
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/content/AsyncTaskLoader;->setUpdateThrottle(J)V

    .line 336
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    const-string v1, "MonthFragment"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 338
    const-string v1, "MonthFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Returning new loader with uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mEventUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 336
    .end local v0    # "loader":Landroid/content/CursorLoader;
    .end local v4    # "where":Ljava/lang/String;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 268
    iget-boolean v1, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mIsMiniMonth:Z

    if-eqz v1, :cond_0

    .line 269
    const v1, 0x7f04002b

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 273
    .local v0, "v":Landroid/view/View;
    :goto_0
    const v1, 0x7f10009e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mDayNamesHeader:Landroid/view/ViewGroup;

    .line 274
    return-object v0

    .line 271
    .end local v0    # "v":Landroid/view/View;
    :cond_0
    const v1, 0x7f040027

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .restart local v0    # "v":Landroid/view/View;
    goto :goto_0
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 233
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mIsDetached:Z

    .line 234
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 235
    iget-boolean v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mShowCalendarControls:Z

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mLoadingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 240
    :cond_0
    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 8
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
    .line 362
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    iget-object v4, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mUpdateLoader:Ljava/lang/Runnable;

    monitor-enter v4

    .line 363
    :try_start_0
    const-string v3, "MonthFragment"

    const/4 v5, 0x3

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 364
    const-string v3, "MonthFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Found "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " cursor entries for uri "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mEventUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/content/CursorLoader;

    move-object v1, v0

    .line 367
    .local v1, "cLoader":Landroid/content/CursorLoader;
    iget-object v3, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mEventUri:Landroid/net/Uri;

    if-nez v3, :cond_1

    .line 368
    invoke-virtual {v1}, Landroid/content/CursorLoader;->getUri()Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mEventUri:Landroid/net/Uri;

    .line 369
    invoke-direct {p0}, Lcom/android/calendar/month/MonthByWeekFragment;->updateLoadedDays()V

    .line 371
    :cond_1
    invoke-virtual {v1}, Landroid/content/CursorLoader;->getUri()Landroid/net/Uri;

    move-result-object v3

    iget-object v5, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mEventUri:Landroid/net/Uri;

    invoke-virtual {v3, v5}, Landroid/net/Uri;->compareTo(Landroid/net/Uri;)I

    move-result v3

    if-eqz v3, :cond_2

    .line 374
    monitor-exit v4

    .line 382
    :goto_0
    return-void

    .line 376
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 377
    .local v2, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    iget-object v3, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mFirstLoadedJulianDay:I

    iget v6, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mLastLoadedJulianDay:I

    invoke-static {v2, p2, v3, v5, v6}, Lcom/android/calendar/Event;->buildEventsFromCursor(Ljava/util/ArrayList;Landroid/database/Cursor;Landroid/content/Context;II)V

    .line 379
    iget-object v3, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mAdapter:Lcom/android/calendar/month/SimpleWeeksAdapter;

    check-cast v3, Lcom/android/calendar/month/MonthByWeekAdapter;

    iget v5, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mFirstLoadedJulianDay:I

    iget v6, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mLastLoadedJulianDay:I

    iget v7, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mFirstLoadedJulianDay:I

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v3, v5, v6, v2}, Lcom/android/calendar/month/MonthByWeekAdapter;->setEvents(IILjava/util/ArrayList;)V

    .line 381
    monitor-exit v4

    goto :goto_0

    .end local v1    # "cLoader":Landroid/content/CursorLoader;
    .end local v2    # "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 56
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/month/MonthByWeekFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
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
    .line 386
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 6
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    const/4 v5, 0x1

    .line 464
    iget-object v1, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mUpdateLoader:Ljava/lang/Runnable;

    monitor-enter v1

    .line 465
    if-eqz p2, :cond_1

    .line 466
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mShouldLoad:Z

    .line 467
    invoke-direct {p0}, Lcom/android/calendar/month/MonthByWeekFragment;->stopLoader()V

    .line 468
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mDesiredDay:Landroid/text/format/Time;

    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 474
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 475
    if-ne p2, v5, :cond_0

    .line 476
    iput-boolean v5, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mUserScrolled:Z

    .line 479
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mScrollStateChangedRunnable:Lcom/android/calendar/month/SimpleDayPickerFragment$ScrollStateRunnable;

    invoke-virtual {v0, p1, p2}, Lcom/android/calendar/month/SimpleDayPickerFragment$ScrollStateRunnable;->doScrollStateChange(Landroid/widget/AbsListView;I)V

    .line 480
    return-void

    .line 470
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mUpdateLoader:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 471
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mShouldLoad:Z

    .line 472
    iget-object v0, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mUpdateLoader:Ljava/lang/Runnable;

    const-wide/16 v3, 0xc8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 474
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 484
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mDesiredDay:Landroid/text/format/Time;

    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 485
    const/4 v0, 0x0

    return v0
.end method

.method protected setMonthDisplayed(Landroid/text/format/Time;Z)V
    .locals 20
    .param p1, "time"    # Landroid/text/format/Time;
    .param p2, "updateHighlight"    # Z

    .prologue
    .line 433
    invoke-super/range {p0 .. p2}, Lcom/android/calendar/month/SimpleDayPickerFragment;->setMonthDisplayed(Landroid/text/format/Time;Z)V

    .line 434
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/calendar/month/MonthByWeekFragment;->mIsMiniMonth:Z

    if-nez v2, :cond_1

    .line 435
    const/16 v19, 0x0

    .line 436
    .local v19, "useSelected":Z
    move-object/from16 v0, p1

    iget v2, v0, Landroid/text/format/Time;->year:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/month/MonthByWeekFragment;->mDesiredDay:Landroid/text/format/Time;

    iget v3, v3, Landroid/text/format/Time;->year:I

    if-ne v2, v3, :cond_2

    move-object/from16 v0, p1

    iget v2, v0, Landroid/text/format/Time;->month:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/month/MonthByWeekFragment;->mDesiredDay:Landroid/text/format/Time;

    iget v3, v3, Landroid/text/format/Time;->month:I

    if-ne v2, v3, :cond_2

    .line 437
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mSelectedDay:Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/month/MonthByWeekFragment;->mDesiredDay:Landroid/text/format/Time;

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 438
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mAdapter:Lcom/android/calendar/month/SimpleWeeksAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/month/MonthByWeekFragment;->mDesiredDay:Landroid/text/format/Time;

    invoke-virtual {v2, v3}, Lcom/android/calendar/month/SimpleWeeksAdapter;->setSelectedDay(Landroid/text/format/Time;)V

    .line 439
    const/16 v19, 0x1

    .line 444
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/calendar/CalendarController;->getInstance(Landroid/content/Context;)Lcom/android/calendar/CalendarController;

    move-result-object v1

    .line 445
    .local v1, "controller":Lcom/android/calendar/CalendarController;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mSelectedDay:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->minute:I

    const/16 v3, 0x1e

    if-lt v2, v3, :cond_3

    .line 446
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mSelectedDay:Landroid/text/format/Time;

    const/16 v3, 0x1e

    iput v3, v2, Landroid/text/format/Time;->minute:I

    .line 450
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mSelectedDay:Landroid/text/format/Time;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v15

    .line 451
    .local v15, "newTime":J
    invoke-virtual {v1}, Lcom/android/calendar/CalendarController;->getTime()J

    move-result-wide v2

    cmp-long v2, v15, v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/calendar/month/MonthByWeekFragment;->mUserScrolled:Z

    if-eqz v2, :cond_0

    .line 452
    if-eqz v19, :cond_4

    const-wide/16 v17, 0x0

    .line 453
    .local v17, "offset":J
    :goto_2
    add-long v2, v15, v17

    invoke-virtual {v1, v2, v3}, Lcom/android/calendar/CalendarController;->setTime(J)V

    .line 455
    .end local v17    # "offset":J
    :cond_0
    const-wide/16 v3, 0x400

    const-wide/16 v8, -0x1

    const/4 v10, 0x0

    const-wide/16 v11, 0x34

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p1

    move-object/from16 v7, p1

    invoke-virtual/range {v1 .. v14}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;Landroid/text/format/Time;JIJLjava/lang/String;Landroid/content/ComponentName;)V

    .line 459
    .end local v1    # "controller":Lcom/android/calendar/CalendarController;
    .end local v15    # "newTime":J
    .end local v19    # "useSelected":Z
    :cond_1
    return-void

    .line 441
    .restart local v19    # "useSelected":Z
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mSelectedDay:Landroid/text/format/Time;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 442
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mAdapter:Lcom/android/calendar/month/SimpleWeeksAdapter;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/calendar/month/SimpleWeeksAdapter;->setSelectedDay(Landroid/text/format/Time;)V

    goto :goto_0

    .line 448
    .restart local v1    # "controller":Lcom/android/calendar/CalendarController;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mSelectedDay:Landroid/text/format/Time;

    const/4 v3, 0x0

    iput v3, v2, Landroid/text/format/Time;->minute:I

    goto :goto_1

    .line 452
    .restart local v15    # "newTime":J
    :cond_4
    const-wide/32 v2, 0x240c8400

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mNumWeeks:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x3

    div-long v17, v2, v4

    goto :goto_2
.end method

.method protected setUpAdapter()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 244
    iget-object v1, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/calendar/Utils;->getFirstDayOfWeek(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mFirstDayOfWeek:I

    .line 245
    iget-object v1, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/calendar/Utils;->getShowWeekNumber(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mShowWeekNumber:Z

    .line 247
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 248
    .local v0, "weekParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v1, "num_weeks"

    iget v4, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mNumWeeks:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    const-string v4, "week_numbers"

    iget-boolean v1, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mShowWeekNumber:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    const-string v1, "week_start"

    iget v4, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mFirstDayOfWeek:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    const-string v1, "mini_month"

    iget-boolean v4, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mIsMiniMonth:Z

    if-eqz v4, :cond_0

    move v3, v2

    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    const-string v1, "selected_day"

    iget-object v3, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mSelectedDay:Landroid/text/format/Time;

    invoke-virtual {v3, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mSelectedDay:Landroid/text/format/Time;

    iget-wide v4, v4, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v2, v3, v4, v5}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    const-string v1, "days_per_week"

    iget v2, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mDaysPerWeek:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    iget-object v1, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mAdapter:Lcom/android/calendar/month/SimpleWeeksAdapter;

    if-nez v1, :cond_2

    .line 256
    new-instance v1, Lcom/android/calendar/month/MonthByWeekAdapter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/calendar/month/MonthByWeekAdapter;-><init>(Landroid/content/Context;Ljava/util/HashMap;)V

    iput-object v1, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mAdapter:Lcom/android/calendar/month/SimpleWeeksAdapter;

    .line 257
    iget-object v1, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mAdapter:Lcom/android/calendar/month/SimpleWeeksAdapter;

    iget-object v2, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v1, v2}, Landroid/widget/BaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 261
    :goto_1
    iget-object v1, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mAdapter:Lcom/android/calendar/month/SimpleWeeksAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 262
    return-void

    :cond_1
    move v1, v3

    .line 249
    goto :goto_0

    .line 259
    :cond_2
    iget-object v1, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mAdapter:Lcom/android/calendar/month/SimpleWeeksAdapter;

    invoke-virtual {v1, v0}, Lcom/android/calendar/month/SimpleWeeksAdapter;->updateParams(Ljava/util/HashMap;)V

    goto :goto_1
.end method

.method protected setUpHeader()V
    .locals 5

    .prologue
    const/4 v4, 0x7

    .line 306
    iget-boolean v1, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mIsMiniMonth:Z

    if-eqz v1, :cond_1

    .line 307
    invoke-super {p0}, Lcom/android/calendar/month/SimpleDayPickerFragment;->setUpHeader()V

    .line 316
    :cond_0
    return-void

    .line 311
    :cond_1
    new-array v1, v4, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mDayLabels:[Ljava/lang/String;

    .line 312
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-gt v0, v4, :cond_0

    .line 313
    iget-object v1, p0, Lcom/android/calendar/month/SimpleDayPickerFragment;->mDayLabels:[Ljava/lang/String;

    add-int/lit8 v2, v0, -0x1

    const/16 v3, 0x14

    invoke-static {v0, v3}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 312
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected updateWhere()Ljava/lang/String;
    .locals 3

    .prologue
    .line 190
    const-string v0, "visible=1"

    .line 191
    .local v0, "where":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/calendar/month/MonthByWeekFragment;->mHideDeclined:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/calendar/month/MonthByWeekFragment;->mShowDetailsInMonth:Z

    if-nez v1, :cond_1

    .line 192
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND selfAttendeeStatus!=2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 195
    :cond_1
    return-object v0
.end method
