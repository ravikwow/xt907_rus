.class public Lcom/android/calendar/agenda/AgendaFragment;
.super Landroid/app/Fragment;
.source "AgendaFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/android/calendar/CalendarController$EventHandler;


# static fields
.field private static DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAdapter:Lcom/android/calendar/agenda/AgendaWindowAdapter;

.field private mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;

.field private mController:Lcom/android/calendar/CalendarController;

.field private mEventFragment:Lcom/android/calendar/EventInfoFragment;

.field private mForceReplace:Z

.field private final mInitialTimeMillis:J

.field private mIsTabletConfig:Z

.field mJulianDayOnTop:I

.field private mLastHandledEventId:J

.field private mLastHandledEventTime:Landroid/text/format/Time;

.field private mOnAttachAllDay:Z

.field private mOnAttachedInfo:Lcom/android/calendar/CalendarController$EventInfo;

.field private mQuery:Ljava/lang/String;

.field private mShowEventDetailsWithAgenda:Z

.field private final mTZUpdater:Ljava/lang/Runnable;

.field private final mTime:Landroid/text/format/Time;

.field private mTimeZone:Ljava/lang/String;

.field private mUsedForSearch:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/android/calendar/agenda/AgendaFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/agenda/AgendaFragment;->TAG:Ljava/lang/String;

    .line 51
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/calendar/agenda/AgendaFragment;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 85
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/calendar/agenda/AgendaFragment;-><init>(JZ)V

    .line 86
    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 4
    .param p1, "timeMillis"    # J
    .param p3, "usedForSearch"    # Z

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 91
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 65
    iput-boolean v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mUsedForSearch:Z

    .line 67
    iput-object v2, p0, Lcom/android/calendar/agenda/AgendaFragment;->mOnAttachedInfo:Lcom/android/calendar/CalendarController$EventInfo;

    .line 68
    iput-boolean v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mOnAttachAllDay:Z

    .line 69
    iput-object v2, p0, Lcom/android/calendar/agenda/AgendaFragment;->mAdapter:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mForceReplace:Z

    .line 74
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mJulianDayOnTop:I

    .line 76
    new-instance v0, Lcom/android/calendar/agenda/AgendaFragment$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/agenda/AgendaFragment$1;-><init>(Lcom/android/calendar/agenda/AgendaFragment;)V

    iput-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mTZUpdater:Ljava/lang/Runnable;

    .line 333
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mLastHandledEventId:J

    .line 334
    iput-object v2, p0, Lcom/android/calendar/agenda/AgendaFragment;->mLastHandledEventTime:Landroid/text/format/Time;

    .line 92
    iput-wide p1, p0, Lcom/android/calendar/agenda/AgendaFragment;->mInitialTimeMillis:J

    .line 93
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mTime:Landroid/text/format/Time;

    .line 94
    iget-wide v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mInitialTimeMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mTime:Landroid/text/format/Time;

    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 99
    :goto_0
    iput-boolean p3, p0, Lcom/android/calendar/agenda/AgendaFragment;->mUsedForSearch:Z

    .line 100
    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mTime:Landroid/text/format/Time;

    iget-wide v1, p0, Lcom/android/calendar/agenda/AgendaFragment;->mInitialTimeMillis:J

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/calendar/agenda/AgendaFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/calendar/agenda/AgendaFragment;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mTimeZone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/calendar/agenda/AgendaFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/calendar/agenda/AgendaFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/calendar/agenda/AgendaFragment;->mTimeZone:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/calendar/agenda/AgendaFragment;)Landroid/text/format/Time;
    .locals 1
    .param p0, "x0"    # Lcom/android/calendar/agenda/AgendaFragment;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mTime:Landroid/text/format/Time;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/calendar/agenda/AgendaFragment;)Lcom/android/calendar/CalendarController;
    .locals 1
    .param p0, "x0"    # Lcom/android/calendar/agenda/AgendaFragment;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mController:Lcom/android/calendar/CalendarController;

    return-object v0
.end method

.method private goTo(Lcom/android/calendar/CalendarController$EventInfo;Z)V
    .locals 12
    .param p1, "event"    # Lcom/android/calendar/CalendarController$EventInfo;
    .param p2, "animate"    # Z

    .prologue
    const/4 v5, 0x0

    .line 291
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;

    if-nez v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mTime:Landroid/text/format/Time;

    iget-object v1, p1, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 307
    :goto_0
    return-void

    .line 297
    :cond_0
    iget-object v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    if-eqz v0, :cond_1

    .line 298
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mTime:Landroid/text/format/Time;

    iget-object v1, p1, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 300
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;

    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaFragment;->mTime:Landroid/text/format/Time;

    iget-wide v2, p1, Lcom/android/calendar/CalendarController$EventInfo;->id:J

    iget-object v4, p0, Lcom/android/calendar/agenda/AgendaFragment;->mQuery:Ljava/lang/String;

    iget-wide v8, p1, Lcom/android/calendar/CalendarController$EventInfo;->extraLong:J

    const-wide/16 v10, 0x8

    and-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v6, v8, v10

    if-eqz v6, :cond_2

    iget-boolean v6, p0, Lcom/android/calendar/agenda/AgendaFragment;->mShowEventDetailsWithAgenda:Z

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    :goto_1
    invoke-virtual/range {v0 .. v6}, Lcom/android/calendar/agenda/AgendaListView;->goTo(Landroid/text/format/Time;JLjava/lang/String;ZZ)V

    .line 303
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;

    invoke-virtual {v0}, Lcom/android/calendar/agenda/AgendaListView;->getSelectedViewHolder()Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;

    move-result-object v7

    .line 305
    .local v7, "vh":Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;
    if-eqz v7, :cond_3

    iget-boolean v0, v7, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->allDay:Z

    :goto_2
    iget-boolean v1, p0, Lcom/android/calendar/agenda/AgendaFragment;->mForceReplace:Z

    invoke-direct {p0, p1, v0, v1}, Lcom/android/calendar/agenda/AgendaFragment;->showEventInfo(Lcom/android/calendar/CalendarController$EventInfo;ZZ)V

    .line 306
    iput-boolean v5, p0, Lcom/android/calendar/agenda/AgendaFragment;->mForceReplace:Z

    goto :goto_0

    .end local v7    # "vh":Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;
    :cond_2
    move v6, v5

    .line 300
    goto :goto_1

    .restart local v7    # "vh":Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;
    :cond_3
    move v0, v5

    .line 305
    goto :goto_2
.end method

.method private search(Ljava/lang/String;Landroid/text/format/Time;)V
    .locals 7
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "time"    # Landroid/text/format/Time;

    .prologue
    .line 310
    iput-object p1, p0, Lcom/android/calendar/agenda/AgendaFragment;->mQuery:Ljava/lang/String;

    .line 311
    if-eqz p2, :cond_0

    .line 312
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mTime:Landroid/text/format/Time;

    invoke-virtual {v0, p2}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;

    if-nez v0, :cond_1

    .line 319
    :goto_0
    return-void

    .line 318
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;

    const-wide/16 v2, -0x1

    iget-object v4, p0, Lcom/android/calendar/agenda/AgendaFragment;->mQuery:Ljava/lang/String;

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/calendar/agenda/AgendaListView;->goTo(Landroid/text/format/Time;JLjava/lang/String;ZZ)V

    goto :goto_0
.end method

.method private showEventInfo(Lcom/android/calendar/CalendarController$EventInfo;ZZ)V
    .locals 20
    .param p1, "event"    # Lcom/android/calendar/CalendarController$EventInfo;
    .param p2, "allDay"    # Z
    .param p3, "replaceFragment"    # Z

    .prologue
    .line 356
    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->id:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 357
    sget-object v2, Lcom/android/calendar/agenda/AgendaFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showEventInfo, event ID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/calendar/CalendarController$EventInfo;->id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :cond_0
    :goto_0
    return-void

    .line 362
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/calendar/agenda/AgendaFragment;->mShowEventDetailsWithAgenda:Z

    if-eqz v2, :cond_0

    .line 363
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v16

    .line 364
    .local v16, "fragmentManager":Landroid/app/FragmentManager;
    if-nez v16, :cond_2

    .line 367
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/agenda/AgendaFragment;->mOnAttachedInfo:Lcom/android/calendar/CalendarController$EventInfo;

    .line 368
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/calendar/agenda/AgendaFragment;->mOnAttachAllDay:Z

    goto :goto_0

    .line 371
    :cond_2
    invoke-virtual/range {v16 .. v16}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v17

    .line 373
    .local v17, "ft":Landroid/app/FragmentTransaction;
    if-eqz p2, :cond_3

    .line 374
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    const-string v3, "UTC"

    iput-object v3, v2, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 375
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    const-string v3, "UTC"

    iput-object v3, v2, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 378
    :cond_3
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v18

    .line 379
    .local v18, "startMillis":J
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v13

    .line 380
    .local v13, "endMillis":J
    const v2, 0x7f100010

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v15

    check-cast v15, Lcom/android/calendar/EventInfoFragment;

    .line 382
    .local v15, "fOld":Lcom/android/calendar/EventInfoFragment;
    if-eqz v15, :cond_4

    if-nez p3, :cond_4

    invoke-virtual {v15}, Lcom/android/calendar/EventInfoFragment;->getStartMillis()J

    move-result-wide v2

    cmp-long v2, v2, v18

    if-nez v2, :cond_4

    invoke-virtual {v15}, Lcom/android/calendar/EventInfoFragment;->getEndMillis()J

    move-result-wide v2

    cmp-long v2, v2, v13

    if-nez v2, :cond_4

    invoke-virtual {v15}, Lcom/android/calendar/EventInfoFragment;->getEventId()J

    move-result-wide v2

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/calendar/CalendarController$EventInfo;->id:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    .line 384
    :cond_4
    new-instance v2, Lcom/android/calendar/EventInfoFragment;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaFragment;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/calendar/CalendarController$EventInfo;->id:J

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v6

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-direct/range {v2 .. v12}, Lcom/android/calendar/EventInfoFragment;-><init>(Landroid/content/Context;JJJIZI)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/agenda/AgendaFragment;->mEventFragment:Lcom/android/calendar/EventInfoFragment;

    .line 388
    const v2, 0x7f100010

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaFragment;->mEventFragment:Lcom/android/calendar/EventInfoFragment;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 389
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/agenda/AgendaFragment;->mController:Lcom/android/calendar/CalendarController;

    const v3, 0x7f100010

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/agenda/AgendaFragment;->mEventFragment:Lcom/android/calendar/EventInfoFragment;

    invoke-virtual {v2, v3, v4}, Lcom/android/calendar/CalendarController;->registerEventHandler(ILcom/android/calendar/CalendarController$EventHandler;)V

    .line 391
    invoke-virtual/range {v17 .. v17}, Landroid/app/FragmentTransaction;->commit()I

    goto/16 :goto_0

    .line 393
    :cond_5
    invoke-virtual {v15}, Lcom/android/calendar/EventInfoFragment;->reloadEvents()V

    goto/16 :goto_0
.end method


# virtual methods
.method public eventsChanged()V
    .locals 2

    .prologue
    .line 323
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/calendar/agenda/AgendaListView;->refresh(Z)V

    .line 326
    :cond_0
    return-void
.end method

.method public getSupportedEventTypes()J
    .locals 4

    .prologue
    .line 330
    const-wide/16 v2, 0xa0

    iget-boolean v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mUsedForSearch:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x100

    :goto_0
    or-long/2addr v0, v2

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public handleEvent(Lcom/android/calendar/CalendarController$EventInfo;)V
    .locals 4
    .param p1, "event"    # Lcom/android/calendar/CalendarController$EventInfo;

    .prologue
    .line 337
    iget-wide v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v2, 0x20

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 341
    iget-wide v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->id:J

    iput-wide v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mLastHandledEventId:J

    .line 342
    iget-object v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    iput-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mLastHandledEventTime:Landroid/text/format/Time;

    .line 343
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/calendar/agenda/AgendaFragment;->goTo(Lcom/android/calendar/CalendarController$EventInfo;Z)V

    .line 349
    :cond_0
    :goto_0
    return-void

    .line 344
    :cond_1
    iget-wide v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v2, 0x100

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 345
    iget-object v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->query:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    invoke-direct {p0, v0, v1}, Lcom/android/calendar/agenda/AgendaFragment;->search(Ljava/lang/String;Landroid/text/format/Time;)V

    goto :goto_0

    .line 346
    :cond_2
    iget-wide v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v2, 0x80

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 347
    invoke-virtual {p0}, Lcom/android/calendar/agenda/AgendaFragment;->eventsChanged()V

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 104
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 105
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mTZUpdater:Ljava/lang/Runnable;

    invoke-static {p1, v0}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mTimeZone:Ljava/lang/String;

    .line 106
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mTime:Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaFragment;->mTimeZone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 107
    iput-object p1, p0, Lcom/android/calendar/agenda/AgendaFragment;->mActivity:Landroid/app/Activity;

    .line 108
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mOnAttachedInfo:Lcom/android/calendar/CalendarController$EventInfo;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mOnAttachedInfo:Lcom/android/calendar/CalendarController$EventInfo;

    iget-boolean v1, p0, Lcom/android/calendar/agenda/AgendaFragment;->mOnAttachAllDay:Z

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/calendar/agenda/AgendaFragment;->showEventInfo(Lcom/android/calendar/CalendarController$EventInfo;ZZ)V

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mOnAttachedInfo:Lcom/android/calendar/CalendarController$EventInfo;

    .line 112
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v4, -0x1

    .line 116
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 117
    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/android/calendar/CalendarController;->getInstance(Landroid/content/Context;)Lcom/android/calendar/CalendarController;

    move-result-object v2

    iput-object v2, p0, Lcom/android/calendar/agenda/AgendaFragment;->mController:Lcom/android/calendar/CalendarController;

    .line 118
    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaFragment;->mActivity:Landroid/app/Activity;

    const v3, 0x7f090003

    invoke-static {v2, v3}, Lcom/android/calendar/Utils;->getConfigBool(Landroid/content/Context;I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/calendar/agenda/AgendaFragment;->mShowEventDetailsWithAgenda:Z

    .line 120
    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaFragment;->mActivity:Landroid/app/Activity;

    const v3, 0x7f090006

    invoke-static {v2, v3}, Lcom/android/calendar/Utils;->getConfigBool(Landroid/content/Context;I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/calendar/agenda/AgendaFragment;->mIsTabletConfig:Z

    .line 122
    if-eqz p1, :cond_0

    .line 123
    const-string v2, "key_restore_time"

    invoke-virtual {p1, v2, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 124
    .local v0, "prevTime":J
    cmp-long v2, v0, v4

    if-eqz v2, :cond_0

    .line 125
    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaFragment;->mTime:Landroid/text/format/Time;

    invoke-virtual {v2, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 126
    sget-boolean v2, Lcom/android/calendar/agenda/AgendaFragment;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 127
    sget-object v2, Lcom/android/calendar/agenda/AgendaFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Restoring time to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/calendar/agenda/AgendaFragment;->mTime:Landroid/text/format/Time;

    invoke-virtual {v4}, Landroid/text/format/Time;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    .end local v0    # "prevTime":J
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 15
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 138
    iget-object v12, p0, Lcom/android/calendar/agenda/AgendaFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v12}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    iget v9, v12, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 139
    .local v9, "screenWidth":I
    const v12, 0x7f040006

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 141
    .local v11, "v":Landroid/view/View;
    const v12, 0x7f10000f

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/android/calendar/agenda/AgendaListView;

    iput-object v12, p0, Lcom/android/calendar/agenda/AgendaFragment;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;

    .line 142
    iget-object v12, p0, Lcom/android/calendar/agenda/AgendaFragment;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/view/View;->setClickable(Z)V

    .line 144
    if-eqz p3, :cond_0

    .line 145
    const-string v12, "key_restore_instance_id"

    const-wide/16 v13, -0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13, v14}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 146
    .local v4, "instanceId":J
    const-wide/16 v12, -0x1

    cmp-long v12, v4, v12

    if-eqz v12, :cond_0

    .line 147
    iget-object v12, p0, Lcom/android/calendar/agenda/AgendaFragment;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;

    invoke-virtual {v12, v4, v5}, Lcom/android/calendar/agenda/AgendaListView;->setSelectedInstanceId(J)V

    .line 151
    .end local v4    # "instanceId":J
    :cond_0
    const v12, 0x7f100010

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 152
    .local v3, "eventView":Landroid/view/View;
    iget-boolean v12, p0, Lcom/android/calendar/agenda/AgendaFragment;->mShowEventDetailsWithAgenda:Z

    if-nez v12, :cond_1

    .line 153
    const/16 v12, 0x8

    invoke-virtual {v3, v12}, Landroid/view/View;->setVisibility(I)V

    .line 158
    :cond_1
    const v12, 0x7f10000e

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/calendar/StickyHeaderListView;

    .line 160
    .local v7, "lv":Lcom/android/calendar/StickyHeaderListView;
    if-eqz v7, :cond_4

    .line 161
    iget-object v12, p0, Lcom/android/calendar/agenda/AgendaFragment;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;

    invoke-virtual {v12}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    .line 162
    .local v1, "a":Landroid/widget/Adapter;
    invoke-virtual {v7, v1}, Lcom/android/calendar/StickyHeaderListView;->setAdapter(Landroid/widget/Adapter;)V

    .line 163
    instance-of v12, v1, Landroid/widget/HeaderViewListAdapter;

    if-eqz v12, :cond_2

    .line 164
    check-cast v1, Landroid/widget/HeaderViewListAdapter;

    .end local v1    # "a":Landroid/widget/Adapter;
    invoke-virtual {v1}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v12

    check-cast v12, Lcom/android/calendar/agenda/AgendaWindowAdapter;

    iput-object v12, p0, Lcom/android/calendar/agenda/AgendaFragment;->mAdapter:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    .line 165
    iget-object v12, p0, Lcom/android/calendar/agenda/AgendaFragment;->mAdapter:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    invoke-virtual {v7, v12}, Lcom/android/calendar/StickyHeaderListView;->setIndexer(Lcom/android/calendar/StickyHeaderListView$HeaderIndexer;)V

    .line 166
    iget-object v12, p0, Lcom/android/calendar/agenda/AgendaFragment;->mAdapter:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    invoke-virtual {v7, v12}, Lcom/android/calendar/StickyHeaderListView;->setHeaderHeightListener(Lcom/android/calendar/StickyHeaderListView$HeaderHeightListener;)V

    .line 177
    :goto_0
    invoke-virtual {v7, p0}, Lcom/android/calendar/StickyHeaderListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 178
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f08003c

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    const/4 v13, 0x1

    invoke-virtual {v7, v12, v13}, Lcom/android/calendar/StickyHeaderListView;->setHeaderSeparator(II)V

    .line 179
    move-object v10, v7

    .line 188
    .local v10, "topListView":Landroid/view/View;
    :goto_1
    iget-boolean v12, p0, Lcom/android/calendar/agenda/AgendaFragment;->mShowEventDetailsWithAgenda:Z

    if-nez v12, :cond_5

    .line 189
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .line 190
    .local v8, "params":Landroid/view/ViewGroup$LayoutParams;
    iput v9, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 191
    invoke-virtual {v10, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 200
    .end local v8    # "params":Landroid/view/ViewGroup$LayoutParams;
    :goto_2
    return-object v11

    .line 167
    .end local v10    # "topListView":Landroid/view/View;
    .restart local v1    # "a":Landroid/widget/Adapter;
    :cond_2
    instance-of v12, v1, Lcom/android/calendar/agenda/AgendaWindowAdapter;

    if-eqz v12, :cond_3

    .line 168
    check-cast v1, Lcom/android/calendar/agenda/AgendaWindowAdapter;

    .end local v1    # "a":Landroid/widget/Adapter;
    iput-object v1, p0, Lcom/android/calendar/agenda/AgendaFragment;->mAdapter:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    .line 169
    iget-object v12, p0, Lcom/android/calendar/agenda/AgendaFragment;->mAdapter:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    invoke-virtual {v7, v12}, Lcom/android/calendar/StickyHeaderListView;->setIndexer(Lcom/android/calendar/StickyHeaderListView$HeaderIndexer;)V

    .line 170
    iget-object v12, p0, Lcom/android/calendar/agenda/AgendaFragment;->mAdapter:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    invoke-virtual {v7, v12}, Lcom/android/calendar/StickyHeaderListView;->setHeaderHeightListener(Lcom/android/calendar/StickyHeaderListView$HeaderHeightListener;)V

    goto :goto_0

    .line 172
    .restart local v1    # "a":Landroid/widget/Adapter;
    :cond_3
    sget-object v12, Lcom/android/calendar/agenda/AgendaFragment;->TAG:Ljava/lang/String;

    const-string v13, "Cannot find HeaderIndexer for StickyHeaderListView"

    invoke-static {v12, v13}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 181
    .end local v1    # "a":Landroid/widget/Adapter;
    :cond_4
    iget-object v10, p0, Lcom/android/calendar/agenda/AgendaFragment;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;

    .restart local v10    # "topListView":Landroid/view/View;
    goto :goto_1

    .line 193
    :cond_5
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 194
    .local v6, "listParams":Landroid/view/ViewGroup$LayoutParams;
    mul-int/lit8 v12, v9, 0x4

    div-int/lit8 v12, v12, 0xa

    iput v12, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 195
    invoke-virtual {v10, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 196
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 197
    .local v2, "detailsParams":Landroid/view/ViewGroup$LayoutParams;
    iget v12, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    sub-int v12, v9, v12

    iput v12, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 198
    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 279
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 281
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;

    invoke-virtual {v0}, Lcom/android/calendar/agenda/AgendaListView;->onPause()V

    .line 288
    return-void
.end method

.method public onResume()V
    .locals 11

    .prologue
    const/4 v5, 0x1

    const-wide/16 v9, -0x1

    const/4 v6, 0x0

    .line 205
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 206
    sget-boolean v0, Lcom/android/calendar/agenda/AgendaFragment;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 207
    sget-object v0, Lcom/android/calendar/agenda/AgendaFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnResume to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaFragment;->mTime:Landroid/text/format/Time;

    invoke-virtual {v2}, Landroid/text/format/Time;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 212
    .local v8, "prefs":Landroid/content/SharedPreferences;
    const-string v0, "preferences_hide_declined"

    invoke-interface {v8, v0, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 215
    .local v7, "hideDeclined":Z
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;

    invoke-virtual {v0, v7}, Lcom/android/calendar/agenda/AgendaListView;->setHideDeclinedEvents(Z)V

    .line 216
    iget-wide v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mLastHandledEventId:J

    cmp-long v0, v0, v9

    if-eqz v0, :cond_1

    .line 217
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;

    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaFragment;->mLastHandledEventTime:Landroid/text/format/Time;

    iget-wide v2, p0, Lcom/android/calendar/agenda/AgendaFragment;->mLastHandledEventId:J

    iget-object v4, p0, Lcom/android/calendar/agenda/AgendaFragment;->mQuery:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/android/calendar/agenda/AgendaListView;->goTo(Landroid/text/format/Time;JLjava/lang/String;ZZ)V

    .line 218
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mLastHandledEventTime:Landroid/text/format/Time;

    .line 219
    iput-wide v9, p0, Lcom/android/calendar/agenda/AgendaFragment;->mLastHandledEventId:J

    .line 223
    :goto_0
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;

    invoke-virtual {v0}, Lcom/android/calendar/agenda/AgendaListView;->onResume()V

    .line 233
    return-void

    .line 221
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;

    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaFragment;->mTime:Landroid/text/format/Time;

    iget-object v4, p0, Lcom/android/calendar/agenda/AgendaFragment;->mQuery:Ljava/lang/String;

    move-wide v2, v9

    invoke-virtual/range {v0 .. v6}, Lcom/android/calendar/agenda/AgendaListView;->goTo(Landroid/text/format/Time;JLjava/lang/String;ZZ)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v7, 0x0

    .line 237
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 238
    iget-object v4, p0, Lcom/android/calendar/agenda/AgendaFragment;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;

    if-nez v4, :cond_1

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 241
    :cond_1
    iget-object v4, p0, Lcom/android/calendar/agenda/AgendaFragment;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;

    invoke-virtual {v4}, Lcom/android/calendar/agenda/AgendaListView;->getFirstVisibleTime()J

    move-result-wide v0

    .line 242
    .local v0, "firstVisibleTime":J
    cmp-long v4, v0, v7

    if-lez v4, :cond_2

    .line 243
    iget-object v4, p0, Lcom/android/calendar/agenda/AgendaFragment;->mTime:Landroid/text/format/Time;

    invoke-virtual {v4, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 244
    iget-object v4, p0, Lcom/android/calendar/agenda/AgendaFragment;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v4, v0, v1}, Lcom/android/calendar/CalendarController;->setTime(J)V

    .line 245
    const-string v4, "key_restore_time"

    invoke-virtual {p1, v4, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 246
    sget-boolean v4, Lcom/android/calendar/agenda/AgendaFragment;->DEBUG:Z

    if-eqz v4, :cond_2

    .line 247
    sget-object v4, Lcom/android/calendar/agenda/AgendaFragment;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSaveInstanceState "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/calendar/agenda/AgendaFragment;->mTime:Landroid/text/format/Time;

    invoke-virtual {v6}, Landroid/text/format/Time;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_2
    iget-object v4, p0, Lcom/android/calendar/agenda/AgendaFragment;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;

    invoke-virtual {v4}, Lcom/android/calendar/agenda/AgendaListView;->getSelectedInstanceId()J

    move-result-wide v2

    .line 252
    .local v2, "selectedInstance":J
    cmp-long v4, v2, v7

    if-ltz v4, :cond_0

    .line 253
    const-string v4, "key_restore_instance_id"

    invoke-virtual {p1, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 5
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 425
    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaFragment;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;

    iget-object v3, p0, Lcom/android/calendar/agenda/AgendaFragment;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v3

    sub-int v3, p2, v3

    invoke-virtual {v2, v3}, Lcom/android/calendar/agenda/AgendaListView;->getJulianDayFromPosition(I)I

    move-result v0

    .line 428
    .local v0, "julianDay":I
    if-nez v0, :cond_1

    .line 451
    :cond_0
    :goto_0
    return-void

    .line 432
    :cond_1
    iget v2, p0, Lcom/android/calendar/agenda/AgendaFragment;->mJulianDayOnTop:I

    if-eq v2, v0, :cond_0

    .line 433
    iput v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mJulianDayOnTop:I

    .line 434
    new-instance v1, Landroid/text/format/Time;

    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaFragment;->mTimeZone:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 435
    .local v1, "t":Landroid/text/format/Time;
    iget v2, p0, Lcom/android/calendar/agenda/AgendaFragment;->mJulianDayOnTop:I

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 436
    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaFragment;->mController:Lcom/android/calendar/CalendarController;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/android/calendar/CalendarController;->setTime(J)V

    .line 439
    iget-boolean v2, p0, Lcom/android/calendar/agenda/AgendaFragment;->mIsTabletConfig:Z

    if-nez v2, :cond_0

    .line 440
    new-instance v2, Lcom/android/calendar/agenda/AgendaFragment$2;

    invoke-direct {v2, p0}, Lcom/android/calendar/agenda/AgendaFragment$2;-><init>(Lcom/android/calendar/agenda/AgendaFragment;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 415
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mAdapter:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaFragment;->mAdapter:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    invoke-virtual {v0, p2}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->setScrollState(I)V

    .line 418
    :cond_0
    return-void
.end method

.method public removeFragments(Landroid/app/FragmentManager;)V
    .locals 5
    .param p1, "fragmentManager"    # Landroid/app/FragmentManager;

    .prologue
    const v4, 0x7f100010

    .line 265
    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaFragment;->mController:Lcom/android/calendar/CalendarController;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/calendar/CalendarController;->deregisterEventHandler(Ljava/lang/Integer;)V

    .line 266
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 275
    :goto_0
    return-void

    .line 269
    :cond_0
    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 270
    .local v1, "ft":Landroid/app/FragmentTransaction;
    invoke-virtual {p1, v4}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    .line 271
    .local v0, "f":Landroid/app/Fragment;
    if-eqz v0, :cond_1

    .line 272
    invoke-virtual {v1, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 274
    :cond_1
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method
