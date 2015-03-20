.class public Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;
.super Landroid/widget/CursorTreeAdapter;
.source "SelectSyncedCalendarsMultiAccountAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter$RefreshCalendars;,
        Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter$AsyncCalendarsUpdater;
    }
.end annotation


# static fields
.field private static final PROJECTION:[Ljava/lang/String;

.field private static mCalendarsUpdater:Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter$AsyncCalendarsUpdater;

.field private static mChildrenCursors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private static mIsDuplicateName:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static mNotSyncedText:Ljava/lang/String;

.field private static mRefresh:Z

.field private static final mStopRefreshing:Ljava/lang/Runnable;

.field private static mSyncedText:Ljava/lang/String;

.field private static mUpdateToken:I


# instance fields
.field private final mActivity:Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;

.field protected mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

.field private mCalendarChanges:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mCalendarInitialStates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mNonSyncableStr:Ljava/lang/String;

.field private mNumAccounts:I

.field private final mPhoneCalendarStr:Ljava/lang/String;

.field private final mPhoneStorageStr:Ljava/lang/String;

.field private final mResolver:Landroid/content/ContentResolver;

.field private mTypeToAuthDescription:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/accounts/AuthenticatorDescription;",
            ">;"
        }
    .end annotation
.end field

.field private final mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 66
    new-instance v0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter$1;

    invoke-direct {v0}, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter$1;-><init>()V

    sput-object v0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mStopRefreshing:Ljava/lang/Runnable;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mChildrenCursors:Ljava/util/Map;

    .line 89
    const/16 v0, 0x3e8

    sput v0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mUpdateToken:I

    .line 94
    sput-boolean v3, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mRefresh:Z

    .line 107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mIsDuplicateName:Ljava/util/HashMap;

    .line 109
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const-string v1, "account_name"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "ownerAccount"

    aput-object v2, v0, v1

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

    const-string v2, "(account_name=ownerAccount) AS \"primary\""

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "account_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "acctsCursor"    # Landroid/database/Cursor;
    .param p3, "act"    # Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;

    .prologue
    .line 214
    invoke-direct {p0, p2, p1}, Landroid/widget/CursorTreeAdapter;-><init>(Landroid/database/Cursor;Landroid/content/Context;)V

    .line 71
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mTypeToAuthDescription:Ljava/util/Map;

    .line 76
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mCalendarChanges:Ljava/util/Map;

    .line 78
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mCalendarInitialStates:Ljava/util/Map;

    .line 215
    const v1, 0x7f0c001e

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mSyncedText:Ljava/lang/String;

    .line 216
    const v1, 0x7f0c001f

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mNotSyncedText:Ljava/lang/String;

    .line 218
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 219
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mResolver:Landroid/content/ContentResolver;

    .line 220
    iput-object p3, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mActivity:Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;

    .line 221
    sget-object v1, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mCalendarsUpdater:Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter$AsyncCalendarsUpdater;

    if-nez v1, :cond_0

    .line 222
    new-instance v1, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter$AsyncCalendarsUpdater;

    iget-object v2, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mResolver:Landroid/content/ContentResolver;

    invoke-direct {v1, p0, v2}, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter$AsyncCalendarsUpdater;-><init>(Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;Landroid/content/ContentResolver;)V

    sput-object v1, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mCalendarsUpdater:Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter$AsyncCalendarsUpdater;

    .line 225
    :cond_0
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    iput v1, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mNumAccounts:I

    .line 226
    iget v1, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mNumAccounts:I

    if-nez v1, :cond_1

    .line 229
    const-string v1, "Calendar"

    const-string v2, "SelectCalendarsAdapter: No accounts were returned!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_1
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    .line 233
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 234
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mTypeToAuthDescription:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    aget-object v2, v2, v0

    iget-object v2, v2, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    aget-object v3, v3, v0

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 236
    :cond_2
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mActivity:Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;

    invoke-virtual {v1}, Landroid/app/ExpandableListActivity;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mView:Landroid/view/View;

    .line 237
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mRefresh:Z

    .line 240
    const v1, 0x7f0c00ad

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mPhoneCalendarStr:Ljava/lang/String;

    .line 241
    const v1, 0x7f0c00ae

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mPhoneStorageStr:Ljava/lang/String;

    .line 242
    const v1, 0x7f0c00af

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mNonSyncableStr:Ljava/lang/String;

    .line 244
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 51
    sget-boolean v0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mRefresh:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 51
    sput-boolean p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mRefresh:Z

    return p0
.end method

.method static synthetic access$100()Ljava/util/Map;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mChildrenCursors:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mIsDuplicateName:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;)Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;
    .locals 1
    .param p0, "x0"    # Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mActivity:Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;

    return-object v0
.end method

.method static synthetic access$400()Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter$AsyncCalendarsUpdater;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mCalendarsUpdater:Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter$AsyncCalendarsUpdater;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method private static setText(Landroid/view/View;ILjava/lang/String;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "id"    # I
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 283
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 288
    :goto_0
    return-void

    .line 286
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 287
    .local v0, "textView":Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method protected bindChildView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "isLastChild"    # Z

    .prologue
    .line 311
    const v8, 0x7f100030

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x4

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setBackgroundColor(I)V

    .line 312
    const/4 v8, 0x3

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 313
    .local v5, "name":Ljava/lang/String;
    const/4 v8, 0x2

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 314
    .local v6, "owner":Ljava/lang/String;
    sget-object v8, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mIsDuplicateName:Ljava/util/HashMap;

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    sget-object v8, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mIsDuplicateName:Ljava/util/HashMap;

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 316
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, " <"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ">"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 323
    :cond_0
    const/16 v8, 0x8

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 324
    .local v0, "accountType":Ljava/lang/String;
    const-string v8, "LOCAL"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 325
    .local v4, "isLocalAccount":Z
    if-eqz v4, :cond_2

    .line 326
    const v8, 0x7f100031

    iget-object v9, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mPhoneCalendarStr:Ljava/lang/String;

    invoke-static {p1, v8, v9}, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->setText(Landroid/view/View;ILjava/lang/String;)V

    .line 333
    :goto_0
    const/4 v8, 0x0

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 334
    .local v2, "id":J
    iget-object v8, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mCalendarChanges:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    .line 335
    .local v7, "sync":Ljava/lang/Boolean;
    if-nez v7, :cond_1

    .line 336
    const/4 v8, 0x6

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_3

    const/4 v8, 0x1

    :goto_1
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 337
    iget-object v8, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mCalendarInitialStates:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v8, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    :cond_1
    const v8, 0x7f100033

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 342
    .local v1, "button":Landroid/widget/CheckBox;
    if-eqz v4, :cond_4

    .line 343
    const/16 v8, 0x8

    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 344
    const v8, 0x7f100032

    iget-object v9, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mNonSyncableStr:Ljava/lang/String;

    invoke-static {p1, v8, v9}, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->setText(Landroid/view/View;ILjava/lang/String;)V

    .line 345
    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 355
    :goto_2
    return-void

    .line 328
    .end local v1    # "button":Landroid/widget/CheckBox;
    .end local v2    # "id":J
    .end local v7    # "sync":Ljava/lang/Boolean;
    :cond_2
    const v8, 0x7f100031

    invoke-static {p1, v8, v5}, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->setText(Landroid/view/View;ILjava/lang/String;)V

    goto :goto_0

    .line 336
    .restart local v2    # "id":J
    .restart local v7    # "sync":Ljava/lang/Boolean;
    :cond_3
    const/4 v8, 0x0

    goto :goto_1

    .line 348
    .restart local v1    # "button":Landroid/widget/CheckBox;
    :cond_4
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-virtual {v1, v8}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 349
    const v9, 0x7f100032

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_5

    sget-object v8, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mSyncedText:Ljava/lang/String;

    :goto_3
    invoke-static {p1, v9, v8}, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->setText(Landroid/view/View;ILjava/lang/String;)V

    .line 351
    const v8, 0x7f100031

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {p1, v8, v9}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 352
    const v8, 0x7f100033

    invoke-virtual {p1, v8, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 353
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 349
    :cond_5
    sget-object v8, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mNotSyncedText:Ljava/lang/String;

    goto :goto_3
.end method

.method protected bindGroupView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "isExpanded"    # Z

    .prologue
    const v7, 0x7f100005

    const v6, 0x7f100004

    .line 359
    const-string v5, "account_name"

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 360
    .local v1, "accountColumn":I
    const-string v5, "account_type"

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 361
    .local v4, "accountTypeColumn":I
    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 362
    .local v0, "account":Ljava/lang/String;
    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 364
    .local v3, "accountType":Ljava/lang/String;
    const-string v5, "LOCAL"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 365
    iget-object v5, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mPhoneCalendarStr:Ljava/lang/String;

    invoke-static {p1, v6, v5}, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->setText(Landroid/view/View;ILjava/lang/String;)V

    .line 366
    iget-object v5, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mPhoneStorageStr:Ljava/lang/String;

    invoke-static {p1, v7, v5}, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->setText(Landroid/view/View;ILjava/lang/String;)V

    .line 375
    :cond_0
    :goto_0
    return-void

    .line 369
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 370
    .local v2, "accountLabel":Ljava/lang/CharSequence;
    invoke-static {p1, v6, v0}, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->setText(Landroid/view/View;ILjava/lang/String;)V

    .line 371
    if-eqz v2, :cond_0

    .line 372
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v7, v5}, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->setText(Landroid/view/View;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public cancelRefreshStopDelay()V
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mView:Landroid/view/View;

    sget-object v1, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mStopRefreshing:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 253
    return-void
.end method

.method public doSaveAction()V
    .locals 13

    .prologue
    const/4 v5, 0x0

    const/16 v2, 0x3e8

    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 261
    sget-object v0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mCalendarsUpdater:Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter$AsyncCalendarsUpdater;

    sget v1, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mUpdateToken:I

    invoke-virtual {v0, v1}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 262
    sget v0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mUpdateToken:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mUpdateToken:I

    .line 265
    sget v0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mUpdateToken:I

    if-ge v0, v2, :cond_0

    .line 266
    sput v2, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mUpdateToken:I

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mCalendarChanges:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 270
    .local v7, "changeKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 271
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 272
    .local v8, "id":J
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mCalendarChanges:Ljava/util/Map;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    .line 274
    .local v10, "newSynced":Z
    sget-object v0, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 275
    .local v3, "uri":Landroid/net/Uri;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 276
    .local v4, "values":Landroid/content/ContentValues;
    const-string v1, "visible"

    if-eqz v10, :cond_1

    move v0, v11

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 277
    const-string v1, "sync_events"

    if-eqz v10, :cond_2

    move v0, v11

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 278
    sget-object v0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mCalendarsUpdater:Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter$AsyncCalendarsUpdater;

    sget v1, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mUpdateToken:I

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Landroid/content/AsyncQueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move v0, v12

    .line 276
    goto :goto_1

    :cond_2
    move v0, v12

    .line 277
    goto :goto_2

    .line 280
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v4    # "values":Landroid/content/ContentValues;
    .end local v8    # "id":J
    .end local v10    # "newSynced":Z
    :cond_3
    return-void
.end method

.method protected getChildrenCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 8
    .param p1, "groupCursor"    # Landroid/database/Cursor;

    .prologue
    .line 379
    const-string v5, "account_name"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 380
    .local v1, "accountColumn":I
    const-string v5, "account_type"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 381
    .local v3, "accountTypeColumn":I
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 382
    .local v0, "account":Ljava/lang/String;
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 384
    .local v2, "accountType":Ljava/lang/String;
    sget-object v5, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mChildrenCursors:Ljava/util/Map;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/database/Cursor;

    .line 385
    .local v4, "childCursor":Landroid/database/Cursor;
    new-instance v5, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter$RefreshCalendars;

    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v6

    invoke-direct {v5, p0, v6, v0, v2}, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter$RefreshCalendars;-><init>(Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter$RefreshCalendars;->run()V

    .line 386
    return-object v4
.end method

.method protected getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 7
    .param p1, "accountType"    # Ljava/lang/String;

    .prologue
    .line 296
    const/4 v3, 0x0

    .line 297
    .local v3, "label":Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 299
    :try_start_0
    iget-object v4, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/AuthenticatorDescription;

    .line 300
    .local v1, "desc":Landroid/accounts/AuthenticatorDescription;
    iget-object v4, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mActivity:Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;

    iget-object v5, v1, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/ContextWrapper;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 301
    .local v0, "authContext":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, v1, Landroid/accounts/AuthenticatorDescription;->labelId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 306
    .end local v0    # "authContext":Landroid/content/Context;
    .end local v1    # "desc":Landroid/accounts/AuthenticatorDescription;
    :cond_0
    :goto_0
    return-object v3

    .line 302
    :catch_0
    move-exception v2

    .line 303
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "Calendar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No label for account type , type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected newChildView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "isLastChild"    # Z
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 392
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040012

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected newGroupView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "isExpanded"    # Z
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 398
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040001

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 191
    const v4, 0x7f100031

    invoke-virtual {p1, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 193
    .local v0, "id":J
    iget-object v4, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mCalendarInitialStates:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 194
    .local v2, "initialState":Z
    iget-object v4, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mCalendarChanges:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 196
    iget-object v4, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mCalendarChanges:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_0

    .line 202
    .local v3, "newState":Z
    :goto_0
    if-ne v3, v2, :cond_3

    .line 203
    iget-object v4, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mCalendarChanges:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    :goto_1
    const v4, 0x7f100033

    invoke-virtual {p1, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    invoke-virtual {v4, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 209
    const v5, 0x7f100032

    if-eqz v3, :cond_4

    sget-object v4, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mSyncedText:Ljava/lang/String;

    :goto_2
    invoke-static {p1, v5, v4}, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->setText(Landroid/view/View;ILjava/lang/String;)V

    .line 210
    return-void

    .end local v3    # "newState":Z
    :cond_0
    move v3, v5

    .line 196
    goto :goto_0

    .line 199
    :cond_1
    if-nez v2, :cond_2

    .restart local v3    # "newState":Z
    :goto_3
    goto :goto_0

    .end local v3    # "newState":Z
    :cond_2
    move v3, v5

    goto :goto_3

    .line 205
    .restart local v3    # "newState":Z
    :cond_3
    iget-object v4, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mCalendarChanges:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 209
    :cond_4
    sget-object v4, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mNotSyncedText:Ljava/lang/String;

    goto :goto_2
.end method

.method public startRefreshStopDelay()V
    .locals 4

    .prologue
    .line 247
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mRefresh:Z

    .line 248
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mView:Landroid/view/View;

    sget-object v1, Lcom/android/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountAdapter;->mStopRefreshing:Ljava/lang/Runnable;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 249
    return-void
.end method
