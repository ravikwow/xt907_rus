.class public Lcom/android/contacts/quickcontact/QuickContactActivity;
.super Landroid/app/Activity;
.source "QuickContactActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/quickcontact/QuickContactActivity$PageChangeListener;,
        Lcom/android/contacts/quickcontact/QuickContactActivity$ViewPagerAdapter;
    }
.end annotation


# static fields
.field private static final LEADING_MIMETYPES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TRAILING_MIMETYPES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActions:Lcom/android/contacts/quickcontact/ActionMultiMap;

.field private mContactLoader:Lcom/android/contacts/ContactLoader;

.field private mDefaultsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/contacts/quickcontact/Action;",
            ">;"
        }
    .end annotation
.end field

.field private mExcludeMimes:[Ljava/lang/String;

.field private mFloatingLayout:Lcom/android/contacts/quickcontact/FloatingChildLayout;

.field private mLineAfterTrack:Landroid/view/View;

.field private final mListFragmentListener:Lcom/android/contacts/quickcontact/QuickContactListFragment$Listener;

.field private mListPager:Landroid/support/v4/view/ViewPager;

.field private mLoaderCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/android/contacts/ContactLoader$Result;",
            ">;"
        }
    .end annotation
.end field

.field private mLookupUri:Landroid/net/Uri;

.field private mOpenDetailsButton:Landroid/widget/ImageButton;

.field private mOpenDetailsPushLayerButton:Landroid/widget/ImageButton;

.field private mPhotoContainer:Landroid/view/View;

.field private final mPhotoSetter:Lcom/android/contacts/util/ImageViewDrawableSetter;

.field private mSelectedTabRectangle:Landroid/view/View;

.field private mSortedActionMimeTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mStopWatch:Lcom/android/contacts/util/StopWatch;

.field private mTrack:Landroid/view/ViewGroup;

.field private mTrackScroller:Landroid/widget/HorizontalScrollView;

.field private final mTypeViewClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 148
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "vnd.android.cursor.item/phone_v2"

    aput-object v1, v0, v2

    const-string v1, "vnd.android.cursor.item/sip_address"

    aput-object v1, v0, v3

    const-string v1, "vnd.android.cursor.item/email_v2"

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->LEADING_MIMETYPES:Ljava/util/List;

    .line 152
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "vnd.android.cursor.item/postal-address_v2"

    aput-object v1, v0, v2

    const-string v1, "vnd.android.cursor.item/website"

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->TRAILING_MIMETYPES:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 107
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    .line 123
    new-instance v0, Lcom/android/contacts/util/ImageViewDrawableSetter;

    invoke-direct {v0}, Lcom/android/contacts/util/ImageViewDrawableSetter;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mPhotoSetter:Lcom/android/contacts/util/ImageViewDrawableSetter;

    .line 128
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mDefaultsMap:Ljava/util/HashMap;

    .line 135
    new-instance v0, Lcom/android/contacts/quickcontact/ActionMultiMap;

    invoke-direct {v0}, Lcom/android/contacts/quickcontact/ActionMultiMap;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mActions:Lcom/android/contacts/quickcontact/ActionMultiMap;

    .line 158
    invoke-static {}, Lcom/android/contacts/util/StopWatch;->getNullStopWatch()Lcom/android/contacts/util/StopWatch;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mStopWatch:Lcom/android/contacts/util/StopWatch;

    .line 512
    new-instance v0, Lcom/android/contacts/quickcontact/QuickContactActivity$5;

    invoke-direct {v0, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$5;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mLoaderCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 574
    new-instance v0, Lcom/android/contacts/quickcontact/QuickContactActivity$6;

    invoke-direct {v0, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$6;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTypeViewClickListener:Landroid/view/View$OnClickListener;

    .line 622
    new-instance v0, Lcom/android/contacts/quickcontact/QuickContactActivity$7;

    invoke-direct {v0, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$7;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mListFragmentListener:Lcom/android/contacts/quickcontact/QuickContactListFragment$Listener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/quickcontact/QuickContactActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/quickcontact/QuickContactActivity;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->handleOutsideTouch()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/contacts/quickcontact/QuickContactActivity;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/quickcontact/QuickContactActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mLookupUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/contacts/quickcontact/QuickContactActivity;)Lcom/android/contacts/quickcontact/ActionMultiMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/quickcontact/QuickContactActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mActions:Lcom/android/contacts/quickcontact/ActionMultiMap;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/contacts/quickcontact/QuickContactActivity;I)Lcom/android/contacts/quickcontact/CheckableImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/quickcontact/QuickContactActivity;
    .param p1, "x1"    # I

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getActionViewAt(I)Lcom/android/contacts/quickcontact/CheckableImageView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/contacts/quickcontact/QuickContactActivity;)Landroid/widget/HorizontalScrollView;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/quickcontact/QuickContactActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTrackScroller:Landroid/widget/HorizontalScrollView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/contacts/quickcontact/QuickContactActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/quickcontact/QuickContactActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSelectedTabRectangle:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/contacts/quickcontact/QuickContactActivity;)Lcom/android/contacts/ContactLoader;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/quickcontact/QuickContactActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactLoader:Lcom/android/contacts/ContactLoader;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/contacts/quickcontact/QuickContactActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/quickcontact/QuickContactActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->close(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/contacts/quickcontact/QuickContactActivity;)Lcom/android/contacts/quickcontact/FloatingChildLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/quickcontact/QuickContactActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mFloatingLayout:Lcom/android/contacts/quickcontact/FloatingChildLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/contacts/quickcontact/QuickContactActivity;)Lcom/android/contacts/util/StopWatch;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/quickcontact/QuickContactActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mStopWatch:Lcom/android/contacts/util/StopWatch;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/contacts/quickcontact/QuickContactActivity;Lcom/android/contacts/util/StopWatch;)Lcom/android/contacts/util/StopWatch;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/quickcontact/QuickContactActivity;
    .param p1, "x1"    # Lcom/android/contacts/util/StopWatch;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mStopWatch:Lcom/android/contacts/util/StopWatch;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/contacts/quickcontact/QuickContactActivity;Lcom/android/contacts/ContactLoader$Result;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/quickcontact/QuickContactActivity;
    .param p1, "x1"    # Lcom/android/contacts/ContactLoader$Result;

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->bindData(Lcom/android/contacts/ContactLoader$Result;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/contacts/quickcontact/QuickContactActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/quickcontact/QuickContactActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/contacts/quickcontact/QuickContactActivity;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/quickcontact/QuickContactActivity;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mListPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method private bindData(Lcom/android/contacts/ContactLoader$Result;)V
    .locals 39
    .param p1, "data"    # Lcom/android/contacts/ContactLoader$Result;

    .prologue
    .line 338
    invoke-static/range {p0 .. p0}, Lcom/android/contacts/quickcontact/ResolveCache;->getInstance(Landroid/content/Context;)Lcom/android/contacts/quickcontact/ResolveCache;

    move-result-object v22

    .line 339
    .local v22, "cache":Lcom/android/contacts/quickcontact/ResolveCache;
    move-object/from16 v4, p0

    .line 341
    .local v4, "context":Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mOpenDetailsButton:Landroid/widget/ImageButton;

    const-string v10, "vnd.android.cursor.item/contact"

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/contacts/quickcontact/QuickContactActivity;->isMimeExcluded(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    const/16 v10, 0x8

    :goto_0
    invoke-virtual {v11, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 344
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mDefaultsMap:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->clear()V

    .line 346
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mStopWatch:Lcom/android/contacts/util/StopWatch;

    const-string v11, "atm"

    invoke-virtual {v10, v11}, Lcom/android/contacts/util/StopWatch;->lap(Ljava/lang/String;)V

    .line 347
    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v18

    .line 349
    .local v18, "accountTypes":Lcom/android/contacts/model/AccountTypeManager;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mStopWatch:Lcom/android/contacts/util/StopWatch;

    const-string v11, "fatm"

    invoke-virtual {v10, v11}, Lcom/android/contacts/util/StopWatch;->lap(Ljava/lang/String;)V

    .line 351
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mPhotoContainer:Landroid/view/View;

    const v11, 0x7f070056

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/widget/ImageView;

    .line 352
    .local v33, "photoView":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mPhotoSetter:Lcom/android/contacts/util/ImageViewDrawableSetter;

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v10, v0, v1}, Lcom/android/contacts/util/ImageViewDrawableSetter;->setupContactPhoto(Lcom/android/contacts/ContactLoader$Result;Landroid/widget/ImageView;)V

    .line 354
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mStopWatch:Lcom/android/contacts/util/StopWatch;

    const-string v11, "ph"

    invoke-virtual {v10, v11}, Lcom/android/contacts/util/StopWatch;->lap(Ljava/lang/String;)V

    .line 356
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/ContactLoader$Result;->getEntities()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :cond_0
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/content/Entity;

    .line 357
    .local v25, "entity":Landroid/content/Entity;
    invoke-virtual/range {v25 .. v25}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v26

    .line 358
    .local v26, "entityValues":Landroid/content/ContentValues;
    const-string v10, "account_type"

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 359
    .local v17, "accountType":Ljava/lang/String;
    const-string v10, "data_set"

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 360
    .local v24, "dataSet":Ljava/lang/String;
    invoke-virtual/range {v25 .. v25}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v29

    .local v29, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/content/Entity$NamedContentValues;

    .line 361
    .local v36, "subValue":Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v36

    iget-object v9, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 362
    .local v9, "entryValues":Landroid/content/ContentValues;
    const-string v10, "mimetype"

    invoke-virtual {v9, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 365
    .local v5, "mimeType":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/contacts/quickcontact/QuickContactActivity;->isMimeExcluded(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 367
    const-string v10, "_id"

    invoke-virtual {v9, v10}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 368
    .local v7, "dataId":J
    const-string v10, "is_primary"

    invoke-virtual {v9, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v34

    .line 369
    .local v34, "primary":Ljava/lang/Integer;
    if-eqz v34, :cond_5

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-eqz v10, :cond_5

    const/16 v30, 0x1

    .line 370
    .local v30, "isPrimary":Z
    :goto_2
    const-string v10, "is_super_primary"

    invoke-virtual {v9, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v37

    .line 371
    .local v37, "superPrimary":Ljava/lang/Integer;
    if-eqz v37, :cond_6

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-eqz v10, :cond_6

    const/16 v31, 0x1

    .line 373
    .local v31, "isSuperPrimary":Z
    :goto_3
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2, v5}, Lcom/android/contacts/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v6

    .line 376
    .local v6, "kind":Lcom/android/contacts/model/DataKind;
    if-eqz v6, :cond_3

    .line 380
    new-instance v3, Lcom/android/contacts/quickcontact/DataAction;

    invoke-direct/range {v3 .. v9}, Lcom/android/contacts/quickcontact/DataAction;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/contacts/model/DataKind;JLandroid/content/ContentValues;)V

    .line 382
    .local v3, "action":Lcom/android/contacts/quickcontact/Action;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v31

    invoke-direct {v0, v3, v1, v2}, Lcom/android/contacts/quickcontact/QuickContactActivity;->considerAdd(Lcom/android/contacts/quickcontact/Action;Lcom/android/contacts/quickcontact/ResolveCache;Z)Z

    move-result v38

    .line 383
    .local v38, "wasAdded":Z
    if-eqz v38, :cond_3

    .line 385
    if-nez v31, :cond_2

    if-eqz v30, :cond_3

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mDefaultsMap:Ljava/util/HashMap;

    invoke-virtual {v10, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_3

    .line 386
    :cond_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mDefaultsMap:Ljava/util/HashMap;

    invoke-virtual {v10, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    .end local v3    # "action":Lcom/android/contacts/quickcontact/Action;
    .end local v38    # "wasAdded":Z
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/ContactLoader$Result;->getStatuses()Landroid/util/LongSparseArray;

    move-result-object v10

    invoke-virtual {v10, v7, v8}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/android/contacts/util/DataStatus;

    .line 393
    .local v35, "status":Lcom/android/contacts/util/DataStatus;
    if-eqz v35, :cond_1

    const-string v10, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 394
    const-string v10, "vnd.android.cursor.item/im"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2, v10}, Lcom/android/contacts/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v13

    .line 396
    .local v13, "imKind":Lcom/android/contacts/model/DataKind;
    if-eqz v13, :cond_1

    .line 397
    new-instance v3, Lcom/android/contacts/quickcontact/DataAction;

    const-string v12, "vnd.android.cursor.item/im"

    move-object v10, v3

    move-object v11, v4

    move-wide v14, v7

    move-object/from16 v16, v9

    invoke-direct/range {v10 .. v16}, Lcom/android/contacts/quickcontact/DataAction;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/contacts/model/DataKind;JLandroid/content/ContentValues;)V

    .line 399
    .local v3, "action":Lcom/android/contacts/quickcontact/DataAction;
    invoke-virtual/range {v35 .. v35}, Lcom/android/contacts/util/DataStatus;->getPresence()I

    move-result v10

    invoke-virtual {v3, v10}, Lcom/android/contacts/quickcontact/DataAction;->setPresence(I)V

    .line 400
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v31

    invoke-direct {v0, v3, v1, v2}, Lcom/android/contacts/quickcontact/QuickContactActivity;->considerAdd(Lcom/android/contacts/quickcontact/Action;Lcom/android/contacts/quickcontact/ResolveCache;Z)Z

    goto/16 :goto_1

    .line 341
    .end local v3    # "action":Lcom/android/contacts/quickcontact/DataAction;
    .end local v5    # "mimeType":Ljava/lang/String;
    .end local v6    # "kind":Lcom/android/contacts/model/DataKind;
    .end local v7    # "dataId":J
    .end local v9    # "entryValues":Landroid/content/ContentValues;
    .end local v13    # "imKind":Lcom/android/contacts/model/DataKind;
    .end local v17    # "accountType":Ljava/lang/String;
    .end local v18    # "accountTypes":Lcom/android/contacts/model/AccountTypeManager;
    .end local v24    # "dataSet":Ljava/lang/String;
    .end local v25    # "entity":Landroid/content/Entity;
    .end local v26    # "entityValues":Landroid/content/ContentValues;
    .end local v29    # "i$":Ljava/util/Iterator;
    .end local v30    # "isPrimary":Z
    .end local v31    # "isSuperPrimary":Z
    .end local v33    # "photoView":Landroid/widget/ImageView;
    .end local v34    # "primary":Ljava/lang/Integer;
    .end local v35    # "status":Lcom/android/contacts/util/DataStatus;
    .end local v36    # "subValue":Landroid/content/Entity$NamedContentValues;
    .end local v37    # "superPrimary":Ljava/lang/Integer;
    :cond_4
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 369
    .restart local v5    # "mimeType":Ljava/lang/String;
    .restart local v7    # "dataId":J
    .restart local v9    # "entryValues":Landroid/content/ContentValues;
    .restart local v17    # "accountType":Ljava/lang/String;
    .restart local v18    # "accountTypes":Lcom/android/contacts/model/AccountTypeManager;
    .restart local v24    # "dataSet":Ljava/lang/String;
    .restart local v25    # "entity":Landroid/content/Entity;
    .restart local v26    # "entityValues":Landroid/content/ContentValues;
    .restart local v29    # "i$":Ljava/util/Iterator;
    .restart local v33    # "photoView":Landroid/widget/ImageView;
    .restart local v34    # "primary":Ljava/lang/Integer;
    .restart local v36    # "subValue":Landroid/content/Entity$NamedContentValues;
    :cond_5
    const/16 v30, 0x0

    goto/16 :goto_2

    .line 371
    .restart local v30    # "isPrimary":Z
    .restart local v37    # "superPrimary":Ljava/lang/Integer;
    :cond_6
    const/16 v31, 0x0

    goto :goto_3

    .line 406
    .end local v5    # "mimeType":Ljava/lang/String;
    .end local v7    # "dataId":J
    .end local v9    # "entryValues":Landroid/content/ContentValues;
    .end local v17    # "accountType":Ljava/lang/String;
    .end local v24    # "dataSet":Ljava/lang/String;
    .end local v25    # "entity":Landroid/content/Entity;
    .end local v26    # "entityValues":Landroid/content/ContentValues;
    .end local v29    # "i$":Ljava/util/Iterator;
    .end local v30    # "isPrimary":Z
    .end local v34    # "primary":Ljava/lang/Integer;
    .end local v36    # "subValue":Landroid/content/Entity$NamedContentValues;
    .end local v37    # "superPrimary":Ljava/lang/Integer;
    :cond_7
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mStopWatch:Lcom/android/contacts/util/StopWatch;

    const-string v11, "e"

    invoke-virtual {v10, v11}, Lcom/android/contacts/util/StopWatch;->lap(Ljava/lang/String;)V

    .line 409
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mActions:Lcom/android/contacts/quickcontact/ActionMultiMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v28

    .local v28, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/ArrayList;

    .line 410
    .local v19, "actionChildren":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/quickcontact/Action;>;"
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    goto :goto_4

    .line 413
    .end local v19    # "actionChildren":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/quickcontact/Action;>;"
    :cond_8
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mStopWatch:Lcom/android/contacts/util/StopWatch;

    const-string v11, "c"

    invoke-virtual {v10, v11}, Lcom/android/contacts/util/StopWatch;->lap(Ljava/lang/String;)V

    .line 415
    const v10, 0x7f070049

    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/ContactLoader$Result;->getDisplayName()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/android/contacts/quickcontact/QuickContactActivity;->setHeaderNameText(ILjava/lang/CharSequence;)V

    .line 418
    new-instance v23, Ljava/util/HashSet;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mActions:Lcom/android/contacts/quickcontact/ActionMultiMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    move-object/from16 v0, v23

    invoke-direct {v0, v10}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 419
    .local v23, "containedTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 421
    sget-object v10, Lcom/android/contacts/quickcontact/QuickContactActivity;->LEADING_MIMETYPES:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :cond_9
    :goto_5
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 422
    .restart local v5    # "mimeType":Ljava/lang/String;
    move-object/from16 v0, v23

    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 423
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 424
    move-object/from16 v0, v23

    invoke-interface {v0, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_5

    .line 429
    .end local v5    # "mimeType":Ljava/lang/String;
    :cond_a
    invoke-interface/range {v23 .. v23}, Ljava/util/Set;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-interface {v0, v10}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [Ljava/lang/String;

    .local v21, "arr$":[Ljava/lang/String;
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v32, v0

    .local v32, "len$":I
    const/16 v28, 0x0

    .local v28, "i$":I
    :goto_6
    move/from16 v0, v28

    move/from16 v1, v32

    if-ge v0, v1, :cond_c

    aget-object v5, v21, v28

    .line 430
    .restart local v5    # "mimeType":Ljava/lang/String;
    sget-object v10, Lcom/android/contacts/quickcontact/QuickContactActivity;->TRAILING_MIMETYPES:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_b

    .line 431
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 432
    move-object/from16 v0, v23

    invoke-interface {v0, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 429
    :cond_b
    add-int/lit8 v28, v28, 0x1

    goto :goto_6

    .line 437
    .end local v5    # "mimeType":Ljava/lang/String;
    :cond_c
    sget-object v10, Lcom/android/contacts/quickcontact/QuickContactActivity;->TRAILING_MIMETYPES:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v28

    .local v28, "i$":Ljava/util/Iterator;
    :cond_d
    :goto_7
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_e

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 438
    .restart local v5    # "mimeType":Ljava/lang/String;
    move-object/from16 v0, v23

    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 439
    move-object/from16 v0, v23

    invoke-interface {v0, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 440
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 444
    .end local v5    # "mimeType":Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mStopWatch:Lcom/android/contacts/util/StopWatch;

    const-string v11, "mt"

    invoke-virtual {v10, v11}, Lcom/android/contacts/util/StopWatch;->lap(Ljava/lang/String;)V

    .line 447
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTrack:Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 448
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :goto_8
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_f

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 449
    .restart local v5    # "mimeType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTrack:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v5, v1, v10}, Lcom/android/contacts/quickcontact/QuickContactActivity;->inflateAction(Ljava/lang/String;Lcom/android/contacts/quickcontact/ResolveCache;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    .line 450
    .local v20, "actionView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTrack:Landroid/view/ViewGroup;

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_8

    .line 453
    .end local v5    # "mimeType":Ljava/lang/String;
    .end local v20    # "actionView":Landroid/view/View;
    :cond_f
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mStopWatch:Lcom/android/contacts/util/StopWatch;

    const-string v11, "mt"

    invoke-virtual {v10, v11}, Lcom/android/contacts/util/StopWatch;->lap(Ljava/lang/String;)V

    .line 455
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_10

    const/16 v27, 0x1

    .line 456
    .local v27, "hasData":Z
    :goto_9
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTrackScroller:Landroid/widget/HorizontalScrollView;

    if-eqz v27, :cond_11

    const/4 v10, 0x0

    :goto_a
    invoke-virtual {v11, v10}, Landroid/view/View;->setVisibility(I)V

    .line 457
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSelectedTabRectangle:Landroid/view/View;

    if-eqz v27, :cond_12

    const/4 v10, 0x0

    :goto_b
    invoke-virtual {v11, v10}, Landroid/view/View;->setVisibility(I)V

    .line 458
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mLineAfterTrack:Landroid/view/View;

    if-eqz v27, :cond_13

    const/4 v10, 0x0

    :goto_c
    invoke-virtual {v11, v10}, Landroid/view/View;->setVisibility(I)V

    .line 459
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mListPager:Landroid/support/v4/view/ViewPager;

    if-eqz v27, :cond_14

    const/4 v10, 0x0

    :goto_d
    invoke-virtual {v11, v10}, Landroid/view/View;->setVisibility(I)V

    .line 460
    return-void

    .line 455
    .end local v27    # "hasData":Z
    :cond_10
    const/16 v27, 0x0

    goto :goto_9

    .line 456
    .restart local v27    # "hasData":Z
    :cond_11
    const/16 v10, 0x8

    goto :goto_a

    .line 457
    :cond_12
    const/16 v10, 0x8

    goto :goto_b

    .line 458
    :cond_13
    const/16 v10, 0x8

    goto :goto_c

    .line 459
    :cond_14
    const/16 v10, 0x8

    goto :goto_d
.end method

.method private close(Z)V
    .locals 3
    .param p1, "withAnimation"    # Z

    .prologue
    .line 262
    invoke-virtual {p0}, Landroid/app/Activity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 264
    if-eqz p1, :cond_1

    .line 265
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mFloatingLayout:Lcom/android/contacts/quickcontact/FloatingChildLayout;

    invoke-virtual {v1}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->fadeOutBackground()V

    .line 266
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mFloatingLayout:Lcom/android/contacts/quickcontact/FloatingChildLayout;

    new-instance v2, Lcom/android/contacts/quickcontact/QuickContactActivity$4;

    invoke-direct {v2, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$4;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    invoke-virtual {v1, v2}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->hideContent(Ljava/lang/Runnable;)Z

    move-result v0

    .line 290
    .local v0, "animated":Z
    if-nez v0, :cond_0

    .line 293
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 298
    .end local v0    # "animated":Z
    :cond_0
    :goto_0
    return-void

    .line 296
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method private considerAdd(Lcom/android/contacts/quickcontact/Action;Lcom/android/contacts/quickcontact/ResolveCache;Z)Z
    .locals 2
    .param p1, "action"    # Lcom/android/contacts/quickcontact/Action;
    .param p2, "resolveCache"    # Lcom/android/contacts/quickcontact/ResolveCache;
    .param p3, "front"    # Z

    .prologue
    .line 472
    invoke-virtual {p2, p1}, Lcom/android/contacts/quickcontact/ResolveCache;->hasResolve(Lcom/android/contacts/quickcontact/Action;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mActions:Lcom/android/contacts/quickcontact/ActionMultiMap;

    invoke-interface {p1}, Lcom/android/contacts/quickcontact/Action;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p3}, Lcom/android/contacts/quickcontact/ActionMultiMap;->put(Ljava/lang/String;Lcom/android/contacts/quickcontact/Action;Z)V

    .line 474
    const/4 v0, 0x1

    .line 476
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getActionViewAt(I)Lcom/android/contacts/quickcontact/CheckableImageView;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 503
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTrack:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/quickcontact/CheckableImageView;

    return-object v0
.end method

.method private handleOutsideTouch()V
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mFloatingLayout:Lcom/android/contacts/quickcontact/FloatingChildLayout;

    invoke-virtual {v0}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->isContentFullyVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->close(Z)V

    .line 258
    :cond_0
    return-void
.end method

.method private inflateAction(Ljava/lang/String;Lcom/android/contacts/quickcontact/ResolveCache;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "resolveCache"    # Lcom/android/contacts/quickcontact/ResolveCache;
    .param p3, "root"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v7, 0x0

    .line 484
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f04009e

    invoke-virtual {v5, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/quickcontact/CheckableImageView;

    .line 487
    .local v4, "typeView":Lcom/android/contacts/quickcontact/CheckableImageView;
    iget-object v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mActions:Lcom/android/contacts/quickcontact/ActionMultiMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 488
    .local v0, "children":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/quickcontact/Action;>;"
    invoke-virtual {v4, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 489
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/quickcontact/Action;

    .line 492
    .local v2, "firstInfo":Lcom/android/contacts/quickcontact/Action;
    invoke-virtual {p2, v2}, Lcom/android/contacts/quickcontact/ResolveCache;->getDescription(Lcom/android/contacts/quickcontact/Action;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 493
    .local v1, "descrip":Ljava/lang/CharSequence;
    invoke-virtual {p2, v2}, Lcom/android/contacts/quickcontact/ResolveCache;->getIcon(Lcom/android/contacts/quickcontact/Action;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 494
    .local v3, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4, v7}, Lcom/android/contacts/quickcontact/CheckableImageView;->setChecked(Z)V

    .line 495
    invoke-virtual {v4, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 496
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 497
    iget-object v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTypeViewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 499
    return-object v4
.end method

.method private isMimeExcluded(Ljava/lang/String;)Z
    .locals 6
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 325
    iget-object v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mExcludeMimes:[Ljava/lang/String;

    if-nez v5, :cond_1

    .line 331
    :cond_0
    :goto_0
    return v4

    .line 326
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mExcludeMimes:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 327
    .local v1, "excludedMime":Ljava/lang/String;
    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 328
    const/4 v4, 0x1

    goto :goto_0

    .line 326
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private setHeaderNameText(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "resId"    # I

    .prologue
    .line 307
    invoke-virtual {p0, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->setHeaderNameText(ILjava/lang/CharSequence;)V

    .line 308
    return-void
.end method

.method private setHeaderNameText(ILjava/lang/CharSequence;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "value"    # Ljava/lang/CharSequence;

    .prologue
    .line 312
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 313
    .local v0, "view":Landroid/view/View;
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 314
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 315
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "view":Landroid/view/View;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    :cond_0
    return-void
.end method


# virtual methods
.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 2
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 508
    move-object v0, p1

    check-cast v0, Lcom/android/contacts/quickcontact/QuickContactListFragment;

    .line 509
    .local v0, "listFragment":Lcom/android/contacts/quickcontact/QuickContactListFragment;
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mListFragmentListener:Lcom/android/contacts/quickcontact/QuickContactListFragment$Listener;

    invoke-virtual {v0, v1}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->setListener(Lcom/android/contacts/quickcontact/QuickContactListFragment$Listener;)V

    .line 510
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 302
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->close(Z)V

    .line 303
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x0

    const/high16 v9, 0x20000

    .line 163
    iget-object v6, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mStopWatch:Lcom/android/contacts/util/StopWatch;

    const-string v7, "c"

    invoke-virtual {v6, v7}, Lcom/android/contacts/util/StopWatch;->lap(Ljava/lang/String;)V

    .line 164
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 166
    iget-object v6, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mStopWatch:Lcom/android/contacts/util/StopWatch;

    const-string v7, "sc"

    invoke-virtual {v6, v7}, Lcom/android/contacts/util/StopWatch;->lap(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 173
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 176
    .local v1, "lookupUri":Landroid/net/Uri;
    if-eqz v1, :cond_0

    const-string v6, "contacts"

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 177
    invoke-static {v1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3

    .line 178
    .local v3, "rawContactId":J
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/provider/ContactsContract$RawContacts;->getContactLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 182
    .end local v3    # "rawContactId":J
    :cond_0
    const-string v6, "missing lookupUri"

    invoke-static {v1, v6}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    iput-object v6, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mLookupUri:Landroid/net/Uri;

    .line 184
    const-string v6, "exclude_mimes"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mExcludeMimes:[Ljava/lang/String;

    .line 186
    iget-object v6, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mStopWatch:Lcom/android/contacts/util/StopWatch;

    const-string v7, "i"

    invoke-virtual {v6, v7}, Lcom/android/contacts/util/StopWatch;->lap(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p0}, Landroid/app/Activity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v6

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mLoaderCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v6, v7, v10, v8}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/ContactLoader;

    iput-object v6, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactLoader:Lcom/android/contacts/ContactLoader;

    .line 191
    iget-object v6, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mStopWatch:Lcom/android/contacts/util/StopWatch;

    const-string v7, "ld"

    invoke-virtual {v6, v7}, Lcom/android/contacts/util/StopWatch;->lap(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v9, v9}, Landroid/view/Window;->setFlags(II)V

    .line 197
    const v6, 0x7f040096

    invoke-virtual {p0, v6}, Landroid/app/Activity;->setContentView(I)V

    .line 199
    iget-object v6, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mStopWatch:Lcom/android/contacts/util/StopWatch;

    const-string v7, "l"

    invoke-virtual {v6, v7}, Lcom/android/contacts/util/StopWatch;->lap(Ljava/lang/String;)V

    .line 201
    const v6, 0x7f07013f

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/quickcontact/FloatingChildLayout;

    iput-object v6, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mFloatingLayout:Lcom/android/contacts/quickcontact/FloatingChildLayout;

    .line 202
    const v6, 0x7f070144

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iput-object v6, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTrack:Landroid/view/ViewGroup;

    .line 203
    const v6, 0x7f070143

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/HorizontalScrollView;

    iput-object v6, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTrackScroller:Landroid/widget/HorizontalScrollView;

    .line 204
    const v6, 0x7f07005e

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mOpenDetailsButton:Landroid/widget/ImageButton;

    .line 205
    const v6, 0x7f070060

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mOpenDetailsPushLayerButton:Landroid/widget/ImageButton;

    .line 206
    const v6, 0x7f070141

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/support/v4/view/ViewPager;

    iput-object v6, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mListPager:Landroid/support/v4/view/ViewPager;

    .line 207
    const v6, 0x7f070145

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSelectedTabRectangle:Landroid/view/View;

    .line 208
    const v6, 0x7f070140

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mLineAfterTrack:Landroid/view/View;

    .line 210
    iget-object v6, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mFloatingLayout:Lcom/android/contacts/quickcontact/FloatingChildLayout;

    new-instance v7, Lcom/android/contacts/quickcontact/QuickContactActivity$1;

    invoke-direct {v7, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$1;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    invoke-virtual {v6, v7}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->setOnOutsideTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 218
    new-instance v2, Lcom/android/contacts/quickcontact/QuickContactActivity$2;

    invoke-direct {v2, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$2;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    .line 228
    .local v2, "openDetailsClickHandler":Landroid/view/View$OnClickListener;
    iget-object v6, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mOpenDetailsButton:Landroid/widget/ImageButton;

    invoke-virtual {v6, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    iget-object v6, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mOpenDetailsPushLayerButton:Landroid/widget/ImageButton;

    invoke-virtual {v6, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    iget-object v6, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mListPager:Landroid/support/v4/view/ViewPager;

    new-instance v7, Lcom/android/contacts/quickcontact/QuickContactActivity$ViewPagerAdapter;

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v8

    invoke-direct {v7, p0, v8}, Lcom/android/contacts/quickcontact/QuickContactActivity$ViewPagerAdapter;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;Landroid/app/FragmentManager;)V

    invoke-virtual {v6, v7}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 231
    iget-object v6, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mListPager:Landroid/support/v4/view/ViewPager;

    new-instance v7, Lcom/android/contacts/quickcontact/QuickContactActivity$PageChangeListener;

    invoke-direct {v7, p0, v10}, Lcom/android/contacts/quickcontact/QuickContactActivity$PageChangeListener;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;Lcom/android/contacts/quickcontact/QuickContactActivity$1;)V

    invoke-virtual {v6, v7}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 233
    invoke-virtual {v0}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v5

    .line 234
    .local v5, "sourceBounds":Landroid/graphics/Rect;
    if-eqz v5, :cond_1

    .line 235
    iget-object v6, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mFloatingLayout:Lcom/android/contacts/quickcontact/FloatingChildLayout;

    invoke-virtual {v6, v5}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->setChildTargetScreen(Landroid/graphics/Rect;)V

    .line 239
    :cond_1
    const v6, 0x7f070142

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mPhotoContainer:Landroid/view/View;

    .line 240
    const v6, 0x7f070049

    const v7, 0x7f0c0121

    invoke-direct {p0, v6, v7}, Lcom/android/contacts/quickcontact/QuickContactActivity;->setHeaderNameText(II)V

    .line 242
    iget-object v6, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mStopWatch:Lcom/android/contacts/util/StopWatch;

    const-string v7, "v"

    invoke-virtual {v6, v7}, Lcom/android/contacts/util/StopWatch;->lap(Ljava/lang/String;)V

    .line 244
    iget-object v6, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mFloatingLayout:Lcom/android/contacts/quickcontact/FloatingChildLayout;

    new-instance v7, Lcom/android/contacts/quickcontact/QuickContactActivity$3;

    invoke-direct {v7, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$3;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    invoke-static {v6, v7}, Lcom/android/contacts/util/SchedulingUtils;->doAfterLayout(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 251
    iget-object v6, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mStopWatch:Lcom/android/contacts/util/StopWatch;

    const-string v7, "cf"

    invoke-virtual {v6, v7}, Lcom/android/contacts/util/StopWatch;->lap(Ljava/lang/String;)V

    .line 252
    return-void
.end method
