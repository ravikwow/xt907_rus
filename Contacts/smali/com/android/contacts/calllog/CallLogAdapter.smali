.class Lcom/android/contacts/calllog/CallLogAdapter;
.super Lcom/android/common/widget/GroupingListAdapter;
.source "CallLogAdapter.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Lcom/android/contacts/calllog/CallLogGroupBuilder$GroupCreator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/calllog/CallLogAdapter$QueryThread;,
        Lcom/android/contacts/calllog/CallLogAdapter$ContactInfoRequest;,
        Lcom/android/contacts/calllog/CallLogAdapter$NumberWithCountryIso;,
        Lcom/android/contacts/calllog/CallLogAdapter$CallFetcher;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final VDBG:Z


# instance fields
.field private isInActionMode:Z

.field private final mCallFetcher:Lcom/android/contacts/calllog/CallLogAdapter$CallFetcher;

.field private final mCallLogGroupBuilder:Lcom/android/contacts/calllog/CallLogGroupBuilder;

.field private final mCallLogViewsHelper:Lcom/android/contacts/calllog/CallLogListItemHelper;

.field private mCallerIdThread:Lcom/android/contacts/calllog/CallLogAdapter$QueryThread;

.field private mCityIdInfoCache:Lcom/android/contacts/util/ExpirableCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/contacts/util/ExpirableCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/contacts/calllog/CityIdInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContactInfoCache:Lcom/android/contacts/util/ExpirableCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/contacts/util/ExpirableCache",
            "<",
            "Lcom/android/contacts/calllog/CallLogAdapter$NumberWithCountryIso;",
            "Lcom/android/contacts/calllog/ContactInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mContactInfoHelper:Lcom/android/contacts/calllog/ContactInfoHelper;

.field private final mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

.field private final mContext:Landroid/content/Context;

.field private mEcidEnabled:Z

.field private mHandler:Landroid/os/Handler;

.field public mIsCallBeenPlaced:Z

.field private mLoading:Z

.field private mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;

.field private volatile mRequestProcessingDisabled:Z

.field private final mRequests:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/contacts/calllog/CallLogAdapter$ContactInfoRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mSecondaryActionListener:Landroid/view/View$OnClickListener;

.field private mUnknownPhoto:Landroid/graphics/Bitmap;

.field private mViewTreeObserver:Landroid/view/ViewTreeObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 143
    sget-boolean v0, Lcom/android/contacts/activities/DialtactsActivity;->DBG:Z

    sput-boolean v0, Lcom/android/contacts/calllog/CallLogAdapter;->DBG:Z

    .line 144
    sget-boolean v0, Lcom/android/contacts/activities/DialtactsActivity;->VDBG:Z

    sput-boolean v0, Lcom/android/contacts/calllog/CallLogAdapter;->VDBG:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/contacts/calllog/CallLogAdapter$CallFetcher;Lcom/android/contacts/calllog/ContactInfoHelper;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callFetcher"    # Lcom/android/contacts/calllog/CallLogAdapter$CallFetcher;
    .param p3, "contactInfoHelper"    # Lcom/android/contacts/calllog/ContactInfoHelper;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 291
    invoke-direct {p0, p1}, Lcom/android/common/widget/GroupingListAdapter;-><init>(Landroid/content/Context;)V

    .line 109
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    .line 133
    iput-boolean v5, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mIsCallBeenPlaced:Z

    .line 207
    iput-boolean v6, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mLoading:Z

    .line 224
    iput-boolean v5, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mRequestProcessingDisabled:Z

    .line 238
    new-instance v4, Lcom/android/contacts/calllog/CallLogAdapter$1;

    invoke-direct {v4, p0}, Lcom/android/contacts/calllog/CallLogAdapter$1;-><init>(Lcom/android/contacts/calllog/CallLogAdapter;)V

    iput-object v4, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mSecondaryActionListener:Landroid/view/View$OnClickListener;

    .line 275
    new-instance v4, Lcom/android/contacts/calllog/CallLogAdapter$2;

    invoke-direct {v4, p0}, Lcom/android/contacts/calllog/CallLogAdapter$2;-><init>(Lcom/android/contacts/calllog/CallLogAdapter;)V

    iput-object v4, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mHandler:Landroid/os/Handler;

    .line 293
    iput-object p1, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    .line 294
    iput-object p2, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mCallFetcher:Lcom/android/contacts/calllog/CallLogAdapter$CallFetcher;

    .line 295
    iput-object p3, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mContactInfoHelper:Lcom/android/contacts/calllog/ContactInfoHelper;

    .line 297
    const/16 v4, 0x64

    invoke-static {v4}, Lcom/android/contacts/util/ExpirableCache;->create(I)Lcom/android/contacts/util/ExpirableCache;

    move-result-object v4

    iput-object v4, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mContactInfoCache:Lcom/android/contacts/util/ExpirableCache;

    .line 300
    iget-object v4, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/contacts/calllog/CityIdInfo;->isAvaialble(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 301
    const/16 v4, 0xc8

    invoke-static {v4}, Lcom/android/contacts/util/ExpirableCache;->create(I)Lcom/android/contacts/util/ExpirableCache;

    move-result-object v4

    iput-object v4, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mCityIdInfoCache:Lcom/android/contacts/util/ExpirableCache;

    .line 304
    :cond_0
    iget-object v4, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/contacts/EcidContact;->isECIDAvailable(Landroid/content/Context;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mEcidEnabled:Z

    .line 307
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mRequests:Ljava/util/LinkedList;

    .line 309
    iget-object v4, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 310
    .local v3, "resources":Landroid/content/res/Resources;
    new-instance v0, Lcom/android/contacts/calllog/CallTypeHelper;

    invoke-direct {v0, v3}, Lcom/android/contacts/calllog/CallTypeHelper;-><init>(Landroid/content/res/Resources;)V

    .line 312
    .local v0, "callTypeHelper":Lcom/android/contacts/calllog/CallTypeHelper;
    iget-object v4, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/contacts/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/ContactPhotoManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    .line 313
    new-instance v4, Lcom/android/contacts/calllog/PhoneNumberHelper;

    invoke-direct {v4, v3}, Lcom/android/contacts/calllog/PhoneNumberHelper;-><init>(Landroid/content/res/Resources;)V

    iput-object v4, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;

    .line 314
    new-instance v2, Lcom/android/contacts/PhoneCallDetailsHelper;

    iget-object v4, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;

    invoke-direct {v2, v3, v0, v4, p1}, Lcom/android/contacts/PhoneCallDetailsHelper;-><init>(Landroid/content/res/Resources;Lcom/android/contacts/calllog/CallTypeHelper;Lcom/android/contacts/calllog/PhoneNumberHelper;Landroid/content/Context;)V

    .line 316
    .local v2, "phoneCallDetailsHelper":Lcom/android/contacts/PhoneCallDetailsHelper;
    new-instance v4, Lcom/android/contacts/calllog/CallLogListItemHelper;

    iget-object v5, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;

    invoke-direct {v4, v2, v5, v3}, Lcom/android/contacts/calllog/CallLogListItemHelper;-><init>(Lcom/android/contacts/PhoneCallDetailsHelper;Lcom/android/contacts/calllog/PhoneNumberHelper;Landroid/content/res/Resources;)V

    iput-object v4, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mCallLogViewsHelper:Lcom/android/contacts/calllog/CallLogListItemHelper;

    .line 319
    new-instance v4, Lcom/android/contacts/calllog/CallLogGroupBuilder;

    invoke-direct {v4, p0}, Lcom/android/contacts/calllog/CallLogGroupBuilder;-><init>(Lcom/android/contacts/calllog/CallLogGroupBuilder$GroupCreator;)V

    iput-object v4, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mCallLogGroupBuilder:Lcom/android/contacts/calllog/CallLogGroupBuilder;

    .line 321
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 322
    .local v1, "opts":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v6, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 323
    const v4, 0x7f0200d9

    invoke-static {v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mUnknownPhoto:Landroid/graphics/Bitmap;

    .line 327
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/calllog/CallLogAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/calllog/CallLogAdapter;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/calllog/CallLogAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/calllog/CallLogAdapter;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/contacts/calllog/CallLogAdapter;->startRequestProcessing()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/contacts/calllog/CallLogAdapter;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/calllog/CallLogAdapter;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mRequests:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/contacts/calllog/CallLogAdapter;Ljava/lang/String;Ljava/lang/String;Lcom/android/contacts/calllog/ContactInfo;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/calllog/CallLogAdapter;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lcom/android/contacts/calllog/ContactInfo;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/contacts/calllog/CallLogAdapter;->queryContactInfo(Ljava/lang/String;Ljava/lang/String;Lcom/android/contacts/calllog/ContactInfo;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/contacts/calllog/CallLogAdapter;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/calllog/CallLogAdapter;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private bindView(Landroid/view/View;Landroid/database/Cursor;I)V
    .locals 60
    .param p1, "view"    # Landroid/view/View;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "count"    # I

    .prologue
    .line 655
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/android/contacts/calllog/CallLogListItemViews;

    .line 656
    .local v36, "views":Lcom/android/contacts/calllog/CallLogListItemViews;
    const/16 v4, 0x13

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v57

    .line 659
    .local v57, "section":I
    const/4 v4, 0x2

    new-array v0, v4, [I

    move-object/from16 v53, v0

    fill-array-data v53, :array_0

    .line 660
    .local v53, "layoutLocation":[I
    move-object/from16 v0, p1

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 661
    const-string v4, "Calling_dbg"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "BindView layoutLocation[0]:"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v11, 0x0

    aget v11, v53, v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, " layoutLocation[1]:"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v11, 0x1

    aget v11, v53, v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, "cursor Position: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getPosition()I

    move-result v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    if-eqz v57, :cond_0

    const/4 v4, 0x2

    move/from16 v0, v57

    if-ne v0, v4, :cond_3

    .line 667
    :cond_0
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/android/contacts/calllog/CallLogListItemViews;->primaryActionView:Landroid/view/View;

    const/16 v8, 0x8

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 668
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/android/contacts/calllog/CallLogListItemViews;->bottomDivider:Landroid/view/View;

    const/16 v8, 0x8

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 669
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/android/contacts/calllog/CallLogListItemViews;->listHeaderTextView:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 670
    move-object/from16 v0, v36

    iget-object v8, v0, Lcom/android/contacts/calllog/CallLogListItemViews;->listHeaderTextView:Landroid/widget/TextView;

    if-nez v57, :cond_2

    const v4, 0x7f0c01f4

    :goto_0
    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setText(I)V

    .line 674
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/android/contacts/calllog/CallLogListItemViews;->primaryActionView:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 675
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/android/contacts/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 874
    :cond_1
    :goto_1
    return-void

    .line 670
    :cond_2
    const v4, 0x7f0c01f5

    goto :goto_0

    .line 680
    :cond_3
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/android/contacts/calllog/CallLogListItemViews;->primaryActionView:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 681
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/android/contacts/calllog/CallLogListItemViews;->bottomDivider:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 682
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/android/contacts/calllog/CallLogListItemViews;->listHeaderTextView:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 684
    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v49

    .line 685
    .local v49, "id":J
    const/4 v4, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 686
    .local v5, "number":Ljava/lang/String;
    const/4 v4, 0x2

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 687
    .local v16, "date":J
    const/4 v4, 0x3

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 688
    .local v18, "duration":J
    const/4 v4, 0x4

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v45

    .line 689
    .local v45, "callType":I
    const/4 v4, 0x5

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 692
    .local v6, "countryIso":Ljava/lang/String;
    const/16 v4, 0x11

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 693
    .local v9, "convertNumber":Ljava/lang/String;
    const/16 v4, 0x12

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 695
    .local v20, "cnapName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/contacts/calllog/CallLogAdapter;->getContactInfoFromCallLog(Landroid/database/Cursor;)Lcom/android/contacts/calllog/ContactInfo;

    move-result-object v7

    .line 697
    .local v7, "cachedContactInfo":Lcom/android/contacts/calllog/ContactInfo;
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/android/contacts/calllog/CallLogListItemViews;->primaryActionView:Landroid/view/View;

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getPosition()I

    move-result v8

    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    move-object/from16 v0, p0

    move-wide/from16 v1, v21

    move/from16 v3, p3

    invoke-static {v0, v8, v1, v2, v3}, Lcom/android/contacts/calllog/IntentProvider;->getCallDetailIntentProvider(Lcom/android/contacts/calllog/CallLogAdapter;IJI)Lcom/android/contacts/calllog/IntentProvider;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 701
    const/4 v4, 0x4

    move/from16 v0, v45

    if-ne v0, v4, :cond_a

    .line 702
    const/4 v4, 0x6

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v59

    .line 703
    .local v59, "voicemailUri":Ljava/lang/String;
    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v55

    .line 704
    .local v55, "rowId":J
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/android/contacts/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/ImageView;

    move-wide/from16 v0, v55

    move-object/from16 v2, v59

    invoke-static {v0, v1, v2}, Lcom/android/contacts/calllog/IntentProvider;->getPlayVoicemailIntentProvider(JLjava/lang/String;)Lcom/android/contacts/calllog/IntentProvider;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 716
    .end local v55    # "rowId":J
    .end local v59    # "voicemailUri":Ljava/lang/String;
    :goto_2
    new-instance v54, Lcom/android/contacts/calllog/CallLogAdapter$NumberWithCountryIso;

    move-object/from16 v0, v54

    invoke-direct {v0, v5, v6}, Lcom/android/contacts/calllog/CallLogAdapter$NumberWithCountryIso;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    .local v54, "numberCountryIso":Lcom/android/contacts/calllog/CallLogAdapter$NumberWithCountryIso;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/calllog/CallLogAdapter;->mContactInfoCache:Lcom/android/contacts/util/ExpirableCache;

    move-object/from16 v0, v54

    invoke-virtual {v4, v0}, Lcom/android/contacts/util/ExpirableCache;->getCachedValue(Ljava/lang/Object;)Lcom/android/contacts/util/ExpirableCache$CachedValue;

    move-result-object v44

    .line 719
    .local v44, "cachedInfo":Lcom/android/contacts/util/ExpirableCache$CachedValue;, "Lcom/android/contacts/util/ExpirableCache$CachedValue<Lcom/android/contacts/calllog/ContactInfo;>;"
    if-nez v44, :cond_c

    const/16 v51, 0x0

    .line 722
    .local v51, "info":Lcom/android/contacts/calllog/ContactInfo;
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/contacts/calllog/CallLogAdapter;->isInActionMode:Z

    if-eqz v4, :cond_d

    .line 723
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/android/contacts/calllog/CallLogListItemViews;->primaryActionView:Landroid/view/View;

    const v8, 0x7f0200e5

    invoke-virtual {v4, v8}, Landroid/view/View;->setBackgroundResource(I)V

    .line 729
    :goto_4
    sget-boolean v4, Lcom/android/contacts/calllog/CallLogAdapter;->VDBG:Z

    if-eqz v4, :cond_4

    .line 730
    const-string v4, "bindView ["

    invoke-static {v4}, Lcom/android/contacts/calllog/CallLogAdapter;->log(Ljava/lang/String;)V

    .line 731
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cursor id: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v49

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/contacts/calllog/CallLogAdapter;->log(Ljava/lang/String;)V

    .line 732
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cursor Count: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getCount()I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/contacts/calllog/CallLogAdapter;->log(Ljava/lang/String;)V

    .line 733
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cursor Position: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getPosition()I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/contacts/calllog/CallLogAdapter;->log(Ljava/lang/String;)V

    .line 734
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " call_log.number        "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/contacts/calllog/CallLogAdapter;->log(Ljava/lang/String;)V

    .line 735
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " call_log.callType    "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v45

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/contacts/calllog/CallLogAdapter;->log(Ljava/lang/String;)V

    .line 736
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " call_log.callerNameType    "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/contacts/calllog/CallLogAdapter;->log(Ljava/lang/String;)V

    .line 737
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " call_log.countryIso    "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/contacts/calllog/CallLogAdapter;->log(Ljava/lang/String;)V

    .line 738
    const-string v4, " ......................."

    invoke-static {v4}, Lcom/android/contacts/calllog/CallLogAdapter;->log(Ljava/lang/String;)V

    .line 739
    if-eqz v51, :cond_e

    .line 740
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " info.lookupUri          "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v51

    iget-object v8, v0, Lcom/android/contacts/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/contacts/calllog/CallLogAdapter;->log(Ljava/lang/String;)V

    .line 741
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " info.name              "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v51

    iget-object v8, v0, Lcom/android/contacts/calllog/ContactInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/contacts/calllog/CallLogAdapter;->log(Ljava/lang/String;)V

    .line 742
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " info.number            "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v51

    iget-object v8, v0, Lcom/android/contacts/calllog/ContactInfo;->number:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/contacts/calllog/CallLogAdapter;->log(Ljava/lang/String;)V

    .line 743
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " info.formattedNumber  "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v51

    iget-object v8, v0, Lcom/android/contacts/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/contacts/calllog/CallLogAdapter;->log(Ljava/lang/String;)V

    .line 744
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " info.normalizedNumber  "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v51

    iget-object v8, v0, Lcom/android/contacts/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/contacts/calllog/CallLogAdapter;->log(Ljava/lang/String;)V

    .line 749
    :goto_5
    if-eqz v7, :cond_f

    .line 750
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " cachedContactInfo.lookupUri          "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v8, v7, Lcom/android/contacts/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/contacts/calllog/CallLogAdapter;->log(Ljava/lang/String;)V

    .line 751
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " cachedContactInfo.name              "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v8, v7, Lcom/android/contacts/calllog/ContactInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/contacts/calllog/CallLogAdapter;->log(Ljava/lang/String;)V

    .line 752
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " cachedContactInfo.number            "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v8, v7, Lcom/android/contacts/calllog/ContactInfo;->number:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/contacts/calllog/CallLogAdapter;->log(Ljava/lang/String;)V

    .line 753
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " cachedContactInfo.formattedNumber  "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v8, v7, Lcom/android/contacts/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/contacts/calllog/CallLogAdapter;->log(Ljava/lang/String;)V

    .line 754
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " cachedContactInfo.normalizedNumber  "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v8, v7, Lcom/android/contacts/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/contacts/calllog/CallLogAdapter;->log(Ljava/lang/String;)V

    .line 758
    :goto_6
    const-string v4, "]"

    invoke-static {v4}, Lcom/android/contacts/calllog/CallLogAdapter;->log(Ljava/lang/String;)V

    .line 762
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/calllog/CallLogAdapter;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;

    invoke-virtual {v4, v5}, Lcom/android/contacts/calllog/PhoneNumberHelper;->canPlaceCallsTo(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_10

    .line 766
    sget-object v51, Lcom/android/contacts/calllog/ContactInfo;->EMPTY:Lcom/android/contacts/calllog/ContactInfo;

    .line 797
    :cond_5
    :goto_7
    move-object/from16 v0, v51

    iget-object v0, v0, Lcom/android/contacts/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    move-object/from16 v34, v0

    .line 798
    .local v34, "lookupUri":Landroid/net/Uri;
    move-object/from16 v0, v51

    iget-object v0, v0, Lcom/android/contacts/calllog/ContactInfo;->name:Ljava/lang/String;

    move-object/from16 v31, v0

    .line 799
    .local v31, "name":Ljava/lang/String;
    move-object/from16 v0, v51

    iget v0, v0, Lcom/android/contacts/calllog/ContactInfo;->type:I

    move/from16 v32, v0

    .line 800
    .local v32, "ntype":I
    move-object/from16 v0, v51

    iget-object v0, v0, Lcom/android/contacts/calllog/ContactInfo;->label:Ljava/lang/String;

    move-object/from16 v33, v0

    .line 801
    .local v33, "label":Ljava/lang/String;
    move-object/from16 v0, v51

    iget-wide v0, v0, Lcom/android/contacts/calllog/ContactInfo;->photoId:J

    move-wide/from16 v37, v0

    .line 802
    .local v37, "photoId":J
    move-object/from16 v0, v51

    iget-object v12, v0, Lcom/android/contacts/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    .line 805
    .local v12, "formattedNumber":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/calllog/CallLogAdapter;->getCallTypes(Landroid/database/Cursor;I)[I

    move-result-object v15

    .line 812
    .local v15, "callTypes":[I
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/contacts/calllog/CallLogAdapter;->mEcidEnabled:Z

    if-eqz v4, :cond_17

    .line 813
    const v4, 0x7f07004b

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v47

    check-cast v47, Landroid/widget/TextView;

    .line 814
    .local v47, "cityIdView":Landroid/widget/TextView;
    const/16 v58, 0x0

    .line 815
    .local v58, "strCityID":Ljava/lang/String;
    if-eqz v47, :cond_6

    .line 816
    move-object/from16 v0, v47

    invoke-static {v5, v0}, Lcom/android/contacts/EcidContact;->computeDisplayName(Ljava/lang/String;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v58

    .line 817
    sget-boolean v4, Lcom/android/contacts/calllog/CallLogAdapter;->VDBG:Z

    if-eqz v4, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "returned city ID string, setting geocode to "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v58

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/contacts/calllog/CallLogAdapter;->log(Ljava/lang/String;)V

    .line 819
    :cond_6
    move-object/from16 v14, v58

    .line 835
    .end local v47    # "cityIdView":Landroid/widget/TextView;
    .end local v58    # "strCityID":Ljava/lang/String;
    .local v14, "geocode":Ljava/lang/String;
    :goto_8
    invoke-static/range {v31 .. v31}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 836
    new-instance v10, Lcom/android/contacts/PhoneCallDetails;

    move-object v11, v5

    move-object v13, v6

    invoke-direct/range {v10 .. v20}, Lcom/android/contacts/PhoneCallDetails;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJLjava/lang/String;)V

    .line 844
    .local v10, "details":Lcom/android/contacts/PhoneCallDetails;
    :goto_9
    const/16 v4, 0x10

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-nez v4, :cond_1b

    const/16 v52, 0x1

    .line 846
    .local v52, "isNew":Z
    :goto_a
    move/from16 v24, v52

    .line 849
    .local v24, "isHighlighted":Z
    const/16 v25, 0x0

    .line 850
    .local v25, "isVoicemail":Z
    const/16 v26, 0x0

    .line 851
    .local v26, "isEmergency":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/calllog/CallLogAdapter;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;

    invoke-virtual {v4, v5}, Lcom/android/contacts/calllog/PhoneNumberHelper;->isVoicemailNumber(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 853
    const/16 v25, 0x1

    .line 855
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5, v4}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 858
    const/16 v26, 0x1

    .line 862
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/calllog/CallLogAdapter;->mCallLogViewsHelper:Lcom/android/contacts/calllog/CallLogListItemHelper;

    move-object/from16 v21, v0

    move-object/from16 v22, v36

    move-object/from16 v23, v10

    invoke-virtual/range {v21 .. v26}, Lcom/android/contacts/calllog/CallLogListItemHelper;->setPhoneCallDetails(Lcom/android/contacts/calllog/CallLogListItemViews;Lcom/android/contacts/PhoneCallDetails;ZZZ)V

    move-object/from16 v35, p0

    move-object/from16 v39, v34

    move/from16 v40, v25

    move/from16 v41, v26

    move-object/from16 v42, v31

    move-object/from16 v43, v5

    .line 863
    invoke-direct/range {v35 .. v43}, Lcom/android/contacts/calllog/CallLogAdapter;->setPhoto(Lcom/android/contacts/calllog/CallLogListItemViews;JLandroid/net/Uri;ZZLjava/lang/String;Ljava/lang/String;)V

    .line 866
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/calllog/CallLogAdapter;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    if-nez v4, :cond_9

    .line 867
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/contacts/calllog/CallLogAdapter;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    .line 868
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/calllog/CallLogAdapter;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 871
    :cond_9
    sget-boolean v4, Lcom/android/contacts/calllog/CallLogAdapter;->VDBG:Z

    if-eqz v4, :cond_1

    .line 872
    const-string v4, "exit bindView"

    invoke-static {v4}, Lcom/android/contacts/calllog/CallLogAdapter;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 706
    .end local v10    # "details":Lcom/android/contacts/PhoneCallDetails;
    .end local v12    # "formattedNumber":Ljava/lang/CharSequence;
    .end local v14    # "geocode":Ljava/lang/String;
    .end local v15    # "callTypes":[I
    .end local v24    # "isHighlighted":Z
    .end local v25    # "isVoicemail":Z
    .end local v26    # "isEmergency":Z
    .end local v31    # "name":Ljava/lang/String;
    .end local v32    # "ntype":I
    .end local v33    # "label":Ljava/lang/String;
    .end local v34    # "lookupUri":Landroid/net/Uri;
    .end local v37    # "photoId":J
    .end local v44    # "cachedInfo":Lcom/android/contacts/util/ExpirableCache$CachedValue;, "Lcom/android/contacts/util/ExpirableCache$CachedValue<Lcom/android/contacts/calllog/ContactInfo;>;"
    .end local v51    # "info":Lcom/android/contacts/calllog/ContactInfo;
    .end local v52    # "isNew":Z
    .end local v54    # "numberCountryIso":Lcom/android/contacts/calllog/CallLogAdapter$NumberWithCountryIso;
    :cond_a
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 708
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/android/contacts/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/ImageView;

    invoke-static {v5}, Lcom/android/contacts/calllog/IntentProvider;->getReturnCallIntentProvider(Ljava/lang/String;)Lcom/android/contacts/calllog/IntentProvider;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 712
    :cond_b
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/android/contacts/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 719
    .restart local v44    # "cachedInfo":Lcom/android/contacts/util/ExpirableCache$CachedValue;, "Lcom/android/contacts/util/ExpirableCache$CachedValue<Lcom/android/contacts/calllog/ContactInfo;>;"
    .restart local v54    # "numberCountryIso":Lcom/android/contacts/calllog/CallLogAdapter$NumberWithCountryIso;
    :cond_c
    invoke-interface/range {v44 .. v44}, Lcom/android/contacts/util/ExpirableCache$CachedValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/calllog/ContactInfo;

    move-object/from16 v51, v4

    goto/16 :goto_3

    .line 725
    .restart local v51    # "info":Lcom/android/contacts/calllog/ContactInfo;
    :cond_d
    move-object/from16 v0, v36

    iget-object v4, v0, Lcom/android/contacts/calllog/CallLogListItemViews;->primaryActionView:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    .line 746
    :cond_e
    const-string v4, " info is null"

    invoke-static {v4}, Lcom/android/contacts/calllog/CallLogAdapter;->log(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 756
    :cond_f
    const-string v4, " cachedContactInfo is null"

    invoke-static {v4}, Lcom/android/contacts/calllog/CallLogAdapter;->log(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 767
    :cond_10
    if-nez v44, :cond_12

    .line 768
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/calllog/CallLogAdapter;->mContactInfoCache:Lcom/android/contacts/util/ExpirableCache;

    sget-object v8, Lcom/android/contacts/calllog/ContactInfo;->EMPTY:Lcom/android/contacts/calllog/ContactInfo;

    move-object/from16 v0, v54

    invoke-virtual {v4, v0, v8}, Lcom/android/contacts/util/ExpirableCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 770
    move-object/from16 v51, v7

    .line 773
    sget-boolean v4, Lcom/android/contacts/calllog/CallLogAdapter;->DBG:Z

    if-eqz v4, :cond_11

    const-string v4, "call log number not find in contact info cache, push request to query"

    invoke-static {v4}, Lcom/android/contacts/calllog/CallLogAdapter;->log(Ljava/lang/String;)V

    .line 774
    :cond_11
    const/4 v8, 0x1

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/android/contacts/calllog/CallLogAdapter;->enqueueRequest(Ljava/lang/String;Ljava/lang/String;Lcom/android/contacts/calllog/ContactInfo;ZLjava/lang/String;)V

    goto/16 :goto_7

    .line 777
    :cond_12
    sget-boolean v4, Lcom/android/contacts/calllog/CallLogAdapter;->DBG:Z

    if-eqz v4, :cond_13

    const-string v4, "call log number find in contact info cache."

    invoke-static {v4}, Lcom/android/contacts/calllog/CallLogAdapter;->log(Ljava/lang/String;)V

    .line 778
    :cond_13
    invoke-interface/range {v44 .. v44}, Lcom/android/contacts/util/ExpirableCache$CachedValue;->isExpired()Z

    move-result v4

    if-eqz v4, :cond_16

    .line 781
    sget-boolean v4, Lcom/android/contacts/calllog/CallLogAdapter;->DBG:Z

    if-eqz v4, :cond_14

    const-string v4, "call log number find in contact info cache, but expired, push request to query"

    invoke-static {v4}, Lcom/android/contacts/calllog/CallLogAdapter;->log(Ljava/lang/String;)V

    .line 782
    :cond_14
    const/4 v8, 0x0

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/android/contacts/calllog/CallLogAdapter;->enqueueRequest(Ljava/lang/String;Ljava/lang/String;Lcom/android/contacts/calllog/ContactInfo;ZLjava/lang/String;)V

    .line 791
    :cond_15
    :goto_b
    sget-object v4, Lcom/android/contacts/calllog/ContactInfo;->EMPTY:Lcom/android/contacts/calllog/ContactInfo;

    move-object/from16 v0, v51

    if-ne v0, v4, :cond_5

    .line 793
    move-object/from16 v51, v7

    goto/16 :goto_7

    .line 783
    :cond_16
    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v7, v1}, Lcom/android/contacts/calllog/CallLogAdapter;->callLogInfoMatches(Lcom/android/contacts/calllog/ContactInfo;Lcom/android/contacts/calllog/ContactInfo;)Z

    move-result v4

    if-nez v4, :cond_15

    .line 788
    const/4 v8, 0x0

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/android/contacts/calllog/CallLogAdapter;->enqueueRequest(Ljava/lang/String;Ljava/lang/String;Lcom/android/contacts/calllog/ContactInfo;ZLjava/lang/String;)V

    goto :goto_b

    .line 821
    .restart local v12    # "formattedNumber":Ljava/lang/CharSequence;
    .restart local v15    # "callTypes":[I
    .restart local v31    # "name":Ljava/lang/String;
    .restart local v32    # "ntype":I
    .restart local v33    # "label":Ljava/lang/String;
    .restart local v34    # "lookupUri":Landroid/net/Uri;
    .restart local v37    # "photoId":J
    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/contacts/calllog/CityIdInfo;->isAvaialble(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 822
    const v4, 0x7f07004b

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v47

    check-cast v47, Landroid/widget/TextView;

    .line 823
    .restart local v47    # "cityIdView":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/calllog/CallLogAdapter;->mCityIdInfoCache:Lcom/android/contacts/util/ExpirableCache;

    invoke-virtual {v4, v5}, Lcom/android/contacts/util/ExpirableCache;->getPossiblyExpired(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lcom/android/contacts/calllog/CityIdInfo;

    .line 824
    .local v46, "cidinfo":Lcom/android/contacts/calllog/CityIdInfo;
    const/16 v48, 0x0

    .line 825
    .local v48, "displayCityId":Ljava/lang/String;
    if-eqz v46, :cond_18

    .line 826
    invoke-virtual/range {v46 .. v47}, Lcom/android/contacts/calllog/CityIdInfo;->computeDisplayName(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v48

    .line 828
    :cond_18
    move-object/from16 v14, v48

    .line 829
    .restart local v14    # "geocode":Ljava/lang/String;
    goto/16 :goto_8

    .line 830
    .end local v14    # "geocode":Ljava/lang/String;
    .end local v46    # "cidinfo":Lcom/android/contacts/calllog/CityIdInfo;
    .end local v47    # "cityIdView":Landroid/widget/TextView;
    .end local v48    # "displayCityId":Ljava/lang/String;
    :cond_19
    const/4 v14, 0x0

    .restart local v14    # "geocode":Ljava/lang/String;
    goto/16 :goto_8

    .line 840
    :cond_1a
    new-instance v10, Lcom/android/contacts/PhoneCallDetails;

    const/16 v35, 0x0

    move-object/from16 v21, v10

    move-object/from16 v22, v5

    move-object/from16 v23, v12

    move-object/from16 v24, v6

    move-object/from16 v25, v14

    move-object/from16 v26, v15

    move-wide/from16 v27, v16

    move-wide/from16 v29, v18

    invoke-direct/range {v21 .. v35}, Lcom/android/contacts/PhoneCallDetails;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJLjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;)V

    .restart local v10    # "details":Lcom/android/contacts/PhoneCallDetails;
    goto/16 :goto_9

    .line 844
    :cond_1b
    const/16 v52, 0x0

    goto/16 :goto_a

    .line 659
    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method private callLogInfoMatches(Lcom/android/contacts/calllog/ContactInfo;Lcom/android/contacts/calllog/ContactInfo;)Z
    .locals 2
    .param p1, "callLogInfo"    # Lcom/android/contacts/calllog/ContactInfo;
    .param p2, "info"    # Lcom/android/contacts/calllog/ContactInfo;

    .prologue
    .line 890
    iget-object v0, p1, Lcom/android/contacts/calllog/ContactInfo;->name:Ljava/lang/String;

    iget-object v1, p2, Lcom/android/contacts/calllog/ContactInfo;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/android/contacts/calllog/ContactInfo;->type:I

    iget v1, p2, Lcom/android/contacts/calllog/ContactInfo;->type:I

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/android/contacts/calllog/ContactInfo;->label:Ljava/lang/String;

    iget-object v1, p2, Lcom/android/contacts/calllog/ContactInfo;->label:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private findAndCacheViews(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 641
    invoke-static {p1}, Lcom/android/contacts/calllog/CallLogListItemViews;->fromView(Landroid/view/View;)Lcom/android/contacts/calllog/CallLogListItemViews;

    move-result-object v0

    .line 643
    .local v0, "views":Lcom/android/contacts/calllog/CallLogListItemViews;
    iget-object v1, v0, Lcom/android/contacts/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mSecondaryActionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 644
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 645
    return-void
.end method

.method private getCallTypes(Landroid/database/Cursor;I)[I
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "count"    # I

    .prologue
    .line 986
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    .line 987
    .local v2, "position":I
    new-array v0, p2, [I

    .line 988
    .local v0, "callTypes":[I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 989
    const/4 v3, 0x4

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    aput v3, v0, v1

    .line 990
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 988
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 992
    :cond_0
    invoke-interface {p1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 993
    return-object v0
.end method

.method private getContactInfoFromCallLog(Landroid/database/Cursor;)Lcom/android/contacts/calllog/ContactInfo;
    .locals 4
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 964
    new-instance v0, Lcom/android/contacts/calllog/ContactInfo;

    invoke-direct {v0}, Lcom/android/contacts/calllog/ContactInfo;-><init>()V

    .line 965
    .local v0, "info":Lcom/android/contacts/calllog/ContactInfo;
    const/16 v2, 0xb

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/util/UriUtils;->parseUriOrNull(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v0, Lcom/android/contacts/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    .line 966
    const/16 v2, 0x8

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/contacts/calllog/ContactInfo;->name:Ljava/lang/String;

    .line 967
    const/16 v2, 0x9

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/android/contacts/calllog/ContactInfo;->type:I

    .line 968
    const/16 v2, 0xa

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/contacts/calllog/ContactInfo;->label:Ljava/lang/String;

    .line 969
    const/16 v2, 0xc

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 970
    .local v1, "matchedNumber":Ljava/lang/String;
    if-nez v1, :cond_0

    const/4 v2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .end local v1    # "matchedNumber":Ljava/lang/String;
    :cond_0
    iput-object v1, v0, Lcom/android/contacts/calllog/ContactInfo;->number:Ljava/lang/String;

    .line 971
    const/16 v2, 0xd

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/contacts/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    .line 972
    const/16 v2, 0xe

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/contacts/calllog/ContactInfo;->photoId:J

    .line 973
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/contacts/calllog/ContactInfo;->photoUri:Landroid/net/Uri;

    .line 974
    const/16 v2, 0xf

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/contacts/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    .line 975
    return-object v0
.end method

.method static log(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1117
    const-string v0, "CallLogAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    return-void
.end method

.method private queryCityIDInfo(Ljava/lang/String;)Lcom/android/contacts/calllog/CityIdInfo;
    .locals 3
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 521
    const/4 v0, 0x0

    .line 522
    .local v0, "cidInfo":Lcom/android/contacts/calllog/CityIdInfo;
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/contacts/calllog/CityIdInfo;->isAvaialble(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mCityIdInfoCache:Lcom/android/contacts/util/ExpirableCache;

    invoke-virtual {v1, p1}, Lcom/android/contacts/util/ExpirableCache;->getPossiblyExpired(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 524
    sget-boolean v1, Lcom/android/contacts/calllog/CallLogAdapter;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "start recentCallCityIdLookup"

    invoke-static {v1}, Lcom/android/contacts/calllog/CallLogAdapter;->log(Ljava/lang/String;)V

    .line 526
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, p1, v2}, Lcom/android/contacts/calllog/CityIdInfo;->recentCallCityIdLookup(Landroid/content/Context;Ljava/lang/String;Z)Lcom/android/contacts/calllog/CityIdInfo;

    move-result-object v0

    .line 527
    sget-boolean v1, Lcom/android/contacts/calllog/CallLogAdapter;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "end recentCallCityIdLookup"

    invoke-static {v1}, Lcom/android/contacts/calllog/CallLogAdapter;->log(Ljava/lang/String;)V

    .line 529
    :cond_1
    return-object v0
.end method

.method private queryContactInfo(Ljava/lang/String;Ljava/lang/String;Lcom/android/contacts/calllog/ContactInfo;Ljava/lang/String;)Z
    .locals 11
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "countryIso"    # Ljava/lang/String;
    .param p3, "callLogInfo"    # Lcom/android/contacts/calllog/ContactInfo;
    .param p4, "convertNumber"    # Ljava/lang/String;

    .prologue
    .line 469
    sget-boolean v8, Lcom/android/contacts/calllog/CallLogAdapter;->DBG:Z

    if-eqz v8, :cond_0

    const-string v8, "queryContactInfo "

    invoke-static {v8}, Lcom/android/contacts/calllog/CallLogAdapter;->log(Ljava/lang/String;)V

    .line 470
    :cond_0
    iget-object v8, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mContactInfoHelper:Lcom/android/contacts/calllog/ContactInfoHelper;

    invoke-virtual {v8, p1, p2, p4}, Lcom/android/contacts/calllog/ContactInfoHelper;->lookupNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/calllog/ContactInfo;

    move-result-object v4

    .line 472
    .local v4, "info":Lcom/android/contacts/calllog/ContactInfo;
    if-nez v4, :cond_2

    .line 474
    const/4 v7, 0x0

    .line 508
    :cond_1
    :goto_0
    return v7

    .line 479
    :cond_2
    new-instance v6, Lcom/android/contacts/calllog/CallLogAdapter$NumberWithCountryIso;

    invoke-direct {v6, p1, p2}, Lcom/android/contacts/calllog/CallLogAdapter$NumberWithCountryIso;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    .local v6, "numberCountryIso":Lcom/android/contacts/calllog/CallLogAdapter$NumberWithCountryIso;
    iget-object v8, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mContactInfoCache:Lcom/android/contacts/util/ExpirableCache;

    invoke-virtual {v8, v6}, Lcom/android/contacts/util/ExpirableCache;->getPossiblyExpired(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/calllog/ContactInfo;

    .line 481
    .local v2, "existingInfo":Lcom/android/contacts/calllog/ContactInfo;
    sget-object v8, Lcom/android/contacts/calllog/ContactInfo;->EMPTY:Lcom/android/contacts/calllog/ContactInfo;

    if-eq v2, v8, :cond_5

    invoke-virtual {v4, v2}, Lcom/android/contacts/calllog/ContactInfo;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    const/4 v7, 0x1

    .line 485
    .local v7, "updated":Z
    :goto_1
    iget-object v8, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mContactInfoCache:Lcom/android/contacts/util/ExpirableCache;

    invoke-virtual {v8, v6, v4}, Lcom/android/contacts/util/ExpirableCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 488
    invoke-direct {p0, p1, p2, v4, p3}, Lcom/android/contacts/calllog/CallLogAdapter;->updateCallLogContactInfoCache(Ljava/lang/String;Ljava/lang/String;Lcom/android/contacts/calllog/ContactInfo;Lcom/android/contacts/calllog/ContactInfo;)V

    .line 490
    iget-boolean v8, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mEcidEnabled:Z

    if-eqz v8, :cond_7

    .line 491
    const/4 v5, 0x0

    .line 492
    .local v5, "newEcidInfo":Lcom/android/contacts/EcidContact;
    iget-object v8, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    iget-object v9, v4, Lcom/android/contacts/calllog/ContactInfo;->number:Ljava/lang/String;

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Lcom/android/contacts/EcidContact;->doCacheLookup(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/contacts/EcidContact;

    move-result-object v1

    .line 493
    .local v1, "ecidInfo":Lcom/android/contacts/EcidContact;
    if-nez v1, :cond_3

    .line 494
    iget-object v8, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    iget-object v9, v4, Lcom/android/contacts/calllog/ContactInfo;->number:Ljava/lang/String;

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Lcom/android/contacts/EcidContact;->doLookup(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/contacts/EcidContact;

    move-result-object v5

    .line 496
    :cond_3
    if-nez v7, :cond_4

    if-eqz v5, :cond_6

    :cond_4
    const/4 v7, 0x1

    .line 498
    :goto_2
    goto :goto_0

    .line 481
    .end local v1    # "ecidInfo":Lcom/android/contacts/EcidContact;
    .end local v5    # "newEcidInfo":Lcom/android/contacts/EcidContact;
    .end local v7    # "updated":Z
    :cond_5
    const/4 v7, 0x0

    goto :goto_1

    .line 496
    .restart local v1    # "ecidInfo":Lcom/android/contacts/EcidContact;
    .restart local v5    # "newEcidInfo":Lcom/android/contacts/EcidContact;
    .restart local v7    # "updated":Z
    :cond_6
    const/4 v7, 0x0

    goto :goto_2

    .line 498
    .end local v1    # "ecidInfo":Lcom/android/contacts/EcidContact;
    .end local v5    # "newEcidInfo":Lcom/android/contacts/EcidContact;
    :cond_7
    iget-object v8, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/contacts/calllog/CityIdInfo;->isAvaialble(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 499
    const/4 v0, 0x0

    .line 500
    .local v0, "cidInfo":Lcom/android/contacts/calllog/CityIdInfo;
    iget-object v8, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mCityIdInfoCache:Lcom/android/contacts/util/ExpirableCache;

    invoke-virtual {v8, p1}, Lcom/android/contacts/util/ExpirableCache;->getPossiblyExpired(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/calllog/CityIdInfo;

    .line 501
    .local v3, "existingcidInfo":Lcom/android/contacts/calllog/CityIdInfo;
    if-nez v3, :cond_8

    .line 502
    invoke-direct {p0, p1}, Lcom/android/contacts/calllog/CallLogAdapter;->queryCityIDInfo(Ljava/lang/String;)Lcom/android/contacts/calllog/CityIdInfo;

    move-result-object v0

    .line 504
    :cond_8
    if-nez v7, :cond_9

    if-eqz v0, :cond_a

    :cond_9
    const/4 v7, 0x1

    .line 505
    :goto_3
    if-eqz v0, :cond_1

    iget-object v8, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mCityIdInfoCache:Lcom/android/contacts/util/ExpirableCache;

    invoke-virtual {v8, p1, v0}, Lcom/android/contacts/util/ExpirableCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 504
    :cond_a
    const/4 v7, 0x0

    goto :goto_3
.end method

.method private setPhoto(Lcom/android/contacts/calllog/CallLogListItemViews;JLandroid/net/Uri;ZZLjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "views"    # Lcom/android/contacts/calllog/CallLogListItemViews;
    .param p2, "photoId"    # J
    .param p4, "contactUri"    # Landroid/net/Uri;
    .param p5, "isVoicemail"    # Z
    .param p6, "isEmergency"    # Z
    .param p7, "contactName"    # Ljava/lang/String;
    .param p8, "number"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 998
    if-eqz p4, :cond_0

    .line 999
    iget-object v0, p1, Lcom/android/contacts/calllog/CallLogListItemViews;->quickContactView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v0, p4}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 1004
    :goto_0
    if-eqz p5, :cond_1

    .line 1009
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    iget-object v1, p1, Lcom/android/contacts/calllog/CallLogListItemViews;->quickContactView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v0, v1}, Lcom/android/contacts/ContactPhotoManager;->removePhoto(Landroid/widget/ImageView;)V

    .line 1011
    iget-object v0, p1, Lcom/android/contacts/calllog/CallLogListItemViews;->quickContactView:Landroid/widget/QuickContactBadge;

    const v1, 0x7f02009d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1026
    :goto_1
    return-void

    .line 1001
    :cond_0
    iget-object v0, p1, Lcom/android/contacts/calllog/CallLogListItemViews;->quickContactView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v0, p8, v4}, Landroid/widget/QuickContactBadge;->assignContactFromPhone(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1013
    :cond_1
    if-eqz p6, :cond_2

    .line 1018
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    iget-object v1, p1, Lcom/android/contacts/calllog/CallLogListItemViews;->quickContactView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v0, v1}, Lcom/android/contacts/ContactPhotoManager;->removePhoto(Landroid/widget/ImageView;)V

    .line 1020
    iget-object v0, p1, Lcom/android/contacts/calllog/CallLogListItemViews;->quickContactView:Landroid/widget/QuickContactBadge;

    const v1, 0x1080448

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 1024
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    iget-object v1, p1, Lcom/android/contacts/calllog/CallLogListItemViews;->quickContactView:Landroid/widget/QuickContactBadge;

    iget-object v6, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mUnknownPhoto:Landroid/graphics/Bitmap;

    move-wide v2, p2

    move-object v5, p7

    invoke-virtual/range {v0 .. v6}, Lcom/android/contacts/ContactPhotoManager;->loadPhotoForRC(Landroid/widget/ImageView;JZLjava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method private declared-synchronized startRequestProcessing()V
    .locals 2

    .prologue
    .line 370
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mRequestProcessingDisabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 378
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 373
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mCallerIdThread:Lcom/android/contacts/calllog/CallLogAdapter$QueryThread;

    if-nez v0, :cond_0

    .line 375
    new-instance v0, Lcom/android/contacts/calllog/CallLogAdapter$QueryThread;

    invoke-direct {v0, p0}, Lcom/android/contacts/calllog/CallLogAdapter$QueryThread;-><init>(Lcom/android/contacts/calllog/CallLogAdapter;)V

    iput-object v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mCallerIdThread:Lcom/android/contacts/calllog/CallLogAdapter$QueryThread;

    .line 376
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mCallerIdThread:Lcom/android/contacts/calllog/CallLogAdapter$QueryThread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 377
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mCallerIdThread:Lcom/android/contacts/calllog/CallLogAdapter$QueryThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 370
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private unregisterPreDrawListener()V
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 402
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    .line 403
    return-void
.end method

.method private updateCallLogContactInfoCache(Ljava/lang/String;Ljava/lang/String;Lcom/android/contacts/calllog/ContactInfo;Lcom/android/contacts/calllog/ContactInfo;)V
    .locals 8
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "countryIso"    # Ljava/lang/String;
    .param p3, "updatedInfo"    # Lcom/android/contacts/calllog/ContactInfo;
    .param p4, "callLogInfo"    # Lcom/android/contacts/calllog/ContactInfo;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 898
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 899
    .local v1, "values":Landroid/content/ContentValues;
    const/4 v0, 0x0

    .line 901
    .local v0, "needsUpdate":Z
    if-eqz p4, :cond_8

    .line 902
    iget-object v2, p3, Lcom/android/contacts/calllog/ContactInfo;->name:Ljava/lang/String;

    iget-object v3, p4, Lcom/android/contacts/calllog/ContactInfo;->name:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 903
    const-string v2, "name"

    iget-object v3, p3, Lcom/android/contacts/calllog/ContactInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 904
    const/4 v0, 0x1

    .line 907
    :cond_0
    iget v2, p3, Lcom/android/contacts/calllog/ContactInfo;->type:I

    iget v3, p4, Lcom/android/contacts/calllog/ContactInfo;->type:I

    if-eq v2, v3, :cond_1

    .line 908
    const-string v2, "numbertype"

    iget v3, p3, Lcom/android/contacts/calllog/ContactInfo;->type:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 909
    const/4 v0, 0x1

    .line 912
    :cond_1
    iget-object v2, p3, Lcom/android/contacts/calllog/ContactInfo;->label:Ljava/lang/String;

    iget-object v3, p4, Lcom/android/contacts/calllog/ContactInfo;->label:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 913
    const-string v2, "numberlabel"

    iget-object v3, p3, Lcom/android/contacts/calllog/ContactInfo;->label:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    const/4 v0, 0x1

    .line 916
    :cond_2
    iget-object v2, p3, Lcom/android/contacts/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    iget-object v3, p4, Lcom/android/contacts/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    invoke-static {v2, v3}, Lcom/android/contacts/util/UriUtils;->areEqual(Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 917
    const-string v2, "lookup_uri"

    iget-object v3, p3, Lcom/android/contacts/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    invoke-static {v3}, Lcom/android/contacts/util/UriUtils;->uriToString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    const/4 v0, 0x1

    .line 920
    :cond_3
    iget-object v2, p3, Lcom/android/contacts/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    iget-object v3, p4, Lcom/android/contacts/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 921
    const-string v2, "normalized_number"

    iget-object v3, p3, Lcom/android/contacts/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    const/4 v0, 0x1

    .line 924
    :cond_4
    iget-object v2, p3, Lcom/android/contacts/calllog/ContactInfo;->number:Ljava/lang/String;

    iget-object v3, p4, Lcom/android/contacts/calllog/ContactInfo;->number:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 925
    const-string v2, "matched_number"

    iget-object v3, p3, Lcom/android/contacts/calllog/ContactInfo;->number:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    const/4 v0, 0x1

    .line 928
    :cond_5
    iget-wide v2, p3, Lcom/android/contacts/calllog/ContactInfo;->photoId:J

    iget-wide v4, p4, Lcom/android/contacts/calllog/ContactInfo;->photoId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_6

    .line 929
    const-string v2, "photo_id"

    iget-wide v3, p3, Lcom/android/contacts/calllog/ContactInfo;->photoId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 930
    const/4 v0, 0x1

    .line 932
    :cond_6
    iget-object v2, p3, Lcom/android/contacts/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    iget-object v3, p4, Lcom/android/contacts/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 933
    const-string v2, "formatted_number"

    iget-object v3, p3, Lcom/android/contacts/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    const/4 v0, 0x1

    .line 949
    :cond_7
    :goto_0
    if-nez v0, :cond_9

    .line 960
    :goto_1
    return-void

    .line 938
    :cond_8
    const-string v2, "name"

    iget-object v3, p3, Lcom/android/contacts/calllog/ContactInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    const-string v2, "numbertype"

    iget v3, p3, Lcom/android/contacts/calllog/ContactInfo;->type:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 940
    const-string v2, "numberlabel"

    iget-object v3, p3, Lcom/android/contacts/calllog/ContactInfo;->label:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 941
    const-string v2, "lookup_uri"

    iget-object v3, p3, Lcom/android/contacts/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    invoke-static {v3}, Lcom/android/contacts/util/UriUtils;->uriToString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 942
    const-string v2, "matched_number"

    iget-object v3, p3, Lcom/android/contacts/calllog/ContactInfo;->number:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 943
    const-string v2, "normalized_number"

    iget-object v3, p3, Lcom/android/contacts/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 944
    const-string v2, "photo_id"

    iget-wide v3, p3, Lcom/android/contacts/calllog/ContactInfo;->photoId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 945
    const-string v2, "formatted_number"

    iget-object v3, p3, Lcom/android/contacts/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 946
    const/4 v0, 0x1

    goto :goto_0

    .line 951
    :cond_9
    if-nez p2, :cond_a

    .line 952
    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

    const-string v4, "number = ? AND countryiso IS NULL"

    new-array v5, v7, [Ljava/lang/String;

    aput-object p1, v5, v6

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 956
    :cond_a
    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

    const-string v4, "number = ? AND countryiso = ?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    aput-object p1, v5, v6

    aput-object p2, v5, v7

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public addGroup(IIZ)V
    .locals 0
    .param p1, "cursorPosition"    # I
    .param p2, "size"    # I
    .param p3, "expanded"    # Z

    .prologue
    .line 1047
    invoke-super {p0, p1, p2, p3}, Lcom/android/common/widget/GroupingListAdapter;->addGroup(IIZ)V

    .line 1048
    return-void
.end method

.method protected addGroups(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 593
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mCallLogGroupBuilder:Lcom/android/contacts/calllog/CallLogGroupBuilder;

    invoke-virtual {v0, p1}, Lcom/android/contacts/calllog/CallLogGroupBuilder;->addGroups(Landroid/database/Cursor;)V

    .line 594
    return-void
.end method

.method protected bindChildView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 621
    const/4 v0, 0x1

    invoke-direct {p0, p1, p3, v0}, Lcom/android/contacts/calllog/CallLogAdapter;->bindView(Landroid/view/View;Landroid/database/Cursor;I)V

    .line 622
    return-void
.end method

.method protected bindGroupView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;IZ)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "groupSize"    # I
    .param p5, "expanded"    # Z

    .prologue
    .line 636
    invoke-direct {p0, p1, p3, p4}, Lcom/android/contacts/calllog/CallLogAdapter;->bindView(Landroid/view/View;Landroid/database/Cursor;I)V

    .line 637
    return-void
.end method

.method protected bindStandAloneView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 607
    const/4 v0, 0x1

    invoke-direct {p0, p1, p3, v0}, Lcom/android/contacts/calllog/CallLogAdapter;->bindView(Landroid/view/View;Landroid/database/Cursor;I)V

    .line 608
    return-void
.end method

.method public clearAllCache()V
    .locals 2

    .prologue
    .line 416
    iget-object v1, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mContactInfoCache:Lcom/android/contacts/util/ExpirableCache;

    monitor-enter v1

    .line 417
    :try_start_0
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mContactInfoCache:Lcom/android/contacts/util/ExpirableCache;

    invoke-virtual {v0}, Lcom/android/contacts/util/ExpirableCache;->clearCache()V

    .line 418
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 421
    iget-boolean v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mEcidEnabled:Z

    if-eqz v0, :cond_0

    .line 422
    invoke-static {}, Lcom/android/contacts/EcidContact;->clearEcidContacts()V

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/calllog/CityIdInfo;->isAvaialble(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 425
    iget-object v1, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mCityIdInfoCache:Lcom/android/contacts/util/ExpirableCache;

    monitor-enter v1

    .line 426
    :try_start_1
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mCityIdInfoCache:Lcom/android/contacts/util/ExpirableCache;

    invoke-virtual {v0}, Lcom/android/contacts/util/ExpirableCache;->clearCache()V

    .line 427
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 429
    :cond_1
    return-void

    .line 418
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 427
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method disableRequestProcessingForTest()V
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 1036
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mRequestProcessingDisabled:Z

    .line 1037
    return-void
.end method

.method enqueueRequest(Ljava/lang/String;Ljava/lang/String;Lcom/android/contacts/calllog/ContactInfo;ZLjava/lang/String;)V
    .locals 4
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "countryIso"    # Ljava/lang/String;
    .param p3, "callLogInfo"    # Lcom/android/contacts/calllog/ContactInfo;
    .param p4, "immediate"    # Z
    .param p5, "convertNumber"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 444
    new-instance v0, Lcom/android/contacts/calllog/CallLogAdapter$ContactInfoRequest;

    invoke-direct {v0, p1, p2, p3, p5}, Lcom/android/contacts/calllog/CallLogAdapter$ContactInfoRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/contacts/calllog/ContactInfo;Ljava/lang/String;)V

    .line 445
    .local v0, "request":Lcom/android/contacts/calllog/CallLogAdapter$ContactInfoRequest;
    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mRequests:Ljava/util/LinkedList;

    monitor-enter v2

    .line 446
    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 447
    iget-object v1, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 448
    iget-object v1, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 449
    sget-boolean v1, Lcom/android/contacts/calllog/CallLogAdapter;->VDBG:Z

    if-eqz v1, :cond_0

    .line 450
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enqueueRequest "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/calllog/CallLogAdapter;->log(Ljava/lang/String;)V

    .line 453
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 454
    if-eqz p4, :cond_1

    invoke-direct {p0}, Lcom/android/contacts/calllog/CallLogAdapter;->startRequestProcessing()V

    .line 455
    :cond_1
    return-void

    .line 453
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getBetterNumberFromContacts(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "countryIso"    # Ljava/lang/String;

    .prologue
    .line 1060
    const/4 v7, 0x0

    .line 1062
    .local v7, "matchingNumber":Ljava/lang/String;
    new-instance v8, Lcom/android/contacts/calllog/CallLogAdapter$NumberWithCountryIso;

    invoke-direct {v8, p1, p2}, Lcom/android/contacts/calllog/CallLogAdapter$NumberWithCountryIso;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1063
    .local v8, "numberCountryIso":Lcom/android/contacts/calllog/CallLogAdapter$NumberWithCountryIso;
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mContactInfoCache:Lcom/android/contacts/util/ExpirableCache;

    invoke-virtual {v0, v8}, Lcom/android/contacts/util/ExpirableCache;->getPossiblyExpired(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/calllog/ContactInfo;

    .line 1064
    .local v6, "ci":Lcom/android/contacts/calllog/ContactInfo;
    if-eqz v6, :cond_3

    sget-object v0, Lcom/android/contacts/calllog/ContactInfo;->EMPTY:Lcom/android/contacts/calllog/ContactInfo;

    if-eq v6, v0, :cond_3

    .line 1065
    iget-object v7, v6, Lcom/android/contacts/calllog/ContactInfo;->number:Ljava/lang/String;

    .line 1081
    :cond_0
    :goto_0
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "+"

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_2

    .line 1084
    :cond_1
    move-object p1, v7

    .line 1086
    :cond_2
    return-object p1

    .line 1068
    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/contacts/calllog/PhoneQuery;->_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1071
    .local v9, "phonesCursor":Landroid/database/Cursor;
    if-eqz v9, :cond_0

    .line 1072
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1073
    const/4 v0, 0x4

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1075
    :cond_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1077
    .end local v9    # "phonesCursor":Landroid/database/Cursor;
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getPhoneNumberHelper()Lcom/android/contacts/calllog/PhoneNumberHelper;
    .locals 1

    .prologue
    .line 1090
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;

    return-object v0
.end method

.method injectContactInfoForTest(Ljava/lang/String;Ljava/lang/String;Lcom/android/contacts/calllog/ContactInfo;)V
    .locals 2
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "countryIso"    # Ljava/lang/String;
    .param p3, "contactInfo"    # Lcom/android/contacts/calllog/ContactInfo;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 1041
    new-instance v0, Lcom/android/contacts/calllog/CallLogAdapter$NumberWithCountryIso;

    invoke-direct {v0, p1, p2}, Lcom/android/contacts/calllog/CallLogAdapter$NumberWithCountryIso;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    .local v0, "numberCountryIso":Lcom/android/contacts/calllog/CallLogAdapter$NumberWithCountryIso;
    iget-object v1, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mContactInfoCache:Lcom/android/contacts/util/ExpirableCache;

    invoke-virtual {v1, v0, p3}, Lcom/android/contacts/util/ExpirableCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1043
    return-void
.end method

.method public invalidateCache()V
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mContactInfoCache:Lcom/android/contacts/util/ExpirableCache;

    invoke-virtual {v0}, Lcom/android/contacts/util/ExpirableCache;->expireAll()V

    .line 409
    invoke-virtual {p0}, Lcom/android/contacts/calllog/CallLogAdapter;->stopRequestProcessing()V

    .line 410
    invoke-direct {p0}, Lcom/android/contacts/calllog/CallLogAdapter;->unregisterPreDrawListener()V

    .line 411
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 346
    iget-boolean v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mLoading:Z

    if-eqz v0, :cond_0

    .line 348
    const/4 v0, 0x0

    .line 350
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/BaseAdapter;->isEmpty()Z

    move-result v0

    goto :goto_0
.end method

.method protected newChildView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 612
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 614
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f04000d

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 615
    .local v1, "view":Landroid/view/View;
    invoke-direct {p0, v1}, Lcom/android/contacts/calllog/CallLogAdapter;->findAndCacheViews(Landroid/view/View;)V

    .line 616
    return-object v1
.end method

.method protected newGroupView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 626
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 628
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f04000d

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 629
    .local v1, "view":Landroid/view/View;
    invoke-direct {p0, v1}, Lcom/android/contacts/calllog/CallLogAdapter;->findAndCacheViews(Landroid/view/View;)V

    .line 630
    return-object v1
.end method

.method protected newStandAloneView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 598
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 600
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f04000d

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 601
    .local v1, "view":Landroid/view/View;
    invoke-direct {p0, v1}, Lcom/android/contacts/calllog/CallLogAdapter;->findAndCacheViews(Landroid/view/View;)V

    .line 602
    return-object v1
.end method

.method protected onContentChanged()V
    .locals 2

    .prologue
    .line 334
    sget-boolean v1, Lcom/android/contacts/calllog/CallLogAdapter;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "onContentChanged"

    invoke-static {v1}, Lcom/android/contacts/calllog/CallLogAdapter;->log(Ljava/lang/String;)V

    .line 335
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mCallFetcher:Lcom/android/contacts/calllog/CallLogAdapter$CallFetcher;

    invoke-interface {v1}, Lcom/android/contacts/calllog/CallLogAdapter$CallFetcher;->fetchCalls()V

    .line 336
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mCallFetcher:Lcom/android/contacts/calllog/CallLogAdapter$CallFetcher;

    check-cast v0, Lcom/android/contacts/calllog/CallLogFragment;

    .line 337
    .local v0, "mFragment":Lcom/android/contacts/calllog/CallLogFragment;
    invoke-virtual {v0}, Lcom/android/contacts/calllog/CallLogFragment;->finishMode()V

    .line 338
    return-void
.end method

.method public onPreDraw()Z
    .locals 4

    .prologue
    .line 264
    invoke-direct {p0}, Lcom/android/contacts/calllog/CallLogAdapter;->unregisterPreDrawListener()V

    .line 268
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mCallerIdThread:Lcom/android/contacts/calllog/CallLogAdapter$QueryThread;

    if-nez v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 272
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onScrollStateChanged(I)V
    .locals 3
    .param p1, "scrollState"    # I

    .prologue
    .line 1095
    sget-boolean v1, Lcom/android/contacts/calllog/CallLogAdapter;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScrollState changed, scrollState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/calllog/CallLogAdapter;->log(Ljava/lang/String;)V

    .line 1100
    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 1101
    .local v0, "isScrolling":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 1102
    invoke-virtual {p0}, Lcom/android/contacts/calllog/CallLogAdapter;->stopRequestProcessing()V

    .line 1108
    :goto_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    .line 1109
    iget-object v1, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    invoke-virtual {v1}, Lcom/android/contacts/ContactPhotoManager;->pause()V

    .line 1113
    :goto_2
    return-void

    .line 1100
    .end local v0    # "isScrolling":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1104
    .restart local v0    # "isScrolling":Z
    :cond_2
    invoke-direct {p0}, Lcom/android/contacts/calllog/CallLogAdapter;->startRequestProcessing()V

    goto :goto_1

    .line 1111
    :cond_3
    iget-object v1, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    invoke-virtual {v1}, Lcom/android/contacts/ContactPhotoManager;->resume()V

    goto :goto_2
.end method

.method public setActionModeStatus(Z)V
    .locals 0
    .param p1, "isActionMode"    # Z

    .prologue
    .line 360
    iput-boolean p1, p0, Lcom/android/contacts/calllog/CallLogAdapter;->isInActionMode:Z

    .line 361
    return-void
.end method

.method setLoading(Z)V
    .locals 0
    .param p1, "loading"    # Z

    .prologue
    .line 341
    iput-boolean p1, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mLoading:Z

    .line 342
    return-void
.end method

.method public declared-synchronized stopRequestProcessing()V
    .locals 2

    .prologue
    .line 386
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 387
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mCallerIdThread:Lcom/android/contacts/calllog/CallLogAdapter$QueryThread;

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mCallerIdThread:Lcom/android/contacts/calllog/CallLogAdapter$QueryThread;

    invoke-virtual {v0}, Lcom/android/contacts/calllog/CallLogAdapter$QueryThread;->stopProcessing()V

    .line 390
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mCallerIdThread:Lcom/android/contacts/calllog/CallLogAdapter$QueryThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 391
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mCallerIdThread:Lcom/android/contacts/calllog/CallLogAdapter$QueryThread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 393
    :cond_0
    monitor-exit p0

    return-void

    .line 386
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
