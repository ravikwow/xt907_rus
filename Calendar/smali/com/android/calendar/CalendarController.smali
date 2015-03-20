.class public Lcom/android/calendar/CalendarController;
.super Ljava/lang/Object;
.source "CalendarController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/CalendarController$EventHandler;,
        Lcom/android/calendar/CalendarController$EventInfo;
    }
.end annotation


# static fields
.field private static final REFRESH_ARGS:[Ljava/lang/String;

.field private static instances:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/content/Context;",
            "Lcom/android/calendar/CalendarController;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final eventHandlers:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/calendar/CalendarController$EventHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final filters:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDateFlags:J

.field private mDetailViewType:I

.field private volatile mDispatchInProgressCounter:I

.field private mEventId:J

.field private mFirstEventHandler:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/calendar/CalendarController$EventHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviousViewType:I

.field private final mTime:Landroid/text/format/Time;

.field private final mToBeAddedEventHandlers:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/calendar/CalendarController$EventHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mToBeAddedFirstEventHandler:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/calendar/CalendarController$EventHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final mToBeRemovedEventHandlers:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mUpdateTimezone:Ljava/lang/Runnable;

.field private mViewType:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 59
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "1"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/CalendarController;->REFRESH_ARGS:[Ljava/lang/String;

    .line 84
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/android/calendar/CalendarController;->instances:Ljava/util/WeakHashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, -0x1

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/calendar/CalendarController;->eventHandlers:Ljava/util/LinkedHashMap;

    .line 77
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/CalendarController;->mToBeRemovedEventHandlers:Ljava/util/LinkedList;

    .line 78
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/CalendarController;->mToBeAddedEventHandlers:Ljava/util/LinkedHashMap;

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendar/CalendarController;->mDispatchInProgressCounter:I

    .line 87
    new-instance v0, Ljava/util/WeakHashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/calendar/CalendarController;->filters:Ljava/util/WeakHashMap;

    .line 89
    iput v2, p0, Lcom/android/calendar/CalendarController;->mViewType:I

    .line 90
    iput v2, p0, Lcom/android/calendar/CalendarController;->mDetailViewType:I

    .line 91
    iput v2, p0, Lcom/android/calendar/CalendarController;->mPreviousViewType:I

    .line 92
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/calendar/CalendarController;->mEventId:J

    .line 93
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/CalendarController;->mTime:Landroid/text/format/Time;

    .line 94
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/calendar/CalendarController;->mDateFlags:J

    .line 96
    new-instance v0, Lcom/android/calendar/CalendarController$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/CalendarController$1;-><init>(Lcom/android/calendar/CalendarController;)V

    iput-object v0, p0, Lcom/android/calendar/CalendarController;->mUpdateTimezone:Ljava/lang/Runnable;

    .line 307
    iput-object p1, p0, Lcom/android/calendar/CalendarController;->mContext:Landroid/content/Context;

    .line 308
    iget-object v0, p0, Lcom/android/calendar/CalendarController;->mUpdateTimezone:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 309
    iget-object v0, p0, Lcom/android/calendar/CalendarController;->mTime:Landroid/text/format/Time;

    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 310
    iget-object v0, p0, Lcom/android/calendar/CalendarController;->mContext:Landroid/content/Context;

    const-string v1, "preferred_detailedView"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/android/calendar/Utils;->getSharedPreference(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarController;->mDetailViewType:I

    .line 313
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/CalendarController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/calendar/CalendarController;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/calendar/CalendarController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/calendar/CalendarController;)Landroid/text/format/Time;
    .locals 1
    .param p0, "x0"    # Lcom/android/calendar/CalendarController;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/calendar/CalendarController;->mTime:Landroid/text/format/Time;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/calendar/CalendarController;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 286
    sget-object v2, Lcom/android/calendar/CalendarController;->instances:Ljava/util/WeakHashMap;

    monitor-enter v2

    .line 287
    :try_start_0
    sget-object v1, Lcom/android/calendar/CalendarController;->instances:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/CalendarController;

    .line 288
    .local v0, "controller":Lcom/android/calendar/CalendarController;
    if-nez v0, :cond_0

    .line 289
    new-instance v0, Lcom/android/calendar/CalendarController;

    .end local v0    # "controller":Lcom/android/calendar/CalendarController;
    invoke-direct {v0, p0}, Lcom/android/calendar/CalendarController;-><init>(Landroid/content/Context;)V

    .line 290
    .restart local v0    # "controller":Lcom/android/calendar/CalendarController;
    sget-object v1, Lcom/android/calendar/CalendarController;->instances:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    :cond_0
    monitor-exit v2

    return-object v0

    .line 293
    .end local v0    # "controller":Lcom/android/calendar/CalendarController;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private launchCreateEvent(JJZ)V
    .locals 3

    .prologue
    .line 740
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 741
    iget-object v1, p0, Lcom/android/calendar/CalendarController;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/calendar/event/EditEventActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 742
    const-string v1, "beginTime"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 743
    const-string v1, "endTime"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 744
    const-string v1, "allDay"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 745
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/calendar/CalendarController;->mEventId:J

    .line 746
    iget-object v1, p0, Lcom/android/calendar/CalendarController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 747
    return-void
.end method

.method private launchDeleteEvent(JJJ)V
    .locals 9
    .param p1, "eventId"    # J
    .param p3, "startMillis"    # J
    .param p5, "endMillis"    # J

    .prologue
    .line 780
    const/4 v1, 0x0

    const/4 v8, -0x1

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v0 .. v8}, Lcom/android/calendar/CalendarController;->launchDeleteEventAndFinish(Landroid/app/Activity;JJJI)V

    .line 781
    return-void
.end method

.method private launchDeleteEventAndFinish(Landroid/app/Activity;JJJI)V
    .locals 8
    .param p1, "parentActivity"    # Landroid/app/Activity;
    .param p2, "eventId"    # J
    .param p4, "startMillis"    # J
    .param p6, "endMillis"    # J
    .param p8, "deleteWhich"    # I

    .prologue
    .line 785
    new-instance v0, Lcom/android/calendar/DeleteEventHelper;

    iget-object v2, p0, Lcom/android/calendar/CalendarController;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-direct {v0, v2, p1, v1}, Lcom/android/calendar/DeleteEventHelper;-><init>(Landroid/content/Context;Landroid/app/Activity;Z)V

    .local v0, "deleteEventHelper":Lcom/android/calendar/DeleteEventHelper;
    move-wide v1, p4

    move-wide v3, p6

    move-wide v5, p2

    move/from16 v7, p8

    .line 787
    invoke-virtual/range {v0 .. v7}, Lcom/android/calendar/DeleteEventHelper;->delete(JJJI)V

    .line 788
    return-void

    .line 785
    .end local v0    # "deleteEventHelper":Lcom/android/calendar/DeleteEventHelper;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private launchEditEvent(JJJZ)V
    .locals 3

    .prologue
    .line 762
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 763
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.EDIT"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 764
    const-string v0, "beginTime"

    invoke-virtual {v1, v0, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 765
    const-string v0, "endTime"

    invoke-virtual {v1, v0, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 766
    iget-object v0, p0, Lcom/android/calendar/CalendarController;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/calendar/event/EditEventActivity;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 767
    const-string v0, "editMode"

    invoke-virtual {v1, v0, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 768
    iput-wide p1, p0, Lcom/android/calendar/CalendarController;->mEventId:J

    .line 769
    iget-object v0, p0, Lcom/android/calendar/CalendarController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 770
    return-void
.end method

.method private launchSearch(JLjava/lang/String;Landroid/content/ComponentName;)V
    .locals 5
    .param p1, "eventId"    # J
    .param p3, "query"    # Ljava/lang/String;
    .param p4, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 791
    iget-object v3, p0, Lcom/android/calendar/CalendarController;->mContext:Landroid/content/Context;

    const-string v4, "search"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SearchManager;

    .line 793
    .local v1, "searchManager":Landroid/app/SearchManager;
    invoke-virtual {v1, p4}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v2

    .line 794
    .local v2, "searchableInfo":Landroid/app/SearchableInfo;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEARCH"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 795
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "query"

    invoke-virtual {v0, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 796
    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 797
    const/high16 v3, 0x20000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 798
    iget-object v3, p0, Lcom/android/calendar/CalendarController;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 799
    return-void
.end method

.method private launchSelectVisibleCalendars()V
    .locals 3

    .prologue
    .line 726
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 727
    iget-object v1, p0, Lcom/android/calendar/CalendarController;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 728
    const/high16 v1, 0x20020000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 729
    iget-object v1, p0, Lcom/android/calendar/CalendarController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 730
    return-void
.end method

.method private launchSettings()V
    .locals 3

    .prologue
    .line 733
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 734
    iget-object v1, p0, Lcom/android/calendar/CalendarController;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/calendar/CalendarSettingsActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 735
    const/high16 v1, 0x20020000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 736
    iget-object v1, p0, Lcom/android/calendar/CalendarController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 737
    return-void
.end method

.method public static removeInstance(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 303
    sget-object v0, Lcom/android/calendar/CalendarController;->instances:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    return-void
.end method


# virtual methods
.method public deregisterAllEventHandlers()V
    .locals 2

    .prologue
    .line 670
    monitor-enter p0

    .line 671
    :try_start_0
    iget v0, p0, Lcom/android/calendar/CalendarController;->mDispatchInProgressCounter:I

    if-lez v0, :cond_0

    .line 673
    iget-object v0, p0, Lcom/android/calendar/CalendarController;->mToBeRemovedEventHandlers:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/android/calendar/CalendarController;->eventHandlers:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 678
    :goto_0
    monitor-exit p0

    .line 679
    return-void

    .line 675
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/CalendarController;->eventHandlers:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 676
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/CalendarController;->mFirstEventHandler:Landroid/util/Pair;

    goto :goto_0

    .line 678
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public deregisterEventHandler(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/Integer;

    .prologue
    .line 656
    monitor-enter p0

    .line 657
    :try_start_0
    iget v0, p0, Lcom/android/calendar/CalendarController;->mDispatchInProgressCounter:I

    if-lez v0, :cond_1

    .line 659
    iget-object v0, p0, Lcom/android/calendar/CalendarController;->mToBeRemovedEventHandlers:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 666
    :cond_0
    :goto_0
    monitor-exit p0

    .line 667
    return-void

    .line 661
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/CalendarController;->eventHandlers:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    iget-object v0, p0, Lcom/android/calendar/CalendarController;->mFirstEventHandler:Landroid/util/Pair;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/CalendarController;->mFirstEventHandler:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-ne v0, p1, :cond_0

    .line 663
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/CalendarController;->mFirstEventHandler:Landroid/util/Pair;

    goto :goto_0

    .line 666
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDateFlags()J
    .locals 2

    .prologue
    .line 698
    iget-wide v0, p0, Lcom/android/calendar/CalendarController;->mDateFlags:J

    return-wide v0
.end method

.method public getEventId()J
    .locals 2

    .prologue
    .line 714
    iget-wide v0, p0, Lcom/android/calendar/CalendarController;->mEventId:J

    return-wide v0
.end method

.method public getPreviousViewType()I
    .locals 1

    .prologue
    .line 722
    iget v0, p0, Lcom/android/calendar/CalendarController;->mPreviousViewType:I

    return v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 690
    iget-object v0, p0, Lcom/android/calendar/CalendarController;->mTime:Landroid/text/format/Time;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public getViewType()I
    .locals 1

    .prologue
    .line 718
    iget v0, p0, Lcom/android/calendar/CalendarController;->mViewType:I

    return v0
.end method

.method public launchViewEvent(JJJI)V
    .locals 3

    .prologue
    .line 750
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 751
    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 752
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 753
    iget-object v1, p0, Lcom/android/calendar/CalendarController;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/calendar/AllInOneActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 754
    const-string v1, "beginTime"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 755
    const-string v1, "endTime"

    invoke-virtual {v0, v1, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 756
    const-string v1, "attendeeStatus"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 757
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 758
    iget-object v1, p0, Lcom/android/calendar/CalendarController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 759
    return-void
.end method

.method public refreshCalendars()V
    .locals 7

    .prologue
    .line 805
    iget-object v4, p0, Lcom/android/calendar/CalendarController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v0

    .line 806
    .local v0, "accounts":[Landroid/accounts/Account;
    const-string v4, "CalendarController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Refreshing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " accounts"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    sget-object v4, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 809
    .local v1, "authority":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_1

    .line 810
    const-string v4, "CalendarController"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 811
    const-string v4, "CalendarController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Refreshing calendars for: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v0, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    :cond_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 814
    .local v2, "extras":Landroid/os/Bundle;
    const-string v4, "force"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 815
    aget-object v4, v0, v3

    invoke-static {v4, v1, v2}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 809
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 817
    .end local v2    # "extras":Landroid/os/Bundle;
    :cond_1
    return-void
.end method

.method public registerEventHandler(ILcom/android/calendar/CalendarController$EventHandler;)V
    .locals 2
    .param p1, "key"    # I
    .param p2, "eventHandler"    # Lcom/android/calendar/CalendarController$EventHandler;

    .prologue
    .line 635
    monitor-enter p0

    .line 636
    :try_start_0
    iget v0, p0, Lcom/android/calendar/CalendarController;->mDispatchInProgressCounter:I

    if-lez v0, :cond_0

    .line 637
    iget-object v0, p0, Lcom/android/calendar/CalendarController;->mToBeAddedEventHandlers:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    :goto_0
    monitor-exit p0

    .line 642
    return-void

    .line 639
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/CalendarController;->eventHandlers:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 641
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public registerFirstEventHandler(ILcom/android/calendar/CalendarController$EventHandler;)V
    .locals 2
    .param p1, "key"    # I
    .param p2, "eventHandler"    # Lcom/android/calendar/CalendarController$EventHandler;

    .prologue
    .line 645
    monitor-enter p0

    .line 646
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/CalendarController;->registerEventHandler(ILcom/android/calendar/CalendarController$EventHandler;)V

    .line 647
    iget v0, p0, Lcom/android/calendar/CalendarController;->mDispatchInProgressCounter:I

    if-lez v0, :cond_0

    .line 648
    new-instance v0, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/calendar/CalendarController;->mToBeAddedFirstEventHandler:Landroid/util/Pair;

    .line 652
    :goto_0
    monitor-exit p0

    .line 653
    return-void

    .line 650
    :cond_0
    new-instance v0, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/calendar/CalendarController;->mFirstEventHandler:Landroid/util/Pair;

    goto :goto_0

    .line 652
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JI)V
    .locals 14
    .param p1, "sender"    # Ljava/lang/Object;
    .param p2, "eventType"    # J
    .param p4, "start"    # Landroid/text/format/Time;
    .param p5, "end"    # Landroid/text/format/Time;
    .param p6, "eventId"    # J
    .param p8, "viewType"    # I

    .prologue
    .line 408
    const-wide/16 v10, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p4

    move-wide/from16 v7, p6

    move/from16 v9, p8

    invoke-virtual/range {v0 .. v13}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;Landroid/text/format/Time;JIJLjava/lang/String;Landroid/content/ComponentName;)V

    .line 410
    return-void
.end method

.method public sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JIJLjava/lang/String;Landroid/content/ComponentName;)V
    .locals 14
    .param p1, "sender"    # Ljava/lang/Object;
    .param p2, "eventType"    # J
    .param p4, "start"    # Landroid/text/format/Time;
    .param p5, "end"    # Landroid/text/format/Time;
    .param p6, "eventId"    # J
    .param p8, "viewType"    # I
    .param p9, "extraLong"    # J
    .param p11, "query"    # Ljava/lang/String;
    .param p12, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 417
    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p4

    move-wide/from16 v7, p6

    move/from16 v9, p8

    move-wide/from16 v10, p9

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    invoke-virtual/range {v0 .. v13}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;Landroid/text/format/Time;JIJLjava/lang/String;Landroid/content/ComponentName;)V

    .line 419
    return-void
.end method

.method public sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;Landroid/text/format/Time;JIJLjava/lang/String;Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "sender"    # Ljava/lang/Object;
    .param p2, "eventType"    # J
    .param p4, "start"    # Landroid/text/format/Time;
    .param p5, "end"    # Landroid/text/format/Time;
    .param p6, "selected"    # Landroid/text/format/Time;
    .param p7, "eventId"    # J
    .param p9, "viewType"    # I
    .param p10, "extraLong"    # J
    .param p12, "query"    # Ljava/lang/String;
    .param p13, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 423
    new-instance v0, Lcom/android/calendar/CalendarController$EventInfo;

    invoke-direct {v0}, Lcom/android/calendar/CalendarController$EventInfo;-><init>()V

    .line 424
    .local v0, "info":Lcom/android/calendar/CalendarController$EventInfo;
    iput-wide p2, v0, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    .line 425
    iput-object p4, v0, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    .line 426
    iput-object p6, v0, Lcom/android/calendar/CalendarController$EventInfo;->selectedTime:Landroid/text/format/Time;

    .line 427
    iput-object p5, v0, Lcom/android/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    .line 428
    iput-wide p7, v0, Lcom/android/calendar/CalendarController$EventInfo;->id:J

    .line 429
    iput p9, v0, Lcom/android/calendar/CalendarController$EventInfo;->viewType:I

    .line 430
    iput-object p12, v0, Lcom/android/calendar/CalendarController$EventInfo;->query:Ljava/lang/String;

    .line 431
    iput-object p13, v0, Lcom/android/calendar/CalendarController$EventInfo;->componentName:Landroid/content/ComponentName;

    .line 432
    iput-wide p10, v0, Lcom/android/calendar/CalendarController$EventInfo;->extraLong:J

    .line 433
    invoke-virtual {p0, p1, v0}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;Lcom/android/calendar/CalendarController$EventInfo;)V

    .line 434
    return-void
.end method

.method public sendEvent(Ljava/lang/Object;Lcom/android/calendar/CalendarController$EventInfo;)V
    .locals 29
    .param p1, "sender"    # Ljava/lang/Object;
    .param p2, "event"    # Lcom/android/calendar/CalendarController$EventInfo;

    .prologue
    .line 443
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/CalendarController;->filters:Ljava/util/WeakHashMap;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Long;

    .line 444
    .local v17, "filteredTypes":Ljava/lang/Long;
    if-eqz v17, :cond_1

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object/from16 v0, p2

    iget-wide v7, v0, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    and-long/2addr v2, v7

    const-wide/16 v7, 0x0

    cmp-long v2, v2, v7

    if-eqz v2, :cond_1

    .line 625
    :cond_0
    :goto_0
    return-void

    .line 452
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/CalendarController;->mViewType:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/calendar/CalendarController;->mPreviousViewType:I

    .line 455
    move-object/from16 v0, p2

    iget v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->viewType:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_a

    .line 456
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/CalendarController;->mDetailViewType:I

    move-object/from16 v0, p2

    iput v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->viewType:I

    .line 457
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/CalendarController;->mDetailViewType:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/calendar/CalendarController;->mViewType:I

    .line 477
    :cond_2
    :goto_1
    const-wide/16 v26, 0x0

    .line 478
    .local v26, "startMillis":J
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    if-eqz v2, :cond_3

    .line 479
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v26

    .line 483
    :cond_3
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->selectedTime:Landroid/text/format/Time;

    if-eqz v2, :cond_d

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->selectedTime:Landroid/text/format/Time;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    const-wide/16 v7, 0x0

    cmp-long v2, v2, v7

    if-eqz v2, :cond_d

    .line 484
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/CalendarController;->mTime:Landroid/text/format/Time;

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/calendar/CalendarController$EventInfo;->selectedTime:Landroid/text/format/Time;

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 498
    :goto_2
    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v7, 0x400

    cmp-long v2, v2, v7

    if-nez v2, :cond_4

    .line 499
    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->extraLong:J

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/calendar/CalendarController;->mDateFlags:J

    .line 503
    :cond_4
    const-wide/16 v2, 0x0

    cmp-long v2, v26, v2

    if-nez v2, :cond_5

    .line 504
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/CalendarController;->mTime:Landroid/text/format/Time;

    move-object/from16 v0, p2

    iput-object v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    .line 515
    :cond_5
    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v7, 0xd

    and-long/2addr v2, v7

    const-wide/16 v7, 0x0

    cmp-long v2, v2, v7

    if-eqz v2, :cond_6

    .line 518
    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->id:J

    const-wide/16 v7, 0x0

    cmp-long v2, v2, v7

    if-lez v2, :cond_10

    .line 519
    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->id:J

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/calendar/CalendarController;->mEventId:J

    .line 525
    :cond_6
    :goto_3
    const/16 v19, 0x0

    .line 526
    .local v19, "handled":Z
    monitor-enter p0

    .line 527
    :try_start_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/CalendarController;->mDispatchInProgressCounter:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/calendar/CalendarController;->mDispatchInProgressCounter:I

    .line 533
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/CalendarController;->mFirstEventHandler:Landroid/util/Pair;

    if-eqz v2, :cond_7

    .line 535
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/CalendarController;->mFirstEventHandler:Landroid/util/Pair;

    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/calendar/CalendarController$EventHandler;

    .line 536
    .local v20, "handler":Lcom/android/calendar/CalendarController$EventHandler;
    if-eqz v20, :cond_7

    invoke-interface/range {v20 .. v20}, Lcom/android/calendar/CalendarController$EventHandler;->getSupportedEventTypes()J

    move-result-wide v2

    move-object/from16 v0, p2

    iget-wide v7, v0, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    and-long/2addr v2, v7

    const-wide/16 v7, 0x0

    cmp-long v2, v2, v7

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/CalendarController;->mToBeRemovedEventHandlers:Ljava/util/LinkedList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/CalendarController;->mFirstEventHandler:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 538
    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Lcom/android/calendar/CalendarController$EventHandler;->handleEvent(Lcom/android/calendar/CalendarController$EventInfo;)V

    .line 539
    const/16 v19, 0x1

    .line 542
    .end local v20    # "handler":Lcom/android/calendar/CalendarController$EventHandler;
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/CalendarController;->eventHandlers:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .line 543
    .local v21, "handlers":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/calendar/CalendarController$EventHandler;>;>;"
    :cond_8
    :goto_4
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 544
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 545
    .local v15, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/calendar/CalendarController$EventHandler;>;"
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v23

    .line 546
    .local v23, "key":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/CalendarController;->mFirstEventHandler:Landroid/util/Pair;

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/CalendarController;->mFirstEventHandler:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move/from16 v0, v23

    if-eq v0, v2, :cond_8

    .line 550
    :cond_9
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/calendar/CalendarController$EventHandler;

    .line 551
    .local v16, "eventHandler":Lcom/android/calendar/CalendarController$EventHandler;
    if-eqz v16, :cond_8

    invoke-interface/range {v16 .. v16}, Lcom/android/calendar/CalendarController$EventHandler;->getSupportedEventTypes()J

    move-result-wide v2

    move-object/from16 v0, p2

    iget-wide v7, v0, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    and-long/2addr v2, v7

    const-wide/16 v7, 0x0

    cmp-long v2, v2, v7

    if-eqz v2, :cond_8

    .line 553
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/CalendarController;->mToBeRemovedEventHandlers:Ljava/util/LinkedList;

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 556
    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Lcom/android/calendar/CalendarController$EventHandler;->handleEvent(Lcom/android/calendar/CalendarController$EventInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 557
    const/16 v19, 0x1

    goto :goto_4

    .line 458
    .end local v15    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/calendar/CalendarController$EventHandler;>;"
    .end local v16    # "eventHandler":Lcom/android/calendar/CalendarController$EventHandler;
    .end local v19    # "handled":Z
    .end local v21    # "handlers":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/calendar/CalendarController$EventHandler;>;>;"
    .end local v23    # "key":I
    .end local v26    # "startMillis":J
    :cond_a
    move-object/from16 v0, p2

    iget v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->viewType:I

    if-nez v2, :cond_b

    .line 459
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/CalendarController;->mViewType:I

    move-object/from16 v0, p2

    iput v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->viewType:I

    goto/16 :goto_1

    .line 460
    :cond_b
    move-object/from16 v0, p2

    iget v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->viewType:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_2

    .line 461
    move-object/from16 v0, p2

    iget v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->viewType:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/calendar/CalendarController;->mViewType:I

    .line 463
    move-object/from16 v0, p2

    iget v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->viewType:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_c

    move-object/from16 v0, p2

    iget v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->viewType:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_c

    invoke-static {}, Lcom/android/calendar/Utils;->getAllowWeekForDetailView()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p2

    iget v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->viewType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 465
    :cond_c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/CalendarController;->mViewType:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/calendar/CalendarController;->mDetailViewType:I

    goto/16 :goto_1

    .line 486
    .restart local v26    # "startMillis":J
    :cond_d
    const-wide/16 v2, 0x0

    cmp-long v2, v26, v2

    if-eqz v2, :cond_f

    .line 489
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/CalendarController;->mTime:Landroid/text/format/Time;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v24

    .line 490
    .local v24, "mtimeMillis":J
    cmp-long v2, v24, v26

    if-ltz v2, :cond_e

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    if-eqz v2, :cond_f

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    cmp-long v2, v24, v2

    if-lez v2, :cond_f

    .line 492
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/CalendarController;->mTime:Landroid/text/format/Time;

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 495
    .end local v24    # "mtimeMillis":J
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/CalendarController;->mTime:Landroid/text/format/Time;

    move-object/from16 v0, p2

    iput-object v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->selectedTime:Landroid/text/format/Time;

    goto/16 :goto_2

    .line 521
    :cond_10
    const-wide/16 v2, -0x1

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/calendar/CalendarController;->mEventId:J

    goto/16 :goto_3

    .line 561
    .restart local v19    # "handled":Z
    .restart local v21    # "handlers":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/calendar/CalendarController$EventHandler;>;>;"
    :cond_11
    :try_start_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/CalendarController;->mDispatchInProgressCounter:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/calendar/CalendarController;->mDispatchInProgressCounter:I

    .line 563
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/CalendarController;->mDispatchInProgressCounter:I

    if-nez v2, :cond_16

    .line 566
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/CalendarController;->mToBeRemovedEventHandlers:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lez v2, :cond_14

    .line 567
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/CalendarController;->mToBeRemovedEventHandlers:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, "i$":Ljava/util/Iterator;
    :cond_12
    :goto_5
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/Integer;

    .line 568
    .local v28, "zombie":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/CalendarController;->eventHandlers:Ljava/util/LinkedHashMap;

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/CalendarController;->mFirstEventHandler:Landroid/util/Pair;

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/CalendarController;->mFirstEventHandler:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 570
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/CalendarController;->mFirstEventHandler:Landroid/util/Pair;

    goto :goto_5

    .line 586
    .end local v21    # "handlers":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/calendar/CalendarController$EventHandler;>;>;"
    .end local v22    # "i$":Ljava/util/Iterator;
    .end local v28    # "zombie":Ljava/lang/Integer;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 573
    .restart local v21    # "handlers":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/calendar/CalendarController$EventHandler;>;>;"
    .restart local v22    # "i$":Ljava/util/Iterator;
    :cond_13
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/CalendarController;->mToBeRemovedEventHandlers:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 576
    .end local v22    # "i$":Ljava/util/Iterator;
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/CalendarController;->mToBeAddedFirstEventHandler:Landroid/util/Pair;

    if-eqz v2, :cond_15

    .line 577
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/CalendarController;->mToBeAddedFirstEventHandler:Landroid/util/Pair;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/CalendarController;->mFirstEventHandler:Landroid/util/Pair;

    .line 578
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/calendar/CalendarController;->mToBeAddedFirstEventHandler:Landroid/util/Pair;

    .line 580
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/CalendarController;->mToBeAddedEventHandlers:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_16

    .line 581
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/CalendarController;->mToBeAddedEventHandlers:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .restart local v22    # "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/Map$Entry;

    .line 582
    .local v18, "food":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/calendar/CalendarController$EventHandler;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/CalendarController;->eventHandlers:Ljava/util/LinkedHashMap;

    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 586
    .end local v18    # "food":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/calendar/CalendarController$EventHandler;>;"
    .end local v22    # "i$":Ljava/util/Iterator;
    :cond_16
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 588
    if-nez v19, :cond_0

    .line 590
    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v7, 0x40

    cmp-long v2, v2, v7

    if-nez v2, :cond_17

    .line 591
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/CalendarController;->launchSettings()V

    goto/16 :goto_0

    .line 596
    :cond_17
    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v7, 0x800

    cmp-long v2, v2, v7

    if-nez v2, :cond_18

    .line 597
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/CalendarController;->launchSelectVisibleCalendars()V

    goto/16 :goto_0

    .line 602
    :cond_18
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    if-nez v2, :cond_19

    const-wide/16 v5, -0x1

    .line 603
    .local v5, "endTime":J
    :goto_7
    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v7, 0x1

    cmp-long v2, v2, v7

    if-nez v2, :cond_1b

    .line 604
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    move-object/from16 v0, p2

    iget-wide v7, v0, Lcom/android/calendar/CalendarController$EventInfo;->extraLong:J

    const-wide/16 v9, 0x10

    cmp-long v2, v7, v9

    if-nez v2, :cond_1a

    const/4 v7, 0x1

    :goto_8
    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/calendar/CalendarController;->launchCreateEvent(JJZ)V

    goto/16 :goto_0

    .line 602
    .end local v5    # "endTime":J
    :cond_19
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v5

    goto :goto_7

    .line 604
    .restart local v5    # "endTime":J
    :cond_1a
    const/4 v7, 0x0

    goto :goto_8

    .line 607
    :cond_1b
    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v7, 0x2

    cmp-long v2, v2, v7

    if-nez v2, :cond_1c

    .line 608
    move-object/from16 v0, p2

    iget-wide v8, v0, Lcom/android/calendar/CalendarController$EventInfo;->id:J

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v10

    invoke-virtual/range {p2 .. p2}, Lcom/android/calendar/CalendarController$EventInfo;->getResponse()I

    move-result v14

    move-object/from16 v7, p0

    move-wide v12, v5

    invoke-virtual/range {v7 .. v14}, Lcom/android/calendar/CalendarController;->launchViewEvent(JJJI)V

    goto/16 :goto_0

    .line 611
    :cond_1c
    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v7, 0x8

    cmp-long v2, v2, v7

    if-nez v2, :cond_1d

    .line 612
    move-object/from16 v0, p2

    iget-wide v8, v0, Lcom/android/calendar/CalendarController$EventInfo;->id:J

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v10

    const/4 v14, 0x1

    move-object/from16 v7, p0

    move-wide v12, v5

    invoke-direct/range {v7 .. v14}, Lcom/android/calendar/CalendarController;->launchEditEvent(JJJZ)V

    goto/16 :goto_0

    .line 614
    :cond_1d
    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v7, 0x4

    cmp-long v2, v2, v7

    if-nez v2, :cond_1e

    .line 615
    move-object/from16 v0, p2

    iget-wide v8, v0, Lcom/android/calendar/CalendarController$EventInfo;->id:J

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v10

    const/4 v14, 0x0

    move-object/from16 v7, p0

    move-wide v12, v5

    invoke-direct/range {v7 .. v14}, Lcom/android/calendar/CalendarController;->launchEditEvent(JJJZ)V

    goto/16 :goto_0

    .line 617
    :cond_1e
    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v7, 0x10

    cmp-long v2, v2, v7

    if-nez v2, :cond_1f

    .line 618
    move-object/from16 v0, p2

    iget-wide v8, v0, Lcom/android/calendar/CalendarController$EventInfo;->id:J

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v10

    move-object/from16 v7, p0

    move-wide v12, v5

    invoke-direct/range {v7 .. v13}, Lcom/android/calendar/CalendarController;->launchDeleteEvent(JJJ)V

    goto/16 :goto_0

    .line 620
    :cond_1f
    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v7, 0x100

    cmp-long v2, v2, v7

    if-nez v2, :cond_0

    .line 621
    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->id:J

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/calendar/CalendarController$EventInfo;->query:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/android/calendar/CalendarController$EventInfo;->componentName:Landroid/content/ComponentName;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4, v7}, Lcom/android/calendar/CalendarController;->launchSearch(JLjava/lang/String;Landroid/content/ComponentName;)V

    goto/16 :goto_0
.end method

.method public sendEventRelatedEvent(Ljava/lang/Object;JJJJIIJ)V
    .locals 16
    .param p1, "sender"    # Ljava/lang/Object;
    .param p2, "eventType"    # J
    .param p4, "eventId"    # J
    .param p6, "startMillis"    # J
    .param p8, "endMillis"    # J
    .param p10, "x"    # I
    .param p11, "y"    # I
    .param p12, "selectedMillis"    # J

    .prologue
    .line 321
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/calendar/CalendarController$EventInfo;->buildViewExtraLong(IZ)J

    move-result-wide v12

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move/from16 v10, p10

    move/from16 v11, p11

    move-wide/from16 v14, p12

    invoke-virtual/range {v0 .. v15}, Lcom/android/calendar/CalendarController;->sendEventRelatedEventWithExtra(Ljava/lang/Object;JJJJIIJJ)V

    .line 324
    return-void
.end method

.method public sendEventRelatedEventWithExtra(Ljava/lang/Object;JJJJIIJJ)V
    .locals 6
    .param p1, "sender"    # Ljava/lang/Object;
    .param p2, "eventType"    # J
    .param p4, "eventId"    # J
    .param p6, "startMillis"    # J
    .param p8, "endMillis"    # J
    .param p10, "x"    # I
    .param p11, "y"    # I
    .param p12, "extraLong"    # J
    .param p14, "selectedMillis"    # J

    .prologue
    .line 342
    new-instance v2, Lcom/android/calendar/CalendarController$EventInfo;

    invoke-direct {v2}, Lcom/android/calendar/CalendarController$EventInfo;-><init>()V

    .line 343
    .local v2, "info":Lcom/android/calendar/CalendarController$EventInfo;
    iput-wide p2, v2, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    .line 344
    const-wide/16 v3, 0x8

    cmp-long v3, p2, v3

    if-eqz v3, :cond_0

    const-wide/16 v3, 0x4

    cmp-long v3, p2, v3

    if-nez v3, :cond_1

    .line 345
    :cond_0
    const/4 v3, 0x0

    iput v3, v2, Lcom/android/calendar/CalendarController$EventInfo;->viewType:I

    .line 347
    :cond_1
    iput-wide p4, v2, Lcom/android/calendar/CalendarController$EventInfo;->id:J

    .line 348
    new-instance v3, Landroid/text/format/Time;

    iget-object v4, p0, Lcom/android/calendar/CalendarController;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/calendar/CalendarController;->mUpdateTimezone:Ljava/lang/Runnable;

    invoke-static {v4, v5}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v3, v2, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    .line 349
    iget-object v3, v2, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    invoke-virtual {v3, p6, p7}, Landroid/text/format/Time;->set(J)V

    .line 350
    const-wide/16 v3, -0x1

    cmp-long v3, p14, v3

    if-eqz v3, :cond_2

    .line 351
    new-instance v3, Landroid/text/format/Time;

    iget-object v4, p0, Lcom/android/calendar/CalendarController;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/calendar/CalendarController;->mUpdateTimezone:Ljava/lang/Runnable;

    invoke-static {v4, v5}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v3, v2, Lcom/android/calendar/CalendarController$EventInfo;->selectedTime:Landroid/text/format/Time;

    .line 352
    iget-object v3, v2, Lcom/android/calendar/CalendarController$EventInfo;->selectedTime:Landroid/text/format/Time;

    move-wide/from16 v0, p14

    invoke-virtual {v3, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 356
    :goto_0
    new-instance v3, Landroid/text/format/Time;

    iget-object v4, p0, Lcom/android/calendar/CalendarController;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/calendar/CalendarController;->mUpdateTimezone:Ljava/lang/Runnable;

    invoke-static {v4, v5}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v3, v2, Lcom/android/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    .line 357
    iget-object v3, v2, Lcom/android/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    invoke-virtual {v3, p8, p9}, Landroid/text/format/Time;->set(J)V

    .line 358
    move/from16 v0, p10

    iput v0, v2, Lcom/android/calendar/CalendarController$EventInfo;->x:I

    .line 359
    move/from16 v0, p11

    iput v0, v2, Lcom/android/calendar/CalendarController$EventInfo;->y:I

    .line 360
    move-wide/from16 v0, p12

    iput-wide v0, v2, Lcom/android/calendar/CalendarController$EventInfo;->extraLong:J

    .line 361
    invoke-virtual {p0, p1, v2}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;Lcom/android/calendar/CalendarController$EventInfo;)V

    .line 362
    return-void

    .line 354
    :cond_2
    iget-object v3, v2, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    iput-object v3, v2, Lcom/android/calendar/CalendarController$EventInfo;->selectedTime:Landroid/text/format/Time;

    goto :goto_0
.end method

.method public sendEventRelatedEventWithExtra(Ljava/lang/Object;JJJJIIJJLandroid/os/Bundle;)V
    .locals 6
    .param p1, "sender"    # Ljava/lang/Object;
    .param p2, "eventType"    # J
    .param p4, "eventId"    # J
    .param p6, "startMillis"    # J
    .param p8, "endMillis"    # J
    .param p10, "x"    # I
    .param p11, "y"    # I
    .param p12, "extraLong"    # J
    .param p14, "selectedMillis"    # J
    .param p16, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 372
    new-instance v2, Lcom/android/calendar/CalendarController$EventInfo;

    invoke-direct {v2}, Lcom/android/calendar/CalendarController$EventInfo;-><init>()V

    .line 373
    .local v2, "info":Lcom/android/calendar/CalendarController$EventInfo;
    iput-wide p2, v2, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    .line 374
    const-wide/16 v3, 0x8

    cmp-long v3, p2, v3

    if-eqz v3, :cond_0

    const-wide/16 v3, 0x4

    cmp-long v3, p2, v3

    if-nez v3, :cond_1

    .line 375
    :cond_0
    const/4 v3, 0x0

    iput v3, v2, Lcom/android/calendar/CalendarController$EventInfo;->viewType:I

    .line 377
    :cond_1
    iput-wide p4, v2, Lcom/android/calendar/CalendarController$EventInfo;->id:J

    .line 378
    new-instance v3, Landroid/text/format/Time;

    iget-object v4, p0, Lcom/android/calendar/CalendarController;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/calendar/CalendarController;->mUpdateTimezone:Ljava/lang/Runnable;

    invoke-static {v4, v5}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v3, v2, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    .line 379
    iget-object v3, v2, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    invoke-virtual {v3, p6, p7}, Landroid/text/format/Time;->set(J)V

    .line 380
    const-wide/16 v3, -0x1

    cmp-long v3, p14, v3

    if-eqz v3, :cond_2

    .line 381
    new-instance v3, Landroid/text/format/Time;

    iget-object v4, p0, Lcom/android/calendar/CalendarController;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/calendar/CalendarController;->mUpdateTimezone:Ljava/lang/Runnable;

    invoke-static {v4, v5}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v3, v2, Lcom/android/calendar/CalendarController$EventInfo;->selectedTime:Landroid/text/format/Time;

    .line 382
    iget-object v3, v2, Lcom/android/calendar/CalendarController$EventInfo;->selectedTime:Landroid/text/format/Time;

    move-wide/from16 v0, p14

    invoke-virtual {v3, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 386
    :goto_0
    new-instance v3, Landroid/text/format/Time;

    iget-object v4, p0, Lcom/android/calendar/CalendarController;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/calendar/CalendarController;->mUpdateTimezone:Ljava/lang/Runnable;

    invoke-static {v4, v5}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v3, v2, Lcom/android/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    .line 387
    iget-object v3, v2, Lcom/android/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    invoke-virtual {v3, p8, p9}, Landroid/text/format/Time;->set(J)V

    .line 388
    move/from16 v0, p10

    iput v0, v2, Lcom/android/calendar/CalendarController$EventInfo;->x:I

    .line 389
    move/from16 v0, p11

    iput v0, v2, Lcom/android/calendar/CalendarController$EventInfo;->y:I

    .line 390
    move-wide/from16 v0, p12

    iput-wide v0, v2, Lcom/android/calendar/CalendarController$EventInfo;->extraLong:J

    .line 391
    move-object/from16 v0, p16

    iput-object v0, v2, Lcom/android/calendar/CalendarController$EventInfo;->extras:Landroid/os/Bundle;

    .line 392
    invoke-virtual {p0, p1, v2}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;Lcom/android/calendar/CalendarController$EventInfo;)V

    .line 393
    return-void

    .line 384
    :cond_2
    iget-object v3, v2, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    iput-object v3, v2, Lcom/android/calendar/CalendarController$EventInfo;->selectedTime:Landroid/text/format/Time;

    goto :goto_0
.end method

.method public setEventId(J)V
    .locals 0
    .param p1, "eventId"    # J

    .prologue
    .line 826
    iput-wide p1, p0, Lcom/android/calendar/CalendarController;->mEventId:J

    .line 827
    return-void
.end method

.method public setTime(J)V
    .locals 1
    .param p1, "millisTime"    # J

    .prologue
    .line 707
    iget-object v0, p0, Lcom/android/calendar/CalendarController;->mTime:Landroid/text/format/Time;

    invoke-virtual {v0, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 708
    return-void
.end method

.method public setViewType(I)V
    .locals 0
    .param p1, "viewType"    # I

    .prologue
    .line 821
    iput p1, p0, Lcom/android/calendar/CalendarController;->mViewType:I

    .line 822
    return-void
.end method
