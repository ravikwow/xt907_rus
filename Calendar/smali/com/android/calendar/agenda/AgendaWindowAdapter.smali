.class public Lcom/android/calendar/agenda/AgendaWindowAdapter;
.super Landroid/widget/BaseAdapter;
.source "AgendaWindowAdapter.java"

# interfaces
.implements Lcom/android/calendar/StickyHeaderListView$HeaderHeightListener;
.implements Lcom/android/calendar/StickyHeaderListView$HeaderIndexer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;,
        Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;,
        Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;,
        Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;
    }
.end annotation


# static fields
.field private static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private final mAdapterInfos:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;

.field mCleanQueryInitiated:Z

.field private final mContext:Landroid/content/Context;

.field private mDoneSettingUpHeaderFooter:Z

.field private mEmptyCursorCount:I

.field private final mFooterView:Landroid/widget/TextView;

.field private final mFormatter:Ljava/util/Formatter;

.field private final mHeaderView:Landroid/widget/TextView;

.field private mHideDeclined:Z

.field private final mIsTabletConfig:Z

.field private final mItemRightMargin:F

.field private mLastUsedInfo:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

.field mListViewScrollState:I

.field private mNewerRequests:I

.field private mNewerRequestsProcessed:I

.field private mOlderRequests:I

.field private mOlderRequestsProcessed:I

.field private final mQueryHandler:Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;

.field private final mQueryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;",
            ">;"
        }
    .end annotation
.end field

.field private final mResources:Landroid/content/res/Resources;

.field private mRowCount:I

.field private mSearchQuery:Ljava/lang/String;

.field private mSelectedInstanceId:J

.field private final mSelectedItemBackgroundColor:I

.field private final mSelectedItemTextColor:I

.field private mSelectedVH:Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;

.field private final mShowEventOnStart:Z

.field private mShuttingDown:Z

.field private mStickyHeaderSize:I

.field private final mStringBuilder:Ljava/lang/StringBuilder;

.field private final mTZUpdater:Ljava/lang/Runnable;

.field private mTimeZone:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 104
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "eventLocation"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "allDay"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "hasAlarm"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "displayColor"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "rrule"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "begin"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "end"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "event_id"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "startDay"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "endDay"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "selfAttendeeStatus"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "organizer"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "ownerAccount"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "canOrganizerRespond"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "eventTimezone"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/calendar/agenda/AgendaListView;Z)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "agendaListView"    # Lcom/android/calendar/agenda/AgendaListView;
    .param p3, "showEventOnStart"    # Z

    .prologue
    const v6, 0x7f040007

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 317
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 151
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    .line 153
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mQueryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 157
    iput-boolean v4, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mDoneSettingUpHeaderFooter:Z

    .line 161
    iput-boolean v4, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mCleanQueryInitiated:Z

    .line 162
    const/16 v1, 0x2c

    iput v1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mStickyHeaderSize:I

    .line 192
    new-instance v1, Lcom/android/calendar/agenda/AgendaWindowAdapter$1;

    invoke-direct {v1, p0}, Lcom/android/calendar/agenda/AgendaWindowAdapter$1;-><init>(Lcom/android/calendar/agenda/AgendaWindowAdapter;)V

    iput-object v1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mTZUpdater:Ljava/lang/Runnable;

    .line 204
    iput v4, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mListViewScrollState:I

    .line 209
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSelectedInstanceId:J

    .line 509
    iput-object v5, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSelectedVH:Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;

    .line 318
    iput-object p1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mContext:Landroid/content/Context;

    .line 319
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mResources:Landroid/content/res/Resources;

    .line 320
    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f08003d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSelectedItemBackgroundColor:I

    .line 322
    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f08003e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSelectedItemTextColor:I

    .line 323
    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0a0021

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mItemRightMargin:F

    .line 324
    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f090006

    invoke-static {v1, v2}, Lcom/android/calendar/Utils;->getConfigBool(Landroid/content/Context;I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mIsTabletConfig:Z

    .line 326
    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mTZUpdater:Ljava/lang/Runnable;

    invoke-static {p1, v1}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mTimeZone:Ljava/lang/String;

    .line 327
    iput-object p2, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;

    .line 328
    new-instance v1, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;-><init>(Lcom/android/calendar/agenda/AgendaWindowAdapter;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mQueryHandler:Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;

    .line 330
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x32

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 331
    new-instance v1, Ljava/util/Formatter;

    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mFormatter:Ljava/util/Formatter;

    .line 333
    iput-boolean p3, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mShowEventOnStart:Z

    .line 336
    iget-boolean v1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mShowEventOnStart:Z

    if-nez v1, :cond_0

    .line 337
    iput v4, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mStickyHeaderSize:I

    .line 339
    :cond_0
    iput-object v5, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSearchQuery:Ljava/lang/String;

    .line 341
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 343
    .local v0, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {v0, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mHeaderView:Landroid/widget/TextView;

    .line 344
    invoke-virtual {v0, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mFooterView:Landroid/widget/TextView;

    .line 345
    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mHeaderView:Landroid/widget/TextView;

    const v2, 0x7f0c0052

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 346
    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;

    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mHeaderView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 347
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/calendar/agenda/AgendaWindowAdapter;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mTimeZone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/calendar/agenda/AgendaWindowAdapter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/calendar/agenda/AgendaWindowAdapter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mTimeZone:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/calendar/agenda/AgendaWindowAdapter;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;
    .locals 1
    .param p0, "x0"    # Lcom/android/calendar/agenda/AgendaWindowAdapter;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSelectedVH:Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/calendar/agenda/AgendaWindowAdapter;Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;)Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;
    .locals 0
    .param p0, "x0"    # Lcom/android/calendar/agenda/AgendaWindowAdapter;
    .param p1, "x1"    # Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSelectedVH:Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/calendar/agenda/AgendaWindowAdapter;I)Landroid/database/Cursor;
    .locals 1
    .param p0, "x0"    # Lcom/android/calendar/agenda/AgendaWindowAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->getCursorByPosition(I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/calendar/agenda/AgendaWindowAdapter;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/calendar/agenda/AgendaWindowAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->getCursorPositionByPosition(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/calendar/agenda/AgendaWindowAdapter;Landroid/database/Cursor;IZ)Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/calendar/agenda/AgendaWindowAdapter;
    .param p1, "x1"    # Landroid/database/Cursor;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 74
    invoke-direct {p0, p1, p2, p3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->buildEventInfoFromCursor(Landroid/database/Cursor;IZ)Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/calendar/agenda/AgendaWindowAdapter;

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mDoneSettingUpHeaderFooter:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/calendar/agenda/AgendaWindowAdapter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/calendar/agenda/AgendaWindowAdapter;
    .param p1, "x1"    # Z

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mDoneSettingUpHeaderFooter:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/calendar/agenda/AgendaWindowAdapter;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mHeaderView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/calendar/agenda/AgendaWindowAdapter;Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/calendar/agenda/AgendaWindowAdapter;
    .param p1, "x1"    # Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->queueQuery(Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/calendar/agenda/AgendaWindowAdapter;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mFooterView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 1
    .param p0, "x0"    # Lcom/android/calendar/agenda/AgendaWindowAdapter;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mQueryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/calendar/agenda/AgendaWindowAdapter;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/calendar/agenda/AgendaWindowAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 74
    iput p1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mEmptyCursorCount:I

    return p1
.end method

.method static synthetic access$1904(Lcom/android/calendar/agenda/AgendaWindowAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/calendar/agenda/AgendaWindowAdapter;

    .prologue
    .line 74
    iget v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mEmptyCursorCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mEmptyCursorCount:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/calendar/agenda/AgendaWindowAdapter;

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mShuttingDown:Z

    return v0
.end method

.method static synthetic access$2008(Lcom/android/calendar/agenda/AgendaWindowAdapter;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/calendar/agenda/AgendaWindowAdapter;

    .prologue
    .line 74
    iget v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mNewerRequestsProcessed:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mNewerRequestsProcessed:I

    return v0
.end method

.method static synthetic access$2108(Lcom/android/calendar/agenda/AgendaWindowAdapter;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/calendar/agenda/AgendaWindowAdapter;

    .prologue
    .line 74
    iget v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mOlderRequestsProcessed:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mOlderRequestsProcessed:I

    return v0
.end method

.method static synthetic access$2200(Lcom/android/calendar/agenda/AgendaWindowAdapter;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/calendar/agenda/AgendaWindowAdapter;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->updateHeaderFooter(II)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/calendar/agenda/AgendaWindowAdapter;II)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/calendar/agenda/AgendaWindowAdapter;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->isInRange(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/calendar/agenda/AgendaWindowAdapter;Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/calendar/agenda/AgendaWindowAdapter;
    .param p1, "x1"    # Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->doQuery(Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/calendar/agenda/AgendaWindowAdapter;I)Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/calendar/agenda/AgendaWindowAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->pruneAdapterInfo(I)Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/calendar/agenda/AgendaWindowAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/calendar/agenda/AgendaWindowAdapter;

    .prologue
    .line 74
    iget v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mRowCount:I

    return v0
.end method

.method static synthetic access$2602(Lcom/android/calendar/agenda/AgendaWindowAdapter;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/calendar/agenda/AgendaWindowAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 74
    iput p1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mRowCount:I

    return p1
.end method

.method static synthetic access$2612(Lcom/android/calendar/agenda/AgendaWindowAdapter;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/calendar/agenda/AgendaWindowAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 74
    iget v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mRowCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mRowCount:I

    return v0
.end method

.method static synthetic access$2702(Lcom/android/calendar/agenda/AgendaWindowAdapter;Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;)Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    .locals 0
    .param p0, "x0"    # Lcom/android/calendar/agenda/AgendaWindowAdapter;
    .param p1, "x1"    # Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mLastUsedInfo:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lcom/android/calendar/agenda/AgendaWindowAdapter;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Lcom/android/calendar/agenda/AgendaListView;
    .locals 1
    .param p0, "x0"    # Lcom/android/calendar/agenda/AgendaWindowAdapter;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/calendar/agenda/AgendaWindowAdapter;Landroid/text/format/Time;J)I
    .locals 1
    .param p0, "x0"    # Lcom/android/calendar/agenda/AgendaWindowAdapter;
    .param p1, "x1"    # Landroid/text/format/Time;
    .param p2, "x2"    # J

    .prologue
    .line 74
    invoke-direct {p0, p1, p2, p3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->findEventPositionNearestTime(Landroid/text/format/Time;J)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/calendar/agenda/AgendaWindowAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/calendar/agenda/AgendaWindowAdapter;

    .prologue
    .line 74
    iget v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mStickyHeaderSize:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/calendar/agenda/AgendaWindowAdapter;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/calendar/agenda/AgendaWindowAdapter;

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSelectedInstanceId:J

    return-wide v0
.end method

.method static synthetic access$702(Lcom/android/calendar/agenda/AgendaWindowAdapter;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/calendar/agenda/AgendaWindowAdapter;
    .param p1, "x1"    # J

    .prologue
    .line 74
    iput-wide p1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSelectedInstanceId:J

    return-wide p1
.end method

.method static synthetic access$800(Lcom/android/calendar/agenda/AgendaWindowAdapter;I)J
    .locals 2
    .param p0, "x0"    # Lcom/android/calendar/agenda/AgendaWindowAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->findInstanceIdFromPosition(I)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$900(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/calendar/agenda/AgendaWindowAdapter;

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mShowEventOnStart:Z

    return v0
.end method

.method private buildEventInfoFromCursor(Landroid/database/Cursor;IZ)Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;
    .locals 9
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "cursorPosition"    # I
    .param p3, "isDayHeader"    # Z

    .prologue
    const-wide/16 v7, 0x0

    const/16 v6, 0x8

    const/4 v3, 0x0

    .line 603
    const/4 v2, -0x1

    if-ne p2, v2, :cond_2

    .line 604
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 608
    :goto_0
    new-instance v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;

    invoke-direct {v0}, Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;-><init>()V

    .line 609
    .local v0, "event":Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;
    const/4 v2, 0x7

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;->begin:J

    .line 610
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;->end:J

    .line 611
    const/16 v2, 0xa

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;->startDay:I

    .line 613
    const/4 v2, 0x3

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;->allDay:Z

    .line 614
    iget-boolean v2, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;->allDay:Z

    if-eqz v2, :cond_4

    .line 615
    new-instance v1, Landroid/text/format/Time;

    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mTimeZone:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 616
    .local v1, "time":Landroid/text/format/Time;
    iget-wide v4, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;->begin:J

    invoke-static {v4, v5, v7, v8}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 617
    invoke-virtual {v1, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;->begin:J

    .line 627
    .end local v1    # "time":Landroid/text/format/Time;
    :cond_0
    :goto_2
    if-nez p3, :cond_1

    .line 628
    iget-boolean v2, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;->allDay:Z

    if-eqz v2, :cond_5

    .line 629
    new-instance v1, Landroid/text/format/Time;

    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mTimeZone:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 630
    .restart local v1    # "time":Landroid/text/format/Time;
    iget-wide v4, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;->end:J

    invoke-static {v4, v5, v7, v8}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 631
    invoke-virtual {v1, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;->end:J

    .line 636
    .end local v1    # "time":Landroid/text/format/Time;
    :goto_3
    const/16 v2, 0x9

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;->id:J

    .line 638
    :cond_1
    return-object v0

    .line 606
    .end local v0    # "event":Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;
    :cond_2
    invoke-interface {p1, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    goto :goto_0

    .restart local v0    # "event":Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;
    :cond_3
    move v2, v3

    .line 613
    goto :goto_1

    .line 618
    :cond_4
    if-eqz p3, :cond_0

    .line 619
    new-instance v1, Landroid/text/format/Time;

    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mTimeZone:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 620
    .restart local v1    # "time":Landroid/text/format/Time;
    iget-wide v4, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;->begin:J

    invoke-virtual {v1, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 621
    iput v3, v1, Landroid/text/format/Time;->hour:I

    .line 622
    iput v3, v1, Landroid/text/format/Time;->minute:I

    .line 623
    iput v3, v1, Landroid/text/format/Time;->second:I

    .line 624
    invoke-virtual {v1, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;->begin:J

    goto :goto_2

    .line 633
    .end local v1    # "time":Landroid/text/format/Time;
    :cond_5
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;->end:J

    goto :goto_3
.end method

.method private buildQuerySelection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 775
    iget-boolean v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mHideDeclined:Z

    if-eqz v0, :cond_0

    .line 776
    const-string v0, "visible=1 AND selfAttendeeStatus!=2"

    .line 780
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "visible=1"

    goto :goto_0
.end method

.method private buildQueryUri(IILjava/lang/String;)Landroid/net/Uri;
    .locals 4
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "searchQuery"    # Ljava/lang/String;

    .prologue
    .line 785
    if-nez p3, :cond_1

    sget-object v1, Landroid/provider/CalendarContract$Instances;->CONTENT_BY_DAY_URI:Landroid/net/Uri;

    .line 788
    .local v1, "rootUri":Landroid/net/Uri;
    :goto_0
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 789
    .local v0, "builder":Landroid/net/Uri$Builder;
    int-to-long v2, p1

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 790
    int-to-long v2, p2

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 791
    if-eqz p3, :cond_0

    .line 792
    invoke-virtual {v0, p3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 794
    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    return-object v2

    .line 785
    .end local v0    # "builder":Landroid/net/Uri$Builder;
    .end local v1    # "rootUri":Landroid/net/Uri;
    :cond_1
    sget-object v1, Landroid/provider/CalendarContract$Instances;->CONTENT_SEARCH_BY_DAY_URI:Landroid/net/Uri;

    goto :goto_0
.end method

.method private calculateQueryDuration(II)I
    .locals 3
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 807
    const/16 v0, 0x3c

    .line 808
    .local v0, "queryDuration":I
    iget v1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mRowCount:I

    if-eqz v1, :cond_0

    .line 809
    sub-int v1, p2, p1

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x32

    iget v2, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mRowCount:I

    div-int v0, v1, v2

    .line 812
    :cond_0
    const/16 v1, 0x3c

    if-le v0, v1, :cond_2

    .line 813
    const/16 v0, 0x3c

    .line 818
    :cond_1
    :goto_0
    return v0

    .line 814
    :cond_2
    const/4 v1, 0x7

    if-ge v0, v1, :cond_1

    .line 815
    const/4 v0, 0x7

    goto :goto_0
.end method

.method private doQuery(Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;)V
    .locals 11
    .param p1, "queryData"    # Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x0

    .line 848
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 849
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    iget v10, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->start:I

    .line 850
    .local v10, "start":I
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    iget v8, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->end:I

    .line 851
    .local v8, "end":I
    invoke-direct {p0, v10, v8}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->calculateQueryDuration(II)I

    move-result v9

    .line 852
    .local v9, "queryDuration":I
    iget v0, p1, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->queryType:I

    packed-switch v0, :pswitch_data_0

    .line 865
    :goto_0
    iget v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mRowCount:I

    const/16 v2, 0x14

    if-ge v0, v2, :cond_1

    iget v0, p1, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->queryType:I

    if-eq v0, v4, :cond_1

    .line 874
    iput v4, p1, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->queryType:I

    .line 876
    iget v0, p1, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->start:I

    if-le v0, v10, :cond_0

    .line 877
    iput v10, p1, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->start:I

    .line 879
    :cond_0
    iget v0, p1, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->end:I

    if-ge v0, v8, :cond_1

    .line 880
    iput v8, p1, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->end:I

    .line 894
    .end local v8    # "end":I
    .end local v9    # "queryDuration":I
    .end local v10    # "start":I
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mQueryHandler:Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;

    invoke-virtual {v0, v1}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 897
    iget v0, p1, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->start:I

    iget v2, p1, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->end:I

    iget-object v4, p1, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->searchQuery:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v4}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->buildQueryUri(IILjava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 899
    .local v3, "queryUri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mQueryHandler:Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;

    sget-object v4, Lcom/android/calendar/agenda/AgendaWindowAdapter;->PROJECTION:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->buildQuerySelection()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "startDay ASC, begin ASC, title ASC"

    move-object v2, p1

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    return-void

    .line 854
    .end local v3    # "queryUri":Landroid/net/Uri;
    .restart local v8    # "end":I
    .restart local v9    # "queryDuration":I
    .restart local v10    # "start":I
    :pswitch_0
    add-int/lit8 v0, v10, -0x1

    iput v0, p1, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->end:I

    .line 855
    iget v0, p1, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->end:I

    sub-int/2addr v0, v9

    iput v0, p1, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->start:I

    goto :goto_0

    .line 858
    :pswitch_1
    add-int/lit8 v0, v8, 0x1

    iput v0, p1, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->start:I

    .line 859
    iget v0, p1, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->start:I

    add-int/2addr v0, v9

    iput v0, p1, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->end:I

    goto :goto_0

    .line 852
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private findEventPositionNearestTime(Landroid/text/format/Time;J)I
    .locals 4
    .param p1, "time"    # Landroid/text/format/Time;
    .param p2, "id"    # J

    .prologue
    .line 512
    invoke-direct {p0, p1}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->getAdapterInfoByTime(Landroid/text/format/Time;)Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v0

    .line 513
    .local v0, "info":Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    const/4 v1, -0x1

    .line 514
    .local v1, "pos":I
    if-eqz v0, :cond_0

    .line 515
    iget v2, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/agenda/AgendaByDayAdapter;

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/calendar/agenda/AgendaByDayAdapter;->findEventPositionNearestTime(Landroid/text/format/Time;J)I

    move-result v3

    add-int v1, v2, v3

    .line 518
    :cond_0
    return v1
.end method

.method private findInstanceIdFromPosition(I)J
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 1284
    invoke-virtual {p0, p1}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->getAdapterInfoByPosition(I)Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v0

    .line 1285
    .local v0, "info":Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    if-eqz v0, :cond_0

    .line 1286
    iget-object v1, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/agenda/AgendaByDayAdapter;

    iget v2, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Lcom/android/calendar/agenda/AgendaByDayAdapter;->getInstanceId(I)J

    move-result-wide v1

    .line 1288
    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method private formatDateString(I)Ljava/lang/String;
    .locals 9
    .param p1, "julianDay"    # I

    .prologue
    const/4 v1, 0x0

    .line 905
    new-instance v8, Landroid/text/format/Time;

    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mTimeZone:Ljava/lang/String;

    invoke-direct {v8, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 906
    .local v8, "time":Landroid/text/format/Time;
    invoke-virtual {v8, p1}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 907
    invoke-virtual {v8, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    .line 908
    .local v2, "millis":J
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 909
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mFormatter:Ljava/util/Formatter;

    const v6, 0x10014

    iget-object v7, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mTimeZone:Ljava/lang/String;

    move-wide v4, v2

    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getAdapterInfoByTime(Landroid/text/format/Time;)Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    .locals 8
    .param p1, "time"    # Landroid/text/format/Time;

    .prologue
    .line 541
    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5, p1}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 542
    .local v5, "tmpTime":Landroid/text/format/Time;
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v3

    .line 543
    .local v3, "timeInMillis":J
    iget-wide v6, v5, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v3, v4, v6, v7}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v0

    .line 544
    .local v0, "day":I
    iget-object v7, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    monitor-enter v7

    .line 545
    :try_start_0
    iget-object v6, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    .line 546
    .local v2, "info":Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    iget v6, v2, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->start:I

    if-gt v6, v0, :cond_0

    iget v6, v2, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->end:I

    if-gt v0, v6, :cond_0

    .line 547
    monitor-exit v7

    .line 551
    .end local v2    # "info":Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    :goto_0
    return-object v2

    .line 550
    :cond_1
    monitor-exit v7

    .line 551
    const/4 v2, 0x0

    goto :goto_0

    .line 550
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method private getCursorByPosition(I)Landroid/database/Cursor;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1292
    invoke-virtual {p0, p1}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->getAdapterInfoByPosition(I)Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v0

    .line 1293
    .local v0, "info":Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    if-eqz v0, :cond_0

    .line 1294
    iget-object v1, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    .line 1296
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getCursorPositionByPosition(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 1300
    invoke-virtual {p0, p1}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->getAdapterInfoByPosition(I)Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v0

    .line 1301
    .local v0, "info":Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    if-eqz v0, :cond_0

    .line 1302
    iget-object v1, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/agenda/AgendaByDayAdapter;

    iget v2, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Lcom/android/calendar/agenda/AgendaByDayAdapter;->getCursorPosition(I)I

    move-result v1

    .line 1304
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private isInRange(II)Z
    .locals 3
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    const/4 v1, 0x0

    .line 798
    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    monitor-enter v2

    .line 799
    :try_start_0
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 800
    monitor-exit v2

    move v0, v1

    .line 802
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    iget v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->start:I

    if-gt v0, p1, :cond_1

    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    iget v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->end:I

    if-gt p2, v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    monitor-exit v2

    goto :goto_0

    .line 803
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    move v0, v1

    .line 802
    goto :goto_1
.end method

.method private pruneAdapterInfo(I)Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    .locals 8
    .param p1, "queryType"    # I

    .prologue
    .line 729
    iget-object v6, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    monitor-enter v6

    .line 730
    const/4 v3, 0x0

    .line 731
    .local v3, "recycleMe":Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    :try_start_0
    iget-object v5, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_7

    .line 732
    iget-object v5, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    const/4 v7, 0x5

    if-lt v5, v7, :cond_3

    .line 733
    const/4 v5, 0x1

    if-ne p1, v5, :cond_2

    .line 734
    iget-object v5, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    move-object v3, v0

    .line 740
    :cond_0
    :goto_0
    if-eqz v3, :cond_3

    .line 741
    iget-object v5, v3, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    if-eqz v5, :cond_1

    .line 742
    iget-object v5, v3, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 744
    :cond_1
    monitor-exit v6

    move-object v4, v3

    .line 768
    .end local v3    # "recycleMe":Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    .local v4, "recycleMe":Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    :goto_1
    return-object v4

    .line 735
    .end local v4    # "recycleMe":Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    .restart local v3    # "recycleMe":Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    :cond_2
    if-nez p1, :cond_0

    .line 736
    iget-object v5, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    move-object v3, v0

    .line 738
    const/4 v5, 0x0

    iput v5, v3, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->size:I

    goto :goto_0

    .line 769
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 748
    :cond_3
    :try_start_1
    iget v5, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mRowCount:I

    if-eqz v5, :cond_4

    const/4 v5, 0x2

    if-ne p1, v5, :cond_7

    .line 749
    :cond_4
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mRowCount:I

    .line 750
    const/4 v1, 0x0

    .line 753
    .local v1, "deletedRows":I
    :cond_5
    iget-object v5, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    .line 754
    .local v2, "info":Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    if-eqz v2, :cond_6

    .line 756
    iget-object v5, v2, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 757
    iget v5, v2, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->size:I

    add-int/2addr v1, v5

    .line 758
    move-object v3, v2

    .line 760
    :cond_6
    if-nez v2, :cond_5

    .line 762
    if-eqz v3, :cond_7

    .line 763
    const/4 v5, 0x0

    iput-object v5, v3, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    .line 764
    iput v1, v3, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->size:I

    .line 768
    .end local v1    # "deletedRows":I
    .end local v2    # "info":Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    :cond_7
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v3

    .end local v3    # "recycleMe":Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    .restart local v4    # "recycleMe":Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    goto :goto_1
.end method

.method private queueQuery(IILandroid/text/format/Time;Ljava/lang/String;IJ)Z
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "goToTime"    # Landroid/text/format/Time;
    .param p4, "searchQuery"    # Ljava/lang/String;
    .param p5, "queryType"    # I
    .param p6, "id"    # J

    .prologue
    .line 823
    new-instance v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;

    invoke-direct {v0, p5}, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;-><init>(I)V

    .line 824
    .local v0, "queryData":Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;
    iput-object p3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->goToTime:Landroid/text/format/Time;

    .line 825
    iput p1, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->start:I

    .line 826
    iput p2, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->end:I

    .line 827
    iput-object p4, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->searchQuery:Ljava/lang/String;

    .line 828
    iput-wide p6, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->id:J

    .line 829
    invoke-direct {p0, v0}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->queueQuery(Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;)Z

    move-result v1

    return v1
.end method

.method private queueQuery(Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;)Z
    .locals 4
    .param p1, "queryData"    # Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;

    .prologue
    .line 833
    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSearchQuery:Ljava/lang/String;

    iput-object v2, p1, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->searchQuery:Ljava/lang/String;

    .line 835
    iget-object v3, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mQueryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    monitor-enter v3

    .line 836
    const/4 v2, 0x0

    :try_start_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 837
    .local v1, "queuedQuery":Ljava/lang/Boolean;
    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mQueryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 838
    .local v0, "doQueryNow":Ljava/lang/Boolean;
    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mQueryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 839
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 840
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 841
    invoke-direct {p0, p1}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->doQuery(Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;)V

    .line 843
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 844
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2

    .line 843
    .end local v0    # "doQueryNow":Ljava/lang/Boolean;
    .end local v1    # "queuedQuery":Ljava/lang/Boolean;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private updateHeaderFooter(II)V
    .locals 7
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 915
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mHeaderView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0053

    new-array v3, v6, [Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->formatDateString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 917
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mFooterView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0054

    new-array v3, v6, [Ljava/lang/Object;

    invoke-direct {p0, p2}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->formatDateString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 919
    return-void
.end method


# virtual methods
.method public OnHeaderHeightChanged(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 1342
    iput p1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mStickyHeaderSize:I

    .line 1343
    return-void
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 358
    const/4 v0, 0x0

    return v0
.end method

.method public close()V
    .locals 2

    .prologue
    .line 721
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mShuttingDown:Z

    .line 722
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->pruneAdapterInfo(I)Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    .line 723
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mQueryHandler:Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;

    if-eqz v0, :cond_0

    .line 724
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mQueryHandler:Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 726
    :cond_0
    return-void
.end method

.method protected getAdapterInfoByPosition(I)Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 522
    iget-object v3, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    monitor-enter v3

    .line 523
    :try_start_0
    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mLastUsedInfo:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mLastUsedInfo:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    iget v2, v2, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    if-gt v2, p1, :cond_0

    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mLastUsedInfo:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    iget v2, v2, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    iget-object v4, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mLastUsedInfo:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    iget v4, v4, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->size:I

    add-int/2addr v2, v4

    if-ge p1, v2, :cond_0

    .line 525
    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mLastUsedInfo:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    monitor-exit v3

    .line 535
    :goto_0
    return-object v1

    .line 527
    :cond_0
    iget-object v2, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    .line 528
    .local v1, "info":Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    iget v2, v1, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    if-gt v2, p1, :cond_1

    iget v2, v1, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    iget v4, v1, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->size:I

    add-int/2addr v2, v4

    if-ge p1, v2, :cond_1

    .line 530
    iput-object v1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mLastUsedInfo:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    .line 531
    monitor-exit v3

    goto :goto_0

    .line 534
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "info":Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 535
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 385
    iget v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mRowCount:I

    return v0
.end method

.method public getEventByPosition(I)Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;
    .locals 1
    .param p1, "positionInListView"    # I

    .prologue
    .line 555
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->getEventByPosition(IZ)Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;

    move-result-object v0

    return-object v0
.end method

.method public getEventByPosition(IZ)Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;
    .locals 7
    .param p1, "positionInListView"    # I
    .param p2, "returnEventStartDay"    # Z

    .prologue
    const/4 v1, 0x0

    .line 569
    if-gez p1, :cond_1

    .line 598
    :cond_0
    :goto_0
    return-object v1

    .line 573
    :cond_1
    add-int/lit8 v4, p1, -0x1

    .line 574
    .local v4, "positionInAdapter":I
    invoke-virtual {p0, v4}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->getAdapterInfoByPosition(I)Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v2

    .line 575
    .local v2, "info":Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    if-eqz v2, :cond_0

    .line 579
    iget-object v5, v2, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/agenda/AgendaByDayAdapter;

    iget v6, v2, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    sub-int v6, v4, v6

    invoke-virtual {v5, v6}, Lcom/android/calendar/agenda/AgendaByDayAdapter;->getCursorPosition(I)I

    move-result v0

    .line 580
    .local v0, "cursorPosition":I
    const/high16 v5, -0x80000000

    if-eq v0, v5, :cond_0

    .line 584
    const/4 v3, 0x0

    .line 585
    .local v3, "isDayHeader":Z
    if-gez v0, :cond_2

    .line 586
    neg-int v0, v0

    .line 587
    const/4 v3, 0x1

    .line 590
    :cond_2
    iget-object v5, v2, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 591
    iget-object v5, v2, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    invoke-direct {p0, v5, v0, v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->buildEventInfoFromCursor(Landroid/database/Cursor;IZ)Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;

    move-result-object v1

    .line 592
    .local v1, "ei":Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;
    if-nez p2, :cond_0

    if-nez v3, :cond_0

    .line 593
    iget-object v5, v2, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/agenda/AgendaByDayAdapter;

    iget v6, v2, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    sub-int v6, v4, v6

    invoke-virtual {v5, v6}, Lcom/android/calendar/agenda/AgendaByDayAdapter;->findJulianDayFromPosition(I)I

    move-result v5

    iput v5, v1, Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;->startDay:I

    goto :goto_0
.end method

.method public getHeaderItemsNumber(I)I
    .locals 3
    .param p1, "headerPosition"    # I

    .prologue
    const/4 v1, -0x1

    .line 1330
    if-ltz p1, :cond_0

    iget-boolean v2, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mIsTabletConfig:Z

    if-nez v2, :cond_1

    .line 1337
    :cond_0
    :goto_0
    return v1

    .line 1333
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->getAdapterInfoByPosition(I)Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v0

    .line 1334
    .local v0, "info":Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    if-eqz v0, :cond_0

    .line 1335
    iget-object v1, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/agenda/AgendaByDayAdapter;

    iget v2, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Lcom/android/calendar/agenda/AgendaByDayAdapter;->getHeaderItemsCount(I)I

    move-result v1

    goto :goto_0
.end method

.method public getHeaderPositionFromItemPosition(I)I
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v2, -0x1

    .line 1315
    iget-boolean v3, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mIsTabletConfig:Z

    if-nez v3, :cond_1

    .line 1324
    :cond_0
    :goto_0
    return v2

    .line 1319
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->getAdapterInfoByPosition(I)Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v0

    .line 1320
    .local v0, "info":Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    if-eqz v0, :cond_0

    .line 1321
    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/agenda/AgendaByDayAdapter;

    iget v4, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    sub-int v4, p1, v4

    invoke-virtual {v3, v4}, Lcom/android/calendar/agenda/AgendaByDayAdapter;->getHeaderPosition(I)I

    move-result v1

    .line 1322
    .local v1, "pos":I
    if-eq v1, v2, :cond_0

    iget v2, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    add-int/2addr v2, v1

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 390
    invoke-virtual {p0, p1}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->getAdapterInfoByPosition(I)Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v0

    .line 391
    .local v0, "info":Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    if-eqz v0, :cond_0

    .line 392
    iget-object v1, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/agenda/AgendaByDayAdapter;

    iget v2, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Lcom/android/calendar/agenda/AgendaByDayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 394
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 8
    .param p1, "position"    # I

    .prologue
    const-wide/16 v2, -0x1

    .line 407
    invoke-virtual {p0, p1}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->getAdapterInfoByPosition(I)Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v1

    .line 408
    .local v1, "info":Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    if-eqz v1, :cond_0

    .line 409
    iget-object v4, v1, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/agenda/AgendaByDayAdapter;

    iget v5, v1, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    sub-int v5, p1, v5

    invoke-virtual {v4, v5}, Lcom/android/calendar/agenda/AgendaByDayAdapter;->getCursorPosition(I)I

    move-result v0

    .line 410
    .local v0, "curPos":I
    const/high16 v4, -0x80000000

    if-ne v0, v4, :cond_1

    .line 423
    .end local v0    # "curPos":I
    :cond_0
    :goto_0
    return-wide v2

    .line 414
    .restart local v0    # "curPos":I
    :cond_1
    if-ltz v0, :cond_2

    .line 415
    iget-object v2, v1, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    invoke-interface {v2, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 416
    iget-object v2, v1, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    const/16 v3, 0x9

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/16 v4, 0x14

    iget-object v6, v1, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    const/4 v7, 0x7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    add-long/2addr v4, v6

    long-to-int v4, v4

    shl-long/2addr v2, v4

    goto :goto_0

    .line 420
    :cond_2
    iget-object v2, v1, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/agenda/AgendaByDayAdapter;

    invoke-virtual {v2, p1}, Lcom/android/calendar/agenda/AgendaByDayAdapter;->findJulianDayFromPosition(I)I

    move-result v2

    int-to-long v2, v2

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 364
    invoke-virtual {p0, p1}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->getAdapterInfoByPosition(I)Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v0

    .line 365
    .local v0, "info":Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    if-eqz v0, :cond_0

    .line 366
    iget-object v1, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/agenda/AgendaByDayAdapter;

    iget v2, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Lcom/android/calendar/agenda/AgendaByDayAdapter;->getItemViewType(I)I

    move-result v1

    .line 368
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getSelectedInstanceId()J
    .locals 2

    .prologue
    .line 1275
    iget-wide v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSelectedInstanceId:J

    return-wide v0
.end method

.method public getSelectedViewHolder()Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;
    .locals 1

    .prologue
    .line 1271
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSelectedVH:Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;

    return-object v0
.end method

.method public getStickyHeaderHeight()I
    .locals 1

    .prologue
    .line 1346
    iget v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mStickyHeaderSize:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 429
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mRowCount:I

    add-int/lit8 v12, v12, -0x1

    move/from16 v0, p1

    if-lt v0, v12, :cond_0

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mNewerRequests:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mNewerRequestsProcessed:I

    if-gt v12, v13, :cond_0

    .line 432
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mNewerRequests:I

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mNewerRequests:I

    .line 433
    new-instance v12, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;

    const/4 v13, 0x1

    invoke-direct {v12, v13}, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;-><init>(I)V

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->queueQuery(Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;)Z

    .line 436
    :cond_0
    const/4 v12, 0x1

    move/from16 v0, p1

    if-ge v0, v12, :cond_1

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mOlderRequests:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mOlderRequestsProcessed:I

    if-gt v12, v13, :cond_1

    .line 439
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mOlderRequests:I

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mOlderRequests:I

    .line 440
    new-instance v12, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;

    const/4 v13, 0x0

    invoke-direct {v12, v13}, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;-><init>(I)V

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->queueQuery(Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;)Z

    .line 444
    :cond_1
    invoke-virtual/range {p0 .. p1}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->getAdapterInfoByPosition(I)Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v2

    .line 445
    .local v2, "info":Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    if-eqz v2, :cond_5

    .line 446
    iget v12, v2, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    sub-int v4, p1, v12

    .line 447
    .local v4, "offset":I
    iget-object v12, v2, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/agenda/AgendaByDayAdapter;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v12, v4, v0, v1}, Lcom/android/calendar/agenda/AgendaByDayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 452
    .local v9, "v":Landroid/view/View;
    iget-object v12, v2, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/agenda/AgendaByDayAdapter;

    invoke-virtual {v12, v4}, Lcom/android/calendar/agenda/AgendaByDayAdapter;->isDayHeaderView(I)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 453
    const v12, 0x7f10000a

    invoke-virtual {v9, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 454
    .local v7, "simpleDivider":Landroid/view/View;
    const v12, 0x7f10000b

    invoke-virtual {v9, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 455
    .local v5, "pastPresentDivider":Landroid/view/View;
    iget-object v12, v2, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/agenda/AgendaByDayAdapter;

    invoke-virtual {v12, v4}, Lcom/android/calendar/agenda/AgendaByDayAdapter;->isFirstDayAfterYesterday(I)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 456
    if-eqz v7, :cond_2

    if-eqz v5, :cond_2

    .line 457
    const/16 v12, 0x8

    invoke-virtual {v7, v12}, Landroid/view/View;->setVisibility(I)V

    .line 458
    const/4 v12, 0x0

    invoke-virtual {v5, v12}, Landroid/view/View;->setVisibility(I)V

    .line 474
    .end local v4    # "offset":I
    .end local v5    # "pastPresentDivider":Landroid/view/View;
    .end local v7    # "simpleDivider":Landroid/view/View;
    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mIsTabletConfig:Z

    if-nez v12, :cond_6

    .line 506
    :cond_3
    :goto_1
    return-object v9

    .line 460
    .restart local v4    # "offset":I
    .restart local v5    # "pastPresentDivider":Landroid/view/View;
    .restart local v7    # "simpleDivider":Landroid/view/View;
    :cond_4
    if-eqz v7, :cond_2

    if-eqz v5, :cond_2

    .line 461
    const/4 v12, 0x0

    invoke-virtual {v7, v12}, Landroid/view/View;->setVisibility(I)V

    .line 462
    const/16 v12, 0x8

    invoke-virtual {v5, v12}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 467
    .end local v4    # "offset":I
    .end local v5    # "pastPresentDivider":Landroid/view/View;
    .end local v7    # "simpleDivider":Landroid/view/View;
    .end local v9    # "v":Landroid/view/View;
    :cond_5
    const-string v12, "AgendaWindowAdapter"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "BUG: getAdapterInfoByPosition returned null!!! "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    new-instance v8, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v8, v12}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 469
    .local v8, "tv":Landroid/widget/TextView;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Bug! "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 470
    move-object v9, v8

    .restart local v9    # "v":Landroid/view/View;
    goto :goto_0

    .line 478
    .end local v8    # "tv":Landroid/widget/TextView;
    :cond_6
    const/4 v6, 0x0

    .line 479
    .local v6, "selected":Z
    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    .line 480
    .local v11, "yy":Ljava/lang/Object;
    instance-of v12, v11, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;

    if-eqz v12, :cond_3

    move-object v10, v11

    .line 481
    check-cast v10, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;

    .line 482
    .local v10, "vh":Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSelectedInstanceId:J

    iget-wide v14, v10, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->instanceId:J

    cmp-long v12, v12, v14

    if-nez v12, :cond_7

    const/4 v6, 0x1

    .line 483
    :goto_2
    iget-object v13, v10, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->selectedMarker:Landroid/view/View;

    if-eqz v6, :cond_8

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mShowEventOnStart:Z

    if-eqz v12, :cond_8

    const/4 v12, 0x0

    :goto_3
    invoke-virtual {v13, v12}, Landroid/view/View;->setVisibility(I)V

    .line 485
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mShowEventOnStart:Z

    if-eqz v12, :cond_3

    .line 486
    iget-object v12, v10, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->textContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/GridLayout$LayoutParams;

    .line 488
    .local v3, "lp":Landroid/widget/GridLayout$LayoutParams;
    if-eqz v6, :cond_9

    .line 489
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSelectedVH:Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;

    .line 490
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSelectedItemBackgroundColor:I

    invoke-virtual {v9, v12}, Landroid/view/View;->setBackgroundColor(I)V

    .line 491
    iget-object v12, v10, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->title:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSelectedItemTextColor:I

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 492
    iget-object v12, v10, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->when:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSelectedItemTextColor:I

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 493
    iget-object v12, v10, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->where:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSelectedItemTextColor:I

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 494
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v3, v12, v13, v14, v15}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 495
    iget-object v12, v10, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->textContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v12, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 482
    .end local v3    # "lp":Landroid/widget/GridLayout$LayoutParams;
    :cond_7
    const/4 v6, 0x0

    goto :goto_2

    .line 483
    :cond_8
    const/16 v12, 0x8

    goto :goto_3

    .line 497
    .restart local v3    # "lp":Landroid/widget/GridLayout$LayoutParams;
    :cond_9
    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mItemRightMargin:F

    float-to-int v14, v14

    const/4 v15, 0x0

    invoke-virtual {v3, v12, v13, v14, v15}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 498
    iget-object v12, v10, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->textContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v12, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 352
    const/4 v0, 0x2

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 401
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 375
    invoke-virtual {p0, p1}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->getAdapterInfoByPosition(I)Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v0

    .line 376
    .local v0, "info":Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    if-eqz v0, :cond_0

    .line 377
    iget-object v1, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/agenda/AgendaByDayAdapter;

    iget v2, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Lcom/android/calendar/agenda/AgendaByDayAdapter;->isEnabled(I)Z

    move-result v1

    .line 379
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 1250
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mTZUpdater:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1251
    return-void
.end method

.method public refresh(Landroid/text/format/Time;JLjava/lang/String;ZZ)V
    .locals 25
    .param p1, "goToTime"    # Landroid/text/format/Time;
    .param p2, "id"    # J
    .param p4, "searchQuery"    # Ljava/lang/String;
    .param p5, "forced"    # Z
    .param p6, "refreshEventInfo"    # Z

    .prologue
    .line 643
    if-eqz p4, :cond_0

    .line 644
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSearchQuery:Ljava/lang/String;

    .line 654
    :cond_0
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    move-object/from16 v0, p1

    iget-wide v5, v0, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v3, v4, v5, v6}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v9

    .line 656
    .local v9, "startDay":I
    if-nez p5, :cond_4

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v9}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->isInRange(II)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 658
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;

    move-object/from16 v0, p1

    move-wide/from16 v1, p2

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/calendar/agenda/AgendaListView;->isEventVisible(Landroid/text/format/Time;J)Z

    move-result v3

    if-nez v3, :cond_3

    .line 659
    invoke-direct/range {p0 .. p3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->findEventPositionNearestTime(Landroid/text/format/Time;J)I

    move-result v20

    .line 660
    .local v20, "gotoPosition":I
    if-lez v20, :cond_2

    .line 661
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;

    add-int/lit8 v4, v20, 0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mStickyHeaderSize:I

    invoke-virtual {v3, v4, v5}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 663
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mListViewScrollState:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 664
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    .line 666
    :cond_1
    if-eqz p6, :cond_2

    .line 667
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->findInstanceIdFromPosition(I)J

    move-result-wide v21

    .line 668
    .local v21, "newInstanceId":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->getSelectedInstanceId()J

    move-result-wide v3

    cmp-long v3, v21, v3

    if-eqz v3, :cond_2

    .line 669
    move-object/from16 v0, p0

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->setSelectedInstanceId(J)V

    .line 670
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/android/calendar/agenda/AgendaWindowAdapter$2;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/calendar/agenda/AgendaWindowAdapter$2;-><init>(Lcom/android/calendar/agenda/AgendaWindowAdapter;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 676
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->getCursorByPosition(I)Landroid/database/Cursor;

    move-result-object v23

    .line 677
    .local v23, "tempCursor":Landroid/database/Cursor;
    if-eqz v23, :cond_2

    .line 678
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->getCursorPositionByPosition(I)I

    move-result v24

    .line 679
    .local v24, "tempCursorPosition":I
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->buildEventInfoFromCursor(Landroid/database/Cursor;IZ)Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;

    move-result-object v19

    .line 682
    .local v19, "event":Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/calendar/CalendarController;->getInstance(Landroid/content/Context;)Lcom/android/calendar/CalendarController;

    move-result-object v3

    const-wide/16 v5, 0x2

    move-object/from16 v0, v19

    iget-wide v7, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;->id:J

    move-object/from16 v0, v19

    iget-wide v9, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;->begin:J

    .end local v9    # "startDay":I
    move-object/from16 v0, v19

    iget-wide v11, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;->end:J

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v19

    iget-boolean v15, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;->allDay:Z

    invoke-static {v4, v15}, Lcom/android/calendar/CalendarController$EventInfo;->buildViewExtraLong(IZ)J

    move-result-wide v15

    const-wide/16 v17, -0x1

    move-object/from16 v4, p0

    invoke-virtual/range {v3 .. v18}, Lcom/android/calendar/CalendarController;->sendEventRelatedEventWithExtra(Ljava/lang/Object;JJJJIIJJ)V

    .line 693
    .end local v19    # "event":Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;
    .end local v21    # "newInstanceId":J
    .end local v23    # "tempCursor":Landroid/database/Cursor;
    .end local v24    # "tempCursorPosition":I
    :cond_2
    new-instance v7, Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mTimeZone:Ljava/lang/String;

    invoke-direct {v7, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 694
    .local v7, "actualTime":Landroid/text/format/Time;
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 695
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/calendar/CalendarController;->getInstance(Landroid/content/Context;)Lcom/android/calendar/CalendarController;

    move-result-object v3

    const-wide/16 v5, 0x400

    const-wide/16 v9, -0x1

    const/4 v11, 0x0

    move-object/from16 v4, p0

    move-object v8, v7

    invoke-virtual/range {v3 .. v11}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JI)V

    .line 718
    .end local v7    # "actualTime":Landroid/text/format/Time;
    .end local v20    # "gotoPosition":I
    :cond_3
    :goto_0
    return-void

    .line 702
    .restart local v9    # "startDay":I
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mCleanQueryInitiated:Z

    if-eqz v3, :cond_5

    if-eqz p4, :cond_3

    .line 704
    :cond_5
    add-int/lit8 v10, v9, 0x7

    .line 706
    .local v10, "endDay":I
    const-wide/16 v3, -0x1

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSelectedInstanceId:J

    .line 707
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mCleanQueryInitiated:Z

    .line 708
    const/4 v13, 0x2

    move-object/from16 v8, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p4

    move-wide/from16 v14, p2

    invoke-direct/range {v8 .. v15}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->queueQuery(IILandroid/text/format/Time;Ljava/lang/String;IJ)Z

    .line 713
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mOlderRequests:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mOlderRequests:I

    .line 714
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    move-object/from16 v11, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p4

    move-wide/from16 v17, p2

    invoke-direct/range {v11 .. v18}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->queueQuery(IILandroid/text/format/Time;Ljava/lang/String;IJ)Z

    .line 715
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mNewerRequests:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mNewerRequests:I

    .line 716
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x1

    move-object/from16 v11, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p4

    move-wide/from16 v17, p2

    invoke-direct/range {v11 .. v18}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->queueQuery(IILandroid/text/format/Time;Ljava/lang/String;IJ)Z

    goto :goto_0
.end method

.method public setHideDeclinedEvents(Z)V
    .locals 0
    .param p1, "hideDeclined"    # Z

    .prologue
    .line 1254
    iput-boolean p1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mHideDeclined:Z

    .line 1255
    return-void
.end method

.method public setScrollState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 1350
    iput p1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mListViewScrollState:I

    .line 1351
    return-void
.end method

.method public setSelectedInstanceId(J)V
    .locals 1
    .param p1, "selectedInstanceId"    # J

    .prologue
    .line 1279
    iput-wide p1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSelectedInstanceId:J

    .line 1280
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSelectedVH:Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;

    .line 1281
    return-void
.end method

.method public setSelectedView(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1258
    if-eqz p1, :cond_0

    .line 1259
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 1260
    .local v0, "vh":Ljava/lang/Object;
    instance-of v1, v0, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;

    if-eqz v1, :cond_0

    .line 1261
    check-cast v0, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;

    .end local v0    # "vh":Ljava/lang/Object;
    iput-object v0, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSelectedVH:Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;

    .line 1262
    iget-wide v1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSelectedInstanceId:J

    iget-object v3, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSelectedVH:Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;

    iget-wide v3, v3, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->instanceId:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 1263
    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSelectedVH:Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;

    iget-wide v1, v1, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->instanceId:J

    iput-wide v1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSelectedInstanceId:J

    .line 1264
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 1268
    :cond_0
    return-void
.end method
