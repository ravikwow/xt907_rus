.class public Lcom/android/calendar/alerts/AlertActivity;
.super Landroid/app/Activity;
.source "AlertActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/alerts/AlertActivity$QueryHandler;
    }
.end annotation


# static fields
.field private static final PROJECTION:[Ljava/lang/String;

.field private static final SELECTIONARG:[Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/android/calendar/alerts/AlertAdapter;

.field private mCursor:Landroid/database/Cursor;

.field private mDismissAllButton:Landroid/widget/Button;

.field private mListView:Landroid/widget/ListView;

.field private mQueryHandler:Lcom/android/calendar/alerts/AlertActivity$QueryHandler;

.field private final mViewListener:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 50
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "title"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "eventLocation"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "allDay"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "begin"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "end"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "event_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "calendar_color"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "rrule"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "hasAlarm"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "state"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "alarmTime"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/alerts/AlertActivity;->PROJECTION:[Ljava/lang/String;

    .line 79
    new-array v0, v3, [Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/calendar/alerts/AlertActivity;->SELECTIONARG:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 148
    new-instance v0, Lcom/android/calendar/alerts/AlertActivity$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/alerts/AlertActivity$1;-><init>(Lcom/android/calendar/alerts/AlertActivity;)V

    iput-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->mViewListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$002(Lcom/android/calendar/alerts/AlertActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .param p0, "x0"    # Lcom/android/calendar/alerts/AlertActivity;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/calendar/alerts/AlertActivity;->mCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/calendar/alerts/AlertActivity;)Lcom/android/calendar/alerts/AlertAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/calendar/alerts/AlertActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->mAdapter:Lcom/android/calendar/alerts/AlertAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/calendar/alerts/AlertActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/android/calendar/alerts/AlertActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/calendar/alerts/AlertActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/calendar/alerts/AlertActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->mDismissAllButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/calendar/alerts/AlertActivity;J)V
    .locals 0
    .param p0, "x0"    # Lcom/android/calendar/alerts/AlertActivity;
    .param p1, "x1"    # J

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/alerts/AlertActivity;->dismissAlarm(J)V

    return-void
.end method

.method private dismissAlarm(J)V
    .locals 9
    .param p1, "id"    # J

    .prologue
    const/4 v2, 0x0

    .line 99
    new-instance v4, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v4, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 100
    .local v4, "values":Landroid/content/ContentValues;
    sget-object v0, Lcom/android/calendar/alerts/AlertActivity;->PROJECTION:[Ljava/lang/String;

    const/16 v1, 0xa

    aget-object v0, v0, v1

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 102
    .local v5, "selection":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->mQueryHandler:Lcom/android/calendar/alerts/AlertActivity$QueryHandler;

    const/4 v1, 0x0

    sget-object v3, Landroid/provider/CalendarContract$CalendarAlerts;->CONTENT_URI:Landroid/net/Uri;

    const-wide/16 v7, 0x0

    move-object v6, v2

    invoke-virtual/range {v0 .. v8}, Lcom/android/calendar/AsyncQueryService;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;J)V

    .line 104
    return-void
.end method

.method private dismissFiredAlarms()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 91
    new-instance v4, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v4, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 92
    .local v4, "values":Landroid/content/ContentValues;
    sget-object v0, Lcom/android/calendar/alerts/AlertActivity;->PROJECTION:[Ljava/lang/String;

    const/16 v1, 0xa

    aget-object v0, v0, v1

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 93
    const-string v5, "state=1"

    .line 94
    .local v5, "selection":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->mQueryHandler:Lcom/android/calendar/alerts/AlertActivity$QueryHandler;

    const/4 v1, 0x0

    sget-object v3, Landroid/provider/CalendarContract$CalendarAlerts;->CONTENT_URI:Landroid/net/Uri;

    const-wide/16 v7, 0x0

    move-object v6, v2

    invoke-virtual/range {v0 .. v8}, Lcom/android/calendar/AsyncQueryService;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;J)V

    .line 96
    return-void
.end method


# virtual methods
.method public getItemForView(Landroid/view/View;)Landroid/database/Cursor;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 251
    iget-object v1, p0, Lcom/android/calendar/alerts/AlertActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p1}, Landroid/widget/AdapterView;->getPositionForView(Landroid/view/View;)I

    move-result v0

    .line 252
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 253
    const/4 v1, 0x0

    .line 255
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/calendar/alerts/AlertActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 235
    iget-object v1, p0, Lcom/android/calendar/alerts/AlertActivity;->mDismissAllButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_0

    .line 236
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 238
    .local v0, "nm":Landroid/app/NotificationManager;
    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 240
    invoke-direct {p0}, Lcom/android/calendar/alerts/AlertActivity;->dismissFiredAlarms()V

    .line 242
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 244
    .end local v0    # "nm":Landroid/app/NotificationManager;
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 177
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 179
    const v0, 0x7f04000a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 180
    const v0, 0x7f0c002d

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    .line 182
    new-instance v0, Lcom/android/calendar/alerts/AlertActivity$QueryHandler;

    invoke-direct {v0, p0, p0}, Lcom/android/calendar/alerts/AlertActivity$QueryHandler;-><init>(Lcom/android/calendar/alerts/AlertActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->mQueryHandler:Lcom/android/calendar/alerts/AlertActivity$QueryHandler;

    .line 183
    new-instance v0, Lcom/android/calendar/alerts/AlertAdapter;

    const v1, 0x7f04000b

    invoke-direct {v0, p0, v1}, Lcom/android/calendar/alerts/AlertAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->mAdapter:Lcom/android/calendar/alerts/AlertAdapter;

    .line 185
    const v0, 0x7f100019

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->mListView:Landroid/widget/ListView;

    .line 186
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 187
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/calendar/alerts/AlertActivity;->mAdapter:Lcom/android/calendar/alerts/AlertAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 188
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/calendar/alerts/AlertActivity;->mViewListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 190
    const v0, 0x7f10001a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->mDismissAllButton:Landroid/widget/Button;

    .line 191
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->mDismissAllButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->mDismissAllButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 195
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 227
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 228
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 231
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 199
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 202
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_1

    .line 203
    sget-object v3, Landroid/provider/CalendarContract$CalendarAlerts;->CONTENT_URI_BY_INSTANCE:Landroid/net/Uri;

    .line 204
    .local v3, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->mQueryHandler:Lcom/android/calendar/alerts/AlertActivity$QueryHandler;

    const/4 v1, 0x0

    sget-object v4, Lcom/android/calendar/alerts/AlertActivity;->PROJECTION:[Ljava/lang/String;

    const-string v5, "state=?"

    sget-object v6, Lcom/android/calendar/alerts/AlertActivity;->SELECTIONARG:[Ljava/lang/String;

    const-string v7, "begin ASC,title ASC"

    invoke-virtual/range {v0 .. v7}, Lcom/android/calendar/AsyncQueryService;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    move-result v0

    if-nez v0, :cond_0

    .line 208
    const-string v0, "AlertActivity"

    const-string v1, "Cursor#requery() failed."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 210
    iput-object v2, p0, Lcom/android/calendar/alerts/AlertActivity;->mCursor:Landroid/database/Cursor;

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 217
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 218
    invoke-static {p0}, Lcom/android/calendar/alerts/AlertService;->updateAlertNotification(Landroid/content/Context;)Z

    .line 220
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 223
    :cond_0
    return-void
.end method
