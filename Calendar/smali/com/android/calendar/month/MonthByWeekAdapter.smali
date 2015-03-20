.class public Lcom/android/calendar/month/MonthByWeekAdapter;
.super Lcom/android/calendar/month/SimpleWeeksAdapter;
.source "MonthByWeekAdapter.java"


# static fields
.field protected static DEFAULT_QUERY_DAYS:I

.field private static mMovedPixelToCancel:F

.field private static mOnDownDelay:I

.field private static mTotalClickDelay:I


# instance fields
.field private mAnimateTime:J

.field private mAnimateToday:Z

.field mClickTime:J

.field mClickedView:Lcom/android/calendar/month/MonthWeekEventsView;

.field mClickedXLocation:F

.field protected mController:Lcom/android/calendar/CalendarController;

.field private final mDoClick:Ljava/lang/Runnable;

.field private final mDoSingleTapUp:Ljava/lang/Runnable;

.field protected mEventDayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;"
        }
    .end annotation
.end field

.field protected mFirstJulianDay:I

.field protected mHomeTimeZone:Ljava/lang/String;

.field protected mIsMiniMonth:Z

.field protected mOrientation:I

.field protected mQueryDays:I

.field private final mShowAgendaWithMonth:Z

.field mSingleTapUpView:Lcom/android/calendar/month/MonthWeekEventsView;

.field protected mTempTime:Landroid/text/format/Time;

.field protected mToday:Landroid/text/format/Time;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/16 v0, 0x38

    sput v0, Lcom/android/calendar/month/MonthByWeekAdapter;->DEFAULT_QUERY_DAYS:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/month/SimpleWeeksAdapter;-><init>(Landroid/content/Context;Ljava/util/HashMap;)V

    .line 53
    iput-boolean v2, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mIsMiniMonth:Z

    .line 54
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mOrientation:I

    .line 57
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mEventDayList:Ljava/util/ArrayList;

    .line 58
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mEvents:Ljava/util/ArrayList;

    .line 60
    iput-boolean v3, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mAnimateToday:Z

    .line 61
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mAnimateTime:J

    .line 372
    new-instance v1, Lcom/android/calendar/month/MonthByWeekAdapter$1;

    invoke-direct {v1, p0}, Lcom/android/calendar/month/MonthByWeekAdapter$1;-><init>(Lcom/android/calendar/month/MonthByWeekAdapter;)V

    iput-object v1, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mDoClick:Ljava/lang/Runnable;

    .line 389
    new-instance v1, Lcom/android/calendar/month/MonthByWeekAdapter$2;

    invoke-direct {v1, p0}, Lcom/android/calendar/month/MonthByWeekAdapter$2;-><init>(Lcom/android/calendar/month/MonthByWeekAdapter;)V

    iput-object v1, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mDoSingleTapUp:Ljava/lang/Runnable;

    .line 79
    const-string v1, "mini_month"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    const-string v1, "mini_month"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mIsMiniMonth:Z

    .line 82
    :cond_0
    const v1, 0x7f090001

    invoke-static {p1, v1}, Lcom/android/calendar/Utils;->getConfigBool(Landroid/content/Context;I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mShowAgendaWithMonth:Z

    .line 83
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 84
    .local v0, "vc":Landroid/view/ViewConfiguration;
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v1

    sput v1, Lcom/android/calendar/month/MonthByWeekAdapter;->mOnDownDelay:I

    .line 85
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    int-to-float v1, v1

    sput v1, Lcom/android/calendar/month/MonthByWeekAdapter;->mMovedPixelToCancel:F

    .line 86
    sget v1, Lcom/android/calendar/month/MonthByWeekAdapter;->mOnDownDelay:I

    add-int/lit8 v1, v1, 0x64

    sput v1, Lcom/android/calendar/month/MonthByWeekAdapter;->mTotalClickDelay:I

    .line 88
    return-void

    .end local v0    # "vc":Landroid/view/ViewConfiguration;
    :cond_1
    move v1, v3

    .line 80
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/calendar/month/MonthByWeekAdapter;Lcom/android/calendar/month/MonthWeekEventsView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/calendar/month/MonthByWeekAdapter;
    .param p1, "x1"    # Lcom/android/calendar/month/MonthWeekEventsView;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/calendar/month/MonthByWeekAdapter;->clearClickedView(Lcom/android/calendar/month/MonthWeekEventsView;)V

    return-void
.end method

.method private clearClickedView(Lcom/android/calendar/month/MonthWeekEventsView;)V
    .locals 2
    .param p1, "v"    # Lcom/android/calendar/month/MonthWeekEventsView;

    .prologue
    .line 363
    iget-object v0, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mDoClick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 364
    monitor-enter p1

    .line 365
    :try_start_0
    invoke-virtual {p1}, Lcom/android/calendar/month/MonthWeekEventsView;->clearClickedDay()V

    .line 366
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 367
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mClickedView:Lcom/android/calendar/month/MonthWeekEventsView;

    .line 368
    return-void

    .line 366
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private sendEventsToView(Lcom/android/calendar/month/MonthWeekEventsView;)V
    .locals 7
    .param p1, "v"    # Lcom/android/calendar/month/MonthWeekEventsView;

    .prologue
    const/4 v4, 0x3

    const/4 v6, 0x0

    .line 249
    iget-object v3, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mEventDayList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 250
    const-string v3, "MonthByWeek"

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 251
    const-string v3, "MonthByWeek"

    const-string v4, "No events loaded, did not pass any events to view."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_0
    invoke-virtual {p1, v6, v6}, Lcom/android/calendar/month/MonthWeekEventsView;->setEvents(Ljava/util/List;Ljava/util/ArrayList;)V

    .line 268
    :goto_0
    return-void

    .line 256
    :cond_1
    invoke-virtual {p1}, Lcom/android/calendar/month/SimpleWeekView;->getFirstJulianDay()I

    move-result v2

    .line 257
    .local v2, "viewJulianDay":I
    iget v3, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mFirstJulianDay:I

    sub-int v1, v2, v3

    .line 258
    .local v1, "start":I
    iget v3, p1, Lcom/android/calendar/month/SimpleWeekView;->mNumDays:I

    add-int v0, v1, v3

    .line 259
    .local v0, "end":I
    if-ltz v1, :cond_2

    iget-object v3, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mEventDayList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v0, v3, :cond_4

    .line 260
    :cond_2
    const-string v3, "MonthByWeek"

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 261
    const-string v3, "MonthByWeek"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Week is outside range of loaded events. viewStart: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " eventsStart: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mFirstJulianDay:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_3
    invoke-virtual {p1, v6, v6}, Lcom/android/calendar/month/MonthWeekEventsView;->setEvents(Ljava/util/List;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 267
    :cond_4
    iget-object v3, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mEventDayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1, v0}, Ljava/util/AbstractList;->subList(II)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {p1, v3, v4}, Lcom/android/calendar/month/MonthWeekEventsView;->setEvents(Ljava/util/List;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method private updateTimeZones()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mSelectedDay:Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mHomeTimeZone:Ljava/lang/String;

    iput-object v1, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 108
    iget-object v0, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mSelectedDay:Landroid/text/format/Time;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 109
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mToday:Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mHomeTimeZone:Ljava/lang/String;

    iput-object v1, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 110
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mToday:Landroid/text/format/Time;

    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 111
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mTempTime:Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mHomeTimeZone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 112
    return-void
.end method


# virtual methods
.method public animateToday()V
    .locals 2

    .prologue
    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mAnimateToday:Z

    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mAnimateTime:J

    .line 93
    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 182
    iget-boolean v7, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mIsMiniMonth:Z

    if-eqz v7, :cond_0

    .line 183
    invoke-super {p0, p1, p2, p3}, Lcom/android/calendar/month/SimpleWeeksAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 245
    :goto_0
    return-object v6

    .line 186
    :cond_0
    new-instance v4, Landroid/widget/AbsListView$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-direct {v4, v7, v8}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 188
    .local v4, "params":Landroid/widget/AbsListView$LayoutParams;
    const/4 v2, 0x0

    .line 189
    .local v2, "drawingParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .line 190
    .local v3, "isAnimatingToday":Z
    if-eqz p2, :cond_6

    move-object v6, p2

    .line 191
    check-cast v6, Lcom/android/calendar/month/MonthWeekEventsView;

    .line 194
    .local v6, "v":Lcom/android/calendar/month/MonthWeekEventsView;
    iget-boolean v7, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mAnimateToday:Z

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mSelectedDay:Landroid/text/format/Time;

    iget-object v7, v7, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/android/calendar/month/MonthWeekEventsView;->updateToday(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 195
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 199
    .local v0, "currentTime":J
    iget-wide v7, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mAnimateTime:J

    sub-long v7, v0, v7

    const-wide/16 v9, 0x3e8

    cmp-long v7, v7, v9

    if-lez v7, :cond_4

    .line 200
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mAnimateToday:Z

    .line 201
    const-wide/16 v7, 0x0

    iput-wide v7, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mAnimateTime:J

    .line 214
    .end local v0    # "currentTime":J
    :goto_1
    if-nez v2, :cond_1

    .line 215
    new-instance v2, Ljava/util/HashMap;

    .end local v2    # "drawingParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 217
    .restart local v2    # "drawingParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_1
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 219
    invoke-virtual {v6, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 220
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/view/View;->setClickable(Z)V

    .line 221
    invoke-virtual {v6, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 223
    const/4 v5, -0x1

    .line 224
    .local v5, "selectedDay":I
    iget v7, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mSelectedWeek:I

    if-ne v7, p1, :cond_2

    .line 225
    iget-object v7, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mSelectedDay:Landroid/text/format/Time;

    iget v5, v7, Landroid/text/format/Time;->weekDay:I

    .line 228
    :cond_2
    const-string v7, "height"

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v8

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v9

    add-int/2addr v8, v9

    iget v9, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mNumWeeks:I

    div-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    const-string v7, "selected_day"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    const-string v8, "show_wk_num"

    iget-boolean v7, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mShowWeekNumber:Z

    if-eqz v7, :cond_7

    const/4 v7, 0x1

    :goto_2
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    const-string v7, "week_start"

    iget v8, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mFirstDayOfWeek:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    const-string v7, "num_days"

    iget v8, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mDaysPerWeek:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    const-string v7, "week"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    const-string v7, "focus_month"

    iget v8, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mFocusMonth:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    const-string v7, "orientation"

    iget v8, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mOrientation:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    if-eqz v3, :cond_3

    .line 239
    const-string v7, "animate_today"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mAnimateToday:Z

    .line 243
    :cond_3
    iget-object v7, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mSelectedDay:Landroid/text/format/Time;

    iget-object v7, v7, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    invoke-virtual {v6, v2, v7}, Lcom/android/calendar/month/MonthWeekEventsView;->setWeekParams(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 244
    invoke-direct {p0, v6}, Lcom/android/calendar/month/MonthByWeekAdapter;->sendEventsToView(Lcom/android/calendar/month/MonthWeekEventsView;)V

    goto/16 :goto_0

    .line 203
    .end local v5    # "selectedDay":I
    .restart local v0    # "currentTime":J
    :cond_4
    const/4 v3, 0x1

    .line 206
    new-instance v6, Lcom/android/calendar/month/MonthWeekEventsView;

    .end local v6    # "v":Lcom/android/calendar/month/MonthWeekEventsView;
    iget-object v7, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/android/calendar/month/MonthWeekEventsView;-><init>(Landroid/content/Context;)V

    .restart local v6    # "v":Lcom/android/calendar/month/MonthWeekEventsView;
    goto/16 :goto_1

    .line 209
    .end local v0    # "currentTime":J
    :cond_5
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "drawingParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    check-cast v2, Ljava/util/HashMap;

    .restart local v2    # "drawingParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto/16 :goto_1

    .line 212
    .end local v6    # "v":Lcom/android/calendar/month/MonthWeekEventsView;
    :cond_6
    new-instance v6, Lcom/android/calendar/month/MonthWeekEventsView;

    iget-object v7, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/android/calendar/month/MonthWeekEventsView;-><init>(Landroid/content/Context;)V

    .restart local v6    # "v":Lcom/android/calendar/month/MonthWeekEventsView;
    goto/16 :goto_1

    .line 231
    .restart local v5    # "selectedDay":I
    :cond_7
    const/4 v7, 0x0

    goto :goto_2
.end method

.method protected init()V
    .locals 2

    .prologue
    .line 97
    invoke-super {p0}, Lcom/android/calendar/month/SimpleWeeksAdapter;->init()V

    .line 98
    iget-object v0, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/calendar/CalendarController;->getInstance(Landroid/content/Context;)Lcom/android/calendar/CalendarController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mController:Lcom/android/calendar/CalendarController;

    .line 99
    iget-object v0, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mHomeTimeZone:Ljava/lang/String;

    .line 100
    iget-object v0, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mSelectedDay:Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mHomeTimeZone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 101
    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mHomeTimeZone:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mToday:Landroid/text/format/Time;

    .line 102
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mToday:Landroid/text/format/Time;

    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 103
    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mHomeTimeZone:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mTempTime:Landroid/text/format/Time;

    .line 104
    return-void
.end method

.method protected onDayTapped(Landroid/text/format/Time;)V
    .locals 14
    .param p1, "day"    # Landroid/text/format/Time;

    .prologue
    const-wide/16 v2, 0x20

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    const/4 v11, 0x0

    .line 282
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mHomeTimeZone:Ljava/lang/String;

    iput-object v0, p1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 283
    new-instance v13, Landroid/text/format/Time;

    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mHomeTimeZone:Ljava/lang/String;

    invoke-direct {v13, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 284
    .local v13, "currTime":Landroid/text/format/Time;
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v0}, Lcom/android/calendar/CalendarController;->getTime()J

    move-result-wide v0

    invoke-virtual {v13, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 285
    iget v0, v13, Landroid/text/format/Time;->hour:I

    iput v0, p1, Landroid/text/format/Time;->hour:I

    .line 286
    iget v0, v13, Landroid/text/format/Time;->minute:I

    iput v0, p1, Landroid/text/format/Time;->minute:I

    .line 287
    iput-boolean v8, p1, Landroid/text/format/Time;->allDay:Z

    .line 288
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/text/format/Time;->normalize(Z)J

    .line 289
    iget-boolean v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mShowAgendaWithMonth:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mIsMiniMonth:Z

    if-nez v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mController:Lcom/android/calendar/CalendarController;

    iget-object v1, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mContext:Landroid/content/Context;

    const-wide/16 v9, 0x1

    move-object v4, p1

    move-object v5, p1

    move-object v12, v11

    invoke-virtual/range {v0 .. v12}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JIJLjava/lang/String;Landroid/content/ComponentName;)V

    .line 301
    :goto_0
    return-void

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mController:Lcom/android/calendar/CalendarController;

    iget-object v1, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mContext:Landroid/content/Context;

    iget-boolean v4, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mIsMiniMonth:Z

    if-eqz v4, :cond_1

    :goto_1
    const-wide/16 v9, 0x5

    move-object v4, p1

    move-object v5, p1

    move-object v12, v11

    invoke-virtual/range {v0 .. v12}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JIJLjava/lang/String;Landroid/content/ComponentName;)V

    goto :goto_0

    :cond_1
    const/4 v8, -0x1

    goto :goto_1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 306
    instance-of v3, p1, Lcom/android/calendar/month/MonthWeekEventsView;

    if-nez v3, :cond_0

    .line 307
    invoke-super {p0, p1, p2}, Lcom/android/calendar/month/SimpleWeeksAdapter;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v3

    .line 348
    .end local p1    # "v":Landroid/view/View;
    :goto_0
    return v3

    .line 310
    .restart local p1    # "v":Landroid/view/View;
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 314
    .local v0, "action":I
    iget-object v3, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 315
    check-cast p1, Lcom/android/calendar/month/MonthWeekEventsView;

    .end local p1    # "v":Landroid/view/View;
    iput-object p1, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mSingleTapUpView:Lcom/android/calendar/month/MonthWeekEventsView;

    .line 316
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mClickTime:J

    sub-long v1, v3, v5

    .line 318
    .local v1, "delay":J
    iget-object v5, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mListView:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mDoSingleTapUp:Ljava/lang/Runnable;

    sget v3, Lcom/android/calendar/month/MonthByWeekAdapter;->mTotalClickDelay:I

    int-to-long v3, v3

    cmp-long v3, v1, v3

    if-lez v3, :cond_1

    const-wide/16 v3, 0x0

    :goto_1
    invoke-virtual {v5, v6, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 320
    const/4 v3, 0x1

    goto :goto_0

    .line 318
    :cond_1
    sget v3, Lcom/android/calendar/month/MonthByWeekAdapter;->mTotalClickDelay:I

    int-to-long v3, v3

    sub-long/2addr v3, v1

    goto :goto_1

    .line 324
    .end local v1    # "delay":J
    .restart local p1    # "v":Landroid/view/View;
    :cond_2
    packed-switch v0, :pswitch_data_0

    .line 348
    .end local p1    # "v":Landroid/view/View;
    :cond_3
    :goto_2
    :pswitch_0
    const/4 v3, 0x0

    goto :goto_0

    .line 326
    .restart local p1    # "v":Landroid/view/View;
    :pswitch_1
    check-cast p1, Lcom/android/calendar/month/MonthWeekEventsView;

    .end local p1    # "v":Landroid/view/View;
    iput-object p1, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mClickedView:Lcom/android/calendar/month/MonthWeekEventsView;

    .line 327
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mClickedXLocation:F

    .line 328
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mClickTime:J

    .line 329
    iget-object v3, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mDoClick:Ljava/lang/Runnable;

    sget v5, Lcom/android/calendar/month/MonthByWeekAdapter;->mOnDownDelay:I

    int-to-long v5, v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 334
    .restart local p1    # "v":Landroid/view/View;
    :pswitch_2
    check-cast p1, Lcom/android/calendar/month/MonthWeekEventsView;

    .end local p1    # "v":Landroid/view/View;
    invoke-direct {p0, p1}, Lcom/android/calendar/month/MonthByWeekAdapter;->clearClickedView(Lcom/android/calendar/month/MonthWeekEventsView;)V

    goto :goto_2

    .line 338
    .restart local p1    # "v":Landroid/view/View;
    :pswitch_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v4, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mClickedXLocation:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sget v4, Lcom/android/calendar/month/MonthByWeekAdapter;->mMovedPixelToCancel:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    .line 339
    check-cast p1, Lcom/android/calendar/month/MonthWeekEventsView;

    .end local p1    # "v":Landroid/view/View;
    invoke-direct {p0, p1}, Lcom/android/calendar/month/MonthByWeekAdapter;->clearClickedView(Lcom/android/calendar/month/MonthWeekEventsView;)V

    goto :goto_2

    .line 324
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected refresh()V
    .locals 2

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/calendar/Utils;->getFirstDayOfWeek(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mFirstDayOfWeek:I

    .line 273
    iget-object v0, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/calendar/Utils;->getShowWeekNumber(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mShowWeekNumber:Z

    .line 274
    iget-object v0, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mHomeTimeZone:Ljava/lang/String;

    .line 275
    iget-object v0, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mOrientation:I

    .line 276
    invoke-direct {p0}, Lcom/android/calendar/month/MonthByWeekAdapter;->updateTimeZones()V

    .line 277
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 278
    return-void
.end method

.method public setEvents(IILjava/util/ArrayList;)V
    .locals 10
    .param p1, "firstJulianDay"    # I
    .param p2, "numDays"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    const/4 v9, 0x3

    .line 124
    iget-boolean v7, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mIsMiniMonth:Z

    if-eqz v7, :cond_1

    .line 125
    const-string v7, "MonthByWeek"

    const/4 v8, 0x6

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 126
    const-string v7, "MonthByWeek"

    const-string v8, "Attempted to set events for mini view. Events only supported in full view."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    iput-object p3, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mEvents:Ljava/util/ArrayList;

    .line 132
    iput p1, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mFirstJulianDay:I

    .line 133
    iput p2, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mQueryDays:I

    .line 136
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .local v2, "eventDayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/android/calendar/Event;>;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, p2, :cond_2

    .line 138
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 141
    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_5

    .line 142
    :cond_3
    const-string v7, "MonthByWeek"

    invoke-static {v7, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 143
    const-string v7, "MonthByWeek"

    const-string v8, "No events. Returning early--go schedule something fun."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_4
    iput-object v2, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mEventDayList:Ljava/util/ArrayList;

    .line 146
    invoke-virtual {p0}, Lcom/android/calendar/month/MonthByWeekAdapter;->refresh()V

    goto :goto_0

    .line 151
    :cond_5
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/Event;

    .line 152
    .local v1, "event":Lcom/android/calendar/Event;
    iget v7, v1, Lcom/android/calendar/Event;->startDay:I

    iget v8, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mFirstJulianDay:I

    sub-int v6, v7, v8

    .line 153
    .local v6, "startDay":I
    iget v7, v1, Lcom/android/calendar/Event;->endDay:I

    iget v8, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mFirstJulianDay:I

    sub-int/2addr v7, v8

    add-int/lit8 v0, v7, 0x1

    .line 154
    .local v0, "endDay":I
    if-lt v6, p2, :cond_7

    if-ltz v0, :cond_6

    .line 155
    :cond_7
    if-gez v6, :cond_8

    .line 156
    const/4 v6, 0x0

    .line 158
    :cond_8
    if-gt v6, p2, :cond_6

    .line 161
    if-ltz v0, :cond_6

    .line 164
    if-le v0, p2, :cond_9

    .line 165
    move v0, p2

    .line 167
    :cond_9
    move v5, v6

    .local v5, "j":I
    :goto_2
    if-ge v5, v0, :cond_6

    .line 168
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 172
    .end local v0    # "endDay":I
    .end local v1    # "event":Lcom/android/calendar/Event;
    .end local v5    # "j":I
    .end local v6    # "startDay":I
    :cond_a
    const-string v7, "MonthByWeek"

    invoke-static {v7, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 173
    const-string v7, "MonthByWeek"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Processed "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " events."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_b
    iput-object v2, p0, Lcom/android/calendar/month/MonthByWeekAdapter;->mEventDayList:Ljava/util/ArrayList;

    .line 176
    invoke-virtual {p0}, Lcom/android/calendar/month/MonthByWeekAdapter;->refresh()V

    goto/16 :goto_0
.end method

.method public setSelectedDay(Landroid/text/format/Time;)V
    .locals 4
    .param p1, "selectedTime"    # Landroid/text/format/Time;

    .prologue
    .line 116
    iget-object v2, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mSelectedDay:Landroid/text/format/Time;

    invoke-virtual {v2, p1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 117
    iget-object v2, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mSelectedDay:Landroid/text/format/Time;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    .line 118
    .local v0, "millis":J
    iget-object v2, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mSelectedDay:Landroid/text/format/Time;

    iget-wide v2, v2, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v2

    iget v3, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mFirstDayOfWeek:I

    invoke-static {v2, v3}, Lcom/android/calendar/Utils;->getWeeksSinceEpochFromJulianDay(II)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/month/SimpleWeeksAdapter;->mSelectedWeek:I

    .line 120
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 121
    return-void
.end method
