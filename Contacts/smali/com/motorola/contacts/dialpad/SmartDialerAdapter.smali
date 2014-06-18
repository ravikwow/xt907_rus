.class public Lcom/motorola/contacts/dialpad/SmartDialerAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "SmartDialerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/contacts/dialpad/SmartDialerAdapter$MyObserver;,
        Lcom/motorola/contacts/dialpad/SmartDialerAdapter$QueryParam;,
        Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ContactInfo;,
        Lcom/motorola/contacts/dialpad/SmartDialerAdapter$MySyncQueryHandler;,
        Lcom/motorola/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;,
        Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ScreenSize;
    }
.end annotation


# static fields
.field private static final CONTACTS_COLUMN_NUMBER:I

.field private static final DBG:Z

.field private static final PEOPLE_PHONE_PROJECTION:[Ljava/lang/String;

.field private static final PHONES_PROJECTION:[Ljava/lang/String;

.field private static final SCREEN_SIZE_MAP:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ScreenSize;",
            ">;"
        }
    .end annotation
.end field

.field public static final SMARTDIALER_EXACT_CONTENT_URI:Landroid/net/Uri;

.field private static final SMARTDIALER_FUZZY_CONTENT_URI:Landroid/net/Uri;

.field private static final VDBG:Z


# instance fields
.field private final CONTACTINFO_EMPTY:Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ContactInfo;

.field private activityGone:Z

.field private activityPaused:Z

.field private mAdapterView:Landroid/view/View;

.field private mAsyncQueryHandler:Lcom/motorola/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;

.field public mAutoExpandList:Z

.field private mChangeObserver:Lcom/motorola/contacts/dialpad/SmartDialerAdapter$MyObserver;

.field private mContactInfoCache:Lcom/android/contacts/util/ExpirableCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/contacts/util/ExpirableCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ContactInfo;",
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

.field private mSyncQueryHandler:Lcom/motorola/contacts/dialpad/SmartDialerAdapter$MySyncQueryHandler;

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

    .line 91
    sget-boolean v0, Lcom/android/contacts/ContactsUtils;->DBG:Z

    sput-boolean v0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->DBG:Z

    .line 92
    sget-boolean v0, Lcom/android/contacts/ContactsUtils;->VDBG:Z

    sput-boolean v0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->VDBG:Z

    .line 139
    const/16 v0, 0x11

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

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "lookup"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "starred"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "times_contacted"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "sort_key"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "number"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "date"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "name"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "numbertype"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "numberlabel"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "group_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->PHONES_PROJECTION:[Ljava/lang/String;

    .line 182
    const/4 v0, 0x7

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

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "lookup"

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->PEOPLE_PHONE_PROJECTION:[Ljava/lang/String;

    .line 191
    sget-object v0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->PEOPLE_PHONE_PROJECTION:[Ljava/lang/String;

    array-length v0, v0

    sput v0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->CONTACTS_COLUMN_NUMBER:I

    .line 210
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->SCREEN_SIZE_MAP:Ljava/util/Hashtable;

    .line 213
    sget-object v0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->SCREEN_SIZE_MAP:Ljava/util/Hashtable;

    const v1, 0x4b000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ScreenSize;->VGA:Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ScreenSize;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 696
    const-string v0, "content://com.android.contacts/smartdialer/fuzzy_match_query"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->SMARTDIALER_FUZZY_CONTENT_URI:Landroid/net/Uri;

    .line 698
    const-string v0, "content://com.android.contacts/smartdialer/exact_match_query"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->SMARTDIALER_EXACT_CONTENT_URI:Landroid/net/Uri;

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

    .line 220
    invoke-direct {p0, p1, p2, v4}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 100
    iput-object v4, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mContext:Landroid/content/Context;

    .line 101
    iput-object v4, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mResolver:Landroid/content/ContentResolver;

    .line 102
    iput-object v4, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mdialpadFragment:Lcom/android/contacts/dialpad/DialpadFragment;

    .line 105
    iput-object v4, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mMostRecentCursor:Landroid/database/Cursor;

    .line 106
    iput-boolean v5, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->misVGA:Z

    .line 108
    iput-object v4, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mMatchedCursor:Landroid/database/Cursor;

    .line 109
    iput-object v4, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mAsyncQueryHandler:Lcom/motorola/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;

    .line 110
    iput-object v4, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mSyncQueryHandler:Lcom/motorola/contacts/dialpad/SmartDialerAdapter$MySyncQueryHandler;

    .line 111
    iput-object v4, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mLabelArray:[Ljava/lang/CharSequence;

    .line 113
    const-string v2, ""

    iput-object v2, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mQueriedDigits:Ljava/lang/String;

    .line 130
    iput-boolean v5, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mAutoExpandList:Z

    .line 695
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mContactStartTime:J

    .line 908
    new-instance v2, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ContactInfo;

    invoke-direct {v2, p0, v4}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ContactInfo;-><init>(Lcom/motorola/contacts/dialpad/SmartDialerAdapter;Lcom/motorola/contacts/dialpad/SmartDialerAdapter$1;)V

    iput-object v2, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->CONTACTINFO_EMPTY:Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ContactInfo;

    .line 988
    new-instance v2, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$4;

    invoke-direct {v2, p0}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$4;-><init>(Lcom/motorola/contacts/dialpad/SmartDialerAdapter;)V

    iput-object v2, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mMainThreadHandler:Landroid/os/Handler;

    .line 1055
    iput-boolean v5, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->activityPaused:Z

    .line 1056
    iput-boolean v5, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->activityGone:Z

    .line 222
    check-cast p5, Lcom/android/contacts/dialpad/DialpadFragment;

    .end local p5    # "o":Ljava/lang/Object;
    iput-object p5, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mdialpadFragment:Lcom/android/contacts/dialpad/DialpadFragment;

    .line 223
    iput-object p1, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mContext:Landroid/content/Context;

    .line 224
    iget-object v2, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mResolver:Landroid/content/ContentResolver;

    .line 225
    iget-object v2, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v2, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mAdapterView:Landroid/view/View;

    .line 226
    iput-object p3, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mFragmentView:Landroid/view/View;

    .line 227
    iput-object p4, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mCurrentCountryIso:Ljava/lang/String;

    .line 229
    iget-object v2, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070019

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mHighlightColor:I

    .line 230
    const/4 v2, -0x1

    iput v2, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mHighlightTextColor:I

    .line 233
    iget-object v2, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/contacts/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/ContactPhotoManager;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    .line 234
    const/16 v2, 0x64

    invoke-static {v2}, Lcom/android/contacts/util/ExpirableCache;->create(I)Lcom/android/contacts/util/ExpirableCache;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mContactInfoCache:Lcom/android/contacts/util/ExpirableCache;

    .line 239
    invoke-virtual {p0, p1}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->getScreenSize(Landroid/content/Context;)Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ScreenSize;

    move-result-object v2

    sget-object v3, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ScreenSize;->VGA:Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ScreenSize;

    if-ne v2, v3, :cond_0

    .line 240
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->misVGA:Z

    .line 241
    sget-boolean v2, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "It is VGA Screen"

    invoke-direct {p0, v2}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->log(Ljava/lang/String;)V

    .line 245
    :cond_0
    iget-object v2, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v2, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mDensity:I

    .line 248
    new-instance v2, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;

    invoke-direct {v2, p0, p1}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;-><init>(Lcom/motorola/contacts/dialpad/SmartDialerAdapter;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mAsyncQueryHandler:Lcom/motorola/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;

    .line 251
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "SmartDialer Query"

    const/16 v3, 0xa

    invoke-direct {v0, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 253
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 255
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 256
    .local v1, "threadlooper":Landroid/os/Looper;
    if-eqz v1, :cond_1

    .line 257
    new-instance v2, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$MySyncQueryHandler;

    invoke-direct {v2, p0, v1}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$MySyncQueryHandler;-><init>(Lcom/motorola/contacts/dialpad/SmartDialerAdapter;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mSyncQueryHandler:Lcom/motorola/contacts/dialpad/SmartDialerAdapter$MySyncQueryHandler;

    .line 260
    :cond_1
    new-instance v2, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$MyObserver;

    invoke-direct {v2, p0}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$MyObserver;-><init>(Lcom/motorola/contacts/dialpad/SmartDialerAdapter;)V

    iput-object v2, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mChangeObserver:Lcom/motorola/contacts/dialpad/SmartDialerAdapter$MyObserver;

    .line 261
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/contacts/dialpad/SmartDialerAdapter;)Lcom/android/contacts/dialpad/DialpadFragment;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/contacts/dialpad/SmartDialerAdapter;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mdialpadFragment:Lcom/android/contacts/dialpad/DialpadFragment;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/motorola/contacts/dialpad/SmartDialerAdapter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/contacts/dialpad/SmartDialerAdapter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mQueriedDigits:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/motorola/contacts/dialpad/SmartDialerAdapter;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/contacts/dialpad/SmartDialerAdapter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->queryContactDetail(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/motorola/contacts/dialpad/SmartDialerAdapter;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/contacts/dialpad/SmartDialerAdapter;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mMainThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/motorola/contacts/dialpad/SmartDialerAdapter;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/contacts/dialpad/SmartDialerAdapter;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->getInputDigits()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/motorola/contacts/dialpad/SmartDialerAdapter;)Lcom/motorola/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/contacts/dialpad/SmartDialerAdapter;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mAsyncQueryHandler:Lcom/motorola/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;

    return-object v0
.end method

.method static synthetic access$1600()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->SMARTDIALER_FUZZY_CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1700()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->PHONES_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->PEOPLE_PHONE_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/motorola/contacts/dialpad/SmartDialerAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/motorola/contacts/dialpad/SmartDialerAdapter;

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->activityPaused:Z

    return v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 86
    sget-boolean v0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->DBG:Z

    return v0
.end method

.method static synthetic access$300(Lcom/motorola/contacts/dialpad/SmartDialerAdapter;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/contacts/dialpad/SmartDialerAdapter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/motorola/contacts/dialpad/SmartDialerAdapter;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/contacts/dialpad/SmartDialerAdapter;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mFragmentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/motorola/contacts/dialpad/SmartDialerAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/contacts/dialpad/SmartDialerAdapter;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/motorola/contacts/dialpad/SmartDialerAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/motorola/contacts/dialpad/SmartDialerAdapter;

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->activityGone:Z

    return v0
.end method

.method static synthetic access$700(Lcom/motorola/contacts/dialpad/SmartDialerAdapter;)Landroid/database/Cursor;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/contacts/dialpad/SmartDialerAdapter;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mMostRecentCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$702(Lcom/motorola/contacts/dialpad/SmartDialerAdapter;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/contacts/dialpad/SmartDialerAdapter;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mMostRecentCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$800(Lcom/motorola/contacts/dialpad/SmartDialerAdapter;)J
    .locals 2
    .param p0, "x0"    # Lcom/motorola/contacts/dialpad/SmartDialerAdapter;

    .prologue
    .line 86
    iget-wide v0, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mContactStartTime:J

    return-wide v0
.end method

.method static synthetic access$802(Lcom/motorola/contacts/dialpad/SmartDialerAdapter;J)J
    .locals 0
    .param p0, "x0"    # Lcom/motorola/contacts/dialpad/SmartDialerAdapter;
    .param p1, "x1"    # J

    .prologue
    .line 86
    iput-wide p1, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mContactStartTime:J

    return-wide p1
.end method

.method static synthetic access$900(Lcom/motorola/contacts/dialpad/SmartDialerAdapter;)Landroid/database/Cursor;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/contacts/dialpad/SmartDialerAdapter;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mMatchedCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$902(Lcom/motorola/contacts/dialpad/SmartDialerAdapter;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/contacts/dialpad/SmartDialerAdapter;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mMatchedCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method private getContactInfoToDisplay(Ljava/lang/String;Landroid/database/Cursor;)Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ContactInfo;
    .locals 11
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    const-wide/16 v9, -0x1

    const/16 v8, 0xf

    const/16 v7, 0xe

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 820
    const/4 v0, 0x0

    .line 823
    .local v0, "ci":Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ContactInfo;
    iget-object v3, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mdialpadFragment:Lcom/android/contacts/dialpad/DialpadFragment;

    invoke-virtual {v3, p1}, Lcom/android/contacts/dialpad/DialpadFragment;->getVoiceMailTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 824
    new-instance v0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ContactInfo;

    .end local v0    # "ci":Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ContactInfo;
    invoke-direct {v0, p0, v5}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ContactInfo;-><init>(Lcom/motorola/contacts/dialpad/SmartDialerAdapter;Lcom/motorola/contacts/dialpad/SmartDialerAdapter$1;)V

    .line 825
    .restart local v0    # "ci":Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ContactInfo;
    iget-object v3, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mdialpadFragment:Lcom/android/contacts/dialpad/DialpadFragment;

    invoke-virtual {v3, p1}, Lcom/android/contacts/dialpad/DialpadFragment;->getVoiceMailTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ContactInfo;->name:Ljava/lang/String;

    .line 826
    const-wide/16 v3, -0x1388

    iput-wide v3, v0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ContactInfo;->photoId:J

    .line 827
    invoke-interface {p2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ContactInfo;->label:Ljava/lang/String;

    .line 828
    invoke-interface {p2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ContactInfo;->type:I

    move-object v1, v0

    .line 868
    .end local v0    # "ci":Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ContactInfo;
    .local v1, "ci":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 830
    .end local v1    # "ci":Ljava/lang/Object;
    .restart local v0    # "ci":Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ContactInfo;
    :cond_0
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 831
    new-instance v0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ContactInfo;

    .end local v0    # "ci":Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ContactInfo;
    invoke-direct {v0, p0, v5}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ContactInfo;-><init>(Lcom/motorola/contacts/dialpad/SmartDialerAdapter;Lcom/motorola/contacts/dialpad/SmartDialerAdapter$1;)V

    .line 832
    .restart local v0    # "ci":Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ContactInfo;
    iget-object v3, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x104030b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ContactInfo;->name:Ljava/lang/String;

    .line 834
    const-wide/16 v3, -0x1389

    iput-wide v3, v0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ContactInfo;->photoId:J

    .line 835
    const-string v3, ""

    iput-object v3, v0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ContactInfo;->label:Ljava/lang/String;

    .line 836
    iput v6, v0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ContactInfo;->type:I

    move-object v1, v0

    .line 837
    .restart local v1    # "ci":Ljava/lang/Object;
    goto :goto_0

    .line 841
    .end local v1    # "ci":Ljava/lang/Object;
    :cond_1
    iget-object v3, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mContactInfoCache:Lcom/android/contacts/util/ExpirableCache;

    invoke-virtual {v3, p1}, Lcom/android/contacts/util/ExpirableCache;->getPossiblyExpired(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "ci":Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ContactInfo;
    check-cast v0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ContactInfo;

    .line 842
    .restart local v0    # "ci":Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ContactInfo;
    if-nez v0, :cond_2

    .line 843
    new-instance v0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ContactInfo;

    .end local v0    # "ci":Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ContactInfo;
    invoke-direct {v0, p0, v5}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ContactInfo;-><init>(Lcom/motorola/contacts/dialpad/SmartDialerAdapter;Lcom/motorola/contacts/dialpad/SmartDialerAdapter$1;)V

    .line 844
    .restart local v0    # "ci":Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ContactInfo;
    const/16 v3, 0xd

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ContactInfo;->name:Ljava/lang/String;

    .line 845
    invoke-interface {p2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ContactInfo;->label:Ljava/lang/String;

    .line 846
    invoke-interface {p2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ContactInfo;->type:I

    .line 847
    iget-object v3, v0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ContactInfo;->name:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 848
    iput-wide v9, v0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ContactInfo;->photoId:J

    .line 854
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mContactInfoCache:Lcom/android/contacts/util/ExpirableCache;

    invoke-virtual {v3, p1}, Lcom/android/contacts/util/ExpirableCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_5

    .line 855
    sget-boolean v3, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->DBG:Z

    if-eqz v3, :cond_3

    const-string v3, "getContactInfoToDisplay():  schedule QUERY_CONTACTS_DETAIL"

    invoke-direct {p0, v3}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->log(Ljava/lang/String;)V

    .line 856
    :cond_3
    iget-object v3, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mSyncQueryHandler:Lcom/motorola/contacts/dialpad/SmartDialerAdapter$MySyncQueryHandler;

    const/16 v4, 0x3ec

    invoke-static {v3, v4, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 857
    .local v2, "msg":Landroid/os/Message;
    sget-boolean v3, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->DBG:Z

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendContactsMsg = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->log(Ljava/lang/String;)V

    .line 858
    :cond_4
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 861
    .end local v2    # "msg":Landroid/os/Message;
    :cond_5
    if-nez v0, :cond_6

    .line 862
    new-instance v0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ContactInfo;

    .end local v0    # "ci":Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ContactInfo;
    invoke-direct {v0, p0, v5}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ContactInfo;-><init>(Lcom/motorola/contacts/dialpad/SmartDialerAdapter;Lcom/motorola/contacts/dialpad/SmartDialerAdapter$1;)V

    .line 863
    .restart local v0    # "ci":Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ContactInfo;
    iput-object v5, v0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ContactInfo;->name:Ljava/lang/String;

    .line 864
    iput-object v5, v0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ContactInfo;->label:Ljava/lang/String;

    .line 865
    iput v6, v0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ContactInfo;->type:I

    .line 866
    iput-wide v9, v0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ContactInfo;->photoId:J

    :cond_6
    move-object v1, v0

    .line 868
    .restart local v1    # "ci":Ljava/lang/Object;
    goto/16 :goto_0

    .line 850
    .end local v1    # "ci":Ljava/lang/Object;
    :cond_7
    const-wide/16 v3, 0x0

    iput-wide v3, v0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ContactInfo;->photoId:J

    goto :goto_1
.end method

.method private getContactQueryParam(Ljava/lang/String;)Lcom/motorola/contacts/dialpad/SmartDialerAdapter$QueryParam;
    .locals 5
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 964
    new-instance v0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$QueryParam;

    invoke-direct {v0, p0, v4}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$QueryParam;-><init>(Lcom/motorola/contacts/dialpad/SmartDialerAdapter;Lcom/motorola/contacts/dialpad/SmartDialerAdapter$1;)V

    .line 966
    .local v0, "param":Lcom/motorola/contacts/dialpad/SmartDialerAdapter$QueryParam;
    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$QueryParam;->uri:Landroid/net/Uri;

    .line 967
    const/4 v1, 0x6

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

    const/4 v2, 0x5

    const-string v3, "lookup"

    aput-object v3, v1, v2

    iput-object v1, v0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$QueryParam;->projection:[Ljava/lang/String;

    .line 975
    iput-object v4, v0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$QueryParam;->selection:Ljava/lang/String;

    .line 976
    iput-object v4, v0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$QueryParam;->selectionArgs:[Ljava/lang/String;

    .line 977
    iput-object v4, v0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$QueryParam;->orderBy:Ljava/lang/String;

    .line 978
    return-object v0
.end method

.method private getCurCursorType(Landroid/database/Cursor;)I
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v2, 0x1

    .line 652
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    .line 654
    .local v0, "columnCount":I
    sget v3, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->CONTACTS_COLUMN_NUMBER:I

    if-ne v0, v3, :cond_1

    .line 661
    :cond_0
    :goto_0
    return v2

    .line 657
    :cond_1
    const/16 v3, 0x10

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 658
    .local v1, "group_id":Ljava/lang/String;
    const-string v3, "1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 660
    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 661
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 663
    :cond_3
    sget-boolean v2, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->DBG:Z

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

    invoke-direct {p0, v2}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->log(Ljava/lang/String;)V

    .line 664
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
    .line 673
    iget-object v0, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mLabelArray:[Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    .line 674
    iget-object v0, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mLabelArray:[Ljava/lang/CharSequence;

    .line 676
    :cond_0
    iget-object v0, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mLabelArray:[Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2, v1}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getDisplayLabel(Landroid/content/Context;ILjava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getInputDigits()Ljava/lang/String;
    .locals 3

    .prologue
    .line 683
    iget-object v1, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mdialpadFragment:Lcom/android/contacts/dialpad/DialpadFragment;

    invoke-virtual {v1}, Lcom/android/contacts/dialpad/DialpadFragment;->getDigitsWidget()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/contacts/dialpad/SmartDialerUtil;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 684
    .local v0, "str":Ljava/lang/String;
    sget-boolean v1, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->DBG:Z

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

    invoke-direct {p0, v1}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->log(Ljava/lang/String;)V

    .line 685
    :cond_0
    return-object v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1148
    const-string v0, "SmartDialerAdapter"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    return-void
.end method

.method private queryContactDetail(Ljava/lang/String;)V
    .locals 18
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 911
    const/4 v10, 0x0

    .line 912
    .local v10, "detailCursor":Landroid/database/Cursor;
    const-wide/16 v14, -0x1

    .line 913
    .local v14, "photoId":J
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 953
    :cond_0
    :goto_0
    return-void

    .line 916
    :cond_1
    invoke-direct/range {p0 .. p1}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->getContactQueryParam(Ljava/lang/String;)Lcom/motorola/contacts/dialpad/SmartDialerAdapter$QueryParam;

    move-result-object v16

    .line 917
    .local v16, "queryParam":Lcom/motorola/contacts/dialpad/SmartDialerAdapter$QueryParam;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$QueryParam;->uri:Landroid/net/Uri;

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$QueryParam;->projection:[Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$QueryParam;->selection:Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$QueryParam;->selectionArgs:[Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$QueryParam;->orderBy:Ljava/lang/String;

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 923
    if-eqz v10, :cond_3

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 924
    const-string v1, "photo_id"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 926
    const-string v1, "display_name"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 928
    .local v13, "name":Ljava/lang/String;
    const-string v1, "label"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 930
    .local v11, "label":Ljava/lang/String;
    const-string v1, "type"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 931
    .local v17, "type":I
    const-string v1, "_id"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 933
    .local v8, "contactId":J
    const-string v1, "lookup"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 935
    .local v12, "lookupKey":Ljava/lang/String;
    new-instance v7, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ContactInfo;

    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v1}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ContactInfo;-><init>(Lcom/motorola/contacts/dialpad/SmartDialerAdapter;Lcom/motorola/contacts/dialpad/SmartDialerAdapter$1;)V

    .line 936
    .local v7, "ci":Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ContactInfo;
    iput-object v13, v7, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ContactInfo;->name:Ljava/lang/String;

    .line 937
    move/from16 v0, v17

    iput v0, v7, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ContactInfo;->type:I

    .line 938
    iput-object v11, v7, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ContactInfo;->label:Ljava/lang/String;

    .line 939
    iput-wide v14, v7, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ContactInfo;->photoId:J

    .line 940
    iput-wide v8, v7, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ContactInfo;->contactId:J

    .line 941
    iput-object v12, v7, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ContactInfo;->lookupKey:Ljava/lang/String;

    .line 942
    sget-boolean v1, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->DBG:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mContactInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->log(Ljava/lang/String;)V

    .line 943
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mContactInfoCache:Lcom/android/contacts/util/ExpirableCache;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v7}, Lcom/android/contacts/util/ExpirableCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 950
    .end local v7    # "ci":Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ContactInfo;
    .end local v8    # "contactId":J
    .end local v11    # "label":Ljava/lang/String;
    .end local v12    # "lookupKey":Ljava/lang/String;
    .end local v13    # "name":Ljava/lang/String;
    .end local v17    # "type":I
    :goto_1
    if-eqz v10, :cond_0

    .line 951
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 946
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mContactInfoCache:Lcom/android/contacts/util/ExpirableCache;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->CONTACTINFO_EMPTY:Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ContactInfo;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v2}, Lcom/android/contacts/util/ExpirableCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private setPhoto(Landroid/widget/QuickContactBadge;JLjava/lang/String;Landroid/net/Uri;)V
    .locals 2
    .param p1, "view"    # Landroid/widget/QuickContactBadge;
    .param p2, "photoId"    # J
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "contactUri"    # Landroid/net/Uri;

    .prologue
    .line 872
    invoke-virtual {p1, p5}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 873
    iget-object v0, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/android/contacts/ContactPhotoManager;->loadThumbnail(Landroid/widget/ImageView;JZ)V

    .line 874
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v1, 0x0

    .line 265
    const v0, 0x7f060133

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 266
    .local v2, "nameView":Landroid/widget/TextView;
    const v0, 0x7f060134

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 267
    .local v3, "numberView":Landroid/widget/TextView;
    const v0, 0x7f060131

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/QuickContactBadge;

    .line 268
    .local v6, "picView":Landroid/widget/QuickContactBadge;
    const v0, 0x7f060136

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 269
    .local v8, "callButton":Landroid/view/View;
    const v0, 0x7f060138

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 270
    .local v4, "callerDetail":Landroid/view/View;
    const v0, 0x7f060132

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 271
    .local v5, "callType":Landroid/widget/ImageView;
    const v0, 0x7f060135

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 273
    .local v7, "dateView":Landroid/widget/TextView;
    invoke-virtual {v6, v1}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    .line 275
    invoke-virtual {p1, v1}, Landroid/view/View;->setClickable(Z)V

    .line 276
    const/4 v9, 0x0

    .line 277
    .local v9, "cursorPosition":I
    if-eqz p3, :cond_0

    if-eqz v4, :cond_0

    .line 278
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v9

    .line 279
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_0
    move-object v0, p0

    move-object v1, p3

    .line 281
    invoke-virtual/range {v0 .. v8}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->setItemView(Landroid/database/Cursor;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/QuickContactBadge;Landroid/widget/TextView;Landroid/view/View;)V

    .line 283
    return-void
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 297
    monitor-enter p0

    .line 298
    :try_start_0
    iget-object v0, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mCursor:Landroid/database/Cursor;

    if-ne p1, v0, :cond_0

    .line 299
    monitor-exit p0

    .line 315
    :goto_0
    return-void

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 302
    iget-object v0, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 304
    :cond_1
    iput-object p1, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mCursor:Landroid/database/Cursor;

    .line 305
    if-eqz p1, :cond_2

    .line 306
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mRowIDColumn:I

    .line 307
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mDataValid:Z

    .line 308
    invoke-virtual {p0}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->notifyDataSetChanged()V

    .line 314
    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 310
    :cond_2
    const/4 v0, -0x1

    :try_start_1
    iput v0, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mRowIDColumn:I

    .line 311
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mDataValid:Z

    .line 312
    invoke-virtual {p0}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->notifyDataSetInvalidated()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public destroyCleanUp()V
    .locals 2

    .prologue
    .line 1093
    sget-boolean v0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "destoryCleanUp"

    invoke-direct {p0, v0}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->log(Ljava/lang/String;)V

    .line 1094
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->activityGone:Z

    .line 1095
    new-instance v0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$5;

    const-string v1, "SmartDialer CloseCursor"

    invoke-direct {v0, p0, v1}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$5;-><init>(Lcom/motorola/contacts/dialpad/SmartDialerAdapter;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$5;->start()V

    .line 1109
    iget-object v0, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mSyncQueryHandler:Lcom/motorola/contacts/dialpad/SmartDialerAdapter$MySyncQueryHandler;

    if-eqz v0, :cond_1

    .line 1110
    iget-object v0, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mSyncQueryHandler:Lcom/motorola/contacts/dialpad/SmartDialerAdapter$MySyncQueryHandler;

    invoke-virtual {v0}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$MySyncQueryHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 1112
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mAsyncQueryHandler:Lcom/motorola/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;

    .line 1113
    return-void
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 320
    int-to-long v0, p1

    return-wide v0
.end method

.method getScreenSize(Landroid/content/Context;)Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ScreenSize;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1121
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v1, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1122
    .local v1, "x":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v2, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1124
    .local v2, "y":I
    sget-object v3, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->SCREEN_SIZE_MAP:Ljava/util/Hashtable;

    mul-int v4, v1, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ScreenSize;

    .line 1126
    .local v0, "sz":Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ScreenSize;
    if-nez v0, :cond_0

    .line 1127
    sget-object v0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ScreenSize;->UNKNOWN:Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ScreenSize;

    .line 1129
    .end local v0    # "sz":Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ScreenSize;
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

    .line 287
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    .line 288
    .local v0, "cursorPresent":Z
    :goto_0
    iput-boolean p3, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mAutoRequery:Z

    .line 289
    iput-object p2, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mCursor:Landroid/database/Cursor;

    .line 290
    iput-boolean v0, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mDataValid:Z

    .line 291
    iput-object p1, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mContext:Landroid/content/Context;

    .line 292
    iput v1, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mRowIDColumn:I

    .line 293
    return-void

    .end local v0    # "cursorPresent":Z
    :cond_0
    move v0, v1

    .line 287
    goto :goto_0
.end method

.method public invalidateCache()V
    .locals 1

    .prologue
    .line 689
    iget-object v0, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mContactInfoCache:Lcom/android/contacts/util/ExpirableCache;

    invoke-virtual {v0}, Lcom/android/contacts/util/ExpirableCache;->expireAll()V

    .line 690
    return-void
.end method

.method public isFullSingleItemNeeded()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1135
    iget-object v1, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_0

    iget v1, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mDensity:I

    const/16 v2, 0xa0

    if-eq v1, v2, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->misVGA:Z

    if-eqz v1, :cond_2

    .line 1139
    :cond_1
    const/4 v0, 0x0

    .line 1143
    :cond_2
    return v0
.end method

.method public pauseCleanUp()V
    .locals 2

    .prologue
    .line 1077
    sget-boolean v0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "pauseCleanUp"

    invoke-direct {p0, v0}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->log(Ljava/lang/String;)V

    .line 1078
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->activityPaused:Z

    .line 1079
    invoke-virtual {p0}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->invalidateCache()V

    .line 1080
    iget-object v0, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mAsyncQueryHandler:Lcom/motorola/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;

    if-eqz v0, :cond_1

    .line 1081
    iget-object v0, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mAsyncQueryHandler:Lcom/motorola/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;->cancelOperation(I)V

    .line 1082
    iget-object v0, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mAsyncQueryHandler:Lcom/motorola/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;->cancelOperation(I)V

    .line 1083
    iget-object v0, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mAsyncQueryHandler:Lcom/motorola/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;->cancelOperation(I)V

    .line 1085
    :cond_1
    iget-object v0, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mSyncQueryHandler:Lcom/motorola/contacts/dialpad/SmartDialerAdapter$MySyncQueryHandler;

    if-eqz v0, :cond_2

    .line 1086
    iget-object v0, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mSyncQueryHandler:Lcom/motorola/contacts/dialpad/SmartDialerAdapter$MySyncQueryHandler;

    const/16 v1, 0x3ec

    invoke-virtual {v0, v1}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$MySyncQueryHandler;->removeMessages(I)V

    .line 1089
    :cond_2
    iget-object v0, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mChangeObserver:Lcom/motorola/contacts/dialpad/SmartDialerAdapter$MyObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1090
    return-void
.end method

.method public resumeQuery()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1058
    sget-boolean v2, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "resumeQuery"

    invoke-direct {p0, v2}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->log(Ljava/lang/String;)V

    .line 1059
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->activityPaused:Z

    .line 1060
    iget-object v2, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mFragmentView:Landroid/view/View;

    const v3, 0x7f0600bb

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1062
    .local v0, "input":Ljava/lang/CharSequence;
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/contacts/dialpad/SmartDialerUtil;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1063
    .local v1, "inputDigits":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 1064
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v5, :cond_2

    .line 1065
    const/16 v2, 0x3eb

    invoke-virtual {p0, v2}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->startQuery(I)V

    .line 1071
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mChangeObserver:Lcom/motorola/contacts/dialpad/SmartDialerAdapter$MyObserver;

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1073
    iget-object v2, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

    iget-object v4, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mChangeObserver:Lcom/motorola/contacts/dialpad/SmartDialerAdapter$MyObserver;

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1074
    return-void

    .line 1067
    :cond_2
    const/16 v2, 0x3e8

    invoke-virtual {p0, v2}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->startQuery(I)V

    goto :goto_0
.end method

.method setCommonView(Landroid/database/Cursor;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/ImageView;)Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ContactInfo;
    .locals 19
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "nameView"    # Landroid/widget/TextView;
    .param p3, "numberView"    # Landroid/widget/TextView;
    .param p4, "callerDetail"    # Landroid/view/View;
    .param p5, "callType"    # Landroid/widget/ImageView;

    .prologue
    .line 467
    const/4 v14, 0x0

    .line 470
    .local v14, "displayLabel":Ljava/lang/String;
    invoke-direct/range {p0 .. p1}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->getCurCursorType(Landroid/database/Cursor;)I

    move-result v3

    if-nez v3, :cond_3

    .line 471
    const/16 v3, 0xa

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 472
    .local v17, "number":Ljava/lang/String;
    const/16 v3, 0xc

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 475
    .local v18, "type":I
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->getContactInfoToDisplay(Ljava/lang/String;Landroid/database/Cursor;)Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ContactInfo;

    move-result-object v13

    .line 477
    .local v13, "ci":Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ContactInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, v17

    invoke-static {v0, v3}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 478
    const-string v14, ""

    .line 483
    :cond_0
    :goto_0
    packed-switch v18, :pswitch_data_0

    .line 497
    const/4 v3, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 498
    const/4 v3, 0x4

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 516
    .end local v18    # "type":I
    :goto_1
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 522
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u200e"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mCurrentCountryIso:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-static {v4, v0, v5, v7}, Lcom/motorola/internal/telephony/PhoneNumberUtilsExt;->formatNumber(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 528
    .local v15, "displayNumber":Ljava/lang/String;
    :goto_2
    new-instance v3, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v3, v0, v1}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$2;-><init>(Lcom/motorola/contacts/dialpad/SmartDialerAdapter;Ljava/lang/String;)V

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 557
    invoke-direct/range {p0 .. p0}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->getInputDigits()Ljava/lang/String;

    move-result-object v16

    .line 558
    .local v16, "inputDigits":Ljava/lang/String;
    iget-object v3, v13, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ContactInfo;->name:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 559
    const/16 v3, 0x8

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 560
    sget-object v3, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, p2

    invoke-virtual {v0, v15, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 561
    if-eqz v16, :cond_1

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-lt v3, v4, :cond_1

    .line 562
    invoke-virtual/range {p2 .. p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Landroid/text/Spannable;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mQueriedDigits:Ljava/lang/String;

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mHighlightColor:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mHighlightTextColor:I

    invoke-static/range {v3 .. v8}, Lcom/motorola/contacts/dialpad/Highlighter;->highlight(Landroid/text/Spannable;Ljava/lang/String;ZIII)V

    .line 584
    :cond_1
    :goto_3
    return-object v13

    .line 480
    .end local v15    # "displayNumber":Ljava/lang/String;
    .end local v16    # "inputDigits":Ljava/lang/String;
    .restart local v18    # "type":I
    :cond_2
    iget-object v3, v13, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ContactInfo;->name:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 481
    iget v3, v13, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ContactInfo;->type:I

    iget-object v4, v13, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ContactInfo;->label:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->getDisplayLabel(ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_0

    .line 485
    :pswitch_0
    const v3, 0x7f020034

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 488
    :pswitch_1
    const v3, 0x7f020036

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 491
    :pswitch_2
    const v3, 0x7f020035

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 494
    :pswitch_3
    const v3, 0x7f020037

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 502
    .end local v13    # "ci":Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ContactInfo;
    .end local v17    # "number":Ljava/lang/String;
    .end local v18    # "type":I
    :cond_3
    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 503
    .restart local v17    # "number":Ljava/lang/String;
    new-instance v13, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ContactInfo;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v3}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ContactInfo;-><init>(Lcom/motorola/contacts/dialpad/SmartDialerAdapter;Lcom/motorola/contacts/dialpad/SmartDialerAdapter$1;)V

    .line 504
    .restart local v13    # "ci":Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ContactInfo;
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v13, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ContactInfo;->name:Ljava/lang/String;

    .line 505
    const/4 v3, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v13, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ContactInfo;->label:Ljava/lang/String;

    .line 506
    const/4 v3, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v13, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ContactInfo;->type:I

    .line 507
    const-wide/16 v3, 0x0

    iput-wide v3, v13, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ContactInfo;->photoId:J

    .line 508
    const/4 v3, 0x5

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v13, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ContactInfo;->contactId:J

    .line 509
    const/4 v3, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v13, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ContactInfo;->lookupKey:Ljava/lang/String;

    .line 511
    sget-boolean v3, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->DBG:Z

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setCommonView(): NOT RECENT_CURSOR: ci.name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v13, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ContactInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ci.type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v13, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ContactInfo;->type:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ci.label = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v13, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ContactInfo;->label:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ci.photoId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v13, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ContactInfo;->photoId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ci.contactId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v13, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ContactInfo;->contactId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ci.lookupKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v13, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ContactInfo;->lookupKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->log(Ljava/lang/String;)V

    .line 513
    :cond_4
    iget v3, v13, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ContactInfo;->type:I

    iget-object v4, v13, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ContactInfo;->label:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->getDisplayLabel(ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_1

    .line 525
    :cond_5
    const-string v15, ""

    .restart local v15    # "displayNumber":Ljava/lang/String;
    goto/16 :goto_2

    .line 566
    .restart local v16    # "inputDigits":Ljava/lang/String;
    :cond_6
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 567
    iget-object v3, v13, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ContactInfo;->name:Ljava/lang/String;

    sget-object v4, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 568
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

    .line 570
    if-eqz v14, :cond_7

    .line 571
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v6, v3, 0x1

    .line 575
    .local v6, "matchOffset":I
    :goto_4
    if-eqz v16, :cond_1

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-lt v3, v4, :cond_1

    .line 577
    invoke-virtual/range {p3 .. p3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Landroid/text/Spannable;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mQueriedDigits:Ljava/lang/String;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget v7, v0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mHighlightColor:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mHighlightTextColor:I

    invoke-static/range {v3 .. v8}, Lcom/motorola/contacts/dialpad/Highlighter;->highlight(Landroid/text/Spannable;Ljava/lang/String;ZIII)V

    .line 579
    invoke-virtual/range {p2 .. p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Landroid/text/Spannable;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mQueriedDigits:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v11, v0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mHighlightColor:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mHighlightTextColor:I

    invoke-static/range {v7 .. v12}, Lcom/motorola/contacts/dialpad/Highlighter;->highlight(Landroid/text/Spannable;Ljava/lang/String;ZIII)V

    goto/16 :goto_3

    .line 573
    .end local v6    # "matchOffset":I
    :cond_7
    const/4 v6, 0x1

    .restart local v6    # "matchOffset":I
    goto :goto_4

    .line 483
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method setItemView(Landroid/database/Cursor;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/QuickContactBadge;Landroid/widget/TextView;Landroid/view/View;)V
    .locals 15
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "nameView"    # Landroid/widget/TextView;
    .param p3, "numberView"    # Landroid/widget/TextView;
    .param p4, "callerDetail"    # Landroid/view/View;
    .param p5, "callType"    # Landroid/widget/ImageView;
    .param p6, "picView"    # Landroid/widget/QuickContactBadge;
    .param p7, "dateView"    # Landroid/widget/TextView;
    .param p8, "callButton"    # Landroid/view/View;

    .prologue
    .line 595
    invoke-virtual/range {p0 .. p5}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->setCommonView(Landroid/database/Cursor;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/ImageView;)Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ContactInfo;

    move-result-object v14

    .line 597
    .local v14, "ci":Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ContactInfo;
    invoke-direct/range {p0 .. p1}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->getCurCursorType(Landroid/database/Cursor;)I

    move-result v3

    if-nez v3, :cond_3

    .line 598
    const/16 v3, 0xa

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 599
    .local v12, "number":Ljava/lang/String;
    const/16 v3, 0xb

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 600
    .local v1, "date":J
    const/high16 v7, 0x40000

    .line 601
    .local v7, "flags":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/32 v5, 0xea60

    invoke-static/range {v1 .. v7}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object v3

    move-object/from16 v0, p7

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 603
    const/4 v3, 0x0

    move-object/from16 v0, p7

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 604
    const/4 v3, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 611
    .end local v1    # "date":J
    .end local v7    # "flags":I
    :goto_0
    if-eqz p8, :cond_0

    .line 612
    new-instance v3, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$3;

    invoke-direct {v3, p0, v12}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$3;-><init>(Lcom/motorola/contacts/dialpad/SmartDialerAdapter;Ljava/lang/String;)V

    move-object/from16 v0, p8

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 634
    :cond_0
    iget-object v3, v14, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ContactInfo;->name:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 635
    const/4 v3, 0x4

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 638
    :cond_1
    const/4 v13, 0x0

    .line 639
    .local v13, "contactUri":Landroid/net/Uri;
    iget-object v3, v14, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ContactInfo;->lookupKey:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 640
    iget-wide v3, v14, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ContactInfo;->contactId:J

    iget-object v5, v14, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ContactInfo;->lookupKey:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    .line 642
    :cond_2
    iget-wide v10, v14, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ContactInfo;->photoId:J

    move-object v8, p0

    move-object/from16 v9, p6

    invoke-direct/range {v8 .. v13}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->setPhoto(Landroid/widget/QuickContactBadge;JLjava/lang/String;Landroid/net/Uri;)V

    .line 643
    return-void

    .line 606
    .end local v12    # "number":Ljava/lang/String;
    .end local v13    # "contactUri":Landroid/net/Uri;
    :cond_3
    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 607
    .restart local v12    # "number":Ljava/lang/String;
    const/4 v3, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v14, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ContactInfo;->photoId:J

    .line 608
    const/16 v3, 0x8

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 609
    const/16 v3, 0x8

    move-object/from16 v0, p7

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public startQuery(I)V
    .locals 9
    .param p1, "token"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 701
    packed-switch p1, :pswitch_data_0

    .line 739
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 703
    :pswitch_1
    sget-boolean v0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "start QUERY_MOST_RECENT"

    invoke-direct {p0, v0}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->log(Ljava/lang/String;)V

    .line 704
    :cond_1
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mQueriedDigits:Ljava/lang/String;

    .line 705
    iget-object v0, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mAsyncQueryHandler:Lcom/motorola/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;

    if-eqz v0, :cond_0

    .line 706
    iget-object v0, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mAsyncQueryHandler:Lcom/motorola/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;->cancelOperation(I)V

    .line 707
    iget-object v0, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mAsyncQueryHandler:Lcom/motorola/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;->cancelOperation(I)V

    .line 708
    iget-object v0, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mAsyncQueryHandler:Lcom/motorola/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;->cancelOperation(I)V

    .line 709
    iget-object v0, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 713
    iget-object v0, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mAsyncQueryHandler:Lcom/motorola/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;

    sget-object v3, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->SMARTDIALER_FUZZY_CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->PHONES_PROJECTION:[Ljava/lang/String;

    move v1, p1

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$MyAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 719
    :pswitch_2
    iget-object v0, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 721
    sget-boolean v0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "previous query is canceled!"

    invoke-direct {p0, v0}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->log(Ljava/lang/String;)V

    .line 722
    :cond_2
    iget-object v0, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 726
    :cond_3
    invoke-direct {p0}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->getInputDigits()Ljava/lang/String;

    move-result-object v8

    .line 727
    .local v8, "digits":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 728
    iget-object v0, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 730
    :cond_4
    iget-object v0, p0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mMainThreadHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 701
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public updateSingleItemAndTitle()V
    .locals 1

    .prologue
    .line 325
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->updateSingleItemAndTitle(I)V

    .line 326
    return-void
.end method

.method updateSingleItemAndTitle(I)V
    .locals 19
    .param p1, "newCursorPosition"    # I

    .prologue
    .line 334
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mFragmentView:Landroid/view/View;

    const v9, 0x7f0600c2

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .line 335
    .local v16, "title":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mFragmentView:Landroid/view/View;

    const v9, 0x7f0600c3

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 336
    .local v11, "expander":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mFragmentView:Landroid/view/View;

    const v9, 0x7f0600c4

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 337
    .local v15, "matchResult":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mFragmentView:Landroid/view/View;

    const v9, 0x7f060137

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 338
    .local v10, "divider":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mFragmentView:Landroid/view/View;

    const v9, 0x7f060131

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/QuickContactBadge;

    .line 339
    .local v7, "picView":Landroid/widget/QuickContactBadge;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mFragmentView:Landroid/view/View;

    const v9, 0x7f060138

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 340
    .local v5, "callerDetail":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mFragmentView:Landroid/view/View;

    const v9, 0x7f060133

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 341
    .local v3, "nameView":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mFragmentView:Landroid/view/View;

    const v9, 0x7f060134

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 342
    .local v4, "numberView":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mFragmentView:Landroid/view/View;

    const v9, 0x7f060132

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 343
    .local v6, "callType":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mFragmentView:Landroid/view/View;

    const v9, 0x7f060135

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 345
    .local v8, "dateView":Landroid/widget/TextView;
    invoke-direct/range {p0 .. p0}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->getInputDigits()Ljava/lang/String;

    move-result-object v12

    .line 346
    .local v12, "inputDigits":Ljava/lang/String;
    const/4 v1, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 347
    const/4 v1, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 348
    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 349
    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 350
    const/16 v1, 0x8

    invoke-virtual {v11, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 352
    if-eqz v7, :cond_0

    .line 353
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    .line 357
    :cond_0
    if-eqz v12, :cond_7

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v9, 0x1

    if-ge v1, v9, :cond_7

    .line 358
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    .line 359
    .local v2, "cursor":Landroid/database/Cursor;
    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3

    move/from16 v0, p1

    invoke-interface {v2, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 360
    sget-boolean v1, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->DBG:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateSingleItemAndTitle():MostRecent data exists,RECENT cursor index="

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v2}, Landroid/database/Cursor;->getPosition()I

    move-result v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->log(Ljava/lang/String;)V

    .line 361
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->isFullSingleItemNeeded()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 362
    const v1, 0x7f0b020f

    invoke-virtual {v15, v1}, Landroid/widget/TextView;->setText(I)V

    .line 363
    const/4 v9, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v9}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->setItemView(Landroid/database/Cursor;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/QuickContactBadge;Landroid/widget/TextView;Landroid/view/View;)V

    .line 458
    :goto_0
    return-void

    .line 366
    :cond_2
    const/16 v1, 0x8

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 367
    const/16 v1, 0x8

    invoke-virtual {v10, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v1, p0

    .line 368
    invoke-virtual/range {v1 .. v6}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->setCommonView(Landroid/database/Cursor;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/ImageView;)Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ContactInfo;

    .line 369
    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 373
    :cond_3
    sget-boolean v1, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->DBG:Z

    if-eqz v1, :cond_4

    const-string v1, "MostRecent data doesn\'t exist"

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->log(Ljava/lang/String;)V

    .line 374
    :cond_4
    const v1, 0x7f0b0212

    invoke-virtual {v15, v1}, Landroid/widget/TextView;->setText(I)V

    .line 375
    const/16 v1, 0x8

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 376
    const/16 v1, 0x8

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 377
    const/16 v1, 0x8

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 378
    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 380
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->isFullSingleItemNeeded()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 381
    const/16 v1, 0x8

    invoke-virtual {v7, v1}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    .line 382
    const/16 v1, 0x8

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 383
    const/16 v1, 0x8

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 385
    :cond_5
    sget-boolean v1, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->DBG:Z

    if-eqz v1, :cond_6

    const-string v1, "DisplayMetrics.DENSITY_MEDIUM"

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->log(Ljava/lang/String;)V

    .line 386
    :cond_6
    const/16 v1, 0x8

    invoke-virtual {v10, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 391
    .end local v2    # "cursor":Landroid/database/Cursor;
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    .line 392
    .restart local v2    # "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 394
    if-eqz v2, :cond_e

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_e

    move/from16 v0, p1

    invoke-interface {v2, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 395
    sget-boolean v1, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->DBG:Z

    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateSingleItemAndTitle(): SMART CONTACT cursor index = "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v2}, Landroid/database/Cursor;->getPosition()I

    move-result v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->log(Ljava/lang/String;)V

    .line 396
    :cond_8
    const/4 v1, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 397
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v14

    .line 398
    .local v14, "matchCount":I
    const/4 v1, 0x1

    if-ne v14, v1, :cond_9

    .line 399
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, " "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v18, 0x7f0b0211

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 405
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mFragmentView:Landroid/view/View;

    const v9, 0x7f0600c6

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ListView;

    .line 406
    .local v13, "mList":Landroid/widget/ListView;
    invoke-virtual {v13}, Landroid/widget/ListView;->getVisibility()I

    move-result v17

    .line 408
    .local v17, "visibily":I
    if-nez v17, :cond_a

    .line 409
    const v1, 0x108026d

    invoke-virtual {v11, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 416
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->isFullSingleItemNeeded()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 417
    const/4 v9, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v9}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->setItemView(Landroid/database/Cursor;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/QuickContactBadge;Landroid/widget/TextView;Landroid/view/View;)V

    goto/16 :goto_0

    .line 402
    .end local v13    # "mList":Landroid/widget/ListView;
    .end local v17    # "visibily":I
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, " "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v18, 0x7f0b0210

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 412
    .restart local v13    # "mList":Landroid/widget/ListView;
    .restart local v17    # "visibily":I
    :cond_a
    const v1, 0x1080274

    invoke-virtual {v11, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 420
    :cond_b
    const/16 v1, 0x8

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 421
    if-eqz v17, :cond_d

    move-object/from16 v1, p0

    .line 422
    invoke-virtual/range {v1 .. v6}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->setCommonView(Landroid/database/Cursor;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/ImageView;)Lcom/motorola/contacts/dialpad/SmartDialerAdapter$ContactInfo;

    .line 423
    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 424
    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_c

    .line 425
    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 427
    :cond_c
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

    .line 429
    :cond_d
    const/16 v1, 0x8

    invoke-virtual {v10, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 430
    const/16 v1, 0x8

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 431
    const/16 v1, 0x8

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 432
    new-instance v1, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$1;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter$1;-><init>(Lcom/motorola/contacts/dialpad/SmartDialerAdapter;)V

    invoke-virtual {v5, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 437
    const/16 v1, 0x8

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 442
    .end local v13    # "mList":Landroid/widget/ListView;
    .end local v14    # "matchCount":I
    .end local v17    # "visibily":I
    :cond_e
    sget-boolean v1, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->DBG:Z

    if-eqz v1, :cond_f

    const-string v1, "no matched item"

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->log(Ljava/lang/String;)V

    .line 443
    :cond_f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v9, 0x7f0b0213

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 444
    const/16 v1, 0x8

    invoke-virtual {v11, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 445
    const/16 v1, 0x8

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 446
    const/16 v1, 0x8

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 447
    const/16 v1, 0x8

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 448
    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 450
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/contacts/dialpad/SmartDialerAdapter;->isFullSingleItemNeeded()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 451
    const/16 v1, 0x8

    invoke-virtual {v7, v1}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    .line 452
    const/16 v1, 0x8

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 454
    :cond_10
    const/16 v1, 0x8

    invoke-virtual {v10, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0
.end method
