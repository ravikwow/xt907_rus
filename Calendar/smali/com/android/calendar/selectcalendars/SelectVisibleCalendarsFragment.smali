.class public Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;
.super Landroid/app/Fragment;
.source "SelectVisibleCalendarsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/calendar/CalendarController$EventHandler;


# static fields
.field private static final PROJECTION:[Ljava/lang/String;

.field private static final SELECTION_ARGS:[Ljava/lang/String;

.field private static mCalendarItemLayout:I

.field private static mQueryToken:I

.field private static mUpdateToken:I


# instance fields
.field private mAdapter:Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;

.field private mContext:Landroid/app/Activity;

.field private mCursor:Landroid/database/Cursor;

.field private mList:Landroid/widget/ListView;

.field private mService:Lcom/android/calendar/AsyncQueryService;

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 52
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "1"

    aput-object v1, v0, v2

    const-string v1, "LOCAL"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;->SELECTION_ARGS:[Ljava/lang/String;

    .line 55
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "account_name"

    aput-object v1, v0, v3

    const-string v1, "ownerAccount"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v2, "calendar_displayName"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "calendar_color"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "visible"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "sync_events"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "account_type"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "(account_name=ownerAccount) AS \"primary\""

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;->PROJECTION:[Ljava/lang/String;

    .line 70
    const v0, 0x7f040029

    sput v0, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mCalendarItemLayout:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mView:Landroid/view/View;

    .line 80
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "itemLayout"    # I

    .prologue
    .line 82
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mView:Landroid/view/View;

    .line 83
    sput p1, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mCalendarItemLayout:I

    .line 84
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;)Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mAdapter:Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .param p0, "x0"    # Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mCursor:Landroid/database/Cursor;

    return-object p1
.end method


# virtual methods
.method public eventsChanged()V
    .locals 8

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mService:Lcom/android/calendar/AsyncQueryService;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mService:Lcom/android/calendar/AsyncQueryService;

    sget v1, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mQueryToken:I

    invoke-virtual {v0, v1}, Lcom/android/calendar/AsyncQueryService;->cancelOperation(I)I

    .line 180
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mService:Lcom/android/calendar/AsyncQueryService;

    invoke-virtual {v0}, Lcom/android/calendar/AsyncQueryService;->getNextToken()I

    move-result v0

    sput v0, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mQueryToken:I

    .line 181
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mService:Lcom/android/calendar/AsyncQueryService;

    sget v1, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mQueryToken:I

    const/4 v2, 0x0

    sget-object v3, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;->PROJECTION:[Ljava/lang/String;

    const-string v5, "sync_events=? OR account_type=?"

    sget-object v6, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;->SELECTION_ARGS:[Ljava/lang/String;

    const-string v7, "account_name"

    invoke-virtual/range {v0 .. v7}, Lcom/android/calendar/AsyncQueryService;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :cond_0
    return-void
.end method

.method public getSupportedEventTypes()J
    .locals 2

    .prologue
    .line 188
    const-wide/16 v0, 0x80

    return-wide v0
.end method

.method public handleEvent(Lcom/android/calendar/CalendarController$EventInfo;)V
    .locals 4
    .param p1, "event"    # Lcom/android/calendar/CalendarController$EventInfo;

    .prologue
    .line 193
    iget-wide v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v2, 0x80

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 194
    invoke-virtual {p0}, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;->eventsChanged()V

    .line 196
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 136
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 137
    new-instance v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;

    iget-object v1, p0, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mContext:Landroid/app/Activity;

    sget v2, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mCalendarItemLayout:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    iput-object v0, p0, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mAdapter:Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;

    .line 138
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mAdapter:Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 139
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 140
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 88
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 89
    iput-object p1, p0, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mContext:Landroid/app/Activity;

    .line 90
    new-instance v0, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment$1;

    invoke-direct {v0, p0, p1}, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment$1;-><init>(Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mService:Lcom/android/calendar/AsyncQueryService;

    .line 97
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 111
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 112
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 117
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 118
    const v1, 0x7f040030

    invoke-virtual {p1, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mView:Landroid/view/View;

    .line 119
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mView:Landroid/view/View;

    const v2, 0x7f1000ac

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mList:Landroid/widget/ListView;

    .line 123
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f090007

    invoke-static {v1, v2}, Lcom/android/calendar/Utils;->getConfigBool(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 126
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mView:Landroid/view/View;

    const v2, 0x7f1000ad

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 127
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 128
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 131
    .end local v0    # "v":Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mView:Landroid/view/View;

    return-object v1
.end method

.method public onDetach()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 101
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 102
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mAdapter:Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;

    invoke-virtual {v0, v1}, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 104
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 105
    iput-object v1, p0, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mCursor:Landroid/database/Cursor;

    .line 107
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 143
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mAdapter:Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mAdapter:Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;

    invoke-virtual {v0}, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->getCount()I

    move-result v0

    if-gt v0, p3, :cond_1

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    invoke-virtual {p0, p3}, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;->toggleVisibility(I)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 8

    .prologue
    .line 151
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 152
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mService:Lcom/android/calendar/AsyncQueryService;

    invoke-virtual {v0}, Lcom/android/calendar/AsyncQueryService;->getNextToken()I

    move-result v0

    sput v0, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mQueryToken:I

    .line 153
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mService:Lcom/android/calendar/AsyncQueryService;

    sget v1, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mQueryToken:I

    const/4 v2, 0x0

    sget-object v3, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;->PROJECTION:[Ljava/lang/String;

    const-string v5, "sync_events=? OR account_type=?"

    sget-object v6, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;->SELECTION_ARGS:[Ljava/lang/String;

    const-string v7, "account_name"

    invoke-virtual/range {v0 .. v7}, Lcom/android/calendar/AsyncQueryService;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method public toggleVisibility(I)V
    .locals 10
    .param p1, "position"    # I

    .prologue
    const/4 v2, 0x0

    .line 162
    const-string v0, "Calendar"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    const-string v0, "Calendar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Toggling calendar at "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mService:Lcom/android/calendar/AsyncQueryService;

    invoke-virtual {v0}, Lcom/android/calendar/AsyncQueryService;->getNextToken()I

    move-result v0

    sput v0, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mUpdateToken:I

    .line 167
    sget-object v0, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mAdapter:Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;

    invoke-virtual {v1, p1}, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->getItemId(I)J

    move-result-wide v5

    invoke-static {v0, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 168
    .local v3, "uri":Landroid/net/Uri;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 170
    .local v4, "values":Landroid/content/ContentValues;
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mAdapter:Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;

    invoke-virtual {v0, p1}, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->getVisible(I)I

    move-result v0

    xor-int/lit8 v9, v0, 0x1

    .line 171
    .local v9, "visibility":I
    const-string v0, "visible"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 172
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mService:Lcom/android/calendar/AsyncQueryService;

    sget v1, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mUpdateToken:I

    const-wide/16 v7, 0x0

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v8}, Lcom/android/calendar/AsyncQueryService;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;J)V

    .line 173
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectVisibleCalendarsFragment;->mAdapter:Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;

    invoke-virtual {v0, p1, v9}, Lcom/android/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->setVisible(II)V

    .line 174
    return-void
.end method
