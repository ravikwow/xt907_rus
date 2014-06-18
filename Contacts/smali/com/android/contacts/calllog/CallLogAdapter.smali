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
.field private final mCallFetcher:Lcom/android/contacts/calllog/CallLogAdapter$CallFetcher;

.field private final mCallLogGroupBuilder:Lcom/android/contacts/calllog/CallLogGroupBuilder;

.field private final mCallLogViewsHelper:Lcom/android/contacts/calllog/CallLogListItemHelper;

.field private mCallerIdThread:Lcom/android/contacts/calllog/CallLogAdapter$QueryThread;

.field private mCityIDEnabled:Z

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

.field private final mPrimaryActionListener:Landroid/view/View$OnClickListener;

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

.field private mViewTreeObserver:Landroid/view/ViewTreeObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 131
    sget-boolean v0, Lcom/android/contacts/ContactsUtils;->DBG:Z

    sput-boolean v0, Lcom/android/contacts/calllog/CallLogAdapter;->DBG:Z

    .line 132
    sget-boolean v0, Lcom/android/contacts/ContactsUtils;->VDBG:Z

    sput-boolean v0, Lcom/android/contacts/calllog/CallLogAdapter;->VDBG:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/contacts/calllog/CallLogAdapter$CallFetcher;Lcom/android/contacts/calllog/ContactInfoHelper;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callFetcher"    # Lcom/android/contacts/calllog/CallLogAdapter$CallFetcher;
    .param p3, "contactInfoHelper"    # Lcom/android/contacts/calllog/ContactInfoHelper;

    .prologue
    const/4 v4, 0x0

    .line 280
    invoke-direct {p0, p1}, Lcom/android/common/widget/GroupingListAdapter;-><init>(Landroid/content/Context;)V

    .line 111
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    .line 113
    iput-boolean v4, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mEcidEnabled:Z

    .line 114
    iput-boolean v4, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mCityIDEnabled:Z

    .line 116
    iput-boolean v4, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mIsCallBeenPlaced:Z

    .line 199
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mLoading:Z

    .line 216
    iput-boolean v4, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mRequestProcessingDisabled:Z

    .line 219
    new-instance v3, Lcom/android/contacts/calllog/CallLogAdapter$1;

    invoke-direct {v3, p0}, Lcom/android/contacts/calllog/CallLogAdapter$1;-><init>(Lcom/android/contacts/calllog/CallLogAdapter;)V

    iput-object v3, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mPrimaryActionListener:Landroid/view/View$OnClickListener;

    .line 229
    new-instance v3, Lcom/android/contacts/calllog/CallLogAdapter$2;

    invoke-direct {v3, p0}, Lcom/android/contacts/calllog/CallLogAdapter$2;-><init>(Lcom/android/contacts/calllog/CallLogAdapter;)V

    iput-object v3, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mSecondaryActionListener:Landroid/view/View$OnClickListener;

    .line 264
    new-instance v3, Lcom/android/contacts/calllog/CallLogAdapter$3;

    invoke-direct {v3, p0}, Lcom/android/contacts/calllog/CallLogAdapter$3;-><init>(Lcom/android/contacts/calllog/CallLogAdapter;)V

    iput-object v3, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mHandler:Landroid/os/Handler;

    .line 282
    iput-object p1, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    .line 283
    iput-object p2, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mCallFetcher:Lcom/android/contacts/calllog/CallLogAdapter$CallFetcher;

    .line 284
    iput-object p3, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mContactInfoHelper:Lcom/android/contacts/calllog/ContactInfoHelper;

    .line 286
    const/16 v3, 0x64

    invoke-static {v3}, Lcom/android/contacts/util/ExpirableCache;->create(I)Lcom/android/contacts/util/ExpirableCache;

    move-result-object v3

    iput-object v3, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mContactInfoCache:Lcom/android/contacts/util/ExpirableCache;

    .line 287
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mRequests:Ljava/util/LinkedList;

    .line 289
    iget-object v3, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 290
    .local v2, "resources":Landroid/content/res/Resources;
    new-instance v0, Lcom/android/contacts/calllog/CallTypeHelper;

    invoke-direct {v0, v2}, Lcom/android/contacts/calllog/CallTypeHelper;-><init>(Landroid/content/res/Resources;)V

    .line 292
    .local v0, "callTypeHelper":Lcom/android/contacts/calllog/CallTypeHelper;
    iget-object v3, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/contacts/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/ContactPhotoManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    .line 293
    new-instance v3, Lcom/android/contacts/calllog/PhoneNumberHelper;

    invoke-direct {v3, v2}, Lcom/android/contacts/calllog/PhoneNumberHelper;-><init>(Landroid/content/res/Resources;)V

    iput-object v3, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;

    .line 294
    new-instance v1, Lcom/android/contacts/PhoneCallDetailsHelper;

    iget-object v3, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;

    invoke-direct {v1, v3, v2, v0, v4}, Lcom/android/contacts/PhoneCallDetailsHelper;-><init>(Landroid/content/Context;Landroid/content/res/Resources;Lcom/android/contacts/calllog/CallTypeHelper;Lcom/android/contacts/calllog/PhoneNumberHelper;)V

    .line 296
    .local v1, "phoneCallDetailsHelper":Lcom/android/contacts/PhoneCallDetailsHelper;
    new-instance v3, Lcom/android/contacts/calllog/CallLogListItemHelper;

    iget-object v4, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;

    invoke-direct {v3, v1, v4, v2}, Lcom/android/contacts/calllog/CallLogListItemHelper;-><init>(Lcom/android/contacts/PhoneCallDetailsHelper;Lcom/android/contacts/calllog/PhoneNumberHelper;Landroid/content/res/Resources;)V

    iput-object v3, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mCallLogViewsHelper:Lcom/android/contacts/calllog/CallLogListItemHelper;

    .line 299
    new-instance v3, Lcom/android/contacts/calllog/CallLogGroupBuilder;

    invoke-direct {v3, p0}, Lcom/android/contacts/calllog/CallLogGroupBuilder;-><init>(Lcom/android/contacts/calllog/CallLogGroupBuilder$GroupCreator;)V

    iput-object v3, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mCallLogGroupBuilder:Lcom/android/contacts/calllog/CallLogGroupBuilder;

    .line 301
    iget-object v3, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/motorola/contacts/util/EcidContact;->isECIDAvailable(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mEcidEnabled:Z

    .line 302
    iget-boolean v3, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mEcidEnabled:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/motorola/contacts/util/CityIdInfo;->isAvailable(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mCityIDEnabled:Z

    .line 303
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/calllog/CallLogAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/calllog/CallLogAdapter;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 64
    sget-boolean v0, Lcom/android/contacts/calllog/CallLogAdapter;->VDBG:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/contacts/calllog/CallLogAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/calllog/CallLogAdapter;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/contacts/calllog/CallLogAdapter;->startRequestProcessing()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/contacts/calllog/CallLogAdapter;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/calllog/CallLogAdapter;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mRequests:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/contacts/calllog/CallLogAdapter;Ljava/lang/String;Ljava/lang/String;Lcom/android/contacts/calllog/ContactInfo;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/calllog/CallLogAdapter;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lcom/android/contacts/calllog/ContactInfo;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/contacts/calllog/CallLogAdapter;->queryContactInfo(Ljava/lang/String;Ljava/lang/String;Lcom/android/contacts/calllog/ContactInfo;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/contacts/calllog/CallLogAdapter;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/calllog/CallLogAdapter;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private bindView(Landroid/view/View;Landroid/database/Cursor;I)V
    .locals 53
    .param p1, "view"    # Landroid/view/View;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "count"    # I

    .prologue
    .line 593
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Lcom/android/contacts/calllog/CallLogListItemViews;

    .line 594
    .local v51, "views":Lcom/android/contacts/calllog/CallLogListItemViews;
    const/16 v5, 0x14

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v50

    .line 597
    .local v50, "section":I
    if-eqz v50, :cond_0

    const/4 v5, 0x2

    move/from16 v0, v50

    if-ne v0, v5, :cond_3

    .line 599
    :cond_0
    move-object/from16 v0, v51

    iget-object v5, v0, Lcom/android/contacts/calllog/CallLogListItemViews;->primaryActionView:Landroid/view/View;

    const/16 v9, 0x8

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 600
    move-object/from16 v0, v51

    iget-object v5, v0, Lcom/android/contacts/calllog/CallLogListItemViews;->bottomDivider:Landroid/view/View;

    const/16 v9, 0x8

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 601
    move-object/from16 v0, v51

    iget-object v5, v0, Lcom/android/contacts/calllog/CallLogListItemViews;->listHeaderTextView:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 602
    move-object/from16 v0, v51

    iget-object v9, v0, Lcom/android/contacts/calllog/CallLogListItemViews;->listHeaderTextView:Landroid/widget/TextView;

    if-nez v50, :cond_2

    const v5, 0x7f0b01c7

    :goto_0
    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setText(I)V

    .line 790
    :cond_1
    :goto_1
    return-void

    .line 602
    :cond_2
    const v5, 0x7f0b01c8

    goto :goto_0

    .line 610
    :cond_3
    move-object/from16 v0, v51

    iget-object v5, v0, Lcom/android/contacts/calllog/CallLogListItemViews;->primaryActionView:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 611
    move-object/from16 v0, v51

    iget-object v9, v0, Lcom/android/contacts/calllog/CallLogListItemViews;->bottomDivider:Landroid/view/View;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/contacts/calllog/CallLogAdapter;->isLastOfSection(Landroid/database/Cursor;)Z

    move-result v5

    if-eqz v5, :cond_c

    const/16 v5, 0x8

    :goto_2
    invoke-virtual {v9, v5}, Landroid/view/View;->setVisibility(I)V

    .line 612
    move-object/from16 v0, v51

    iget-object v5, v0, Lcom/android/contacts/calllog/CallLogListItemViews;->listHeaderTextView:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 614
    const/4 v5, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 615
    .local v6, "number":Ljava/lang/String;
    const/16 v5, 0x11

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 616
    .local v13, "numberPresentation":I
    const/4 v5, 0x2

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 617
    .local v18, "date":J
    const/4 v5, 0x3

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 618
    .local v20, "duration":J
    const/4 v5, 0x4

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v41

    .line 619
    .local v41, "callType":I
    const/4 v5, 0x5

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 621
    .local v7, "countryIso":Ljava/lang/String;
    const/16 v5, 0x12

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 622
    .local v10, "convertNumber":Ljava/lang/String;
    const/16 v5, 0x13

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 624
    .local v22, "cnapName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/contacts/calllog/CallLogAdapter;->getContactInfoFromCallLog(Landroid/database/Cursor;)Lcom/android/contacts/calllog/ContactInfo;

    move-result-object v8

    .line 626
    .local v8, "cachedContactInfo":Lcom/android/contacts/calllog/ContactInfo;
    move-object/from16 v0, v51

    iget-object v5, v0, Lcom/android/contacts/calllog/CallLogListItemViews;->primaryActionView:Landroid/view/View;

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getPosition()I

    move-result v9

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    move-object/from16 v0, p0

    move-wide/from16 v1, v23

    move/from16 v3, p3

    invoke-static {v0, v9, v1, v2, v3}, Lcom/android/contacts/calllog/IntentProvider;->getCallDetailIntentProvider(Lcom/android/contacts/calllog/CallLogAdapter;IJI)Lcom/android/contacts/calllog/IntentProvider;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 630
    const/4 v5, 0x4

    move/from16 v0, v41

    if-ne v0, v5, :cond_d

    .line 631
    const/4 v5, 0x6

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v52

    .line 632
    .local v52, "voicemailUri":Ljava/lang/String;
    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v48

    .line 633
    .local v48, "rowId":J
    move-object/from16 v0, v51

    iget-object v5, v0, Lcom/android/contacts/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/ImageView;

    move-wide/from16 v0, v48

    move-object/from16 v2, v52

    invoke-static {v0, v1, v2}, Lcom/android/contacts/calllog/IntentProvider;->getPlayVoicemailIntentProvider(JLjava/lang/String;)Lcom/android/contacts/calllog/IntentProvider;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 645
    .end local v48    # "rowId":J
    .end local v52    # "voicemailUri":Ljava/lang/String;
    :goto_3
    new-instance v45, Lcom/android/contacts/calllog/CallLogAdapter$NumberWithCountryIso;

    move-object/from16 v0, v45

    invoke-direct {v0, v6, v7}, Lcom/android/contacts/calllog/CallLogAdapter$NumberWithCountryIso;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    .local v45, "numberCountryIso":Lcom/android/contacts/calllog/CallLogAdapter$NumberWithCountryIso;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/calllog/CallLogAdapter;->mContactInfoCache:Lcom/android/contacts/util/ExpirableCache;

    move-object/from16 v0, v45

    invoke-virtual {v5, v0}, Lcom/android/contacts/util/ExpirableCache;->getCachedValue(Ljava/lang/Object;)Lcom/android/contacts/util/ExpirableCache$CachedValue;

    move-result-object v40

    .line 648
    .local v40, "cachedInfo":Lcom/android/contacts/util/ExpirableCache$CachedValue;, "Lcom/android/contacts/util/ExpirableCache$CachedValue<Lcom/android/contacts/calllog/ContactInfo;>;"
    if-nez v40, :cond_f

    const/16 v43, 0x0

    .line 651
    .local v43, "info":Lcom/android/contacts/calllog/ContactInfo;
    :goto_4
    sget-boolean v5, Lcom/android/contacts/calllog/CallLogAdapter;->VDBG:Z

    if-eqz v5, :cond_4

    .line 652
    const-string v5, "bindView ["

    invoke-static {v5}, Lcom/android/contacts/calllog/CallLogAdapter;->log(Ljava/lang/String;)V

    .line 653
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "view: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " views.secondaryActionView = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v51

    iget-object v9, v0, Lcom/android/contacts/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/contacts/calllog/CallLogAdapter;->log(Ljava/lang/String;)V

    .line 655
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cursor Count: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getCount()I

    move-result v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/contacts/calllog/CallLogAdapter;->log(Ljava/lang/String;)V

    .line 656
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cursor Position: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getPosition()I

    move-result v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/contacts/calllog/CallLogAdapter;->log(Ljava/lang/String;)V

    .line 657
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " call_log.number        "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/contacts/calllog/CallLogAdapter;->log(Ljava/lang/String;)V

    .line 658
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " call_log.callType    "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v41

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/contacts/calllog/CallLogAdapter;->log(Ljava/lang/String;)V

    .line 659
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " call_log.callerNameType    "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/contacts/calllog/CallLogAdapter;->log(Ljava/lang/String;)V

    .line 660
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " call_log.countryIso    "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/contacts/calllog/CallLogAdapter;->log(Ljava/lang/String;)V

    .line 661
    const-string v5, " ......................."

    invoke-static {v5}, Lcom/android/contacts/calllog/CallLogAdapter;->log(Ljava/lang/String;)V

    .line 662
    if-eqz v43, :cond_10

    .line 663
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " info.lookupUri          "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v43

    iget-object v9, v0, Lcom/android/contacts/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/contacts/calllog/CallLogAdapter;->log(Ljava/lang/String;)V

    .line 664
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " info.name              "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v43

    iget-object v9, v0, Lcom/android/contacts/calllog/ContactInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/contacts/calllog/CallLogAdapter;->log(Ljava/lang/String;)V

    .line 665
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " info.number            "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v43

    iget-object v9, v0, Lcom/android/contacts/calllog/ContactInfo;->number:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/contacts/calllog/CallLogAdapter;->log(Ljava/lang/String;)V

    .line 666
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " info.formattedNumber  "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v43

    iget-object v9, v0, Lcom/android/contacts/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/contacts/calllog/CallLogAdapter;->log(Ljava/lang/String;)V

    .line 667
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " info.normalizedNumber  "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v43

    iget-object v9, v0, Lcom/android/contacts/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/contacts/calllog/CallLogAdapter;->log(Ljava/lang/String;)V

    .line 672
    :goto_5
    if-eqz v8, :cond_11

    .line 673
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " cachedContactInfo.lookupUri          "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v9, v8, Lcom/android/contacts/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/contacts/calllog/CallLogAdapter;->log(Ljava/lang/String;)V

    .line 674
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " cachedContactInfo.name              "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v9, v8, Lcom/android/contacts/calllog/ContactInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/contacts/calllog/CallLogAdapter;->log(Ljava/lang/String;)V

    .line 675
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " cachedContactInfo.number            "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v9, v8, Lcom/android/contacts/calllog/ContactInfo;->number:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/contacts/calllog/CallLogAdapter;->log(Ljava/lang/String;)V

    .line 676
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " cachedContactInfo.formattedNumber  "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v9, v8, Lcom/android/contacts/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/contacts/calllog/CallLogAdapter;->log(Ljava/lang/String;)V

    .line 677
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " cachedContactInfo.normalizedNumber  "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v9, v8, Lcom/android/contacts/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/contacts/calllog/CallLogAdapter;->log(Ljava/lang/String;)V

    .line 681
    :goto_6
    const-string v5, "]"

    invoke-static {v5}, Lcom/android/contacts/calllog/CallLogAdapter;->log(Ljava/lang/String;)V

    .line 686
    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/calllog/CallLogAdapter;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;

    invoke-virtual {v5, v6, v13}, Lcom/android/contacts/calllog/PhoneNumberHelper;->canPlaceCallsTo(Ljava/lang/CharSequence;I)Z

    move-result v5

    if-eqz v5, :cond_5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/calllog/CallLogAdapter;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;

    invoke-virtual {v5, v6}, Lcom/android/contacts/calllog/PhoneNumberHelper;->isVoicemailNumber(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 690
    :cond_5
    sget-object v43, Lcom/android/contacts/calllog/ContactInfo;->EMPTY:Lcom/android/contacts/calllog/ContactInfo;

    .line 721
    :cond_6
    :goto_7
    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/android/contacts/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    move-object/from16 v37, v0

    .line 722
    .local v37, "lookupUri":Landroid/net/Uri;
    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/android/contacts/calllog/ContactInfo;->name:Ljava/lang/String;

    move-object/from16 v34, v0

    .line 723
    .local v34, "name":Ljava/lang/String;
    move-object/from16 v0, v43

    iget v0, v0, Lcom/android/contacts/calllog/ContactInfo;->type:I

    move/from16 v35, v0

    .line 724
    .local v35, "ntype":I
    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/android/contacts/calllog/ContactInfo;->label:Ljava/lang/String;

    move-object/from16 v36, v0

    .line 725
    .local v36, "label":Ljava/lang/String;
    move-object/from16 v0, v43

    iget-wide v0, v0, Lcom/android/contacts/calllog/ContactInfo;->photoId:J

    move-wide/from16 v46, v0

    .line 726
    .local v46, "photoId":J
    move-object/from16 v0, v43

    iget-object v14, v0, Lcom/android/contacts/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    .line 727
    .local v14, "formattedNumber":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/calllog/CallLogAdapter;->getCallTypes(Landroid/database/Cursor;I)[I

    move-result-object v17

    .line 732
    .local v17, "callTypes":[I
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/contacts/calllog/CallLogAdapter;->mEcidEnabled:Z

    if-nez v5, :cond_7

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/contacts/calllog/CallLogAdapter;->mCityIDEnabled:Z

    if-eqz v5, :cond_1a

    .line 733
    :cond_7
    const v5, 0x7f060043

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v42

    check-cast v42, Landroid/widget/TextView;

    .line 736
    .local v42, "cityIdView":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/contacts/calllog/CallLogAdapter;->mEcidEnabled:Z

    if-eqz v5, :cond_19

    .line 737
    move-object/from16 v0, v42

    invoke-static {v6, v0}, Lcom/motorola/contacts/util/EcidContact;->computeDisplayName(Ljava/lang/String;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v16

    .line 751
    .end local v42    # "cityIdView":Landroid/widget/TextView;
    .local v16, "geocode":Ljava/lang/String;
    :goto_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/calllog/CallLogAdapter;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;

    invoke-virtual {v5, v6}, Lcom/android/contacts/calllog/PhoneNumberHelper;->isVoicemailNumber(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 752
    move-object v14, v10

    .line 756
    :cond_8
    invoke-static/range {v34 .. v34}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 757
    new-instance v11, Lcom/android/contacts/PhoneCallDetails;

    move-object v12, v6

    move-object v15, v7

    invoke-direct/range {v11 .. v22}, Lcom/android/contacts/PhoneCallDetails;-><init>(Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJLjava/lang/String;)V

    .line 765
    .local v11, "details":Lcom/android/contacts/PhoneCallDetails;
    :goto_9
    const/16 v5, 0x10

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-nez v5, :cond_1c

    const/16 v44, 0x1

    .line 767
    .local v44, "isNew":Z
    :goto_a
    move/from16 v26, v44

    .line 770
    .local v26, "isHighlighted":Z
    const/16 v27, 0x0

    .line 771
    .local v27, "isVoicemail":Z
    const/16 v28, 0x0

    .line 772
    .local v28, "isEmergency":Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/calllog/CallLogAdapter;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;

    invoke-virtual {v5, v6}, Lcom/android/contacts/calllog/PhoneNumberHelper;->isVoicemailNumber(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 773
    const/16 v27, 0x1

    .line 775
    :cond_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6, v5}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 776
    const/16 v28, 0x1

    .line 780
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/calllog/CallLogAdapter;->mCallLogViewsHelper:Lcom/android/contacts/calllog/CallLogListItemHelper;

    move-object/from16 v23, v0

    move-object/from16 v24, v51

    move-object/from16 v25, v11

    invoke-virtual/range {v23 .. v28}, Lcom/android/contacts/calllog/CallLogListItemHelper;->setPhoneCallDetails(Lcom/android/contacts/calllog/CallLogListItemViews;Lcom/android/contacts/PhoneCallDetails;ZZZ)V

    .line 782
    move-object/from16 v0, p0

    move-object/from16 v1, v51

    move-wide/from16 v2, v46

    move-object/from16 v4, v37

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/contacts/calllog/CallLogAdapter;->setPhoto(Lcom/android/contacts/calllog/CallLogListItemViews;JLandroid/net/Uri;)V

    .line 785
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/calllog/CallLogAdapter;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    if-nez v5, :cond_b

    .line 786
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/contacts/calllog/CallLogAdapter;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    .line 787
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/calllog/CallLogAdapter;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 789
    :cond_b
    sget-boolean v5, Lcom/android/contacts/calllog/CallLogAdapter;->VDBG:Z

    if-eqz v5, :cond_1

    const-string v5, "exit bindView"

    invoke-static {v5}, Lcom/android/contacts/calllog/CallLogAdapter;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 611
    .end local v6    # "number":Ljava/lang/String;
    .end local v7    # "countryIso":Ljava/lang/String;
    .end local v8    # "cachedContactInfo":Lcom/android/contacts/calllog/ContactInfo;
    .end local v10    # "convertNumber":Ljava/lang/String;
    .end local v11    # "details":Lcom/android/contacts/PhoneCallDetails;
    .end local v13    # "numberPresentation":I
    .end local v14    # "formattedNumber":Ljava/lang/CharSequence;
    .end local v16    # "geocode":Ljava/lang/String;
    .end local v17    # "callTypes":[I
    .end local v18    # "date":J
    .end local v20    # "duration":J
    .end local v22    # "cnapName":Ljava/lang/String;
    .end local v26    # "isHighlighted":Z
    .end local v27    # "isVoicemail":Z
    .end local v28    # "isEmergency":Z
    .end local v34    # "name":Ljava/lang/String;
    .end local v35    # "ntype":I
    .end local v36    # "label":Ljava/lang/String;
    .end local v37    # "lookupUri":Landroid/net/Uri;
    .end local v40    # "cachedInfo":Lcom/android/contacts/util/ExpirableCache$CachedValue;, "Lcom/android/contacts/util/ExpirableCache$CachedValue<Lcom/android/contacts/calllog/ContactInfo;>;"
    .end local v41    # "callType":I
    .end local v43    # "info":Lcom/android/contacts/calllog/ContactInfo;
    .end local v44    # "isNew":Z
    .end local v45    # "numberCountryIso":Lcom/android/contacts/calllog/CallLogAdapter$NumberWithCountryIso;
    .end local v46    # "photoId":J
    :cond_c
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 635
    .restart local v6    # "number":Ljava/lang/String;
    .restart local v7    # "countryIso":Ljava/lang/String;
    .restart local v8    # "cachedContactInfo":Lcom/android/contacts/calllog/ContactInfo;
    .restart local v10    # "convertNumber":Ljava/lang/String;
    .restart local v13    # "numberPresentation":I
    .restart local v18    # "date":J
    .restart local v20    # "duration":J
    .restart local v22    # "cnapName":Ljava/lang/String;
    .restart local v41    # "callType":I
    :cond_d
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_e

    .line 637
    move-object/from16 v0, v51

    iget-object v5, v0, Lcom/android/contacts/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/ImageView;

    invoke-static {v6}, Lcom/android/contacts/calllog/IntentProvider;->getReturnCallIntentProvider(Ljava/lang/String;)Lcom/android/contacts/calllog/IntentProvider;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 641
    :cond_e
    move-object/from16 v0, v51

    iget-object v5, v0, Lcom/android/contacts/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/ImageView;

    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 648
    .restart local v40    # "cachedInfo":Lcom/android/contacts/util/ExpirableCache$CachedValue;, "Lcom/android/contacts/util/ExpirableCache$CachedValue<Lcom/android/contacts/calllog/ContactInfo;>;"
    .restart local v45    # "numberCountryIso":Lcom/android/contacts/calllog/CallLogAdapter$NumberWithCountryIso;
    :cond_f
    invoke-interface/range {v40 .. v40}, Lcom/android/contacts/util/ExpirableCache$CachedValue;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/calllog/ContactInfo;

    move-object/from16 v43, v5

    goto/16 :goto_4

    .line 669
    .restart local v43    # "info":Lcom/android/contacts/calllog/ContactInfo;
    :cond_10
    const-string v5, " info is null"

    invoke-static {v5}, Lcom/android/contacts/calllog/CallLogAdapter;->log(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 679
    :cond_11
    const-string v5, " cachedContactInfo is null"

    invoke-static {v5}, Lcom/android/contacts/calllog/CallLogAdapter;->log(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 691
    :cond_12
    if-nez v40, :cond_14

    .line 692
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/calllog/CallLogAdapter;->mContactInfoCache:Lcom/android/contacts/util/ExpirableCache;

    sget-object v9, Lcom/android/contacts/calllog/ContactInfo;->EMPTY:Lcom/android/contacts/calllog/ContactInfo;

    move-object/from16 v0, v45

    invoke-virtual {v5, v0, v9}, Lcom/android/contacts/util/ExpirableCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 694
    move-object/from16 v43, v8

    .line 697
    sget-boolean v5, Lcom/android/contacts/calllog/CallLogAdapter;->DBG:Z

    if-eqz v5, :cond_13

    const-string v5, "call log number not find in contact info cache, push request to query"

    invoke-static {v5}, Lcom/android/contacts/calllog/CallLogAdapter;->log(Ljava/lang/String;)V

    .line 698
    :cond_13
    const/4 v9, 0x1

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/android/contacts/calllog/CallLogAdapter;->enqueueRequest(Ljava/lang/String;Ljava/lang/String;Lcom/android/contacts/calllog/ContactInfo;ZLjava/lang/String;)V

    goto/16 :goto_7

    .line 701
    :cond_14
    sget-boolean v5, Lcom/android/contacts/calllog/CallLogAdapter;->DBG:Z

    if-eqz v5, :cond_15

    const-string v5, "call log number find in contact info cache."

    invoke-static {v5}, Lcom/android/contacts/calllog/CallLogAdapter;->log(Ljava/lang/String;)V

    .line 702
    :cond_15
    invoke-interface/range {v40 .. v40}, Lcom/android/contacts/util/ExpirableCache$CachedValue;->isExpired()Z

    move-result v5

    if-eqz v5, :cond_18

    .line 705
    sget-boolean v5, Lcom/android/contacts/calllog/CallLogAdapter;->DBG:Z

    if-eqz v5, :cond_16

    const-string v5, "call log number find in contact info cache, but expired, push request to query"

    invoke-static {v5}, Lcom/android/contacts/calllog/CallLogAdapter;->log(Ljava/lang/String;)V

    .line 706
    :cond_16
    const/4 v9, 0x0

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/android/contacts/calllog/CallLogAdapter;->enqueueRequest(Ljava/lang/String;Ljava/lang/String;Lcom/android/contacts/calllog/ContactInfo;ZLjava/lang/String;)V

    .line 715
    :cond_17
    :goto_b
    sget-object v5, Lcom/android/contacts/calllog/ContactInfo;->EMPTY:Lcom/android/contacts/calllog/ContactInfo;

    move-object/from16 v0, v43

    if-ne v0, v5, :cond_6

    .line 717
    move-object/from16 v43, v8

    goto/16 :goto_7

    .line 707
    :cond_18
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v8, v1}, Lcom/android/contacts/calllog/CallLogAdapter;->callLogInfoMatches(Lcom/android/contacts/calllog/ContactInfo;Lcom/android/contacts/calllog/ContactInfo;)Z

    move-result v5

    if-nez v5, :cond_17

    .line 712
    const/4 v9, 0x0

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/android/contacts/calllog/CallLogAdapter;->enqueueRequest(Ljava/lang/String;Ljava/lang/String;Lcom/android/contacts/calllog/ContactInfo;ZLjava/lang/String;)V

    goto :goto_b

    .line 739
    .restart local v14    # "formattedNumber":Ljava/lang/CharSequence;
    .restart local v17    # "callTypes":[I
    .restart local v34    # "name":Ljava/lang/String;
    .restart local v35    # "ntype":I
    .restart local v36    # "label":Ljava/lang/String;
    .restart local v37    # "lookupUri":Landroid/net/Uri;
    .restart local v42    # "cityIdView":Landroid/widget/TextView;
    .restart local v46    # "photoId":J
    :cond_19
    move-object/from16 v0, v42

    invoke-static {v6, v0}, Lcom/motorola/contacts/util/CityIdInfo;->computeDisplayName(Ljava/lang/String;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v16

    .restart local v16    # "geocode":Ljava/lang/String;
    goto/16 :goto_8

    .line 742
    .end local v16    # "geocode":Ljava/lang/String;
    .end local v42    # "cityIdView":Landroid/widget/TextView;
    :cond_1a
    const/4 v5, 0x7

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .restart local v16    # "geocode":Ljava/lang/String;
    goto/16 :goto_8

    .line 761
    :cond_1b
    new-instance v11, Lcom/android/contacts/PhoneCallDetails;

    const/16 v38, 0x0

    move-object/from16 v23, v11

    move-object/from16 v24, v6

    move/from16 v25, v13

    move-object/from16 v26, v14

    move-object/from16 v27, v7

    move-object/from16 v28, v16

    move-object/from16 v29, v17

    move-wide/from16 v30, v18

    move-wide/from16 v32, v20

    move-object/from16 v39, v22

    invoke-direct/range {v23 .. v39}, Lcom/android/contacts/PhoneCallDetails;-><init>(Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJLjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;)V

    .restart local v11    # "details":Lcom/android/contacts/PhoneCallDetails;
    goto/16 :goto_9

    .line 765
    :cond_1c
    const/16 v44, 0x0

    goto/16 :goto_a
.end method

.method private callLogInfoMatches(Lcom/android/contacts/calllog/ContactInfo;Lcom/android/contacts/calllog/ContactInfo;)Z
    .locals 2
    .param p1, "callLogInfo"    # Lcom/android/contacts/calllog/ContactInfo;
    .param p2, "info"    # Lcom/android/contacts/calllog/ContactInfo;

    .prologue
    .line 806
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
    .line 579
    invoke-static {p1}, Lcom/android/contacts/calllog/CallLogListItemViews;->fromView(Landroid/view/View;)Lcom/android/contacts/calllog/CallLogListItemViews;

    move-result-object v0

    .line 580
    .local v0, "views":Lcom/android/contacts/calllog/CallLogListItemViews;
    iget-object v1, v0, Lcom/android/contacts/calllog/CallLogListItemViews;->primaryActionView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mPrimaryActionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 581
    iget-object v1, v0, Lcom/android/contacts/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mSecondaryActionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 582
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 583
    return-void
.end method

.method private getCallTypes(Landroid/database/Cursor;I)[I
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "count"    # I

    .prologue
    .line 902
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    .line 903
    .local v2, "position":I
    new-array v0, p2, [I

    .line 904
    .local v0, "callTypes":[I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 905
    const/4 v3, 0x4

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    aput v3, v0, v1

    .line 906
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 904
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 908
    :cond_0
    invoke-interface {p1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 909
    return-object v0
.end method

.method private getContactInfoFromCallLog(Landroid/database/Cursor;)Lcom/android/contacts/calllog/ContactInfo;
    .locals 4
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 880
    new-instance v0, Lcom/android/contacts/calllog/ContactInfo;

    invoke-direct {v0}, Lcom/android/contacts/calllog/ContactInfo;-><init>()V

    .line 881
    .local v0, "info":Lcom/android/contacts/calllog/ContactInfo;
    const/16 v2, 0xb

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/util/UriUtils;->parseUriOrNull(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v0, Lcom/android/contacts/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    .line 882
    const/16 v2, 0x8

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/contacts/calllog/ContactInfo;->name:Ljava/lang/String;

    .line 883
    const/16 v2, 0x9

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/android/contacts/calllog/ContactInfo;->type:I

    .line 884
    const/16 v2, 0xa

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/contacts/calllog/ContactInfo;->label:Ljava/lang/String;

    .line 885
    const/16 v2, 0xc

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 886
    .local v1, "matchedNumber":Ljava/lang/String;
    if-nez v1, :cond_0

    const/4 v2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .end local v1    # "matchedNumber":Ljava/lang/String;
    :cond_0
    iput-object v1, v0, Lcom/android/contacts/calllog/ContactInfo;->number:Ljava/lang/String;

    .line 887
    const/16 v2, 0xd

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/contacts/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    .line 888
    const/16 v2, 0xe

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/contacts/calllog/ContactInfo;->photoId:J

    .line 889
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/contacts/calllog/ContactInfo;->photoUri:Landroid/net/Uri;

    .line 890
    const/16 v2, 0xf

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/contacts/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    .line 891
    return-object v0
.end method

.method private isLastOfSection(Landroid/database/Cursor;)Z
    .locals 5
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    const/16 v4, 0x14

    const/4 v2, 0x1

    .line 794
    invoke-interface {p1}, Landroid/database/Cursor;->isLast()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 799
    :cond_0
    :goto_0
    return v2

    .line 795
    :cond_1
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 796
    .local v1, "section":I
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 797
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 798
    .local v0, "nextSection":I
    invoke-interface {p1}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 799
    if-ne v1, v0, :cond_0

    const/4 v2, 0x0

    goto :goto_0
.end method

.method static log(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 1004
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

    .line 1005
    return-void
.end method

.method private queryContactInfo(Ljava/lang/String;Ljava/lang/String;Lcom/android/contacts/calllog/ContactInfo;Ljava/lang/String;)Z
    .locals 11
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "countryIso"    # Ljava/lang/String;
    .param p3, "callLogInfo"    # Lcom/android/contacts/calllog/ContactInfo;
    .param p4, "convertNumber"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 430
    sget-boolean v9, Lcom/android/contacts/calllog/CallLogAdapter;->DBG:Z

    if-eqz v9, :cond_0

    const-string v9, "queryContactInfo "

    invoke-static {v9}, Lcom/android/contacts/calllog/CallLogAdapter;->log(Ljava/lang/String;)V

    .line 431
    :cond_0
    iget-object v9, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mContactInfoHelper:Lcom/android/contacts/calllog/ContactInfoHelper;

    invoke-virtual {v9, p1, p2, p4}, Lcom/android/contacts/calllog/ContactInfoHelper;->lookupNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/calllog/ContactInfo;

    move-result-object v3

    .line 434
    .local v3, "info":Lcom/android/contacts/calllog/ContactInfo;
    if-nez v3, :cond_1

    .line 468
    :goto_0
    return v8

    .line 441
    :cond_1
    new-instance v5, Lcom/android/contacts/calllog/CallLogAdapter$NumberWithCountryIso;

    invoke-direct {v5, p1, p2}, Lcom/android/contacts/calllog/CallLogAdapter$NumberWithCountryIso;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    .local v5, "numberCountryIso":Lcom/android/contacts/calllog/CallLogAdapter$NumberWithCountryIso;
    iget-object v9, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mContactInfoCache:Lcom/android/contacts/util/ExpirableCache;

    invoke-virtual {v9, v5}, Lcom/android/contacts/util/ExpirableCache;->getPossiblyExpired(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/calllog/ContactInfo;

    .line 443
    .local v2, "existingInfo":Lcom/android/contacts/calllog/ContactInfo;
    sget-object v9, Lcom/android/contacts/calllog/ContactInfo;->EMPTY:Lcom/android/contacts/calllog/ContactInfo;

    if-eq v2, v9, :cond_5

    invoke-virtual {v3, v2}, Lcom/android/contacts/calllog/ContactInfo;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    move v6, v7

    .line 447
    .local v6, "updated":Z
    :goto_1
    iget-object v9, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mContactInfoCache:Lcom/android/contacts/util/ExpirableCache;

    invoke-virtual {v9, v5, v3}, Lcom/android/contacts/util/ExpirableCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 450
    invoke-direct {p0, p1, p2, v3, p3}, Lcom/android/contacts/calllog/CallLogAdapter;->updateCallLogContactInfoCache(Ljava/lang/String;Ljava/lang/String;Lcom/android/contacts/calllog/ContactInfo;Lcom/android/contacts/calllog/ContactInfo;)V

    .line 453
    iget-boolean v9, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mEcidEnabled:Z

    if-eqz v9, :cond_7

    .line 454
    const/4 v4, 0x0

    .line 455
    .local v4, "newEcidInfo":Lcom/motorola/contacts/util/EcidContact;
    iget-object v9, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    iget-object v10, v3, Lcom/android/contacts/calllog/ContactInfo;->number:Ljava/lang/String;

    invoke-static {v9, v10, v7}, Lcom/motorola/contacts/util/EcidContact;->doCacheLookup(Landroid/content/Context;Ljava/lang/String;I)Lcom/motorola/contacts/util/EcidContact;

    move-result-object v1

    .line 456
    .local v1, "ecidInfo":Lcom/motorola/contacts/util/EcidContact;
    if-nez v1, :cond_2

    .line 457
    iget-object v9, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    iget-object v10, v3, Lcom/android/contacts/calllog/ContactInfo;->number:Ljava/lang/String;

    invoke-static {v9, v10, v7}, Lcom/motorola/contacts/util/EcidContact;->doLookup(Landroid/content/Context;Ljava/lang/String;I)Lcom/motorola/contacts/util/EcidContact;

    move-result-object v4

    .line 459
    :cond_2
    if-nez v6, :cond_3

    if-eqz v4, :cond_6

    :cond_3
    move v6, v7

    .end local v1    # "ecidInfo":Lcom/motorola/contacts/util/EcidContact;
    .end local v4    # "newEcidInfo":Lcom/motorola/contacts/util/EcidContact;
    :cond_4
    :goto_2
    move v8, v6

    .line 468
    goto :goto_0

    .end local v6    # "updated":Z
    :cond_5
    move v6, v8

    .line 443
    goto :goto_1

    .restart local v1    # "ecidInfo":Lcom/motorola/contacts/util/EcidContact;
    .restart local v4    # "newEcidInfo":Lcom/motorola/contacts/util/EcidContact;
    .restart local v6    # "updated":Z
    :cond_6
    move v6, v8

    .line 459
    goto :goto_2

    .line 462
    .end local v1    # "ecidInfo":Lcom/motorola/contacts/util/EcidContact;
    .end local v4    # "newEcidInfo":Lcom/motorola/contacts/util/EcidContact;
    :cond_7
    iget-boolean v9, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mCityIDEnabled:Z

    if-eqz v9, :cond_4

    .line 463
    iget-object v9, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    iget-object v10, v3, Lcom/android/contacts/calllog/ContactInfo;->number:Ljava/lang/String;

    invoke-static {v9, v10, v7}, Lcom/motorola/contacts/util/CityIdInfo;->recentCallCityIdLookup(Landroid/content/Context;Ljava/lang/String;Z)Lcom/motorola/contacts/util/CityIdInfo;

    move-result-object v0

    .line 464
    .local v0, "cidInfo":Lcom/motorola/contacts/util/CityIdInfo;
    if-nez v6, :cond_8

    if-eqz v0, :cond_9

    :cond_8
    move v6, v7

    :goto_3
    goto :goto_2

    :cond_9
    move v6, v8

    goto :goto_3
.end method

.method private setPhoto(Lcom/android/contacts/calllog/CallLogListItemViews;JLandroid/net/Uri;)V
    .locals 3
    .param p1, "views"    # Lcom/android/contacts/calllog/CallLogListItemViews;
    .param p2, "photoId"    # J
    .param p4, "contactUri"    # Landroid/net/Uri;

    .prologue
    .line 913
    iget-object v0, p1, Lcom/android/contacts/calllog/CallLogListItemViews;->quickContactView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v0, p4}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 914
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    iget-object v1, p1, Lcom/android/contacts/calllog/CallLogListItemViews;->quickContactView:Landroid/widget/QuickContactBadge;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, p3, v2}, Lcom/android/contacts/ContactPhotoManager;->loadThumbnail(Landroid/widget/ImageView;JZ)V

    .line 915
    return-void
.end method

.method private declared-synchronized startRequestProcessing()V
    .locals 2

    .prologue
    .line 334
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mRequestProcessingDisabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 342
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 337
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mCallerIdThread:Lcom/android/contacts/calllog/CallLogAdapter$QueryThread;

    if-nez v0, :cond_0

    .line 339
    new-instance v0, Lcom/android/contacts/calllog/CallLogAdapter$QueryThread;

    invoke-direct {v0, p0}, Lcom/android/contacts/calllog/CallLogAdapter$QueryThread;-><init>(Lcom/android/contacts/calllog/CallLogAdapter;)V

    iput-object v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mCallerIdThread:Lcom/android/contacts/calllog/CallLogAdapter$QueryThread;

    .line 340
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mCallerIdThread:Lcom/android/contacts/calllog/CallLogAdapter$QueryThread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/contacts/calllog/CallLogAdapter$QueryThread;->setPriority(I)V

    .line 341
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mCallerIdThread:Lcom/android/contacts/calllog/CallLogAdapter$QueryThread;

    invoke-virtual {v0}, Lcom/android/contacts/calllog/CallLogAdapter$QueryThread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 334
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private unregisterPreDrawListener()V
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 366
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    .line 367
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

    .line 814
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 815
    .local v1, "values":Landroid/content/ContentValues;
    const/4 v0, 0x0

    .line 817
    .local v0, "needsUpdate":Z
    if-eqz p4, :cond_8

    .line 818
    iget-object v2, p3, Lcom/android/contacts/calllog/ContactInfo;->name:Ljava/lang/String;

    iget-object v3, p4, Lcom/android/contacts/calllog/ContactInfo;->name:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 819
    const-string v2, "name"

    iget-object v3, p3, Lcom/android/contacts/calllog/ContactInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    const/4 v0, 0x1

    .line 823
    :cond_0
    iget v2, p3, Lcom/android/contacts/calllog/ContactInfo;->type:I

    iget v3, p4, Lcom/android/contacts/calllog/ContactInfo;->type:I

    if-eq v2, v3, :cond_1

    .line 824
    const-string v2, "numbertype"

    iget v3, p3, Lcom/android/contacts/calllog/ContactInfo;->type:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 825
    const/4 v0, 0x1

    .line 828
    :cond_1
    iget-object v2, p3, Lcom/android/contacts/calllog/ContactInfo;->label:Ljava/lang/String;

    iget-object v3, p4, Lcom/android/contacts/calllog/ContactInfo;->label:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 829
    const-string v2, "numberlabel"

    iget-object v3, p3, Lcom/android/contacts/calllog/ContactInfo;->label:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    const/4 v0, 0x1

    .line 832
    :cond_2
    iget-object v2, p3, Lcom/android/contacts/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    iget-object v3, p4, Lcom/android/contacts/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    invoke-static {v2, v3}, Lcom/android/contacts/util/UriUtils;->areEqual(Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 833
    const-string v2, "lookup_uri"

    iget-object v3, p3, Lcom/android/contacts/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    invoke-static {v3}, Lcom/android/contacts/util/UriUtils;->uriToString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    const/4 v0, 0x1

    .line 836
    :cond_3
    iget-object v2, p3, Lcom/android/contacts/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    iget-object v3, p4, Lcom/android/contacts/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 837
    const-string v2, "normalized_number"

    iget-object v3, p3, Lcom/android/contacts/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    const/4 v0, 0x1

    .line 840
    :cond_4
    iget-object v2, p3, Lcom/android/contacts/calllog/ContactInfo;->number:Ljava/lang/String;

    iget-object v3, p4, Lcom/android/contacts/calllog/ContactInfo;->number:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 841
    const-string v2, "matched_number"

    iget-object v3, p3, Lcom/android/contacts/calllog/ContactInfo;->number:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    const/4 v0, 0x1

    .line 844
    :cond_5
    iget-wide v2, p3, Lcom/android/contacts/calllog/ContactInfo;->photoId:J

    iget-wide v4, p4, Lcom/android/contacts/calllog/ContactInfo;->photoId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_6

    .line 845
    const-string v2, "photo_id"

    iget-wide v3, p3, Lcom/android/contacts/calllog/ContactInfo;->photoId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 846
    const/4 v0, 0x1

    .line 848
    :cond_6
    iget-object v2, p3, Lcom/android/contacts/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    iget-object v3, p4, Lcom/android/contacts/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 849
    const-string v2, "formatted_number"

    iget-object v3, p3, Lcom/android/contacts/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    const/4 v0, 0x1

    .line 865
    :cond_7
    :goto_0
    if-nez v0, :cond_9

    .line 876
    :goto_1
    return-void

    .line 854
    :cond_8
    const-string v2, "name"

    iget-object v3, p3, Lcom/android/contacts/calllog/ContactInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    const-string v2, "numbertype"

    iget v3, p3, Lcom/android/contacts/calllog/ContactInfo;->type:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 856
    const-string v2, "numberlabel"

    iget-object v3, p3, Lcom/android/contacts/calllog/ContactInfo;->label:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    const-string v2, "lookup_uri"

    iget-object v3, p3, Lcom/android/contacts/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    invoke-static {v3}, Lcom/android/contacts/util/UriUtils;->uriToString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    const-string v2, "matched_number"

    iget-object v3, p3, Lcom/android/contacts/calllog/ContactInfo;->number:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    const-string v2, "normalized_number"

    iget-object v3, p3, Lcom/android/contacts/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    const-string v2, "photo_id"

    iget-wide v3, p3, Lcom/android/contacts/calllog/ContactInfo;->photoId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 861
    const-string v2, "formatted_number"

    iget-object v3, p3, Lcom/android/contacts/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    const/4 v0, 0x1

    goto :goto_0

    .line 867
    :cond_9
    if-nez p2, :cond_a

    .line 868
    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

    const-string v4, "number = ? AND countryiso IS NULL"

    new-array v5, v7, [Ljava/lang/String;

    aput-object p1, v5, v6

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 872
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
    .line 936
    invoke-super {p0, p1, p2, p3}, Lcom/android/common/widget/GroupingListAdapter;->addGroup(IIZ)V

    .line 937
    return-void
.end method

.method protected addGroups(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 531
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mCallLogGroupBuilder:Lcom/android/contacts/calllog/CallLogGroupBuilder;

    invoke-virtual {v0, p1}, Lcom/android/contacts/calllog/CallLogGroupBuilder;->addGroups(Landroid/database/Cursor;)V

    .line 532
    return-void
.end method

.method protected bindChildView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 559
    const/4 v0, 0x1

    invoke-direct {p0, p1, p3, v0}, Lcom/android/contacts/calllog/CallLogAdapter;->bindView(Landroid/view/View;Landroid/database/Cursor;I)V

    .line 560
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
    .line 574
    invoke-direct {p0, p1, p3, p4}, Lcom/android/contacts/calllog/CallLogAdapter;->bindView(Landroid/view/View;Landroid/database/Cursor;I)V

    .line 575
    return-void
.end method

.method protected bindStandAloneView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 545
    const/4 v0, 0x1

    invoke-direct {p0, p1, p3, v0}, Lcom/android/contacts/calllog/CallLogAdapter;->bindView(Landroid/view/View;Landroid/database/Cursor;I)V

    .line 546
    return-void
.end method

.method public clearAllCache()V
    .locals 2

    .prologue
    .line 379
    iget-object v1, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mContactInfoCache:Lcom/android/contacts/util/ExpirableCache;

    monitor-enter v1

    .line 380
    :try_start_0
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mContactInfoCache:Lcom/android/contacts/util/ExpirableCache;

    invoke-virtual {v0}, Lcom/android/contacts/util/ExpirableCache;->clearCache()V

    .line 381
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 383
    iget-boolean v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mEcidEnabled:Z

    if-eqz v0, :cond_1

    .line 384
    invoke-static {}, Lcom/motorola/contacts/util/EcidContact;->clearEcidContacts()V

    .line 390
    :cond_0
    :goto_0
    return-void

    .line 381
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 387
    :cond_1
    iget-boolean v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mCityIDEnabled:Z

    if-eqz v0, :cond_0

    .line 388
    invoke-static {}, Lcom/motorola/contacts/util/CityIdInfo;->clearCityIdInfoCache()V

    goto :goto_0
.end method

.method disableRequestProcessingForTest()V
    .locals 1

    .prologue
    .line 925
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mRequestProcessingDisabled:Z

    .line 926
    return-void
.end method

.method enqueueRequest(Ljava/lang/String;Ljava/lang/String;Lcom/android/contacts/calllog/ContactInfo;ZLjava/lang/String;)V
    .locals 4
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "countryIso"    # Ljava/lang/String;
    .param p3, "callLogInfo"    # Lcom/android/contacts/calllog/ContactInfo;
    .param p4, "immediate"    # Z
    .param p5, "convertNumber"    # Ljava/lang/String;

    .prologue
    .line 405
    new-instance v0, Lcom/android/contacts/calllog/CallLogAdapter$ContactInfoRequest;

    invoke-direct {v0, p1, p2, p3, p5}, Lcom/android/contacts/calllog/CallLogAdapter$ContactInfoRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/contacts/calllog/ContactInfo;Ljava/lang/String;)V

    .line 407
    .local v0, "request":Lcom/android/contacts/calllog/CallLogAdapter$ContactInfoRequest;
    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mRequests:Ljava/util/LinkedList;

    monitor-enter v2

    .line 408
    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 409
    iget-object v1, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 410
    iget-object v1, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 411
    sget-boolean v1, Lcom/android/contacts/calllog/CallLogAdapter;->VDBG:Z

    if-eqz v1, :cond_0

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

    .line 413
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 414
    if-eqz p4, :cond_1

    invoke-direct {p0}, Lcom/android/contacts/calllog/CallLogAdapter;->startRequestProcessing()V

    .line 415
    :cond_1
    return-void

    .line 413
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method injectContactInfoForTest(Ljava/lang/String;Ljava/lang/String;Lcom/android/contacts/calllog/ContactInfo;)V
    .locals 2
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "countryIso"    # Ljava/lang/String;
    .param p3, "contactInfo"    # Lcom/android/contacts/calllog/ContactInfo;

    .prologue
    .line 930
    new-instance v0, Lcom/android/contacts/calllog/CallLogAdapter$NumberWithCountryIso;

    invoke-direct {v0, p1, p2}, Lcom/android/contacts/calllog/CallLogAdapter$NumberWithCountryIso;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 931
    .local v0, "numberCountryIso":Lcom/android/contacts/calllog/CallLogAdapter$NumberWithCountryIso;
    iget-object v1, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mContactInfoCache:Lcom/android/contacts/util/ExpirableCache;

    invoke-virtual {v1, v0, p3}, Lcom/android/contacts/util/ExpirableCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 932
    return-void
.end method

.method public invalidateCache()V
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mContactInfoCache:Lcom/android/contacts/util/ExpirableCache;

    invoke-virtual {v0}, Lcom/android/contacts/util/ExpirableCache;->expireAll()V

    .line 373
    invoke-virtual {p0}, Lcom/android/contacts/calllog/CallLogAdapter;->stopRequestProcessing()V

    .line 374
    invoke-direct {p0}, Lcom/android/contacts/calllog/CallLogAdapter;->unregisterPreDrawListener()V

    .line 375
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 320
    iget-boolean v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mLoading:Z

    if-eqz v0, :cond_0

    .line 322
    const/4 v0, 0x0

    .line 324
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/android/common/widget/GroupingListAdapter;->isEmpty()Z

    move-result v0

    goto :goto_0
.end method

.method protected newChildView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 550
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 552
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f04000a

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 553
    .local v1, "view":Landroid/view/View;
    invoke-direct {p0, v1}, Lcom/android/contacts/calllog/CallLogAdapter;->findAndCacheViews(Landroid/view/View;)V

    .line 554
    return-object v1
.end method

.method protected newGroupView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 564
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 566
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f04000a

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 567
    .local v1, "view":Landroid/view/View;
    invoke-direct {p0, v1}, Lcom/android/contacts/calllog/CallLogAdapter;->findAndCacheViews(Landroid/view/View;)V

    .line 568
    return-object v1
.end method

.method protected newStandAloneView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 536
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 538
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f04000a

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 539
    .local v1, "view":Landroid/view/View;
    invoke-direct {p0, v1}, Lcom/android/contacts/calllog/CallLogAdapter;->findAndCacheViews(Landroid/view/View;)V

    .line 540
    return-object v1
.end method

.method protected onContentChanged()V
    .locals 1

    .prologue
    .line 310
    sget-boolean v0, Lcom/android/contacts/calllog/CallLogAdapter;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "onContentChanged"

    invoke-static {v0}, Lcom/android/contacts/calllog/CallLogAdapter;->log(Ljava/lang/String;)V

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mCallFetcher:Lcom/android/contacts/calllog/CallLogAdapter$CallFetcher;

    invoke-interface {v0}, Lcom/android/contacts/calllog/CallLogAdapter$CallFetcher;->fetchCalls()V

    .line 312
    return-void
.end method

.method public onPreDraw()Z
    .locals 4

    .prologue
    .line 253
    invoke-direct {p0}, Lcom/android/contacts/calllog/CallLogAdapter;->unregisterPreDrawListener()V

    .line 257
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mCallerIdThread:Lcom/android/contacts/calllog/CallLogAdapter$QueryThread;

    if-nez v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 261
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onScrollStateChanged(I)V
    .locals 3
    .param p1, "scrollState"    # I

    .prologue
    .line 981
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

    .line 986
    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 987
    .local v0, "isScrolling":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 988
    invoke-virtual {p0}, Lcom/android/contacts/calllog/CallLogAdapter;->stopRequestProcessing()V

    .line 994
    :goto_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    .line 995
    iget-object v1, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    invoke-virtual {v1}, Lcom/android/contacts/ContactPhotoManager;->pause()V

    .line 999
    :goto_2
    return-void

    .line 986
    .end local v0    # "isScrolling":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 990
    .restart local v0    # "isScrolling":Z
    :cond_2
    invoke-direct {p0}, Lcom/android/contacts/calllog/CallLogAdapter;->startRequestProcessing()V

    goto :goto_1

    .line 997
    :cond_3
    iget-object v1, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    invoke-virtual {v1}, Lcom/android/contacts/ContactPhotoManager;->resume()V

    goto :goto_2
.end method

.method setLoading(Z)V
    .locals 0
    .param p1, "loading"    # Z

    .prologue
    .line 315
    iput-boolean p1, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mLoading:Z

    .line 316
    return-void
.end method

.method public declared-synchronized stopRequestProcessing()V
    .locals 2

    .prologue
    .line 350
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 351
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mCallerIdThread:Lcom/android/contacts/calllog/CallLogAdapter$QueryThread;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mCallerIdThread:Lcom/android/contacts/calllog/CallLogAdapter$QueryThread;

    invoke-virtual {v0}, Lcom/android/contacts/calllog/CallLogAdapter$QueryThread;->stopProcessing()V

    .line 354
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mCallerIdThread:Lcom/android/contacts/calllog/CallLogAdapter$QueryThread;

    invoke-virtual {v0}, Lcom/android/contacts/calllog/CallLogAdapter$QueryThread;->interrupt()V

    .line 355
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mCallerIdThread:Lcom/android/contacts/calllog/CallLogAdapter$QueryThread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 357
    :cond_0
    monitor-exit p0

    return-void

    .line 350
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
