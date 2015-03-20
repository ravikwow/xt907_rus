.class public Lcom/android/contacts/dialpad/SmartDialerAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "SmartDialerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/dialpad/SmartDialerAdapter$MyObserver;,
        Lcom/android/contacts/dialpad/SmartDialerAdapter$QueryParam;,
        Lcom/android/contacts/dialpad/SmartDialerAdapter$ContactInfo;,
        Lcom/android/contacts/dialpad/SmartDialerAdapter$MySyncQueryHandler;,
        Lcom/android/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;,
        Lcom/android/contacts/dialpad/SmartDialerAdapter$ScreenSize;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final PEOPLE_PHONE_PROJECTION:[Ljava/lang/String;

.field private static final PHONES_PROJECTION:[Ljava/lang/String;

.field private static final SCREEN_SIZE_MAP:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/contacts/dialpad/SmartDialerAdapter$ScreenSize;",
            ">;"
        }
    .end annotation
.end field

.field public static final SMARTDIALER_EXACT_CONTENT_URI:Landroid/net/Uri;

.field private static final SMARTDIALER_FUZZY_CONTENT_URI:Landroid/net/Uri;

.field private static final VDBG:Z


# instance fields
.field private final CONTACTINFO_EMPTY:Lcom/android/contacts/dialpad/SmartDialerAdapter$ContactInfo;

.field private activityGone:Z

.field private activityPaused:Z

.field private mAdapterView:Landroid/view/View;

.field private mAsyncQueryHandler:Lcom/android/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;

.field mAutoExpandList:Z

.field private mChangeObserver:Lcom/android/contacts/dialpad/SmartDialerAdapter$MyObserver;

.field private mContactInfoCache:Lcom/android/contacts/util/ExpirableCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/contacts/util/ExpirableCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/contacts/dialpad/SmartDialerAdapter$ContactInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

.field private mContactStartTime:J

.field private mContext:Landroid/content/Context;

.field private mCurrentCountryIso:Ljava/lang/String;

.field private mDensity:I

.field private mFragmentView:Landroid/view/View;

.field private mHighlightColor:I

.field private mHighlightTextColor:I

.field private mLabelArray:[Ljava/lang/CharSequence;

.field private mMainThreadHandler:Landroid/os/Handler;

.field private mMatchedCursor:Landroid/database/Cursor;

.field private mMostRecentCursor:Landroid/database/Cursor;

.field private mQueriedDigits:Ljava/lang/String;

.field private mResolver:Landroid/content/ContentResolver;

.field private mSyncQueryHandler:Lcom/android/contacts/dialpad/SmartDialerAdapter$MySyncQueryHandler;

.field private mdialpadFragment:Lcom/android/contacts/dialpad/DialpadFragment;

.field private misVGA:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 88
    sget-boolean v0, Lcom/android/contacts/activities/DialtactsActivity;->DBG:Z

    sput-boolean v0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->DBG:Z

    .line 89
    sget-boolean v0, Lcom/android/contacts/activities/DialtactsActivity;->VDBG:Z

    sput-boolean v0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->VDBG:Z

    .line 136
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "display_name"

    aput-object v1, v0, v3

    const-string v1, "data1"

    aput-object v1, v0, v4

    const-string v1, "data2"

    aput-object v1, v0, v5

    const-string v1, "data3"

    aput-object v1, v0, v6

    const-string v1, "photo_id"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "starred"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "times_contacted"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "sort_key"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "number"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "date"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "name"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "numbertype"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "numberlabel"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "group_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->PHONES_PROJECTION:[Ljava/lang/String;

    .line 175
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "display_name"

    aput-object v1, v0, v3

    const-string v1, "data1"

    aput-object v1, v0, v4

    const-string v1, "data2"

    aput-object v1, v0, v5

    const-string v1, "data3"

    aput-object v1, v0, v6

    const-string v1, "photo_id"

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->PEOPLE_PHONE_PROJECTION:[Ljava/lang/String;

    .line 201
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->SCREEN_SIZE_MAP:Ljava/util/Hashtable;

    .line 204
    sget-object v0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->SCREEN_SIZE_MAP:Ljava/util/Hashtable;

    const v1, 0x4b000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/contacts/dialpad/SmartDialerAdapter$ScreenSize;->VGA:Lcom/android/contacts/dialpad/SmartDialerAdapter$ScreenSize;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 651
    const-string v0, "content://com.android.contacts/smartdialer/fuzzy_match_query"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->SMARTDIALER_FUZZY_CONTENT_URI:Landroid/net/Uri;

    .line 653
    const-string v0, "content://com.android.contacts/smartdialer/exact_match_query"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->SMARTDIALER_EXACT_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layout"    # I
    .param p3, "fragmentView"    # Landroid/view/View;
    .param p4, "countryIso"    # Ljava/lang/String;
    .param p5, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 211
    invoke-direct {p0, p1, p2, v4}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 97
    iput-object v4, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mContext:Landroid/content/Context;

    .line 98
    iput-object v4, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mResolver:Landroid/content/ContentResolver;

    .line 99
    iput-object v4, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mdialpadFragment:Lcom/android/contacts/dialpad/DialpadFragment;

    .line 102
    iput-object v4, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mMostRecentCursor:Landroid/database/Cursor;

    .line 103
    iput-boolean v5, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->misVGA:Z

    .line 105
    iput-object v4, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mMatchedCursor:Landroid/database/Cursor;

    .line 106
    iput-object v4, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mAsyncQueryHandler:Lcom/android/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;

    .line 107
    iput-object v4, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mSyncQueryHandler:Lcom/android/contacts/dialpad/SmartDialerAdapter$MySyncQueryHandler;

    .line 108
    iput-object v4, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mLabelArray:[Ljava/lang/CharSequence;

    .line 110
    const-string v2, ""

    iput-object v2, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mQueriedDigits:Ljava/lang/String;

    .line 127
    iput-boolean v5, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mAutoExpandList:Z

    .line 650
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mContactStartTime:J

    .line 871
    new-instance v2, Lcom/android/contacts/dialpad/SmartDialerAdapter$ContactInfo;

    invoke-direct {v2, p0, v4}, Lcom/android/contacts/dialpad/SmartDialerAdapter$ContactInfo;-><init>(Lcom/android/contacts/dialpad/SmartDialerAdapter;Lcom/android/contacts/dialpad/SmartDialerAdapter$1;)V

    iput-object v2, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->CONTACTINFO_EMPTY:Lcom/android/contacts/dialpad/SmartDialerAdapter$ContactInfo;

    .line 944
    new-instance v2, Lcom/android/contacts/dialpad/SmartDialerAdapter$4;

    invoke-direct {v2, p0}, Lcom/android/contacts/dialpad/SmartDialerAdapter$4;-><init>(Lcom/android/contacts/dialpad/SmartDialerAdapter;)V

    iput-object v2, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mMainThreadHandler:Landroid/os/Handler;

    .line 1011
    iput-boolean v5, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->activityPaused:Z

    .line 1012
    iput-boolean v5, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->activityGone:Z

    .line 213
    check-cast p5, Lcom/android/contacts/dialpad/DialpadFragment;

    .end local p5    # "o":Ljava/lang/Object;
    iput-object p5, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mdialpadFragment:Lcom/android/contacts/dialpad/DialpadFragment;

    .line 214
    iput-object p1, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mContext:Landroid/content/Context;

    .line 215
    iget-object v2, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mResolver:Landroid/content/ContentResolver;

    .line 216
    iget-object v2, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v2, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mAdapterView:Landroid/view/View;

    .line 217
    iput-object p3, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mFragmentView:Landroid/view/View;

    .line 218
    iput-object p4, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mCurrentCountryIso:Ljava/lang/String;

    .line 220
    iget-object v2, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08001a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mHighlightColor:I

    .line 221
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mHighlightTextColor:I

    .line 224
    iget-object v2, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/contacts/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/ContactPhotoManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    .line 225
    const/16 v2, 0x64

    invoke-static {v2}, Lcom/android/contacts/util/ExpirableCache;->create(I)Lcom/android/contacts/util/ExpirableCache;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mContactInfoCache:Lcom/android/contacts/util/ExpirableCache;

    .line 230
    invoke-virtual {p0, p1}, Lcom/android/contacts/dialpad/SmartDialerAdapter;->getScreenSize(Landroid/content/Context;)Lcom/android/contacts/dialpad/SmartDialerAdapter$ScreenSize;

    move-result-object v2

    sget-object v3, Lcom/android/contacts/dialpad/SmartDialerAdapter$ScreenSize;->VGA:Lcom/android/contacts/dialpad/SmartDialerAdapter$ScreenSize;

    if-ne v2, v3, :cond_0

    .line 231
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->misVGA:Z

    .line 232
    sget-boolean v2, Lcom/android/contacts/dialpad/SmartDialerAdapter;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "It is VGA Screen"

    invoke-direct {p0, v2}, Lcom/android/contacts/dialpad/SmartDialerAdapter;->log(Ljava/lang/String;)V

    .line 236
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v2, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mDensity:I

    .line 239
    new-instance v2, Lcom/android/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;

    invoke-direct {v2, p0, p1}, Lcom/android/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;-><init>(Lcom/android/contacts/dialpad/SmartDialerAdapter;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mAsyncQueryHandler:Lcom/android/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;

    .line 242
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "SmartDialer Query"

    const/16 v3, 0xa

    invoke-direct {v0, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 244
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 246
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 247
    .local v1, "threadlooper":Landroid/os/Looper;
    if-eqz v1, :cond_1

    .line 248
    new-instance v2, Lcom/android/contacts/dialpad/SmartDialerAdapter$MySyncQueryHandler;

    invoke-direct {v2, p0, v1}, Lcom/android/contacts/dialpad/SmartDialerAdapter$MySyncQueryHandler;-><init>(Lcom/android/contacts/dialpad/SmartDialerAdapter;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mSyncQueryHandler:Lcom/android/contacts/dialpad/SmartDialerAdapter$MySyncQueryHandler;

    .line 251
    :cond_1
    new-instance v2, Lcom/android/contacts/dialpad/SmartDialerAdapter$MyObserver;

    invoke-direct {v2, p0}, Lcom/android/contacts/dialpad/SmartDialerAdapter$MyObserver;-><init>(Lcom/android/contacts/dialpad/SmartDialerAdapter;)V

    iput-object v2, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mChangeObserver:Lcom/android/contacts/dialpad/SmartDialerAdapter$MyObserver;

    .line 252
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/dialpad/SmartDialerAdapter;)Lcom/android/contacts/dialpad/DialpadFragment;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/dialpad/SmartDialerAdapter;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mdialpadFragment:Lcom/android/contacts/dialpad/DialpadFragment;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/contacts/dialpad/SmartDialerAdapter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/dialpad/SmartDialerAdapter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mQueriedDigits:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/contacts/dialpad/SmartDialerAdapter;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/dialpad/SmartDialerAdapter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/contacts/dialpad/SmartDialerAdapter;->queryContactDetail(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/contacts/dialpad/SmartDialerAdapter;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/dialpad/SmartDialerAdapter;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mMainThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/contacts/dialpad/SmartDialerAdapter;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/dialpad/SmartDialerAdapter;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/contacts/dialpad/SmartDialerAdapter;->getInputDigits()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/contacts/dialpad/SmartDialerAdapter;)Lcom/android/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/dialpad/SmartDialerAdapter;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mAsyncQueryHandler:Lcom/android/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;

    return-object v0
.end method

.method static synthetic access$1600()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->SMARTDIALER_FUZZY_CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1700()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->PHONES_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->PEOPLE_PHONE_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/contacts/dialpad/SmartDialerAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/dialpad/SmartDialerAdapter;

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->activityPaused:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/contacts/dialpad/SmartDialerAdapter;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/dialpad/SmartDialerAdapter;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mFragmentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/contacts/dialpad/SmartDialerAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/dialpad/SmartDialerAdapter;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 83
    sget-boolean v0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->DBG:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/contacts/dialpad/SmartDialerAdapter;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/dialpad/SmartDialerAdapter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/contacts/dialpad/SmartDialerAdapter;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/contacts/dialpad/SmartDialerAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/dialpad/SmartDialerAdapter;

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->activityGone:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/contacts/dialpad/SmartDialerAdapter;)Landroid/database/Cursor;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/dialpad/SmartDialerAdapter;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mMostRecentCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/contacts/dialpad/SmartDialerAdapter;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/dialpad/SmartDialerAdapter;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mMostRecentCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/contacts/dialpad/SmartDialerAdapter;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/contacts/dialpad/SmartDialerAdapter;

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mContactStartTime:J

    return-wide v0
.end method

.method static synthetic access$802(Lcom/android/contacts/dialpad/SmartDialerAdapter;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/dialpad/SmartDialerAdapter;
    .param p1, "x1"    # J

    .prologue
    .line 83
    iput-wide p1, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mContactStartTime:J

    return-wide p1
.end method

.method static synthetic access$900(Lcom/android/contacts/dialpad/SmartDialerAdapter;)Landroid/database/Cursor;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/dialpad/SmartDialerAdapter;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mMatchedCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/contacts/dialpad/SmartDialerAdapter;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/dialpad/SmartDialerAdapter;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mMatchedCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method private getContactInfoToDisplay(Ljava/lang/String;Landroid/database/Cursor;)Lcom/android/contacts/dialpad/SmartDialerAdapter$ContactInfo;
    .locals 11
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    const-wide/16 v9, -0x1

    const/16 v8, 0xd

    const/16 v7, 0xc

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 773
    const/4 v0, 0x0

    .line 776
    .local v0, "ci":Lcom/android/contacts/dialpad/SmartDialerAdapter$ContactInfo;
    iget-object v3, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mdialpadFragment:Lcom/android/contacts/dialpad/DialpadFragment;

    invoke-virtual {v3, p1}, Lcom/android/contacts/dialpad/DialpadFragment;->getVoiceMailTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 777
    new-instance v0, Lcom/android/contacts/dialpad/SmartDialerAdapter$ContactInfo;

    .end local v0    # "ci":Lcom/android/contacts/dialpad/SmartDialerAdapter$ContactInfo;
    invoke-direct {v0, p0, v5}, Lcom/android/contacts/dialpad/SmartDialerAdapter$ContactInfo;-><init>(Lcom/android/contacts/dialpad/SmartDialerAdapter;Lcom/android/contacts/dialpad/SmartDialerAdapter$1;)V

    .line 778
    .restart local v0    # "ci":Lcom/android/contacts/dialpad/SmartDialerAdapter$ContactInfo;
    iget-object v3, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mdialpadFragment:Lcom/android/contacts/dialpad/DialpadFragment;

    invoke-virtual {v3, p1}, Lcom/android/contacts/dialpad/DialpadFragment;->getVoiceMailTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/contacts/dialpad/SmartDialerAdapter$ContactInfo;->name:Ljava/lang/String;

    .line 779
    const-wide/16 v3, -0x1388

    iput-wide v3, v0, Lcom/android/contacts/dialpad/SmartDialerAdapter$ContactInfo;->photoId:J

    .line 780
    invoke-interface {p2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/contacts/dialpad/SmartDialerAdapter$ContactInfo;->label:Ljava/lang/String;

    .line 781
    invoke-interface {p2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v0, Lcom/android/contacts/dialpad/SmartDialerAdapter$ContactInfo;->type:I

    move-object v1, v0

    .line 820
    .end local v0    # "ci":Lcom/android/contacts/dialpad/SmartDialerAdapter$ContactInfo;
    .local v1, "ci":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 783
    .end local v1    # "ci":Ljava/lang/Object;
    .restart local v0    # "ci":Lcom/android/contacts/dialpad/SmartDialerAdapter$ContactInfo;
    :cond_0
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 784
    new-instance v0, Lcom/android/contacts/dialpad/SmartDialerAdapter$ContactInfo;

    .end local v0    # "ci":Lcom/android/contacts/dialpad/SmartDialerAdapter$ContactInfo;
    invoke-direct {v0, p0, v5}, Lcom/android/contacts/dialpad/SmartDialerAdapter$ContactInfo;-><init>(Lcom/android/contacts/dialpad/SmartDialerAdapter;Lcom/android/contacts/dialpad/SmartDialerAdapter$1;)V

    .line 785
    .restart local v0    # "ci":Lcom/android/contacts/dialpad/SmartDialerAdapter$ContactInfo;
    iget-object v3, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1040305

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/contacts/dialpad/SmartDialerAdapter$ContactInfo;->name:Ljava/lang/String;

    .line 787
    const-wide/16 v3, -0x1389

    iput-wide v3, v0, Lcom/android/contacts/dialpad/SmartDialerAdapter$ContactInfo;->photoId:J

    .line 788
    const-string v3, ""

    iput-object v3, v0, Lcom/android/contacts/dialpad/SmartDialerAdapter$ContactInfo;->label:Ljava/lang/String;

    .line 789
    iput v6, v0, Lcom/android/contacts/dialpad/SmartDialerAdapter$ContactInfo;->type:I

    move-object v1, v0

    .line 790
    .restart local v1    # "ci":Ljava/lang/Object;
    goto :goto_0

    .line 794
    .end local v1    # "ci":Ljava/lang/Object;
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mContactInfoCache:Lcom/android/contacts/util/ExpirableCache;

    invoke-virtual {v3, p1}, Lcom/android/contacts/util/ExpirableCache;->getPossiblyExpired(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "ci":Lcom/android/contacts/dialpad/SmartDialerAdapter$ContactInfo;
    check-cast v0, Lcom/android/contacts/dialpad/SmartDialerAdapter$ContactInfo;

    .line 795
    .restart local v0    # "ci":Lcom/android/contacts/dialpad/SmartDialerAdapter$ContactInfo;
    if-nez v0, :cond_2

    .line 796
    new-instance v0, Lcom/android/contacts/dialpad/SmartDialerAdapter$ContactInfo;

    .end local v0    # "ci":Lcom/android/contacts/dialpad/SmartDialerAdapter$ContactInfo;
    invoke-direct {v0, p0, v5}, Lcom/android/contacts/dialpad/SmartDialerAdapter$ContactInfo;-><init>(Lcom/android/contacts/dialpad/SmartDialerAdapter;Lcom/android/contacts/dialpad/SmartDialerAdapter$1;)V

    .line 797
    .restart local v0    # "ci":Lcom/android/contacts/dialpad/SmartDialerAdapter$ContactInfo;
    const/16 v3, 0xb

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/contacts/dialpad/SmartDialerAdapter$ContactInfo;->name:Ljava/lang/String;

    .line 798
    invoke-interface {p2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/contacts/dialpad/SmartDialerAdapter$ContactInfo;->label:Ljava/lang/String;

    .line 799
    invoke-interface {p2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v0, Lcom/android/contacts/dialpad/SmartDialerAdapter$ContactInfo;->type:I

    .line 800
    iget-object v3, v0, Lcom/android/contacts/dialpad/SmartDialerAdapter$ContactInfo;->name:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 801
    iput-wide v9, v0, Lcom/android/contacts/dialpad/SmartDialerAdapter$ContactInfo;->photoId:J

    .line 807
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mContactInfoCache:Lcom/android/contacts/util/ExpirableCache;

    invoke-virtual {v3, p1}, Lcom/android/contacts/util/ExpirableCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_4

    .line 808
    iget-object v3, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mSyncQueryHandler:Lcom/android/contacts/dialpad/SmartDialerAdapter$MySyncQueryHandler;

    const/16 v4, 0x3ec

    invoke-static {v3, v4, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 809
    .local v2, "msg":Landroid/os/Message;
    sget-boolean v3, Lcom/android/contacts/dialpad/SmartDialerAdapter;->DBG:Z

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendContactsMsg = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/contacts/dialpad/SmartDialerAdapter;->log(Ljava/lang/String;)V

    .line 810
    :cond_3
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 813
    .end local v2    # "msg":Landroid/os/Message;
    :cond_4
    if-nez v0, :cond_5

    .line 814
    new-instance v0, Lcom/android/contacts/dialpad/SmartDialerAdapter$ContactInfo;

    .end local v0    # "ci":Lcom/android/contacts/dialpad/SmartDialerAdapter$ContactInfo;
    invoke-direct {v0, p0, v5}, Lcom/android/contacts/dialpad/SmartDialerAdapter$ContactInfo;-><init>(Lcom/android/contacts/dialpad/SmartDialerAdapter;Lcom/android/contacts/dialpad/SmartDialerAdapter$1;)V

    .line 815
    .restart local v0    # "ci":Lcom/android/contacts/dialpad/SmartDialerAdapter$ContactInfo;
    iput-object v5, v0, Lcom/android/contacts/dialpad/SmartDialerAdapter$ContactInfo;->name:Ljava/lang/String;

    .line 816
    iput-object v5, v0, Lcom/android/contacts/dialpad/SmartDialerAdapter$ContactInfo;->label:Ljava/lang/String;

    .line 817
    iput v6, v0, Lcom/android/contacts/dialpad/SmartDialerAdapter$ContactInfo;->type:I

    .line 818
    iput-wide v9, v0, Lcom/android/contacts/dialpad/SmartDialerAdapter$ContactInfo;->photoId:J

    :cond_5
    move-object v1, v0

    .line 820
    .restart local v1    # "ci":Ljava/lang/Object;
    goto/16 :goto_0

    .line 803
    .end local v1    # "ci":Ljava/lang/Object;
    :cond_6
    const-wide/16 v3, 0x0

    iput-wide v3, v0, Lcom/android/contacts/dialpad/SmartDialerAdapter$ContactInfo;->photoId:J

    goto :goto_1
.end method

.method private getContactQueryParam(Ljava/lang/String;)Lcom/android/contacts/dialpad/SmartDialerAdapter$QueryParam;
    .locals 5
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 921
    new-instance v0, Lcom/android/contacts/dialpad/SmartDialerAdapter$QueryParam;

    invoke-direct {v0, p0, v4}, Lcom/android/contacts/dialpad/SmartDialerAdapter$QueryParam;-><init>(Lcom/android/contacts/dialpad/SmartDialerAdapter;Lcom/android/contacts/dialpad/SmartDialerAdapter$1;)V

    .line 923
    .local v0, "param":Lcom/android/contacts/dialpad/SmartDialerAdapter$QueryParam;
    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/dialpad/SmartDialerAdapter$QueryParam;->uri:Landroid/net/Uri;

    .line 924
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "display_name"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "photo_id"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "type"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "label"

    aput-object v3, v1, v2

    iput-object v1, v0, Lcom/android/contacts/dialpad/SmartDialerAdapter$QueryParam;->projection:[Ljava/lang/String;

    .line 931
    iput-object v4, v0, Lcom/android/contacts/dialpad/SmartDialerAdapter$QueryParam;->selection:Ljava/lang/String;

    .line 932
    iput-object v4, v0, Lcom/android/contacts/dialpad/SmartDialerAdapter$QueryParam;->selectionArgs:[Ljava/lang/String;

    .line 933
    iput-object v4, v0, Lcom/android/contacts/dialpad/SmartDialerAdapter$QueryParam;->orderBy:Ljava/lang/String;

    .line 934
    return-object v0
.end method

.method private getCurCursorType(Landroid/database/Cursor;)I
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v2, 0x1

    .line 607
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    .line 609
    .local v0, "columnCount":I
    const/4 v3, 0x5

    if-ne v0, v3, :cond_1

    .line 616
    :cond_0
    :goto_0
    return v2

    .line 612
    :cond_1
    const/16 v3, 0xe

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 613
    .local v1, "group_id":Ljava/lang/String;
    const-string v3, "1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 615
    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 616
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 618
    :cond_3
    sget-boolean v2, Lcom/android/contacts/dialpad/SmartDialerAdapter;->DBG:Z

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cursor type is wrong, group_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/contacts/dialpad/SmartDialerAdapter;->log(Ljava/lang/String;)V

    .line 619
    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "the cursor type is wrong!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private getDisplayLabel(ILjava/lang/CharSequence;)Ljava/lang/String;
    .locals 2
    .param p1, "type"    # I
    .param p2, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 628
    iget-object v0, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mLabelArray:[Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    .line 629
    iget-object v0, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mLabelArray:[Ljava/lang/CharSequence;

    .line 631
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mLabelArray:[Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2, v1}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getDisplayLabel(Landroid/content/Context;ILjava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getInputDigits()Ljava/lang/String;
    .locals 3

    .prologue
    .line 638
    iget-object v1, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mdialpadFragment:Lcom/android/contacts/dialpad/DialpadFragment;

    invoke-virtual {v1}, Lcom/android/contacts/dialpad/DialpadFragment;->getDigitsWidget()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/dialpad/SmartDialerUtil;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 639
    .local v0, "str":Ljava/lang/String;
    sget-boolean v1, Lcom/android/contacts/dialpad/SmartDialerAdapter;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getInputDigits ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/contacts/dialpad/SmartDialerAdapter;->log(Ljava/lang/String;)V

    .line 640
    :cond_0
    return-object v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1104
    const-string v0, "SmartDialerAdapter"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    return-void
.end method

.method private queryContactDetail(Ljava/lang/String;)V
    .locals 14
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 874
    const/4 v7, 0x0

    .line 875
    .local v7, "detailCursor":Landroid/database/Cursor;
    const-wide/16 v10, -0x1

    .line 876
    .local v10, "photoId":J
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 910
    :cond_0
    :goto_0
    return-void

    .line 879
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/contacts/dialpad/SmartDialerAdapter;->getContactQueryParam(Ljava/lang/String;)Lcom/android/contacts/dialpad/SmartDialerAdapter$QueryParam;

    move-result-object v12

    .line 880
    .local v12, "queryParam":Lcom/android/contacts/dialpad/SmartDialerAdapter$QueryParam;
    iget-object v0, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, v12, Lcom/android/contacts/dialpad/SmartDialerAdapter$QueryParam;->uri:Landroid/net/Uri;

    iget-object v2, v12, Lcom/android/contacts/dialpad/SmartDialerAdapter$QueryParam;->projection:[Ljava/lang/String;

    iget-object v3, v12, Lcom/android/contacts/dialpad/SmartDialerAdapter$QueryParam;->selection:Ljava/lang/String;

    iget-object v4, v12, Lcom/android/contacts/dialpad/SmartDialerAdapter$QueryParam;->selectionArgs:[Ljava/lang/String;

    iget-object v5, v12, Lcom/android/contacts/dialpad/SmartDialerAdapter$QueryParam;->orderBy:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 886
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 887
    const-string v0, "photo_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 889
    const-string v0, "display_name"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 891
    .local v9, "name":Ljava/lang/String;
    const-string v0, "label"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 893
    .local v8, "label":Ljava/lang/String;
    const-string v0, "type"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 894
    .local v13, "type":I
    new-instance v6, Lcom/android/contacts/dialpad/SmartDialerAdapter$ContactInfo;

    const/4 v0, 0x0

    invoke-direct {v6, p0, v0}, Lcom/android/contacts/dialpad/SmartDialerAdapter$ContactInfo;-><init>(Lcom/android/contacts/dialpad/SmartDialerAdapter;Lcom/android/contacts/dialpad/SmartDialerAdapter$1;)V

    .line 895
    .local v6, "ci":Lcom/android/contacts/dialpad/SmartDialerAdapter$ContactInfo;
    iput-object v9, v6, Lcom/android/contacts/dialpad/SmartDialerAdapter$ContactInfo;->name:Ljava/lang/String;

    .line 896
    iput v13, v6, Lcom/android/contacts/dialpad/SmartDialerAdapter$ContactInfo;->type:I

    .line 897
    iput-object v8, v6, Lcom/android/contacts/dialpad/SmartDialerAdapter$ContactInfo;->label:Ljava/lang/String;

    .line 898
    iput-wide v10, v6, Lcom/android/contacts/dialpad/SmartDialerAdapter$ContactInfo;->photoId:J

    .line 899
    sget-boolean v0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->DBG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mContactInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/contacts/dialpad/SmartDialerAdapter;->log(Ljava/lang/String;)V

    .line 900
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mContactInfoCache:Lcom/android/contacts/util/ExpirableCache;

    invoke-virtual {v0, p1, v6}, Lcom/android/contacts/util/ExpirableCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 907
    .end local v6    # "ci":Lcom/android/contacts/dialpad/SmartDialerAdapter$ContactInfo;
    .end local v8    # "label":Ljava/lang/String;
    .end local v9    # "name":Ljava/lang/String;
    .end local v13    # "type":I
    :goto_1
    if-eqz v7, :cond_0

    .line 908
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 903
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mContactInfoCache:Lcom/android/contacts/util/ExpirableCache;

    iget-object v1, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->CONTACTINFO_EMPTY:Lcom/android/contacts/dialpad/SmartDialerAdapter$ContactInfo;

    invoke-virtual {v0, p1, v1}, Lcom/android/contacts/util/ExpirableCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private setPhoto(Landroid/widget/QuickContactBadge;JLjava/lang/String;)V
    .locals 4
    .param p1, "view"    # Landroid/widget/QuickContactBadge;
    .param p2, "photoId"    # J
    .param p4, "number"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 824
    const-wide/16 v0, -0x1388

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    .line 825
    const v0, 0x7f02009d

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 826
    invoke-virtual {p1, v3, v2}, Landroid/widget/QuickContactBadge;->assignContactFromPhone(Ljava/lang/String;Z)V

    .line 838
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 839
    return-void

    .line 827
    :cond_0
    const-wide/16 v0, -0x1389

    cmp-long v0, p2, v0

    if-nez v0, :cond_1

    .line 828
    const v0, 0x1080448

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 829
    invoke-virtual {p1, v3, v2}, Landroid/widget/QuickContactBadge;->assignContactFromPhone(Ljava/lang/String;Z)V

    goto :goto_0

    .line 830
    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_2

    .line 831
    const v0, 0x7f0200d9

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 832
    invoke-virtual {p1, p4, v2}, Landroid/widget/QuickContactBadge;->assignContactFromPhone(Ljava/lang/String;Z)V

    goto :goto_0

    .line 835
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    invoke-virtual {v0, p1, p2, p3, v2}, Lcom/android/contacts/ContactPhotoManager;->loadThumbnail(Landroid/widget/ImageView;JZ)V

    .line 836
    invoke-virtual {p1, p4, v2}, Landroid/widget/QuickContactBadge;->assignContactFromPhone(Ljava/lang/String;Z)V

    goto :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v1, 0x0

    .line 256
    const v0, 0x7f070154

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 257
    .local v2, "nameView":Landroid/widget/TextView;
    const v0, 0x7f070155

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 258
    .local v3, "numberView":Landroid/widget/TextView;
    const v0, 0x7f070152

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/QuickContactBadge;

    .line 259
    .local v6, "picView":Landroid/widget/QuickContactBadge;
    const v0, 0x7f070157

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 260
    .local v8, "callButton":Landroid/view/View;
    const v0, 0x7f070159

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 261
    .local v4, "callerDetail":Landroid/view/View;
    const v0, 0x7f070153

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 262
    .local v5, "callType":Landroid/widget/ImageView;
    const v0, 0x7f070156

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 264
    .local v7, "dateView":Landroid/widget/TextView;
    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 266
    invoke-virtual {p1, v1}, Landroid/view/View;->setClickable(Z)V

    move-object v0, p0

    move-object v1, p3

    .line 267
    invoke-virtual/range {v0 .. v8}, Lcom/android/contacts/dialpad/SmartDialerAdapter;->setItemView(Landroid/database/Cursor;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/QuickContactBadge;Landroid/widget/TextView;Landroid/view/View;)V

    .line 269
    return-void
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 283
    monitor-enter p0

    .line 284
    :try_start_0
    iget-object v0, p0, Landroid/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    if-ne p1, v0, :cond_0

    .line 285
    monitor-exit p0

    .line 301
    :goto_0
    return-void

    .line 287
    :cond_0
    iget-object v0, p0, Landroid/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 288
    iget-object v0, p0, Landroid/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 290
    :cond_1
    iput-object p1, p0, Landroid/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    .line 291
    if-eqz p1, :cond_2

    .line 292
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/CursorAdapter;->mRowIDColumn:I

    .line 293
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/CursorAdapter;->mDataValid:Z

    .line 294
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 300
    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 296
    :cond_2
    const/4 v0, -0x1

    :try_start_1
    iput v0, p0, Landroid/widget/CursorAdapter;->mRowIDColumn:I

    .line 297
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/CursorAdapter;->mDataValid:Z

    .line 298
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method destroyCleanUp()V
    .locals 2

    .prologue
    .line 1049
    sget-boolean v0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "destoryCleanUp"

    invoke-direct {p0, v0}, Lcom/android/contacts/dialpad/SmartDialerAdapter;->log(Ljava/lang/String;)V

    .line 1050
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->activityGone:Z

    .line 1051
    new-instance v0, Lcom/android/contacts/dialpad/SmartDialerAdapter$5;

    const-string v1, "SmartDialer CloseCursor"

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/dialpad/SmartDialerAdapter$5;-><init>(Lcom/android/contacts/dialpad/SmartDialerAdapter;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1065
    iget-object v0, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mSyncQueryHandler:Lcom/android/contacts/dialpad/SmartDialerAdapter$MySyncQueryHandler;

    if-eqz v0, :cond_1

    .line 1066
    iget-object v0, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mSyncQueryHandler:Lcom/android/contacts/dialpad/SmartDialerAdapter$MySyncQueryHandler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 1068
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mAsyncQueryHandler:Lcom/android/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;

    .line 1069
    return-void
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 306
    int-to-long v0, p1

    return-wide v0
.end method

.method getScreenSize(Landroid/content/Context;)Lcom/android/contacts/dialpad/SmartDialerAdapter$ScreenSize;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1077
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v1, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1078
    .local v1, "x":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v2, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1080
    .local v2, "y":I
    sget-object v3, Lcom/android/contacts/dialpad/SmartDialerAdapter;->SCREEN_SIZE_MAP:Ljava/util/Hashtable;

    mul-int v4, v1, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/dialpad/SmartDialerAdapter$ScreenSize;

    .line 1082
    .local v0, "sz":Lcom/android/contacts/dialpad/SmartDialerAdapter$ScreenSize;
    if-nez v0, :cond_0

    .line 1083
    sget-object v0, Lcom/android/contacts/dialpad/SmartDialerAdapter$ScreenSize;->UNKNOWN:Lcom/android/contacts/dialpad/SmartDialerAdapter$ScreenSize;

    .line 1085
    .end local v0    # "sz":Lcom/android/contacts/dialpad/SmartDialerAdapter$ScreenSize;
    :cond_0
    return-object v0
.end method

.method protected init(Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "autoRequery"    # Z

    .prologue
    const/4 v1, 0x0

    .line 273
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    .line 274
    .local v0, "cursorPresent":Z
    :goto_0
    iput-boolean p3, p0, Landroid/widget/CursorAdapter;->mAutoRequery:Z

    .line 275
    iput-object p2, p0, Landroid/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    .line 276
    iput-boolean v0, p0, Landroid/widget/CursorAdapter;->mDataValid:Z

    .line 277
    iput-object p1, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mContext:Landroid/content/Context;

    .line 278
    iput v1, p0, Landroid/widget/CursorAdapter;->mRowIDColumn:I

    .line 279
    return-void

    .end local v0    # "cursorPresent":Z
    :cond_0
    move v0, v1

    .line 273
    goto :goto_0
.end method

.method public invalidateCache()V
    .locals 1

    .prologue
    .line 644
    iget-object v0, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mContactInfoCache:Lcom/android/contacts/util/ExpirableCache;

    invoke-virtual {v0}, Lcom/android/contacts/util/ExpirableCache;->expireAll()V

    .line 645
    return-void
.end method

.method isFullSingleItemNeeded()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1091
    iget-object v1, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_0

    iget v1, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mDensity:I

    const/16 v2, 0xa0

    if-eq v1, v2, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->misVGA:Z

    if-eqz v1, :cond_2

    .line 1095
    :cond_1
    const/4 v0, 0x0

    .line 1099
    :cond_2
    return v0
.end method

.method pauseCleanUp()V
    .locals 2

    .prologue
    .line 1033
    sget-boolean v0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "pauseCleanUp"

    invoke-direct {p0, v0}, Lcom/android/contacts/dialpad/SmartDialerAdapter;->log(Ljava/lang/String;)V

    .line 1034
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->activityPaused:Z

    .line 1035
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/SmartDialerAdapter;->invalidateCache()V

    .line 1036
    iget-object v0, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mAsyncQueryHandler:Lcom/android/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;

    if-eqz v0, :cond_1

    .line 1037
    iget-object v0, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mAsyncQueryHandler:Lcom/android/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 1038
    iget-object v0, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mAsyncQueryHandler:Lcom/android/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 1039
    iget-object v0, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mAsyncQueryHandler:Lcom/android/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 1041
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mSyncQueryHandler:Lcom/android/contacts/dialpad/SmartDialerAdapter$MySyncQueryHandler;

    if-eqz v0, :cond_2

    .line 1042
    iget-object v0, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mSyncQueryHandler:Lcom/android/contacts/dialpad/SmartDialerAdapter$MySyncQueryHandler;

    const/16 v1, 0x3ec

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1045
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mChangeObserver:Lcom/android/contacts/dialpad/SmartDialerAdapter$MyObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1046
    return-void
.end method

.method resumeQuery()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1014
    sget-boolean v2, Lcom/android/contacts/dialpad/SmartDialerAdapter;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "resumeQuery"

    invoke-direct {p0, v2}, Lcom/android/contacts/dialpad/SmartDialerAdapter;->log(Ljava/lang/String;)V

    .line 1015
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->activityPaused:Z

    .line 1016
    iget-object v2, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mFragmentView:Landroid/view/View;

    const v3, 0x7f0700d4

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1018
    .local v0, "input":Ljava/lang/CharSequence;
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/dialpad/SmartDialerUtil;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1019
    .local v1, "inputDigits":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 1020
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v5, :cond_2

    .line 1021
    const/16 v2, 0x3eb

    invoke-virtual {p0, v2}, Lcom/android/contacts/dialpad/SmartDialerAdapter;->startQuery(I)V

    .line 1027
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mChangeObserver:Lcom/android/contacts/dialpad/SmartDialerAdapter$MyObserver;

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1029
    iget-object v2, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mChangeObserver:Lcom/android/contacts/dialpad/SmartDialerAdapter$MyObserver;

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1030
    return-void

    .line 1023
    :cond_2
    const/16 v2, 0x3e8

    invoke-virtual {p0, v2}, Lcom/android/contacts/dialpad/SmartDialerAdapter;->startQuery(I)V

    goto :goto_0
.end method

.method setCommonView(Landroid/database/Cursor;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/ImageView;)Lcom/android/contacts/dialpad/SmartDialerAdapter$ContactInfo;
    .locals 19
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "nameView"    # Landroid/widget/TextView;
    .param p3, "numberView"    # Landroid/widget/TextView;
    .param p4, "callerDetail"    # Landroid/view/View;
    .param p5, "callType"    # Landroid/widget/ImageView;

    .prologue
    .line 448
    const/4 v14, 0x0

    .line 451
    .local v14, "displayLabel":Ljava/lang/String;
    invoke-direct/range {p0 .. p1}, Lcom/android/contacts/dialpad/SmartDialerAdapter;->getCurCursorType(Landroid/database/Cursor;)I

    move-result v3

    if-nez v3, :cond_3

    .line 452
    const/16 v3, 0x8

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 453
    .local v17, "number":Ljava/lang/String;
    const/16 v3, 0xa

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 456
    .local v18, "type":I
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/dialpad/SmartDialerAdapter;->getContactInfoToDisplay(Ljava/lang/String;Landroid/database/Cursor;)Lcom/android/contacts/dialpad/SmartDialerAdapter$ContactInfo;

    move-result-object v13

    .line 458
    .local v13, "ci":Lcom/android/contacts/dialpad/SmartDialerAdapter$ContactInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, v17

    invoke-static {v0, v3}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 459
    const-string v14, ""

    .line 464
    :cond_0
    :goto_0
    packed-switch v18, :pswitch_data_0

    .line 478
    const/4 v3, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 479
    const/4 v3, 0x4

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 492
    .end local v18    # "type":I
    :goto_1
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 498
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u200e"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mCurrentCountryIso:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-static {v4, v0, v5, v7}, Lcom/motorola/contacts/util/PhoneNumberUtilsExt;->formatNumber(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 504
    .local v15, "displayNumber":Ljava/lang/String;
    :goto_2
    new-instance v3, Lcom/android/contacts/dialpad/SmartDialerAdapter$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v3, v0, v1}, Lcom/android/contacts/dialpad/SmartDialerAdapter$2;-><init>(Lcom/android/contacts/dialpad/SmartDialerAdapter;Ljava/lang/String;)V

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 517
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/dialpad/SmartDialerAdapter;->getInputDigits()Ljava/lang/String;

    move-result-object v16

    .line 518
    .local v16, "inputDigits":Ljava/lang/String;
    iget-object v3, v13, Lcom/android/contacts/dialpad/SmartDialerAdapter$ContactInfo;->name:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 519
    const/16 v3, 0x8

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 520
    sget-object v3, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, p2

    invoke-virtual {v0, v15, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 521
    if-eqz v16, :cond_1

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-lt v3, v4, :cond_1

    .line 522
    invoke-virtual/range {p2 .. p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Landroid/text/Spannable;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mQueriedDigits:Ljava/lang/String;

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mHighlightColor:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mHighlightTextColor:I

    invoke-static/range {v3 .. v8}, Lcom/android/contacts/dialpad/Highlighter;->highlight(Landroid/text/Spannable;Ljava/lang/String;ZIII)V

    .line 544
    :cond_1
    :goto_3
    return-object v13

    .line 461
    .end local v15    # "displayNumber":Ljava/lang/String;
    .end local v16    # "inputDigits":Ljava/lang/String;
    .restart local v18    # "type":I
    :cond_2
    iget-object v3, v13, Lcom/android/contacts/dialpad/SmartDialerAdapter$ContactInfo;->name:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 462
    iget v3, v13, Lcom/android/contacts/dialpad/SmartDialerAdapter$ContactInfo;->type:I

    iget-object v4, v13, Lcom/android/contacts/dialpad/SmartDialerAdapter$ContactInfo;->label:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/contacts/dialpad/SmartDialerAdapter;->getDisplayLabel(ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_0

    .line 466
    :pswitch_0
    const v3, 0x7f020070

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 469
    :pswitch_1
    const v3, 0x7f020075

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 472
    :pswitch_2
    const v3, 0x7f020074

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 475
    :pswitch_3
    const v3, 0x7f020076

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 483
    .end local v13    # "ci":Lcom/android/contacts/dialpad/SmartDialerAdapter$ContactInfo;
    .end local v17    # "number":Ljava/lang/String;
    .end local v18    # "type":I
    :cond_3
    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 484
    .restart local v17    # "number":Ljava/lang/String;
    new-instance v13, Lcom/android/contacts/dialpad/SmartDialerAdapter$ContactInfo;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v3}, Lcom/android/contacts/dialpad/SmartDialerAdapter$ContactInfo;-><init>(Lcom/android/contacts/dialpad/SmartDialerAdapter;Lcom/android/contacts/dialpad/SmartDialerAdapter$1;)V

    .line 485
    .restart local v13    # "ci":Lcom/android/contacts/dialpad/SmartDialerAdapter$ContactInfo;
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v13, Lcom/android/contacts/dialpad/SmartDialerAdapter$ContactInfo;->name:Ljava/lang/String;

    .line 486
    const/4 v3, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v13, Lcom/android/contacts/dialpad/SmartDialerAdapter$ContactInfo;->label:Ljava/lang/String;

    .line 487
    const/4 v3, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v13, Lcom/android/contacts/dialpad/SmartDialerAdapter$ContactInfo;->type:I

    .line 488
    const-wide/16 v3, 0x0

    iput-wide v3, v13, Lcom/android/contacts/dialpad/SmartDialerAdapter$ContactInfo;->photoId:J

    .line 489
    iget v3, v13, Lcom/android/contacts/dialpad/SmartDialerAdapter$ContactInfo;->type:I

    iget-object v4, v13, Lcom/android/contacts/dialpad/SmartDialerAdapter$ContactInfo;->label:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/contacts/dialpad/SmartDialerAdapter;->getDisplayLabel(ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_1

    .line 501
    :cond_4
    const-string v15, ""

    .restart local v15    # "displayNumber":Ljava/lang/String;
    goto/16 :goto_2

    .line 526
    .restart local v16    # "inputDigits":Ljava/lang/String;
    :cond_5
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 527
    iget-object v3, v13, Lcom/android/contacts/dialpad/SmartDialerAdapter$ContactInfo;->name:Ljava/lang/String;

    sget-object v4, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 528
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 530
    if-eqz v14, :cond_6

    .line 531
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v6, v3, 0x1

    .line 535
    .local v6, "matchOffset":I
    :goto_4
    if-eqz v16, :cond_1

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-lt v3, v4, :cond_1

    .line 537
    invoke-virtual/range {p3 .. p3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Landroid/text/Spannable;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mQueriedDigits:Ljava/lang/String;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mHighlightColor:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mHighlightTextColor:I

    invoke-static/range {v3 .. v8}, Lcom/android/contacts/dialpad/Highlighter;->highlight(Landroid/text/Spannable;Ljava/lang/String;ZIII)V

    .line 539
    invoke-virtual/range {p2 .. p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Landroid/text/Spannable;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mQueriedDigits:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mHighlightColor:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mHighlightTextColor:I

    invoke-static/range {v7 .. v12}, Lcom/android/contacts/dialpad/Highlighter;->highlight(Landroid/text/Spannable;Ljava/lang/String;ZIII)V

    goto/16 :goto_3

    .line 533
    .end local v6    # "matchOffset":I
    :cond_6
    const/4 v6, 0x1

    .restart local v6    # "matchOffset":I
    goto :goto_4

    .line 464
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method setItemView(Landroid/database/Cursor;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/QuickContactBadge;Landroid/widget/TextView;Landroid/view/View;)V
    .locals 10
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "nameView"    # Landroid/widget/TextView;
    .param p3, "numberView"    # Landroid/widget/TextView;
    .param p4, "callerDetail"    # Landroid/view/View;
    .param p5, "callType"    # Landroid/widget/ImageView;
    .param p6, "picView"    # Landroid/widget/QuickContactBadge;
    .param p7, "dateView"    # Landroid/widget/TextView;
    .param p8, "callButton"    # Landroid/view/View;

    .prologue
    .line 555
    invoke-virtual/range {p0 .. p5}, Lcom/android/contacts/dialpad/SmartDialerAdapter;->setCommonView(Landroid/database/Cursor;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/ImageView;)Lcom/android/contacts/dialpad/SmartDialerAdapter$ContactInfo;

    move-result-object v8

    .line 556
    .local v8, "ci":Lcom/android/contacts/dialpad/SmartDialerAdapter$ContactInfo;
    invoke-direct {p0, p1}, Lcom/android/contacts/dialpad/SmartDialerAdapter;->getCurCursorType(Landroid/database/Cursor;)I

    move-result v3

    if-nez v3, :cond_2

    .line 557
    const/16 v3, 0x8

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 558
    .local v9, "number":Ljava/lang/String;
    const/16 v3, 0x9

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 559
    .local v1, "date":J
    const/high16 v7, 0x40000

    .line 560
    .local v7, "flags":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/32 v5, 0xea60

    invoke-static/range {v1 .. v7}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object v3

    move-object/from16 v0, p7

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 562
    const/4 v3, 0x0

    move-object/from16 v0, p7

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 563
    const/4 v3, 0x0

    invoke-virtual {p5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 570
    .end local v1    # "date":J
    .end local v7    # "flags":I
    :goto_0
    if-eqz p8, :cond_0

    .line 571
    new-instance v3, Lcom/android/contacts/dialpad/SmartDialerAdapter$3;

    invoke-direct {v3, p0, v9}, Lcom/android/contacts/dialpad/SmartDialerAdapter$3;-><init>(Lcom/android/contacts/dialpad/SmartDialerAdapter;Ljava/lang/String;)V

    move-object/from16 v0, p8

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 593
    :cond_0
    iget-object v3, v8, Lcom/android/contacts/dialpad/SmartDialerAdapter$ContactInfo;->name:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 594
    const/4 v3, 0x4

    invoke-virtual {p3, v3}, Landroid/view/View;->setVisibility(I)V

    .line 597
    :cond_1
    iget-wide v3, v8, Lcom/android/contacts/dialpad/SmartDialerAdapter$ContactInfo;->photoId:J

    move-object/from16 v0, p6

    invoke-direct {p0, v0, v3, v4, v9}, Lcom/android/contacts/dialpad/SmartDialerAdapter;->setPhoto(Landroid/widget/QuickContactBadge;JLjava/lang/String;)V

    .line 598
    return-void

    .line 565
    .end local v9    # "number":Ljava/lang/String;
    :cond_2
    const/4 v3, 0x1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 566
    .restart local v9    # "number":Ljava/lang/String;
    const/4 v3, 0x4

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v8, Lcom/android/contacts/dialpad/SmartDialerAdapter$ContactInfo;->photoId:J

    .line 567
    const/16 v3, 0x8

    invoke-virtual {p5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 568
    const/16 v3, 0x8

    move-object/from16 v0, p7

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method startQuery(I)V
    .locals 9
    .param p1, "token"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 656
    packed-switch p1, :pswitch_data_0

    .line 694
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 658
    :pswitch_1
    sget-boolean v0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "start QUERY_MOST_RECENT"

    invoke-direct {p0, v0}, Lcom/android/contacts/dialpad/SmartDialerAdapter;->log(Ljava/lang/String;)V

    .line 659
    :cond_1
    const-string v0, ""

    iput-object v0, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mQueriedDigits:Ljava/lang/String;

    .line 660
    iget-object v0, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mAsyncQueryHandler:Lcom/android/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;

    if-eqz v0, :cond_0

    .line 661
    iget-object v0, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mAsyncQueryHandler:Lcom/android/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 662
    iget-object v0, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mAsyncQueryHandler:Lcom/android/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 663
    iget-object v0, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mAsyncQueryHandler:Lcom/android/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 664
    iget-object v0, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 668
    iget-object v0, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mAsyncQueryHandler:Lcom/android/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;

    sget-object v3, Lcom/android/contacts/dialpad/SmartDialerAdapter;->SMARTDIALER_FUZZY_CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/contacts/dialpad/SmartDialerAdapter;->PHONES_PROJECTION:[Ljava/lang/String;

    move v1, p1

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 674
    :pswitch_2
    iget-object v0, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 676
    sget-boolean v0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "previous query is canceled!"

    invoke-direct {p0, v0}, Lcom/android/contacts/dialpad/SmartDialerAdapter;->log(Ljava/lang/String;)V

    .line 677
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 681
    :cond_3
    invoke-direct {p0}, Lcom/android/contacts/dialpad/SmartDialerAdapter;->getInputDigits()Ljava/lang/String;

    move-result-object v8

    .line 682
    .local v8, "digits":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 683
    iget-object v0, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 685
    :cond_4
    iget-object v0, p0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mMainThreadHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 656
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method updateSingleItemAndTitle()V
    .locals 19

    .prologue
    .line 316
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mFragmentView:Landroid/view/View;

    const v9, 0x7f0700cb

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .line 317
    .local v16, "title":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mFragmentView:Landroid/view/View;

    const v9, 0x7f0700cc

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 318
    .local v11, "expander":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mFragmentView:Landroid/view/View;

    const v9, 0x7f0700cf

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 319
    .local v15, "matchResult":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mFragmentView:Landroid/view/View;

    const v9, 0x7f070158

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 320
    .local v10, "divider":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mFragmentView:Landroid/view/View;

    const v9, 0x7f070152

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/QuickContactBadge;

    .line 321
    .local v7, "picView":Landroid/widget/QuickContactBadge;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mFragmentView:Landroid/view/View;

    const v9, 0x7f070159

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 322
    .local v5, "callerDetail":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mFragmentView:Landroid/view/View;

    const v9, 0x7f070154

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 323
    .local v3, "nameView":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mFragmentView:Landroid/view/View;

    const v9, 0x7f070155

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 324
    .local v4, "numberView":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mFragmentView:Landroid/view/View;

    const v9, 0x7f070153

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 325
    .local v6, "callType":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mFragmentView:Landroid/view/View;

    const v9, 0x7f070156

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 327
    .local v8, "dateView":Landroid/widget/TextView;
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/dialpad/SmartDialerAdapter;->getInputDigits()Ljava/lang/String;

    move-result-object v12

    .line 328
    .local v12, "inputDigits":Ljava/lang/String;
    const/4 v1, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 329
    const/4 v1, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 330
    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 331
    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 332
    const/16 v1, 0x8

    invoke-virtual {v11, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 334
    if-eqz v7, :cond_0

    .line 335
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 339
    :cond_0
    if-eqz v12, :cond_7

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v9, 0x1

    if-ge v1, v9, :cond_7

    .line 340
    invoke-virtual/range {p0 .. p0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    .line 341
    .local v2, "cursor":Landroid/database/Cursor;
    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 342
    sget-boolean v1, Lcom/android/contacts/dialpad/SmartDialerAdapter;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "MostRecent data exists"

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/contacts/dialpad/SmartDialerAdapter;->log(Ljava/lang/String;)V

    .line 343
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/dialpad/SmartDialerAdapter;->isFullSingleItemNeeded()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 344
    const v1, 0x7f0c0288

    invoke-virtual {v15, v1}, Landroid/widget/TextView;->setText(I)V

    .line 345
    const/4 v9, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v9}, Lcom/android/contacts/dialpad/SmartDialerAdapter;->setItemView(Landroid/database/Cursor;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/QuickContactBadge;Landroid/widget/TextView;Landroid/view/View;)V

    .line 439
    :goto_0
    return-void

    .line 348
    :cond_2
    const/16 v1, 0x8

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 349
    const/16 v1, 0x8

    invoke-virtual {v10, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v1, p0

    .line 350
    invoke-virtual/range {v1 .. v6}, Lcom/android/contacts/dialpad/SmartDialerAdapter;->setCommonView(Landroid/database/Cursor;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/ImageView;)Lcom/android/contacts/dialpad/SmartDialerAdapter$ContactInfo;

    .line 351
    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 355
    :cond_3
    sget-boolean v1, Lcom/android/contacts/dialpad/SmartDialerAdapter;->DBG:Z

    if-eqz v1, :cond_4

    const-string v1, "MostRecent data doesn\'t exist"

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/contacts/dialpad/SmartDialerAdapter;->log(Ljava/lang/String;)V

    .line 356
    :cond_4
    const v1, 0x7f0c028b

    invoke-virtual {v15, v1}, Landroid/widget/TextView;->setText(I)V

    .line 357
    const/16 v1, 0x8

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 358
    const/16 v1, 0x8

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 359
    const/16 v1, 0x8

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 360
    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 362
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/dialpad/SmartDialerAdapter;->isFullSingleItemNeeded()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 363
    const/16 v1, 0x8

    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 364
    const/16 v1, 0x8

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 365
    const/16 v1, 0x8

    invoke-virtual {v8, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 367
    :cond_5
    sget-boolean v1, Lcom/android/contacts/dialpad/SmartDialerAdapter;->DBG:Z

    if-eqz v1, :cond_6

    const-string v1, "DisplayMetrics.DENSITY_MEDIUM"

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/contacts/dialpad/SmartDialerAdapter;->log(Ljava/lang/String;)V

    .line 368
    :cond_6
    const/16 v1, 0x8

    invoke-virtual {v10, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 373
    .end local v2    # "cursor":Landroid/database/Cursor;
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    .line 374
    .restart local v2    # "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 376
    if-eqz v2, :cond_d

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_d

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 377
    const/4 v1, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 378
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v14

    .line 379
    .local v14, "matchCount":I
    const/4 v1, 0x1

    if-ne v14, v1, :cond_8

    .line 380
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, " "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v18, 0x7f0c028a

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 386
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mFragmentView:Landroid/view/View;

    const v9, 0x7f0700d0

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ListView;

    .line 387
    .local v13, "mList":Landroid/widget/ListView;
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v17

    .line 389
    .local v17, "visibily":I
    if-nez v17, :cond_9

    .line 390
    const v1, 0x108026b

    invoke-virtual {v11, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 397
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/dialpad/SmartDialerAdapter;->isFullSingleItemNeeded()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 398
    const/4 v9, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v9}, Lcom/android/contacts/dialpad/SmartDialerAdapter;->setItemView(Landroid/database/Cursor;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/QuickContactBadge;Landroid/widget/TextView;Landroid/view/View;)V

    goto/16 :goto_0

    .line 383
    .end local v13    # "mList":Landroid/widget/ListView;
    .end local v17    # "visibily":I
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, " "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v18, 0x7f0c0289

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 393
    .restart local v13    # "mList":Landroid/widget/ListView;
    .restart local v17    # "visibily":I
    :cond_9
    const v1, 0x1080272

    invoke-virtual {v11, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 401
    :cond_a
    const/16 v1, 0x8

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 402
    if-eqz v17, :cond_c

    move-object/from16 v1, p0

    .line 403
    invoke-virtual/range {v1 .. v6}, Lcom/android/contacts/dialpad/SmartDialerAdapter;->setCommonView(Landroid/database/Cursor;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/ImageView;)Lcom/android/contacts/dialpad/SmartDialerAdapter$ContactInfo;

    .line 404
    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 405
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_b

    .line 406
    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 408
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, " "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 410
    :cond_c
    const/16 v1, 0x8

    invoke-virtual {v10, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 411
    const/16 v1, 0x8

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 412
    const/16 v1, 0x8

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 413
    new-instance v1, Lcom/android/contacts/dialpad/SmartDialerAdapter$1;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/android/contacts/dialpad/SmartDialerAdapter$1;-><init>(Lcom/android/contacts/dialpad/SmartDialerAdapter;)V

    invoke-virtual {v5, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 418
    const/16 v1, 0x8

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 423
    .end local v13    # "mList":Landroid/widget/ListView;
    .end local v14    # "matchCount":I
    .end local v17    # "visibily":I
    :cond_d
    sget-boolean v1, Lcom/android/contacts/dialpad/SmartDialerAdapter;->DBG:Z

    if-eqz v1, :cond_e

    const-string v1, "no matched item"

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/contacts/dialpad/SmartDialerAdapter;->log(Ljava/lang/String;)V

    .line 424
    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/dialpad/SmartDialerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v9, 0x7f0c028c

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 425
    const/16 v1, 0x8

    invoke-virtual {v11, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 426
    const/16 v1, 0x8

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 427
    const/16 v1, 0x8

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 428
    const/16 v1, 0x8

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 429
    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 431
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/dialpad/SmartDialerAdapter;->isFullSingleItemNeeded()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 432
    const/16 v1, 0x8

    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 433
    const/16 v1, 0x8

    invoke-virtual {v8, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 435
    :cond_f
    const/16 v1, 0x8

    invoke-virtual {v10, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0
.end method
