.class public Lcom/android/calendar/selectcalendars/SelectCalendarsSyncFragment;
.super Landroid/app/ListFragment;
.source "SelectCalendarsSyncFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/ListFragment;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field private static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mAccountsButton:Landroid/widget/Button;

.field private final mArgs:[Ljava/lang/String;

.field private mService:Lcom/android/calendar/AsyncQueryService;

.field private mSyncStatus:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 60
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "account_type"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "calendar_displayName"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "calendar_color"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "sync_events"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "(account_name=ownerAccount) AS \"primary\""

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncFragment;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 73
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncFragment;->mArgs:[Ljava/lang/String;

    .line 77
    return-void
.end method

.method private isLocalAccount()Z
    .locals 2

    .prologue
    .line 209
    const-string v0, "LOCAL"

    iget-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncFragment;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 100
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 103
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c0039

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/ListFragment;->setEmptyText(Ljava/lang/CharSequence;)V

    .line 106
    invoke-virtual {p0}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 107
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 129
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 130
    new-instance v1, Lcom/android/calendar/AsyncQueryService;

    invoke-direct {v1, p1}, Lcom/android/calendar/AsyncQueryService;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncFragment;->mService:Lcom/android/calendar/AsyncQueryService;

    .line 132
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 133
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v1, "account_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "account_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    new-instance v1, Landroid/accounts/Account;

    const-string v2, "account_name"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "account_type"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncFragment;->mAccount:Landroid/accounts/Account;

    .line 138
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 202
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 203
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.settings.SYNC_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 204
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 205
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 7
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
    .line 170
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncFragment;->mArgs:[Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncFragment;->mAccount:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 171
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncFragment;->mArgs:[Ljava/lang/String;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncFragment;->mAccount:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 172
    new-instance v0, Landroid/content/CursorLoader;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncFragment;->PROJECTION:[Ljava/lang/String;

    const-string v4, "account_name=? AND account_type=?"

    iget-object v5, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncFragment;->mArgs:[Ljava/lang/String;

    const-string v6, "\"primary\" DESC,calendar_displayName COLLATE NOCASE"

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v3, 0x8

    .line 87
    const/high16 v1, 0x7f040000

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 88
    .local v0, "v":Landroid/view/View;
    const v1, 0x7f100001

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncFragment;->mSyncStatus:Landroid/widget/TextView;

    .line 89
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncFragment;->mSyncStatus:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 91
    const v1, 0x7f100002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncFragment;->mAccountsButton:Landroid/widget/Button;

    .line 92
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncFragment;->mAccountsButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 93
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncFragment;->mAccountsButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 3
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
    .line 178
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    invoke-virtual {p0}, Landroid/app/ListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;

    .line 179
    .local v0, "adapter":Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;
    if-nez v0, :cond_0

    .line 180
    new-instance v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;

    .end local v0    # "adapter":Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 181
    .restart local v0    # "adapter":Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;
    invoke-virtual {p0, v0}, Landroid/app/ListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 186
    :goto_0
    invoke-direct {p0}, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncFragment;->isLocalAccount()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 187
    invoke-virtual {p0}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 192
    :goto_1
    return-void

    .line 183
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_0

    .line 189
    :cond_1
    invoke-virtual {p0}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_1
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 48
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 1
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
    .line 195
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/ListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 196
    return-void
.end method

.method public onPause()V
    .locals 17

    .prologue
    .line 142
    invoke-virtual/range {p0 .. p0}, Landroid/app/ListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v14

    .line 143
    .local v14, "listAdapter":Landroid/widget/ListAdapter;
    if-eqz v14, :cond_3

    .line 144
    check-cast v14, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;

    .end local v14    # "listAdapter":Landroid/widget/ListAdapter;
    invoke-virtual {v14}, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->getChanges()Ljava/util/HashMap;

    move-result-object v10

    .line 146
    .local v10, "changes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;>;"
    if-eqz v10, :cond_3

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 147
    invoke-virtual {v10}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;

    .line 148
    .local v15, "row":Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;
    iget-boolean v1, v15, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;->synced:Z

    iget-boolean v2, v15, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;->originalSynced:Z

    if-eq v1, v2, :cond_0

    .line 151
    iget-wide v12, v15, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;->id:J

    .line 152
    .local v12, "id":J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncFragment;->mService:Lcom/android/calendar/AsyncQueryService;

    long-to-int v2, v12

    invoke-virtual {v1, v2}, Lcom/android/calendar/AsyncQueryService;->cancelOperation(I)I

    .line 154
    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, v15, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;->id:J

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 155
    .local v4, "uri":Landroid/net/Uri;
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 157
    .local v5, "values":Landroid/content/ContentValues;
    iget-boolean v1, v15, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;->synced:Z

    if-eqz v1, :cond_1

    const/16 v16, 0x1

    .line 158
    .local v16, "synced":I
    :goto_1
    const-string v1, "sync_events"

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 159
    const-string v1, "visible"

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 160
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncFragment;->mService:Lcom/android/calendar/AsyncQueryService;

    long-to-int v2, v12

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    invoke-virtual/range {v1 .. v9}, Lcom/android/calendar/AsyncQueryService;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;J)V

    goto :goto_0

    .line 157
    .end local v16    # "synced":I
    :cond_1
    const/16 v16, 0x0

    goto :goto_1

    .line 162
    .end local v4    # "uri":Landroid/net/Uri;
    .end local v5    # "values":Landroid/content/ContentValues;
    .end local v12    # "id":J
    .end local v15    # "row":Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;
    :cond_2
    invoke-virtual {v10}, Ljava/util/HashMap;->clear()V

    .line 165
    .end local v10    # "changes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;>;"
    .end local v11    # "i$":Ljava/util/Iterator;
    :cond_3
    invoke-super/range {p0 .. p0}, Landroid/app/Fragment;->onPause()V

    .line 166
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 111
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 113
    invoke-direct {p0}, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncFragment;->isLocalAccount()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncFragment;->mAccount:Landroid/accounts/Account;

    const-string v2, "com.android.calendar"

    invoke-static {v1, v2}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 116
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 117
    .local v0, "res":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncFragment;->mSyncStatus:Landroid/widget/TextView;

    const v2, 0x7f0c0020

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncFragment;->mSyncStatus:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 119
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncFragment;->mAccountsButton:Landroid/widget/Button;

    const v2, 0x7f0c0021

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncFragment;->mAccountsButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 125
    .end local v0    # "res":Landroid/content/res/Resources;
    :goto_0
    return-void

    .line 122
    :cond_1
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncFragment;->mSyncStatus:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 123
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncFragment;->mAccountsButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
