.class public Lcom/android/calendar/SearchActivity;
.super Landroid/app/Activity;
.source "SearchActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnActionExpandListener;
.implements Landroid/widget/SearchView$OnQueryTextListener;
.implements Lcom/android/calendar/CalendarController$EventHandler;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mIsMultipane:Z


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mController:Lcom/android/calendar/CalendarController;

.field private mCurrentEventId:J

.field private mDeleteEventHelper:Lcom/android/calendar/DeleteEventHelper;

.field private mEventInfoFragment:Lcom/android/calendar/EventInfoFragment;

.field private mHandler:Landroid/os/Handler;

.field private final mObserver:Landroid/database/ContentObserver;

.field private mQuery:Ljava/lang/String;

.field private mSearchView:Landroid/widget/SearchView;

.field private mShowEventDetailsWithAgenda:Z

.field private mTimeChangesReceiver:Landroid/content/BroadcastReceiver;

.field private final mTimeChangesUpdater:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lcom/android/calendar/SearchActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/SearchActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 71
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/calendar/SearchActivity;->mCurrentEventId:J

    .line 83
    new-instance v0, Lcom/android/calendar/SearchActivity$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/calendar/SearchActivity$1;-><init>(Lcom/android/calendar/SearchActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/calendar/SearchActivity;->mObserver:Landroid/database/ContentObserver;

    .line 96
    new-instance v0, Lcom/android/calendar/SearchActivity$2;

    invoke-direct {v0, p0}, Lcom/android/calendar/SearchActivity$2;-><init>(Lcom/android/calendar/SearchActivity;)V

    iput-object v0, p0, Lcom/android/calendar/SearchActivity;->mTimeChangesUpdater:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/SearchActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/calendar/SearchActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/calendar/SearchActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/calendar/SearchActivity;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/calendar/SearchActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/calendar/SearchActivity;->mTimeChangesUpdater:Ljava/lang/Runnable;

    return-object v0
.end method

.method private deleteEvent(JJJ)V
    .locals 10
    .param p1, "eventId"    # J
    .param p3, "startMillis"    # J
    .param p5, "endMillis"    # J

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/calendar/SearchActivity;->mDeleteEventHelper:Lcom/android/calendar/DeleteEventHelper;

    const/4 v7, -0x1

    move-wide v1, p3

    move-wide v3, p5

    move-wide v5, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/calendar/DeleteEventHelper;->delete(JJJI)V

    .line 234
    sget-boolean v0, Lcom/android/calendar/SearchActivity;->mIsMultipane:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/SearchActivity;->mEventInfoFragment:Lcom/android/calendar/EventInfoFragment;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/calendar/SearchActivity;->mCurrentEventId:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 236
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v8

    .line 237
    .local v8, "fragmentManager":Landroid/app/FragmentManager;
    invoke-virtual {v8}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v9

    .line 238
    .local v9, "ft":Landroid/app/FragmentTransaction;
    iget-object v0, p0, Lcom/android/calendar/SearchActivity;->mEventInfoFragment:Lcom/android/calendar/EventInfoFragment;

    invoke-virtual {v9, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 239
    invoke-virtual {v9}, Landroid/app/FragmentTransaction;->commit()I

    .line 240
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/SearchActivity;->mEventInfoFragment:Lcom/android/calendar/EventInfoFragment;

    .line 241
    iget-object v0, p0, Lcom/android/calendar/SearchActivity;->mController:Lcom/android/calendar/CalendarController;

    const v1, 0x7f100010

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/CalendarController;->deregisterEventHandler(Ljava/lang/Integer;)V

    .line 242
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/calendar/SearchActivity;->mCurrentEventId:J

    .line 244
    .end local v8    # "fragmentManager":Landroid/app/FragmentManager;
    .end local v9    # "ft":Landroid/app/FragmentTransaction;
    :cond_0
    return-void
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 302
    const-string v1, "android.intent.action.SEARCH"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 303
    const-string v1, "query"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 304
    .local v0, "query":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/calendar/SearchActivity;->search(Ljava/lang/String;Landroid/text/format/Time;)V

    .line 306
    .end local v0    # "query":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private initFragments(JLjava/lang/String;)V
    .locals 6
    .param p1, "timeMillis"    # J
    .param p3, "query"    # Ljava/lang/String;

    .prologue
    const v5, 0x7f1000ab

    .line 171
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 172
    .local v0, "fragmentManager":Landroid/app/FragmentManager;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 174
    .local v1, "ft":Landroid/app/FragmentTransaction;
    new-instance v2, Lcom/android/calendar/agenda/AgendaFragment;

    const/4 v4, 0x1

    invoke-direct {v2, p1, p2, v4}, Lcom/android/calendar/agenda/AgendaFragment;-><init>(JZ)V

    .line 175
    .local v2, "searchResultsFragment":Lcom/android/calendar/agenda/AgendaFragment;
    invoke-virtual {v1, v5, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 176
    iget-object v4, p0, Lcom/android/calendar/SearchActivity;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v4, v5, v2}, Lcom/android/calendar/CalendarController;->registerEventHandler(ILcom/android/calendar/CalendarController$EventHandler;)V

    .line 178
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 179
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 180
    .local v3, "t":Landroid/text/format/Time;
    invoke-virtual {v3, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 181
    invoke-direct {p0, p3, v3}, Lcom/android/calendar/SearchActivity;->search(Ljava/lang/String;Landroid/text/format/Time;)V

    .line 182
    return-void
.end method

.method private search(Ljava/lang/String;Landroid/text/format/Time;)V
    .locals 5
    .param p1, "searchQuery"    # Ljava/lang/String;
    .param p2, "goToTime"    # Landroid/text/format/Time;

    .prologue
    const/4 v4, 0x1

    .line 211
    new-instance v1, Landroid/provider/SearchRecentSuggestions;

    invoke-static {p0}, Lcom/android/calendar/Utils;->getSearchAuthority(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, v4}, Landroid/provider/SearchRecentSuggestions;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 214
    .local v1, "suggestions":Landroid/provider/SearchRecentSuggestions;
    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/provider/SearchRecentSuggestions;->saveRecentQuery(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    new-instance v0, Lcom/android/calendar/CalendarController$EventInfo;

    invoke-direct {v0}, Lcom/android/calendar/CalendarController$EventInfo;-><init>()V

    .line 218
    .local v0, "searchEventInfo":Lcom/android/calendar/CalendarController$EventInfo;
    const-wide/16 v2, 0x100

    iput-wide v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    .line 219
    iput-object p1, v0, Lcom/android/calendar/CalendarController$EventInfo;->query:Ljava/lang/String;

    .line 220
    iput v4, v0, Lcom/android/calendar/CalendarController$EventInfo;->viewType:I

    .line 221
    if-eqz p2, :cond_0

    .line 222
    iput-object p2, v0, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    .line 224
    :cond_0
    iget-object v2, p0, Lcom/android/calendar/SearchActivity;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v2, p0, v0}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;Lcom/android/calendar/CalendarController$EventInfo;)V

    .line 225
    iput-object p1, p0, Lcom/android/calendar/SearchActivity;->mQuery:Ljava/lang/String;

    .line 226
    iget-object v2, p0, Lcom/android/calendar/SearchActivity;->mSearchView:Landroid/widget/SearchView;

    if-eqz v2, :cond_1

    .line 227
    iget-object v2, p0, Lcom/android/calendar/SearchActivity;->mSearchView:Landroid/widget/SearchView;

    iget-object v3, p0, Lcom/android/calendar/SearchActivity;->mQuery:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 228
    iget-object v2, p0, Lcom/android/calendar/SearchActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2}, Landroid/widget/SearchView;->clearFocus()V

    .line 230
    :cond_1
    return-void
.end method

.method private showEventInfo(Lcom/android/calendar/CalendarController$EventInfo;)V
    .locals 13

    .prologue
    const-wide/16 v2, -0x1

    const v12, 0x7f100010

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 185
    iget-boolean v0, p0, Lcom/android/calendar/SearchActivity;->mShowEventDetailsWithAgenda:Z

    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 187
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v11

    .line 189
    new-instance v0, Lcom/android/calendar/EventInfoFragment;

    iget-wide v2, p1, Lcom/android/calendar/CalendarController$EventInfo;->id:J

    iget-object v1, p1, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    invoke-virtual {v1, v9}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    iget-object v1, p1, Lcom/android/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    invoke-virtual {v1, v9}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v6

    invoke-virtual {p1}, Lcom/android/calendar/CalendarController$EventInfo;->getResponse()I

    move-result v8

    move-object v1, p0

    invoke-direct/range {v0 .. v10}, Lcom/android/calendar/EventInfoFragment;-><init>(Landroid/content/Context;JJJIZI)V

    iput-object v0, p0, Lcom/android/calendar/SearchActivity;->mEventInfoFragment:Lcom/android/calendar/EventInfoFragment;

    .line 192
    iget-object v0, p0, Lcom/android/calendar/SearchActivity;->mEventInfoFragment:Lcom/android/calendar/EventInfoFragment;

    invoke-virtual {v11, v12, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 193
    invoke-virtual {v11}, Landroid/app/FragmentTransaction;->commit()I

    .line 194
    iget-object v0, p0, Lcom/android/calendar/SearchActivity;->mController:Lcom/android/calendar/CalendarController;

    iget-object v1, p0, Lcom/android/calendar/SearchActivity;->mEventInfoFragment:Lcom/android/calendar/EventInfoFragment;

    invoke-virtual {v0, v12, v1}, Lcom/android/calendar/CalendarController;->registerEventHandler(ILcom/android/calendar/CalendarController$EventHandler;)V

    .line 206
    :goto_0
    iget-wide v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->id:J

    iput-wide v0, p0, Lcom/android/calendar/SearchActivity;->mCurrentEventId:J

    .line 207
    return-void

    .line 196
    :cond_0
    new-instance v4, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 197
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v5, p1, Lcom/android/calendar/CalendarController$EventInfo;->id:J

    invoke-static {v0, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 198
    invoke-virtual {v4, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 199
    const-class v0, Lcom/android/calendar/EventInfoActivity;

    invoke-virtual {v4, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 200
    const-string v5, "beginTime"

    iget-object v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    invoke-virtual {v0, v10}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    :goto_1
    invoke-virtual {v4, v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 202
    const-string v0, "endTime"

    iget-object v1, p1, Lcom/android/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/android/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    invoke-virtual {v1, v10}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    :cond_1
    invoke-virtual {v4, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 204
    invoke-virtual {p0, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    move-wide v0, v2

    .line 200
    goto :goto_1
.end method


# virtual methods
.method public eventsChanged()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 339
    iget-object v0, p0, Lcom/android/calendar/SearchActivity;->mController:Lcom/android/calendar/CalendarController;

    const-wide/16 v2, 0x80

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    move-object v1, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v8}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JI)V

    .line 340
    return-void
.end method

.method public getSupportedEventTypes()J
    .locals 2

    .prologue
    .line 344
    const-wide/16 v0, 0x12

    return-wide v0
.end method

.method public handleEvent(Lcom/android/calendar/CalendarController$EventInfo;)V
    .locals 7
    .param p1, "event"    # Lcom/android/calendar/CalendarController$EventInfo;

    .prologue
    const/4 v4, 0x0

    .line 349
    iget-object v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    if-nez v0, :cond_1

    const-wide/16 v5, -0x1

    .line 350
    .local v5, "endTime":J
    :goto_0
    iget-wide v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v2, 0x2

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 351
    invoke-direct {p0, p1}, Lcom/android/calendar/SearchActivity;->showEventInfo(Lcom/android/calendar/CalendarController$EventInfo;)V

    .line 355
    :cond_0
    :goto_1
    return-void

    .line 349
    .end local v5    # "endTime":J
    :cond_1
    iget-object v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    invoke-virtual {v0, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v5

    goto :goto_0

    .line 352
    .restart local v5    # "endTime":J
    :cond_2
    iget-wide v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v2, 0x10

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 353
    iget-wide v1, p1, Lcom/android/calendar/CalendarController$EventInfo;->id:J

    iget-object v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    invoke-virtual {v0, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/calendar/SearchActivity;->deleteEvent(JJJ)V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x4

    const/4 v6, 0x0

    .line 107
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 109
    invoke-static {p0}, Lcom/android/calendar/CalendarController;->getInstance(Landroid/content/Context;)Lcom/android/calendar/CalendarController;

    move-result-object v4

    iput-object v4, p0, Lcom/android/calendar/SearchActivity;->mController:Lcom/android/calendar/CalendarController;

    .line 110
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, Lcom/android/calendar/SearchActivity;->mHandler:Landroid/os/Handler;

    .line 112
    const v4, 0x7f090007

    invoke-static {p0, v4}, Lcom/android/calendar/Utils;->getConfigBool(Landroid/content/Context;I)Z

    move-result v4

    sput-boolean v4, Lcom/android/calendar/SearchActivity;->mIsMultipane:Z

    .line 113
    const v4, 0x7f090003

    invoke-static {p0, v4}, Lcom/android/calendar/Utils;->getConfigBool(Landroid/content/Context;I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/calendar/SearchActivity;->mShowEventDetailsWithAgenda:Z

    .line 116
    const v4, 0x7f04002f

    invoke-virtual {p0, v4}, Landroid/app/Activity;->setContentView(I)V

    .line 118
    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Landroid/app/Activity;->setDefaultKeyMode(I)V

    .line 120
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iput-object v4, p0, Lcom/android/calendar/SearchActivity;->mContentResolver:Landroid/content/ContentResolver;

    .line 122
    sget-boolean v4, Lcom/android/calendar/SearchActivity;->mIsMultipane:Z

    if-eqz v4, :cond_3

    .line 123
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v5, v5}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 133
    :goto_0
    iget-object v4, p0, Lcom/android/calendar/SearchActivity;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v4, v6, p0}, Lcom/android/calendar/CalendarController;->registerEventHandler(ILcom/android/calendar/CalendarController$EventHandler;)V

    .line 135
    new-instance v4, Lcom/android/calendar/DeleteEventHelper;

    invoke-direct {v4, p0, p0, v6}, Lcom/android/calendar/DeleteEventHelper;-><init>(Landroid/content/Context;Landroid/app/Activity;Z)V

    iput-object v4, p0, Lcom/android/calendar/SearchActivity;->mDeleteEventHelper:Lcom/android/calendar/DeleteEventHelper;

    .line 138
    const-wide/16 v1, 0x0

    .line 139
    .local v1, "millis":J
    if-eqz p1, :cond_0

    .line 141
    const-string v4, "key_restore_time"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 146
    :cond_0
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-nez v4, :cond_1

    .line 148
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-static {v4}, Lcom/android/calendar/Utils;->timeFromIntentInMillis(Landroid/content/Intent;)J

    move-result-wide v1

    .line 151
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 152
    .local v0, "intent":Landroid/content/Intent;
    const-string v4, "android.intent.action.SEARCH"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 154
    if-eqz p1, :cond_4

    const-string v4, "key_restore_search_query"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 155
    const-string v4, "key_restore_search_query"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 159
    .local v3, "query":Ljava/lang/String;
    :goto_1
    invoke-direct {p0, v1, v2, v3}, Lcom/android/calendar/SearchActivity;->initFragments(JLjava/lang/String;)V

    .line 161
    .end local v3    # "query":Ljava/lang/String;
    :cond_2
    return-void

    .line 126
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "millis":J
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    const/4 v5, 0x6

    invoke-virtual {v4, v6, v5}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    goto :goto_0

    .line 157
    .restart local v0    # "intent":Landroid/content/Intent;
    .restart local v1    # "millis":J
    :cond_4
    const-string v4, "query"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "query":Ljava/lang/String;
    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 248
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 249
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    const v3, 0x7f0f0005

    invoke-virtual {v2, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 253
    const v2, 0x7f1000b5

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 254
    .local v0, "icon":Landroid/graphics/drawable/LayerDrawable;
    iget-object v2, p0, Lcom/android/calendar/SearchActivity;->mTimeChangesUpdater:Ljava/lang/Runnable;

    invoke-static {p0, v2}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p0, v2}, Lcom/android/calendar/Utils;->setTodayIcon(Landroid/graphics/drawable/LayerDrawable;Landroid/content/Context;Ljava/lang/String;)V

    .line 256
    const v2, 0x7f1000b8

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 257
    .local v1, "item":Landroid/view/MenuItem;
    invoke-interface {v1}, Landroid/view/MenuItem;->expandActionView()Z

    .line 258
    invoke-interface {v1, p0}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    .line 259
    invoke-interface {v1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SearchView;

    iput-object v2, p0, Lcom/android/calendar/SearchActivity;->mSearchView:Landroid/widget/SearchView;

    .line 260
    iget-object v2, p0, Lcom/android/calendar/SearchActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-static {v2, p0}, Lcom/android/calendar/Utils;->setUpSearchView(Landroid/widget/SearchView;Landroid/app/Activity;)V

    .line 261
    iget-object v2, p0, Lcom/android/calendar/SearchActivity;->mSearchView:Landroid/widget/SearchView;

    iget-object v3, p0, Lcom/android/calendar/SearchActivity;->mQuery:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 262
    iget-object v2, p0, Lcom/android/calendar/SearchActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2}, Landroid/widget/SearchView;->clearFocus()V

    .line 264
    const/4 v2, 0x1

    return v2
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 165
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 166
    iget-object v0, p0, Lcom/android/calendar/SearchActivity;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v0}, Lcom/android/calendar/CalendarController;->deregisterAllEventHandlers()V

    .line 167
    invoke-static {p0}, Lcom/android/calendar/CalendarController;->removeInstance(Landroid/content/Context;)V

    .line 168
    return-void
.end method

.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 377
    invoke-static {p0}, Lcom/android/calendar/Utils;->returnToCalendarHome(Landroid/content/Context;)V

    .line 378
    const/4 v0, 0x0

    return v0
.end method

.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 372
    const/4 v0, 0x1

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 297
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 298
    invoke-direct {p0, p1}, Lcom/android/calendar/SearchActivity;->handleIntent(Landroid/content/Intent;)V

    .line 299
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 14
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 269
    const/4 v4, 0x0

    .line 270
    .local v4, "t":Landroid/text/format/Time;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 285
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 272
    :sswitch_0
    new-instance v4, Landroid/text/format/Time;

    .end local v4    # "t":Landroid/text/format/Time;
    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    .line 273
    .restart local v4    # "t":Landroid/text/format/Time;
    invoke-virtual {v4}, Landroid/text/format/Time;->setToNow()V

    .line 274
    iget-object v0, p0, Lcom/android/calendar/SearchActivity;->mController:Lcom/android/calendar/CalendarController;

    const-wide/16 v2, 0x20

    const/4 v5, 0x0

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v8}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JI)V

    .line 275
    const/4 v0, 0x1

    goto :goto_0

    .line 277
    :sswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 279
    :sswitch_2
    iget-object v5, p0, Lcom/android/calendar/SearchActivity;->mController:Lcom/android/calendar/CalendarController;

    const-wide/16 v7, 0x40

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    move-object v6, p0

    invoke-virtual/range {v5 .. v13}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JI)V

    .line 280
    const/4 v0, 0x1

    goto :goto_0

    .line 282
    :sswitch_3
    invoke-static {p0}, Lcom/android/calendar/Utils;->returnToCalendarHome(Landroid/content/Context;)V

    .line 283
    const/4 v0, 0x1

    goto :goto_0

    .line 270
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_3
        0x7f1000b5 -> :sswitch_0
        0x7f1000b8 -> :sswitch_1
        0x7f1000ba -> :sswitch_2
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 331
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 332
    iget-object v0, p0, Lcom/android/calendar/SearchActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/calendar/SearchActivity;->mTimeChangesUpdater:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->resetMidnightUpdater(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 333
    iget-object v0, p0, Lcom/android/calendar/SearchActivity;->mTimeChangesReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {p0, v0}, Lcom/android/calendar/Utils;->clearTimeChangesReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 334
    iget-object v0, p0, Lcom/android/calendar/SearchActivity;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/calendar/SearchActivity;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 335
    return-void
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1
    .param p1, "newText"    # Ljava/lang/String;

    .prologue
    .line 359
    const/4 v0, 0x0

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 13
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x0

    .line 364
    iput-object p1, p0, Lcom/android/calendar/SearchActivity;->mQuery:Ljava/lang/String;

    .line 365
    iget-object v0, p0, Lcom/android/calendar/SearchActivity;->mController:Lcom/android/calendar/CalendarController;

    const-wide/16 v2, 0x100

    const-wide/16 v6, -0x1

    const-wide/16 v9, 0x0

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v12

    move-object v1, p0

    move-object v5, v4

    move-object v11, p1

    invoke-virtual/range {v0 .. v12}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JIJLjava/lang/String;Landroid/content/ComponentName;)V

    .line 367
    return v8
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 317
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 319
    iget-object v0, p0, Lcom/android/calendar/SearchActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/calendar/SearchActivity;->mTimeChangesUpdater:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/android/calendar/SearchActivity;->mTimeChangesUpdater:Ljava/lang/Runnable;

    invoke-static {p0, v2}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/calendar/Utils;->setMidnightUpdater(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 322
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 323
    iget-object v0, p0, Lcom/android/calendar/SearchActivity;->mTimeChangesUpdater:Ljava/lang/Runnable;

    invoke-static {p0, v0}, Lcom/android/calendar/Utils;->setTimeChangesReceiver(Landroid/content/Context;Ljava/lang/Runnable;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/SearchActivity;->mTimeChangesReceiver:Landroid/content/BroadcastReceiver;

    .line 324
    iget-object v0, p0, Lcom/android/calendar/SearchActivity;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/calendar/SearchActivity;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 326
    invoke-virtual {p0}, Lcom/android/calendar/SearchActivity;->eventsChanged()V

    .line 327
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 310
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 311
    const-string v0, "key_restore_time"

    iget-object v1, p0, Lcom/android/calendar/SearchActivity;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v1}, Lcom/android/calendar/CalendarController;->getTime()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 312
    const-string v0, "key_restore_search_query"

    iget-object v1, p0, Lcom/android/calendar/SearchActivity;->mQuery:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    return-void
.end method
