.class public Lcom/android/contacts/editor/ContactEditorFragment;
.super Landroid/app/Fragment;
.source "ContactEditorFragment.java"

# interfaces
.implements Lcom/android/contacts/editor/AggregationSuggestionEngine$Listener;
.implements Lcom/android/contacts/editor/AggregationSuggestionView$Listener;
.implements Lcom/android/contacts/editor/RawContactReadOnlyEditorView$Listener;
.implements Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;,
        Lcom/android/contacts/editor/ContactEditorFragment$SuggestionEditConfirmationDialogFragment;,
        Lcom/android/contacts/editor/ContactEditorFragment$JoinSuggestedContactDialogFragment;,
        Lcom/android/contacts/editor/ContactEditorFragment$EntityDeltaComparator;,
        Lcom/android/contacts/editor/ContactEditorFragment$Listener;,
        Lcom/android/contacts/editor/ContactEditorFragment$CancelEditDialogFragment;,
        Lcom/android/contacts/editor/ContactEditorFragment$AggregationSuggestionAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAction:Ljava/lang/String;

.field private mAggregationSuggestionEngine:Lcom/android/contacts/editor/AggregationSuggestionEngine;

.field private mAggregationSuggestionItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mAggregationSuggestionPopup:Landroid/widget/ListPopupWindow;

.field private mAggregationSuggestionView:Landroid/view/View;

.field private mAggregationSuggestionsRawContactId:J

.field private mAutoAddToDefaultGroup:Z

.field private final mComparator:Lcom/android/contacts/editor/ContactEditorFragment$EntityDeltaComparator;

.field private mContactIdForJoin:J

.field private mContactWritableForJoin:Z

.field private mContent:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mCurrentPhotoHandler:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

.field private mCurrentPhotoUri:Landroid/net/Uri;

.field private final mDataLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/android/contacts/model/Contact;",
            ">;"
        }
    .end annotation
.end field

.field private mEditorUtils:Lcom/android/contacts/editor/ContactEditorUtils;

.field private mEnabled:Z

.field private final mGroupLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupMetaData:Landroid/database/Cursor;

.field private mIntentExtras:Landroid/os/Bundle;

.field private mIsUserProfile:Z

.field private mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

.field private mLoaderStartTime:J

.field private mLookupUri:Landroid/net/Uri;

.field private mNewLocalProfile:Z

.field private mPhotoHandlerArr:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mRawContactIdRequestingPhoto:J

.field private mRequestFocus:Z

.field private mState:Lcom/android/contacts/model/RawContactDeltaList;

.field private mStatus:I

.field private mUpdatedPhotos:Landroid/os/Bundle;

.field private mViewIdGenerator:Lcom/android/contacts/editor/ViewIdGenerator;

.field private popup:Landroid/widget/ListPopupWindow;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 118
    const-class v0, Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/editor/ContactEditorFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 329
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 228
    new-instance v0, Lcom/android/contacts/editor/ContactEditorFragment$EntityDeltaComparator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/editor/ContactEditorFragment$EntityDeltaComparator;-><init>(Lcom/android/contacts/editor/ContactEditorFragment;Lcom/android/contacts/editor/ContactEditorFragment$1;)V

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mComparator:Lcom/android/contacts/editor/ContactEditorFragment$EntityDeltaComparator;

    .line 233
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mUpdatedPhotos:Landroid/os/Bundle;

    .line 307
    new-instance v0, Lcom/android/contacts/editor/ContactEditorFragment$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/editor/ContactEditorFragment$1;-><init>(Lcom/android/contacts/editor/ContactEditorFragment;)V

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 320
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mEnabled:Z

    .line 322
    iput-boolean v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mNewLocalProfile:Z

    .line 323
    iput-boolean v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsUserProfile:Z

    .line 1794
    new-instance v0, Lcom/android/contacts/editor/ContactEditorFragment$4;

    invoke-direct {v0, p0}, Lcom/android/contacts/editor/ContactEditorFragment$4;-><init>(Lcom/android/contacts/editor/ContactEditorFragment;)V

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mDataLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 1830
    new-instance v0, Lcom/android/contacts/editor/ContactEditorFragment$5;

    invoke-direct {v0, p0}, Lcom/android/contacts/editor/ContactEditorFragment$5;-><init>(Lcom/android/contacts/editor/ContactEditorFragment;)V

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mGroupLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 330
    return-void
.end method

.method static synthetic access$100(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/widget/ListPopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/editor/ContactEditorFragment;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionPopup:Landroid/widget/ListPopupWindow;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/contacts/editor/ContactEditorFragment;)Lcom/android/contacts/editor/ContactEditorFragment$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/editor/ContactEditorFragment;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/contacts/editor/ContactEditorFragment;Landroid/widget/ListPopupWindow;)Landroid/widget/ListPopupWindow;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/editor/ContactEditorFragment;
    .param p1, "x1"    # Landroid/widget/ListPopupWindow;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionPopup:Landroid/widget/ListPopupWindow;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/android/contacts/editor/ContactEditorFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/editor/ContactEditorFragment;
    .param p1, "x1"    # I

    .prologue
    .line 113
    iput p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    return p1
.end method

.method static synthetic access$1202(Lcom/android/contacts/editor/ContactEditorFragment;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/editor/ContactEditorFragment;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mGroupMetaData:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/contacts/editor/ContactEditorFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/editor/ContactEditorFragment;

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->bindGroupMetaData()V

    return-void
.end method

.method static synthetic access$1502(Lcom/android/contacts/editor/ContactEditorFragment;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/editor/ContactEditorFragment;
    .param p1, "x1"    # J

    .prologue
    .line 113
    iput-wide p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mRawContactIdRequestingPhoto:J

    return-wide p1
.end method

.method static synthetic access$1602(Lcom/android/contacts/editor/ContactEditorFragment;Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;)Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/editor/ContactEditorFragment;
    .param p1, "x1"    # Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCurrentPhotoHandler:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/editor/ContactEditorFragment;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCurrentPhotoUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/contacts/editor/ContactEditorFragment;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/editor/ContactEditorFragment;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCurrentPhotoUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/contacts/editor/ContactEditorFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/editor/ContactEditorFragment;

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->hasValidState()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/contacts/editor/ContactEditorFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/editor/ContactEditorFragment;

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->isEditingUserProfile()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/editor/ContactEditorFragment;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/contacts/editor/ContactEditorFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/editor/ContactEditorFragment;

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->bindEditors()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/editor/ContactEditorFragment;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mUpdatedPhotos:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/contacts/editor/ContactEditorFragment;JLandroid/graphics/Bitmap;Landroid/net/Uri;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/editor/ContactEditorFragment;
    .param p1, "x1"    # J
    .param p3, "x2"    # Landroid/graphics/Bitmap;
    .param p4, "x3"    # Landroid/net/Uri;

    .prologue
    .line 113
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/contacts/editor/ContactEditorFragment;->setPhoto(JLandroid/graphics/Bitmap;Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/contacts/editor/ContactEditorFragment;Landroid/content/Context;Lcom/android/contacts/editor/RawContactEditorView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/editor/ContactEditorFragment;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Lcom/android/contacts/editor/RawContactEditorView;

    .prologue
    .line 113
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/editor/ContactEditorFragment;->acquireAggregationSuggestions(Landroid/content/Context;Lcom/android/contacts/editor/RawContactEditorView;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/widget/ListPopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/editor/ContactEditorFragment;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->popup:Landroid/widget/ListPopupWindow;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/contacts/editor/ContactEditorFragment;Landroid/widget/ListPopupWindow;)Landroid/widget/ListPopupWindow;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/editor/ContactEditorFragment;
    .param p1, "x1"    # Landroid/widget/ListPopupWindow;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->popup:Landroid/widget/ListPopupWindow;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/editor/ContactEditorFragment;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/contacts/editor/ContactEditorFragment;Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/account/AccountWithDataSet;Lcom/android/contacts/model/account/AccountWithDataSet;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/editor/ContactEditorFragment;
    .param p1, "x1"    # Lcom/android/contacts/model/RawContactDelta;
    .param p2, "x2"    # Lcom/android/contacts/model/account/AccountWithDataSet;
    .param p3, "x3"    # Lcom/android/contacts/model/account/AccountWithDataSet;

    .prologue
    .line 113
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/editor/ContactEditorFragment;->rebindEditorsForNewContact(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/account/AccountWithDataSet;Lcom/android/contacts/model/account/AccountWithDataSet;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/contacts/editor/ContactEditorFragment;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/contacts/editor/ContactEditorFragment;

    .prologue
    .line 113
    iget-wide v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mLoaderStartTime:J

    return-wide v0
.end method

.method static synthetic access$702(Lcom/android/contacts/editor/ContactEditorFragment;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/editor/ContactEditorFragment;
    .param p1, "x1"    # J

    .prologue
    .line 113
    iput-wide p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mLoaderStartTime:J

    return-wide p1
.end method

.method static synthetic access$800(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/editor/ContactEditorFragment;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mLookupUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/contacts/editor/ContactEditorFragment;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/editor/ContactEditorFragment;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mLookupUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$900()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    sget-object v0, Lcom/android/contacts/editor/ContactEditorFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private acquireAggregationSuggestions(Landroid/content/Context;Lcom/android/contacts/editor/RawContactEditorView;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rawContactEditor"    # Lcom/android/contacts/editor/RawContactEditorView;

    .prologue
    .line 1481
    invoke-virtual {p2}, Lcom/android/contacts/editor/RawContactEditorView;->getRawContactId()J

    move-result-wide v1

    .line 1482
    .local v1, "rawContactId":J
    iget-wide v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionsRawContactId:J

    cmp-long v3, v3, v1

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionView:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 1484
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionView:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1485
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionView:Landroid/view/View;

    .line 1486
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionEngine:Lcom/android/contacts/editor/AggregationSuggestionEngine;

    invoke-virtual {v3}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->reset()V

    .line 1489
    :cond_0
    iput-wide v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionsRawContactId:J

    .line 1491
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionEngine:Lcom/android/contacts/editor/AggregationSuggestionEngine;

    if-nez v3, :cond_1

    .line 1492
    new-instance v3, Lcom/android/contacts/editor/AggregationSuggestionEngine;

    invoke-direct {v3, p1}, Lcom/android/contacts/editor/AggregationSuggestionEngine;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionEngine:Lcom/android/contacts/editor/AggregationSuggestionEngine;

    .line 1493
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionEngine:Lcom/android/contacts/editor/AggregationSuggestionEngine;

    invoke-virtual {v3, p0}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->setListener(Lcom/android/contacts/editor/AggregationSuggestionEngine$Listener;)V

    .line 1494
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionEngine:Lcom/android/contacts/editor/AggregationSuggestionEngine;

    invoke-virtual {v3}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->start()V

    .line 1497
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionEngine:Lcom/android/contacts/editor/AggregationSuggestionEngine;

    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getContactId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->setContactId(J)V

    .line 1499
    invoke-virtual {p2}, Lcom/android/contacts/editor/RawContactEditorView;->getNameEditor()Lcom/android/contacts/editor/TextFieldsEditorView;

    move-result-object v0

    .line 1500
    .local v0, "nameEditor":Lcom/android/contacts/editor/LabeledEditorView;
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionEngine:Lcom/android/contacts/editor/AggregationSuggestionEngine;

    invoke-virtual {v0}, Lcom/android/contacts/editor/LabeledEditorView;->getValues()Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->onNameChange(Lcom/android/contacts/model/RawContactDelta$ValuesDelta;)V

    .line 1501
    return-void
.end method

.method private addAccountSwitcher(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/editor/BaseRawContactEditorView;)V
    .locals 6
    .param p1, "currentState"    # Lcom/android/contacts/model/RawContactDelta;
    .param p2, "editor"    # Lcom/android/contacts/editor/BaseRawContactEditorView;

    .prologue
    .line 940
    new-instance v2, Lcom/android/contacts/model/account/AccountWithDataSet;

    invoke-virtual {p1}, Lcom/android/contacts/model/RawContactDelta;->getAccountName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/contacts/model/RawContactDelta;->getAccountType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/contacts/model/RawContactDelta;->getDataSet()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/android/contacts/model/account/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 944
    .local v2, "currentAccount":Lcom/android/contacts/model/account/AccountWithDataSet;
    const v3, 0x7f0600d7

    invoke-virtual {p2, v3}, Lcom/android/contacts/editor/BaseRawContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 945
    .local v0, "accountView":Landroid/view/View;
    const v3, 0x7f0600d6

    invoke-virtual {p2, v3}, Lcom/android/contacts/editor/BaseRawContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 946
    .local v1, "anchorView":Landroid/view/View;
    new-instance v3, Lcom/android/contacts/editor/ContactEditorFragment$3;

    invoke-direct {v3, p0, v2, v1, p1}, Lcom/android/contacts/editor/ContactEditorFragment$3;-><init>(Lcom/android/contacts/editor/ContactEditorFragment;Lcom/android/contacts/model/account/AccountWithDataSet;Landroid/view/View;Lcom/android/contacts/model/RawContactDelta;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 974
    return-void
.end method

.method private bindEditors()V
    .locals 22

    .prologue
    .line 747
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    move-object/from16 v19, v0

    if-nez v19, :cond_1

    .line 855
    :cond_0
    :goto_0
    return-void

    .line 752
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mComparator:Lcom/android/contacts/editor/ContactEditorFragment$EntityDeltaComparator;

    move-object/from16 v20, v0

    invoke-static/range {v19 .. v20}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 755
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 757
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mPhotoHandlerArr:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->clear()V

    .line 759
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "layout_inflater"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/LayoutInflater;

    .line 761
    .local v9, "inflater":Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v3

    .line 762
    .local v3, "accountTypes":Lcom/android/contacts/model/AccountTypeManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/contacts/model/RawContactDeltaList;->size()I

    move-result v12

    .line 763
    .local v12, "numRawContacts":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v12, :cond_9

    .line 765
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Lcom/android/contacts/model/RawContactDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/contacts/model/RawContactDelta;

    .line 766
    .local v14, "rawContactDelta":Lcom/android/contacts/model/RawContactDelta;
    invoke-virtual {v14}, Lcom/android/contacts/model/RawContactDelta;->isVisible()Z

    move-result v19

    if-nez v19, :cond_3

    .line 763
    :cond_2
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 768
    :cond_3
    invoke-virtual {v14, v3}, Lcom/android/contacts/model/RawContactDelta;->getAccountType(Lcom/android/contacts/model/AccountTypeManager;)Lcom/android/contacts/model/account/AccountType;

    move-result-object v18

    .line 769
    .local v18, "type":Lcom/android/contacts/model/account/AccountType;
    invoke-virtual {v14}, Lcom/android/contacts/model/RawContactDelta;->getRawContactId()Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 772
    .local v16, "rawContactId":J
    invoke-virtual/range {v18 .. v18}, Lcom/android/contacts/model/account/AccountType;->areContactsWritable()Z

    move-result v19

    if-nez v19, :cond_6

    .line 773
    const v19, 0x7f040085

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v9, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/contacts/editor/BaseRawContactEditorView;

    .local v7, "editor":Lcom/android/contacts/editor/BaseRawContactEditorView;
    move-object/from16 v19, v7

    .line 775
    check-cast v19, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->setListener(Lcom/android/contacts/editor/RawContactReadOnlyEditorView$Listener;)V

    .line 780
    :goto_3
    const-string v19, "android.intent.action.INSERT"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mAction:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8

    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v12, v0, :cond_8

    .line 781
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v19

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Lcom/android/contacts/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v4

    .line 783
    .local v4, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/account/AccountWithDataSet;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mNewLocalProfile:Z

    move/from16 v19, v0

    if-nez v19, :cond_7

    .line 784
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/android/contacts/model/RawContactDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/contacts/model/RawContactDelta;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v7}, Lcom/android/contacts/editor/ContactEditorFragment;->addAccountSwitcher(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/editor/BaseRawContactEditorView;)V

    .line 792
    .end local v4    # "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/account/AccountWithDataSet;>;"
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mEnabled:Z

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/android/contacts/editor/BaseRawContactEditorView;->setEnabled(Z)V

    .line 794
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 796
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mViewIdGenerator:Lcom/android/contacts/editor/ViewIdGenerator;

    move-object/from16 v19, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/editor/ContactEditorFragment;->isEditingUserProfile()Z

    move-result v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v7, v14, v0, v1, v2}, Lcom/android/contacts/editor/BaseRawContactEditorView;->setState(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/account/AccountType;Lcom/android/contacts/editor/ViewIdGenerator;Z)V

    .line 799
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v7, v1, v2}, Lcom/android/contacts/editor/ContactEditorFragment;->bindPhotoHandler(Lcom/android/contacts/editor/BaseRawContactEditorView;Lcom/android/contacts/model/account/AccountType;Lcom/android/contacts/model/RawContactDeltaList;)V

    .line 803
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/editor/ContactEditorFragment;->updatedBitmapForRawContact(J)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 804
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v6, :cond_4

    invoke-virtual {v7, v6}, Lcom/android/contacts/editor/BaseRawContactEditorView;->setPhotoBitmap(Landroid/graphics/Bitmap;)V

    .line 806
    :cond_4
    instance-of v0, v7, Lcom/android/contacts/editor/RawContactEditorView;

    move/from16 v19, v0

    if-eqz v19, :cond_2

    .line 807
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    .local v5, "activity":Landroid/app/Activity;
    move-object v15, v7

    .line 808
    check-cast v15, Lcom/android/contacts/editor/RawContactEditorView;

    .line 809
    .local v15, "rawContactEditor":Lcom/android/contacts/editor/RawContactEditorView;
    new-instance v10, Lcom/android/contacts/editor/ContactEditorFragment$2;

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v5, v15}, Lcom/android/contacts/editor/ContactEditorFragment$2;-><init>(Lcom/android/contacts/editor/ContactEditorFragment;Landroid/app/Activity;Lcom/android/contacts/editor/RawContactEditorView;)V

    .line 826
    .local v10, "listener":Lcom/android/contacts/editor/Editor$EditorListener;
    invoke-virtual {v15}, Lcom/android/contacts/editor/RawContactEditorView;->getNameEditor()Lcom/android/contacts/editor/TextFieldsEditorView;

    move-result-object v11

    .line 827
    .local v11, "nameEditor":Lcom/android/contacts/editor/TextFieldsEditorView;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mRequestFocus:Z

    move/from16 v19, v0

    if-eqz v19, :cond_5

    .line 828
    invoke-virtual {v11}, Lcom/android/contacts/editor/TextFieldsEditorView;->requestFocus()Z

    .line 829
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/editor/ContactEditorFragment;->mRequestFocus:Z

    .line 831
    :cond_5
    invoke-virtual {v11, v10}, Lcom/android/contacts/editor/TextFieldsEditorView;->setEditorListener(Lcom/android/contacts/editor/Editor$EditorListener;)V

    .line 833
    invoke-virtual {v15}, Lcom/android/contacts/editor/RawContactEditorView;->getPhoneticNameEditor()Lcom/android/contacts/editor/TextFieldsEditorView;

    move-result-object v13

    .line 835
    .local v13, "phoneticNameEditor":Lcom/android/contacts/editor/TextFieldsEditorView;
    invoke-virtual {v13, v10}, Lcom/android/contacts/editor/TextFieldsEditorView;->setEditorListener(Lcom/android/contacts/editor/Editor$EditorListener;)V

    .line 836
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mAutoAddToDefaultGroup:Z

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/android/contacts/editor/RawContactEditorView;->setAutoAddToDefaultGroup(Z)V

    .line 838
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionsRawContactId:J

    move-wide/from16 v19, v0

    cmp-long v19, v16, v19

    if-nez v19, :cond_2

    .line 839
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v15}, Lcom/android/contacts/editor/ContactEditorFragment;->acquireAggregationSuggestions(Landroid/content/Context;Lcom/android/contacts/editor/RawContactEditorView;)V

    goto/16 :goto_2

    .line 777
    .end local v5    # "activity":Landroid/app/Activity;
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    .end local v7    # "editor":Lcom/android/contacts/editor/BaseRawContactEditorView;
    .end local v10    # "listener":Lcom/android/contacts/editor/Editor$EditorListener;
    .end local v11    # "nameEditor":Lcom/android/contacts/editor/TextFieldsEditorView;
    .end local v13    # "phoneticNameEditor":Lcom/android/contacts/editor/TextFieldsEditorView;
    .end local v15    # "rawContactEditor":Lcom/android/contacts/editor/RawContactEditorView;
    :cond_6
    const v19, 0x7f040084

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v9, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/contacts/editor/RawContactEditorView;

    .restart local v7    # "editor":Lcom/android/contacts/editor/BaseRawContactEditorView;
    goto/16 :goto_3

    .line 786
    .restart local v4    # "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/account/AccountWithDataSet;>;"
    :cond_7
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/contacts/editor/ContactEditorFragment;->disableAccountSwitcher(Lcom/android/contacts/editor/BaseRawContactEditorView;)V

    goto/16 :goto_4

    .line 789
    .end local v4    # "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/account/AccountWithDataSet;>;"
    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/contacts/editor/ContactEditorFragment;->disableAccountSwitcher(Lcom/android/contacts/editor/BaseRawContactEditorView;)V

    goto/16 :goto_4

    .line 844
    .end local v7    # "editor":Lcom/android/contacts/editor/BaseRawContactEditorView;
    .end local v14    # "rawContactDelta":Lcom/android/contacts/model/RawContactDelta;
    .end local v16    # "rawContactId":J
    .end local v18    # "type":Lcom/android/contacts/model/account/AccountType;
    :cond_9
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/editor/ContactEditorFragment;->mRequestFocus:Z

    .line 846
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/editor/ContactEditorFragment;->bindGroupMetaData()V

    .line 849
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 853
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    .line 854
    .restart local v5    # "activity":Landroid/app/Activity;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto/16 :goto_0
.end method

.method private bindEditorsForExistingContact(Lcom/android/contacts/model/Contact;)V
    .locals 8
    .param p1, "contact"    # Lcom/android/contacts/model/Contact;

    .prologue
    const/4 v7, 0x1

    .line 545
    invoke-virtual {p0, v7}, Lcom/android/contacts/editor/ContactEditorFragment;->setEnabled(Z)V

    .line 547
    invoke-virtual {p1}, Lcom/android/contacts/model/Contact;->createRawContactDeltaList()Lcom/android/contacts/model/RawContactDeltaList;

    move-result-object v5

    iput-object v5, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    .line 548
    iget-object v5, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    invoke-virtual {p0, v5}, Lcom/android/contacts/editor/ContactEditorFragment;->setIntentExtras(Landroid/os/Bundle;)V

    .line 549
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    .line 552
    invoke-virtual {p1}, Lcom/android/contacts/model/Contact;->isUserProfile()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsUserProfile:Z

    .line 553
    const/4 v2, 0x0

    .line 555
    .local v2, "localProfileExists":Z
    iget-boolean v5, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsUserProfile:Z

    if-eqz v5, :cond_2

    .line 556
    iget-object v5, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    invoke-virtual {v5}, Lcom/android/contacts/model/RawContactDeltaList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/model/RawContactDelta;

    .line 558
    .local v4, "state":Lcom/android/contacts/model/RawContactDelta;
    invoke-virtual {v4}, Lcom/android/contacts/model/RawContactDelta;->setProfileQueryUri()V

    .line 560
    invoke-virtual {v4}, Lcom/android/contacts/model/RawContactDelta;->getValues()Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    move-result-object v5

    const-string v6, "account_type"

    invoke-virtual {v5, v6}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    .line 561
    const/4 v2, 0x1

    goto :goto_0

    .line 565
    .end local v4    # "state":Lcom/android/contacts/model/RawContactDelta;
    :cond_1
    if-nez v2, :cond_2

    .line 566
    new-instance v3, Lcom/android/contacts/model/RawContact;

    iget-object v5, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5}, Lcom/android/contacts/model/RawContact;-><init>(Landroid/content/Context;)V

    .line 567
    .local v3, "rawContact":Lcom/android/contacts/model/RawContact;
    invoke-virtual {v3}, Lcom/android/contacts/model/RawContact;->setAccountToLocal()V

    .line 569
    new-instance v1, Lcom/android/contacts/model/RawContactDelta;

    invoke-virtual {v3}, Lcom/android/contacts/model/RawContact;->getValues()Landroid/content/ContentValues;

    move-result-object v5

    invoke-static {v5}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->fromAfter(Landroid/content/ContentValues;)Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/android/contacts/model/RawContactDelta;-><init>(Lcom/android/contacts/model/RawContactDelta$ValuesDelta;)V

    .line 571
    .local v1, "insert":Lcom/android/contacts/model/RawContactDelta;
    invoke-virtual {v1}, Lcom/android/contacts/model/RawContactDelta;->setProfileQueryUri()V

    .line 572
    iget-object v5, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    invoke-virtual {v5, v1}, Lcom/android/contacts/model/RawContactDeltaList;->add(Ljava/lang/Object;)Z

    .line 575
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "insert":Lcom/android/contacts/model/RawContactDelta;
    .end local v3    # "rawContact":Lcom/android/contacts/model/RawContact;
    :cond_2
    iput-boolean v7, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mRequestFocus:Z

    .line 577
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->bindEditors()V

    .line 578
    return-void
.end method

.method private bindEditorsForNewContact(Lcom/android/contacts/model/account/AccountWithDataSet;Lcom/android/contacts/model/account/AccountType;)V
    .locals 1
    .param p1, "account"    # Lcom/android/contacts/model/account/AccountWithDataSet;
    .param p2, "accountType"    # Lcom/android/contacts/model/account/AccountType;

    .prologue
    const/4 v0, 0x0

    .line 693
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/contacts/editor/ContactEditorFragment;->bindEditorsForNewContact(Lcom/android/contacts/model/account/AccountWithDataSet;Lcom/android/contacts/model/account/AccountType;Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/account/AccountType;)V

    .line 694
    return-void
.end method

.method private bindEditorsForNewContact(Lcom/android/contacts/model/account/AccountWithDataSet;Lcom/android/contacts/model/account/AccountType;Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/account/AccountType;)V
    .locals 5
    .param p1, "newAccount"    # Lcom/android/contacts/model/account/AccountWithDataSet;
    .param p2, "newAccountType"    # Lcom/android/contacts/model/account/AccountType;
    .param p3, "oldState"    # Lcom/android/contacts/model/RawContactDelta;
    .param p4, "oldAccountType"    # Lcom/android/contacts/model/account/AccountType;

    .prologue
    const/4 v4, 0x1

    .line 699
    iput v4, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    .line 701
    new-instance v1, Lcom/android/contacts/model/RawContact;

    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/contacts/model/RawContact;-><init>(Landroid/content/Context;)V

    .line 702
    .local v1, "rawContact":Lcom/android/contacts/model/RawContact;
    if-eqz p1, :cond_1

    .line 703
    invoke-virtual {v1, p1}, Lcom/android/contacts/model/RawContact;->setAccount(Lcom/android/contacts/model/account/AccountWithDataSet;)V

    .line 708
    :goto_0
    new-instance v0, Lcom/android/contacts/model/RawContactDelta;

    invoke-virtual {v1}, Lcom/android/contacts/model/RawContact;->getValues()Landroid/content/ContentValues;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->fromAfter(Landroid/content/ContentValues;)Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/contacts/model/RawContactDelta;-><init>(Lcom/android/contacts/model/RawContactDelta$ValuesDelta;)V

    .line 709
    .local v0, "insert":Lcom/android/contacts/model/RawContactDelta;
    if-nez p3, :cond_2

    .line 711
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    invoke-static {v2, p2, v0, v3}, Lcom/android/contacts/model/RawContactModifier;->parseExtras(Landroid/content/Context;Lcom/android/contacts/model/account/AccountType;Lcom/android/contacts/model/RawContactDelta;Landroid/os/Bundle;)V

    .line 719
    :goto_1
    const-string v2, "vnd.android.cursor.item/phone_v2"

    invoke-static {v0, p2, v2}, Lcom/android/contacts/model/RawContactModifier;->ensureKindExists(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/account/AccountType;Ljava/lang/String;)Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    .line 720
    const-string v2, "vnd.android.cursor.item/email_v2"

    invoke-static {v0, p2, v2}, Lcom/android/contacts/model/RawContactModifier;->ensureKindExists(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/account/AccountType;Ljava/lang/String;)Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    .line 721
    const-string v2, "vnd.android.cursor.item/organization"

    invoke-static {v0, p2, v2}, Lcom/android/contacts/model/RawContactModifier;->ensureKindExists(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/account/AccountType;Ljava/lang/String;)Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    .line 722
    const-string v2, "vnd.android.cursor.item/contact_event"

    invoke-static {v0, p2, v2}, Lcom/android/contacts/model/RawContactModifier;->ensureKindExists(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/account/AccountType;Ljava/lang/String;)Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    .line 723
    const-string v2, "vnd.android.cursor.item/postal-address_v2"

    invoke-static {v0, p2, v2}, Lcom/android/contacts/model/RawContactModifier;->ensureKindExists(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/account/AccountType;Ljava/lang/String;)Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    .line 727
    iget-boolean v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mNewLocalProfile:Z

    if-eqz v2, :cond_0

    .line 728
    invoke-virtual {v0}, Lcom/android/contacts/model/RawContactDelta;->setProfileQueryUri()V

    .line 731
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    if-nez v2, :cond_3

    .line 733
    invoke-static {v0}, Lcom/android/contacts/model/RawContactDeltaList;->fromSingle(Lcom/android/contacts/model/RawContactDelta;)Lcom/android/contacts/model/RawContactDeltaList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    .line 739
    :goto_2
    iput-boolean v4, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mRequestFocus:Z

    .line 741
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->bindEditors()V

    .line 742
    return-void

    .line 705
    .end local v0    # "insert":Lcom/android/contacts/model/RawContactDelta;
    :cond_1
    invoke-virtual {v1}, Lcom/android/contacts/model/RawContact;->setAccountToLocal()V

    goto :goto_0

    .line 713
    .restart local v0    # "insert":Lcom/android/contacts/model/RawContactDelta;
    :cond_2
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v2, p3, v0, p4, p2}, Lcom/android/contacts/model/RawContactModifier;->migrateStateForNewContact(Landroid/content/Context;Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/account/AccountType;Lcom/android/contacts/model/account/AccountType;)V

    goto :goto_1

    .line 736
    :cond_3
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    invoke-virtual {v2, v0}, Lcom/android/contacts/model/RawContactDeltaList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private bindGroupMetaData()V
    .locals 4

    .prologue
    .line 906
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mGroupMetaData:Landroid/database/Cursor;

    if-nez v3, :cond_1

    .line 915
    :cond_0
    return-void

    .line 910
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 911
    .local v1, "editorCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 912
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/editor/BaseRawContactEditorView;

    .line 913
    .local v0, "editor":Lcom/android/contacts/editor/BaseRawContactEditorView;
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mGroupMetaData:Landroid/database/Cursor;

    invoke-virtual {v0, v3}, Lcom/android/contacts/editor/BaseRawContactEditorView;->setGroupMetaData(Landroid/database/Cursor;)V

    .line 911
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private bindPhotoHandler(Lcom/android/contacts/editor/BaseRawContactEditorView;Lcom/android/contacts/model/account/AccountType;Lcom/android/contacts/model/RawContactDeltaList;)V
    .locals 7
    .param p1, "editor"    # Lcom/android/contacts/editor/BaseRawContactEditorView;
    .param p2, "type"    # Lcom/android/contacts/model/account/AccountType;
    .param p3, "state"    # Lcom/android/contacts/model/RawContactDeltaList;

    .prologue
    .line 871
    invoke-virtual {p2}, Lcom/android/contacts/model/account/AccountType;->areContactsWritable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 872
    invoke-virtual {p1}, Lcom/android/contacts/editor/BaseRawContactEditorView;->hasSetPhoto()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 873
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->hasMoreThanOnePhoto()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 874
    const/16 v4, 0xf

    .line 890
    .local v4, "mode":I
    :goto_0
    new-instance v0, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    move-object v1, p0

    move-object v3, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;-><init>(Lcom/android/contacts/editor/ContactEditorFragment;Landroid/content/Context;Lcom/android/contacts/editor/BaseRawContactEditorView;ILcom/android/contacts/model/RawContactDeltaList;)V

    .line 891
    .local v0, "photoHandler":Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;
    invoke-virtual {p1}, Lcom/android/contacts/editor/BaseRawContactEditorView;->getPhotoEditor()Lcom/android/contacts/editor/PhotoEditorView;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->getListener()Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler$PhotoEditorListener;

    invoke-virtual {v2, v1}, Lcom/android/contacts/editor/PhotoEditorView;->setEditorListener(Lcom/android/contacts/editor/Editor$EditorListener;)V

    .line 895
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mPhotoHandlerArr:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 900
    iget-wide v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mRawContactIdRequestingPhoto:J

    invoke-virtual {p1}, Lcom/android/contacts/editor/BaseRawContactEditorView;->getRawContactId()J

    move-result-wide v5

    cmp-long v1, v1, v5

    if-nez v1, :cond_0

    .line 901
    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCurrentPhotoHandler:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    .line 903
    .end local v0    # "photoHandler":Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;
    .end local v4    # "mode":I
    :cond_0
    :goto_1
    return-void

    .line 876
    :cond_1
    const/16 v4, 0xe

    .restart local v4    # "mode":I
    goto :goto_0

    .line 879
    .end local v4    # "mode":I
    :cond_2
    const/4 v4, 0x4

    .restart local v4    # "mode":I
    goto :goto_0

    .line 882
    .end local v4    # "mode":I
    :cond_3
    invoke-virtual {p1}, Lcom/android/contacts/editor/BaseRawContactEditorView;->hasSetPhoto()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->hasMoreThanOnePhoto()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 883
    const/4 v4, 0x1

    .restart local v4    # "mode":I
    goto :goto_0

    .line 886
    .end local v4    # "mode":I
    :cond_4
    invoke-virtual {p1}, Lcom/android/contacts/editor/BaseRawContactEditorView;->getPhotoEditor()Lcom/android/contacts/editor/PhotoEditorView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/contacts/editor/PhotoEditorView;->setEditorListener(Lcom/android/contacts/editor/Editor$EditorListener;)V

    goto :goto_1
.end method

.method private createContact()V
    .locals 3

    .prologue
    .line 630
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/contacts/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v0

    .line 633
    .local v0, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/account/AccountWithDataSet;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 634
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/contacts/editor/ContactEditorFragment;->createContact(Lcom/android/contacts/model/account/AccountWithDataSet;)V

    .line 641
    :goto_0
    return-void

    .line 640
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/account/AccountWithDataSet;

    invoke-direct {p0, v1}, Lcom/android/contacts/editor/ContactEditorFragment;->createContact(Lcom/android/contacts/model/account/AccountWithDataSet;)V

    goto :goto_0
.end method

.method private createContact(Lcom/android/contacts/model/account/AccountWithDataSet;)V
    .locals 4
    .param p1, "account"    # Lcom/android/contacts/model/account/AccountWithDataSet;

    .prologue
    const/4 v2, 0x0

    .line 649
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v1

    .line 650
    .local v1, "accountTypes":Lcom/android/contacts/model/AccountTypeManager;
    if-eqz p1, :cond_2

    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    :goto_0
    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/android/contacts/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    :cond_0
    invoke-virtual {v1, v3, v2}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/account/AccountType;

    move-result-object v0

    .line 654
    .local v0, "accountType":Lcom/android/contacts/model/account/AccountType;
    invoke-virtual {v0}, Lcom/android/contacts/model/account/AccountType;->getCreateContactActivityClassName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 655
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    if-eqz v2, :cond_1

    .line 656
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    invoke-interface {v2, p1, v3}, Lcom/android/contacts/editor/ContactEditorFragment$Listener;->onCustomCreateContactActivityRequested(Lcom/android/contacts/model/account/AccountWithDataSet;Landroid/os/Bundle;)V

    .line 661
    :cond_1
    :goto_1
    return-void

    .end local v0    # "accountType":Lcom/android/contacts/model/account/AccountType;
    :cond_2
    move-object v3, v2

    .line 650
    goto :goto_0

    .line 659
    .restart local v0    # "accountType":Lcom/android/contacts/model/account/AccountType;
    :cond_3
    invoke-direct {p0, p1, v0}, Lcom/android/contacts/editor/ContactEditorFragment;->bindEditorsForNewContact(Lcom/android/contacts/model/account/AccountWithDataSet;Lcom/android/contacts/model/account/AccountType;)V

    goto :goto_1
.end method

.method private disableAccountSwitcher(Lcom/android/contacts/editor/BaseRawContactEditorView;)V
    .locals 2
    .param p1, "editor"    # Lcom/android/contacts/editor/BaseRawContactEditorView;

    .prologue
    .line 979
    const v1, 0x7f0600d7

    invoke-virtual {p1, v1}, Lcom/android/contacts/editor/BaseRawContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 980
    .local v0, "accountView":Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 981
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 982
    return-void
.end method

.method private dismissEditorPopupsIfAny()V
    .locals 3

    .prologue
    .line 373
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 374
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 375
    .local v0, "childView":Landroid/view/View;
    instance-of v2, v0, Lcom/android/contacts/editor/RawContactEditorView;

    if-eqz v2, :cond_0

    .line 376
    check-cast v0, Lcom/android/contacts/editor/RawContactEditorView;

    .end local v0    # "childView":Landroid/view/View;
    invoke-virtual {v0}, Lcom/android/contacts/editor/RawContactEditorView;->dismissAddInformationPopupWindow()V

    .line 373
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 379
    :cond_1
    return-void
.end method

.method private doJoinContactAction()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1058
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->hasValidState()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1070
    :goto_0
    return v0

    .line 1064
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    invoke-virtual {v2}, Lcom/android/contacts/model/RawContactDeltaList;->size()I

    move-result v2

    if-ne v2, v1, :cond_1

    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    invoke-virtual {v2, v0}, Lcom/android/contacts/model/RawContactDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/RawContactDelta;

    invoke-virtual {v0}, Lcom/android/contacts/model/RawContactDelta;->isContactInsert()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->hasPendingChanges()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1065
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f0b01b6

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v1

    .line 1067
    goto :goto_0

    .line 1070
    :cond_1
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/ContactEditorFragment;->save(I)Z

    move-result v0

    goto :goto_0
.end method

.method private doSplitContactAction()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1048
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->hasValidState()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1054
    :goto_0
    return v0

    .line 1050
    :cond_0
    new-instance v1, Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment;

    invoke-direct {v1}, Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment;-><init>()V

    .line 1052
    invoke-virtual {v1, p0, v0}, Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 1053
    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v2, "SplitContactConfirmationDialog"

    invoke-virtual {v1, v0, v2}, Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1054
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private hasMoreThanOnePhoto()Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1763
    .line 1764
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    invoke-virtual {v0}, Lcom/android/contacts/model/RawContactDeltaList;->size()I

    move-result v5

    move v4, v3

    move v1, v3

    .line 1765
    :goto_0
    if-ge v4, v5, :cond_3

    .line 1766
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    invoke-virtual {v0, v4}, Lcom/android/contacts/model/RawContactDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/RawContactDelta;

    .line 1767
    invoke-virtual {v0}, Lcom/android/contacts/model/RawContactDelta;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1768
    const-string v6, "vnd.android.cursor.item/photo"

    invoke-virtual {v0, v6}, Lcom/android/contacts/model/RawContactDelta;->getPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    move-result-object v6

    .line 1769
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->getPhoto()[B

    move-result-object v6

    if-eqz v6, :cond_0

    .line 1770
    add-int/lit8 v1, v1, 0x1

    move v0, v1

    .line 1783
    :goto_1
    if-le v0, v2, :cond_2

    move v0, v2

    .line 1788
    :goto_2
    return v0

    .line 1772
    :cond_0
    invoke-virtual {v0}, Lcom/android/contacts/model/RawContactDelta;->getRawContactId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 1773
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mUpdatedPhotos:Landroid/os/Bundle;

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 1774
    if-eqz v0, :cond_4

    .line 1776
    :try_start_0
    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1777
    add-int/lit8 v1, v1, 0x1

    move v0, v1

    .line 1779
    goto :goto_1

    .line 1778
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v1

    .line 1765
    :cond_2
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v3

    .line 1788
    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method private hasPendingChanges()Z
    .locals 2

    .prologue
    .line 1086
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v0

    .line 1087
    .local v0, "accountTypes":Lcom/android/contacts/model/AccountTypeManager;
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    invoke-static {v1, v0}, Lcom/android/contacts/model/RawContactModifier;->hasChanges(Lcom/android/contacts/model/RawContactDeltaList;Lcom/android/contacts/model/AccountTypeManager;)Z

    move-result v1

    return v1
.end method

.method private hasValidState()Z
    .locals 1

    .prologue
    .line 1078
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    invoke-virtual {v0}, Lcom/android/contacts/model/RawContactDeltaList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isContactWritable()Z
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 1309
    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v0

    .line 1311
    .local v0, "accountTypes":Lcom/android/contacts/model/AccountTypeManager;
    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    if-nez v6, :cond_1

    .line 1323
    :cond_0
    :goto_0
    return v5

    .line 1315
    :cond_1
    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    invoke-virtual {v6}, Lcom/android/contacts/model/RawContactDeltaList;->size()I

    move-result v3

    .line 1316
    .local v3, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_0

    .line 1317
    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    invoke-virtual {v6, v2}, Lcom/android/contacts/model/RawContactDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/RawContactDelta;

    .line 1318
    .local v1, "entity":Lcom/android/contacts/model/RawContactDelta;
    invoke-virtual {v1, v0}, Lcom/android/contacts/model/RawContactDelta;->getAccountType(Lcom/android/contacts/model/AccountTypeManager;)Lcom/android/contacts/model/account/AccountType;

    move-result-object v4

    .line 1319
    .local v4, "type":Lcom/android/contacts/model/account/AccountType;
    invoke-virtual {v4}, Lcom/android/contacts/model/account/AccountType;->areContactsWritable()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1320
    const/4 v5, 0x1

    goto :goto_0

    .line 1316
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private isEditingUserProfile()Z
    .locals 1

    .prologue
    .line 1327
    iget-boolean v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mNewLocalProfile:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsUserProfile:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isJoinable()Z
    .locals 6

    .prologue
    .line 1998
    const/4 v1, 0x1

    .line 1999
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    if-eqz v0, :cond_1

    .line 2000
    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v2

    .line 2001
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    invoke-virtual {v0}, Lcom/android/contacts/model/RawContactDeltaList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/RawContactDelta;

    .line 2002
    invoke-virtual {v0}, Lcom/android/contacts/model/RawContactDelta;->getValues()Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    move-result-object v4

    const-string v5, "account_type"

    invoke-virtual {v4, v5}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2003
    invoke-virtual {v0}, Lcom/android/contacts/model/RawContactDelta;->getValues()Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    move-result-object v0

    const-string v5, "data_set"

    invoke-virtual {v0, v5}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2004
    invoke-virtual {v2, v4, v0}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/account/AccountType;

    move-result-object v0

    .line 2005
    if-eqz v0, :cond_0

    .line 2006
    invoke-virtual {v0}, Lcom/android/contacts/model/account/AccountType;->areContactsJoinable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2007
    const/4 v0, 0x0

    .line 2013
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private joinAggregate(J)V
    .locals 8

    .prologue
    .line 1299
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContactIdForJoin:J

    iget-boolean v5, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContactWritableForJoin:Z

    const-class v6, Lcom/android/contacts/activities/ContactEditorActivity;

    const-string v7, "joinCompleted"

    move-wide v3, p1

    invoke-static/range {v0 .. v7}, Lcom/android/contacts/ContactSaveService;->createJoinContactsIntent(Landroid/content/Context;JJZLjava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1302
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1303
    return-void
.end method

.method private rebindEditorsForNewContact(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/account/AccountWithDataSet;Lcom/android/contacts/model/account/AccountWithDataSet;)V
    .locals 5
    .param p1, "oldState"    # Lcom/android/contacts/model/RawContactDelta;
    .param p2, "oldAccount"    # Lcom/android/contacts/model/account/AccountWithDataSet;
    .param p3, "newAccount"    # Lcom/android/contacts/model/account/AccountWithDataSet;

    .prologue
    .line 674
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v0

    .line 675
    .local v0, "accountTypes":Lcom/android/contacts/model/AccountTypeManager;
    iget-object v3, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v4, p2, Lcom/android/contacts/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/account/AccountType;

    move-result-object v2

    .line 677
    .local v2, "oldAccountType":Lcom/android/contacts/model/account/AccountType;
    iget-object v3, p3, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v4, p3, Lcom/android/contacts/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/account/AccountType;

    move-result-object v1

    .line 680
    .local v1, "newAccountType":Lcom/android/contacts/model/account/AccountType;
    invoke-virtual {v1}, Lcom/android/contacts/model/account/AccountType;->getCreateContactActivityClassName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 681
    sget-object v3, Lcom/android/contacts/editor/ContactEditorFragment;->TAG:Ljava/lang/String;

    const-string v4, "external activity called in rebind situation"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    if-eqz v3, :cond_0

    .line 683
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    iget-object v4, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    invoke-interface {v3, p3, v4}, Lcom/android/contacts/editor/ContactEditorFragment$Listener;->onCustomCreateContactActivityRequested(Lcom/android/contacts/model/account/AccountWithDataSet;Landroid/os/Bundle;)V

    .line 689
    :cond_0
    :goto_0
    return-void

    .line 686
    :cond_1
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    .line 687
    invoke-direct {p0, p3, v1, p1, v2}, Lcom/android/contacts/editor/ContactEditorFragment;->bindEditorsForNewContact(Lcom/android/contacts/model/account/AccountWithDataSet;Lcom/android/contacts/model/account/AccountType;Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/account/AccountType;)V

    goto :goto_0
.end method

.method private revert()Z
    .locals 1

    .prologue
    .line 1184
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->hasPendingChanges()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1185
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->doRevertAction()V

    .line 1189
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 1187
    :cond_1
    invoke-static {p0}, Lcom/android/contacts/editor/ContactEditorFragment$CancelEditDialogFragment;->show(Lcom/android/contacts/editor/ContactEditorFragment;)V

    goto :goto_0
.end method

.method private saveDefaultAccountIfNecessary()V
    .locals 7

    .prologue
    .line 920
    const-string v5, "android.intent.action.INSERT"

    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAction:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    invoke-virtual {v5}, Lcom/android/contacts/model/RawContactDeltaList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->isEditingUserProfile()Z

    move-result v5

    if-nez v5, :cond_0

    .line 936
    :goto_0
    return-void

    .line 928
    :cond_0
    iget-object v5, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/contacts/model/RawContactDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/model/RawContactDelta;

    .line 929
    .local v3, "rawContactDelta":Lcom/android/contacts/model/RawContactDelta;
    invoke-virtual {v3}, Lcom/android/contacts/model/RawContactDelta;->getAccountName()Ljava/lang/String;

    move-result-object v2

    .line 930
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/android/contacts/model/RawContactDelta;->getAccountType()Ljava/lang/String;

    move-result-object v4

    .line 931
    .local v4, "type":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/android/contacts/model/RawContactDelta;->getDataSet()Ljava/lang/String;

    move-result-object v1

    .line 933
    .local v1, "dataSet":Ljava/lang/String;
    if-eqz v2, :cond_1

    if-nez v4, :cond_2

    :cond_1
    const/4 v0, 0x0

    .line 935
    .local v0, "account":Lcom/android/contacts/model/account/AccountWithDataSet;
    :goto_1
    iget-object v5, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mEditorUtils:Lcom/android/contacts/editor/ContactEditorUtils;

    invoke-virtual {v5, v0}, Lcom/android/contacts/editor/ContactEditorUtils;->saveDefaultAndAllAccounts(Lcom/android/contacts/model/account/AccountWithDataSet;)V

    goto :goto_0

    .line 933
    .end local v0    # "account":Lcom/android/contacts/model/account/AccountWithDataSet;
    :cond_2
    new-instance v0, Lcom/android/contacts/model/account/AccountWithDataSet;

    invoke-direct {v0, v2, v4, v1}, Lcom/android/contacts/model/account/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private selectAccountAndCreateContact()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 602
    iget-boolean v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mNewLocalProfile:Z

    if-eqz v0, :cond_0

    .line 603
    invoke-direct {p0, v1}, Lcom/android/contacts/editor/ContactEditorFragment;->createContact(Lcom/android/contacts/model/account/AccountWithDataSet;)V

    .line 623
    :goto_0
    return-void

    .line 609
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mEditorUtils:Lcom/android/contacts/editor/ContactEditorUtils;

    invoke-virtual {v0}, Lcom/android/contacts/editor/ContactEditorUtils;->shouldShowAccountChangedNotification()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 610
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 611
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    .line 612
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/editor/ContactEditorFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 616
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mEditorUtils:Lcom/android/contacts/editor/ContactEditorUtils;

    invoke-virtual {v0}, Lcom/android/contacts/editor/ContactEditorUtils;->getDefaultAccount()Lcom/android/contacts/model/account/AccountWithDataSet;

    move-result-object v0

    .line 617
    if-nez v0, :cond_2

    .line 618
    invoke-direct {p0, v1}, Lcom/android/contacts/editor/ContactEditorFragment;->createContact(Lcom/android/contacts/model/account/AccountWithDataSet;)V

    goto :goto_0

    .line 620
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/contacts/editor/ContactEditorFragment;->createContact(Lcom/android/contacts/model/account/AccountWithDataSet;)V

    goto :goto_0
.end method

.method private setPhoto(JLandroid/graphics/Bitmap;Landroid/net/Uri;)V
    .locals 3

    .prologue
    .line 1727
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/editor/ContactEditorFragment;->getRawContactEditorView(J)Lcom/android/contacts/editor/BaseRawContactEditorView;

    move-result-object v0

    .line 1729
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ltz v1, :cond_0

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-gez v1, :cond_1

    .line 1731
    :cond_0
    sget-object v1, Lcom/android/contacts/editor/ContactEditorFragment;->TAG:Ljava/lang/String;

    const-string v2, "Invalid bitmap passed to setPhoto()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1734
    :cond_1
    if-eqz v0, :cond_2

    .line 1735
    invoke-virtual {v0, p3}, Lcom/android/contacts/editor/BaseRawContactEditorView;->setPhotoBitmap(Landroid/graphics/Bitmap;)V

    .line 1740
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mUpdatedPhotos:Landroid/os/Bundle;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1741
    return-void

    .line 1737
    :cond_2
    sget-object v0, Lcom/android/contacts/editor/ContactEditorFragment;->TAG:Ljava/lang/String;

    const-string v1, "The contact that requested the photo is no longer present."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showJoinAggregateActivity(Landroid/net/Uri;)V
    .locals 4

    .prologue
    .line 1284
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1293
    :cond_0
    :goto_0
    return-void

    .line 1288
    :cond_1
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContactIdForJoin:J

    .line 1289
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->isContactWritable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContactWritableForJoin:Z

    .line 1290
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.contacts.action.JOIN_CONTACT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1291
    const-string v1, "com.android.contacts.action.CONTACT_ID"

    iget-wide v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContactIdForJoin:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1292
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/editor/ContactEditorFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private updatedBitmapForRawContact(J)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "rawContactId"    # J

    .prologue
    .line 864
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mUpdatedPhotos:Landroid/os/Bundle;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 865
    .local v0, "path":Ljava/lang/String;
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method private validateAction(Ljava/lang/String;)V
    .locals 3
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 443
    const-string v0, "android.intent.action.EDIT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.intent.action.INSERT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "saveCompleted"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 445
    :cond_0
    return-void

    .line 447
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown Action String "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Only support "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "android.intent.action.EDIT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " or "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "android.intent.action.INSERT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " or "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "saveCompleted"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected doEditSuggestedContact(Landroid/net/Uri;)V
    .locals 3
    .param p1, "contactUri"    # Landroid/net/Uri;

    .prologue
    .line 1633
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    if-eqz v0, :cond_0

    .line 1635
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    .line 1636
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/RawContactDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/RawContactDelta;

    invoke-virtual {v0}, Lcom/android/contacts/model/RawContactDelta;->getContentValues()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Lcom/android/contacts/editor/ContactEditorFragment$Listener;->onEditOtherContactRequested(Landroid/net/Uri;Ljava/util/ArrayList;)V

    .line 1639
    :cond_0
    return-void
.end method

.method protected doJoinSuggestedContact([J)V
    .locals 2
    .param p1, "rawContactIds"    # [J

    .prologue
    const/4 v1, 0x1

    .line 1585
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->hasValidState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    if-eq v0, v1, :cond_1

    .line 1591
    :cond_0
    :goto_0
    return-void

    .line 1589
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    invoke-virtual {v0, p1}, Lcom/android/contacts/model/RawContactDeltaList;->setJoinWithRawContacts([J)V

    .line 1590
    invoke-virtual {p0, v1}, Lcom/android/contacts/editor/ContactEditorFragment;->save(I)Z

    goto :goto_0
.end method

.method public doRevertAction()V
    .locals 1

    .prologue
    .line 1194
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    .line 1195
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    invoke-interface {v0}, Lcom/android/contacts/editor/ContactEditorFragment$Listener;->onReverted()V

    .line 1196
    :cond_0
    return-void
.end method

.method public doSaveAction()V
    .locals 1

    .prologue
    .line 1199
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/ContactEditorFragment;->save(I)Z

    .line 1200
    return-void
.end method

.method protected getContactId()J
    .locals 3

    .prologue
    .line 1465
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    if-eqz v0, :cond_1

    .line 1466
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    invoke-virtual {v0}, Lcom/android/contacts/model/RawContactDeltaList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/RawContactDelta;

    .line 1467
    invoke-virtual {v0}, Lcom/android/contacts/model/RawContactDelta;->getValues()Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    move-result-object v0

    const-string v2, "contact_id"

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 1468
    if-eqz v0, :cond_0

    .line 1469
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 1473
    :goto_0
    return-wide v0

    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getLookupUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 2018
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mLookupUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getRawContactEditorView(J)Lcom/android/contacts/editor/BaseRawContactEditorView;
    .locals 5
    .param p1, "rawContactId"    # J

    .prologue
    .line 1747
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1748
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1749
    .local v0, "childView":Landroid/view/View;
    instance-of v3, v0, Lcom/android/contacts/editor/BaseRawContactEditorView;

    if-eqz v3, :cond_0

    move-object v1, v0

    .line 1750
    check-cast v1, Lcom/android/contacts/editor/BaseRawContactEditorView;

    .line 1751
    .local v1, "editor":Lcom/android/contacts/editor/BaseRawContactEditorView;
    invoke-virtual {v1}, Lcom/android/contacts/editor/BaseRawContactEditorView;->getRawContactId()J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_0

    .line 1756
    .end local v0    # "childView":Landroid/view/View;
    .end local v1    # "editor":Lcom/android/contacts/editor/BaseRawContactEditorView;
    :goto_1
    return-object v1

    .line 1747
    .restart local v0    # "childView":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1756
    .end local v0    # "childView":Landroid/view/View;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public load(Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "lookupUri"    # Landroid/net/Uri;
    .param p3, "intentExtras"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 459
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAction:Ljava/lang/String;

    .line 460
    iput-object p2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mLookupUri:Landroid/net/Uri;

    .line 461
    iput-object p3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    .line 462
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    const-string v3, "addToDefaultDirectory"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAutoAddToDefaultGroup:Z

    .line 464
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    const-string v3, "newLocalProfile"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mNewLocalProfile:Z

    .line 466
    return-void

    :cond_0
    move v0, v2

    .line 462
    goto :goto_0

    :cond_1
    move v1, v2

    .line 464
    goto :goto_1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 394
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 396
    iget-object v5, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAction:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/contacts/editor/ContactEditorFragment;->validateAction(Ljava/lang/String;)V

    .line 399
    if-eqz p1, :cond_2

    move v2, v3

    .line 401
    .local v2, "hasIncomingState":Z
    :goto_0
    iget-object v5, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    if-nez v5, :cond_3

    .line 405
    const-string v5, "android.intent.action.EDIT"

    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAction:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 410
    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mDataLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v5, v3, v4, v6}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 417
    :cond_0
    :goto_1
    if-nez v2, :cond_1

    .line 418
    const-string v3, "android.intent.action.INSERT"

    iget-object v5, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAction:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 419
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    if-nez v3, :cond_4

    move-object v0, v4

    .line 421
    .local v0, "account":Landroid/accounts/Account;
    :goto_2
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    if-nez v3, :cond_5

    move-object v1, v4

    .line 424
    .local v1, "dataSet":Ljava/lang/String;
    :goto_3
    if-eqz v0, :cond_6

    .line 426
    new-instance v3, Lcom/android/contacts/model/account/AccountWithDataSet;

    iget-object v4, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v5, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v1}, Lcom/android/contacts/model/account/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/android/contacts/editor/ContactEditorFragment;->createContact(Lcom/android/contacts/model/account/AccountWithDataSet;)V

    .line 434
    .end local v0    # "account":Landroid/accounts/Account;
    .end local v1    # "dataSet":Ljava/lang/String;
    :cond_1
    :goto_4
    return-void

    .line 399
    .end local v2    # "hasIncomingState":Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 414
    .restart local v2    # "hasIncomingState":Z
    :cond_3
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->bindEditors()V

    goto :goto_1

    .line 419
    :cond_4
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    const-string v5, "com.android.contacts.extra.ACCOUNT"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/accounts/Account;

    move-object v0, v3

    goto :goto_2

    .line 421
    .restart local v0    # "account":Landroid/accounts/Account;
    :cond_5
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    const-string v4, "com.android.contacts.extra.DATA_SET"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 430
    .restart local v1    # "dataSet":Ljava/lang/String;
    :cond_6
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->selectAccountAndCreateContact()V

    goto :goto_4
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v5, -0x1

    .line 1680
    iget v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 1681
    const/4 v3, 0x1

    iput v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    .line 1685
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCurrentPhotoHandler:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCurrentPhotoHandler:Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->handlePhotoActivityResult(IILandroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1721
    :cond_1
    :goto_0
    return-void

    .line 1690
    :cond_2
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1693
    :pswitch_0
    if-ne p2, v5, :cond_1

    .line 1694
    if-eqz p3, :cond_1

    .line 1695
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    .line 1696
    .local v1, "contactId":J
    invoke-direct {p0, v1, v2}, Lcom/android/contacts/editor/ContactEditorFragment;->joinAggregate(J)V

    goto :goto_0

    .line 1702
    .end local v1    # "contactId":J
    :pswitch_1
    if-eq p2, v5, :cond_3

    .line 1703
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    invoke-interface {v3}, Lcom/android/contacts/editor/ContactEditorFragment$Listener;->onReverted()V

    goto :goto_0

    .line 1707
    :cond_3
    if-eqz p3, :cond_4

    .line 1708
    const-string v3, "com.android.contacts.extra.ACCOUNT"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/account/AccountWithDataSet;

    .line 1709
    .local v0, "account":Lcom/android/contacts/model/account/AccountWithDataSet;
    if-eqz v0, :cond_4

    .line 1710
    invoke-direct {p0, v0}, Lcom/android/contacts/editor/ContactEditorFragment;->createContact(Lcom/android/contacts/model/account/AccountWithDataSet;)V

    goto :goto_0

    .line 1717
    .end local v0    # "account":Lcom/android/contacts/model/account/AccountWithDataSet;
    :cond_4
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->createContact()V

    goto :goto_0

    .line 1690
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onAggregationSuggestionChange()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1505
    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1506
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    if-eq v0, v1, :cond_2

    .line 1535
    :cond_1
    :goto_0
    return-void

    .line 1511
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionPopup:Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1512
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 1515
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionEngine:Lcom/android/contacts/editor/AggregationSuggestionEngine;

    invoke-virtual {v0}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->getSuggestedContactCount()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1519
    iget-wide v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionsRawContactId:J

    invoke-virtual {p0, v3, v4}, Lcom/android/contacts/editor/ContactEditorFragment;->getRawContactEditorView(J)Lcom/android/contacts/editor/BaseRawContactEditorView;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/editor/RawContactEditorView;

    .line 1521
    if-eqz v0, :cond_1

    .line 1524
    const v3, 0x7f0600d3

    invoke-virtual {v0, v3}, Lcom/android/contacts/editor/RawContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1525
    new-instance v3, Landroid/widget/ListPopupWindow;

    iget-object v4, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionPopup:Landroid/widget/ListPopupWindow;

    .line 1526
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v3, v0}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 1527
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 1528
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionPopup:Landroid/widget/ListPopupWindow;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/widget/ListPopupWindow;->setInputMethodMode(I)V

    .line 1529
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionPopup:Landroid/widget/ListPopupWindow;

    new-instance v4, Lcom/android/contacts/editor/ContactEditorFragment$AggregationSuggestionAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    invoke-virtual {v0}, Lcom/android/contacts/model/RawContactDeltaList;->size()I

    move-result v0

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/RawContactDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/RawContactDelta;

    invoke-virtual {v0}, Lcom/android/contacts/model/RawContactDelta;->isContactInsert()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionEngine:Lcom/android/contacts/editor/AggregationSuggestionEngine;

    invoke-virtual {v1}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->getSuggestions()Ljava/util/List;

    move-result-object v1

    invoke-direct {v4, v5, v0, p0, v1}, Lcom/android/contacts/editor/ContactEditorFragment$AggregationSuggestionAdapter;-><init>(Landroid/app/Activity;ZLcom/android/contacts/editor/AggregationSuggestionView$Listener;Ljava/util/List;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1533
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionPopup:Landroid/widget/ListPopupWindow;

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1534
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->show()V

    goto :goto_0

    :cond_4
    move v0, v2

    .line 1529
    goto :goto_1
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 349
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 350
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    .line 351
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/editor/ContactEditorUtils;->getInstance(Landroid/content/Context;)Lcom/android/contacts/editor/ContactEditorUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mEditorUtils:Lcom/android/contacts/editor/ContactEditorUtils;

    .line 352
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 474
    if-eqz p1, :cond_0

    .line 477
    const-string v0, "uri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mLookupUri:Landroid/net/Uri;

    .line 478
    const-string v0, "action"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAction:Ljava/lang/String;

    .line 481
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 484
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mPhotoHandlerArr:Ljava/util/List;

    .line 487
    if-nez p1, :cond_1

    .line 489
    new-instance v0, Lcom/android/contacts/editor/ViewIdGenerator;

    invoke-direct {v0}, Lcom/android/contacts/editor/ViewIdGenerator;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mViewIdGenerator:Lcom/android/contacts/editor/ViewIdGenerator;

    .line 506
    :goto_0
    return-void

    .line 492
    :cond_1
    const-string v0, "state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/RawContactDeltaList;

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    .line 493
    const-string v0, "photorequester"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mRawContactIdRequestingPhoto:J

    .line 495
    const-string v0, "viewidgenerator"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/editor/ViewIdGenerator;

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mViewIdGenerator:Lcom/android/contacts/editor/ViewIdGenerator;

    .line 496
    const-string v0, "currentphotouri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCurrentPhotoUri:Landroid/net/Uri;

    .line 497
    const-string v0, "contactidforjoin"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContactIdForJoin:J

    .line 498
    const-string v0, "contactwritableforjoin"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContactWritableForJoin:Z

    .line 499
    const-string v0, "showJoinSuggestions"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionsRawContactId:J

    .line 500
    const-string v0, "enabled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mEnabled:Z

    .line 501
    const-string v0, "status"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    .line 502
    const-string v0, "newLocalProfile"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mNewLocalProfile:Z

    .line 503
    const-string v0, "isUserProfile"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsUserProfile:Z

    .line 504
    const-string v0, "updatedPhotos"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mUpdatedPhotos:Landroid/os/Bundle;

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 986
    const v0, 0x7f100007

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 987
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 383
    const v1, 0x7f040021

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 385
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f060081

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    .line 387
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/contacts/editor/ContactEditorFragment;->setHasOptionsMenu(Z)V

    .line 389
    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 1969
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mPhotoHandlerArr:Ljava/util/List;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mPhotoHandlerArr:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1970
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mPhotoHandlerArr:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1971
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1972
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;

    .line 1973
    .local v1, "phdr":Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;
    if-eqz v1, :cond_0

    .line 1974
    invoke-virtual {v1}, Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;->destroy()V

    goto :goto_0

    .line 1977
    .end local v1    # "phdr":Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mPhotoHandlerArr:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1979
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/contacts/editor/ContactEditorFragment$PhotoHandler;>;"
    :cond_2
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mPhotoHandlerArr:Ljava/util/List;

    .line 1982
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionPopup:Landroid/widget/ListPopupWindow;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v2}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1983
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v2}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 1988
    :cond_3
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->popup:Landroid/widget/ListPopupWindow;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->popup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v2}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1989
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->popup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v2}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 1992
    :cond_4
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 1993
    return-void
.end method

.method public onEditAction(Landroid/net/Uri;)V
    .locals 3

    .prologue
    .line 1595
    new-instance v0, Lcom/android/contacts/editor/ContactEditorFragment$SuggestionEditConfirmationDialogFragment;

    invoke-direct {v0}, Lcom/android/contacts/editor/ContactEditorFragment$SuggestionEditConfirmationDialogFragment;-><init>()V

    .line 1597
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1598
    const-string v2, "contactUri"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1599
    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/ContactEditorFragment$SuggestionEditConfirmationDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1600
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/contacts/editor/ContactEditorFragment$SuggestionEditConfirmationDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 1601
    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "edit"

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/editor/ContactEditorFragment$SuggestionEditConfirmationDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1602
    return-void
.end method

.method public onExternalEditorRequest(Lcom/android/contacts/model/account/AccountWithDataSet;Landroid/net/Uri;)V
    .locals 3
    .param p1, "account"    # Lcom/android/contacts/model/account/AccountWithDataSet;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 541
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/android/contacts/editor/ContactEditorFragment$Listener;->onCustomEditContactActivityRequested(Lcom/android/contacts/model/account/AccountWithDataSet;Landroid/net/Uri;Landroid/os/Bundle;Z)V

    .line 542
    return-void
.end method

.method public onJoinAction(JLjava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1539
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [J

    move v1, v2

    .line 1540
    :goto_0
    array-length v0, v3

    if-ge v1, v0, :cond_0

    .line 1541
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v3, v1

    .line 1540
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1543
    :cond_0
    new-instance v0, Lcom/android/contacts/editor/ContactEditorFragment$JoinSuggestedContactDialogFragment;

    invoke-direct {v0}, Lcom/android/contacts/editor/ContactEditorFragment$JoinSuggestedContactDialogFragment;-><init>()V

    .line 1545
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1546
    const-string v4, "rawContactIds"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 1547
    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/ContactEditorFragment$JoinSuggestedContactDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1548
    invoke-virtual {v0, p0, v2}, Lcom/android/contacts/editor/ContactEditorFragment$JoinSuggestedContactDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 1550
    :try_start_0
    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "join"

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/editor/ContactEditorFragment$JoinSuggestedContactDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1554
    :goto_1
    return-void

    .line 1551
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public onJoinCompleted(Landroid/net/Uri;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1203
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v2, v1, v0, p1}, Lcom/android/contacts/editor/ContactEditorFragment;->onSaveCompleted(ZIZLandroid/net/Uri;)V

    .line 1204
    return-void

    :cond_0
    move v0, v2

    .line 1203
    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x0

    .line 1034
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1044
    :goto_0
    return v0

    .line 1036
    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/ContactEditorFragment;->save(I)Z

    move-result v0

    goto :goto_0

    .line 1038
    :pswitch_1
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->revert()Z

    move-result v0

    goto :goto_0

    .line 1040
    :pswitch_2
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->doSplitContactAction()Z

    move-result v0

    goto :goto_0

    .line 1042
    :pswitch_3
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->doJoinContactAction()Z

    move-result v0

    goto :goto_0

    .line 1034
    nop

    :pswitch_data_0
    .packed-switch 0x7f060163
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 7

    .prologue
    const v6, 0x7f060165

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 994
    const v0, 0x7f060163

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 995
    const v3, 0x7f060164

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 996
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 997
    const v5, 0x7f060167

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 1000
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1003
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    invoke-virtual {v0}, Lcom/android/contacts/model/RawContactDeltaList;->size()I

    move-result v0

    if-le v0, v1, :cond_1

    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->isEditingUserProfile()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1006
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->isEditingUserProfile()Z

    move-result v0

    if-nez v0, :cond_2

    :goto_1
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1009
    const-string v0, "android.intent.action.INSERT"

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1011
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0008

    invoke-static {v0, v5, v1}, Lcom/android/contacts/util/HelpUtils;->prepareHelpMenuItem(Landroid/content/Context;Landroid/view/MenuItem;I)Z

    .line 1022
    :goto_2
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->isJoinable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1023
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1026
    :cond_0
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v0

    .line 1027
    :goto_3
    if-ge v2, v0, :cond_5

    .line 1028
    invoke-interface {p1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-boolean v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mEnabled:Z

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1027
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_1
    move v0, v2

    .line 1003
    goto :goto_0

    :cond_2
    move v1, v2

    .line 1006
    goto :goto_1

    .line 1012
    :cond_3
    const-string v0, "android.intent.action.EDIT"

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1014
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0009

    invoke-static {v0, v5, v1}, Lcom/android/contacts/util/HelpUtils;->prepareHelpMenuItem(Landroid/content/Context;Landroid/view/MenuItem;I)Z

    goto :goto_2

    .line 1017
    :cond_4
    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 1030
    :cond_5
    return-void
.end method

.method public onSaveCompleted(ZIZLandroid/net/Uri;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v0, 0x0

    .line 1208
    if-eqz p1, :cond_0

    .line 1209
    if-eqz p3, :cond_2

    .line 1210
    if-eq p2, v4, :cond_0

    .line 1211
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0060

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1217
    :cond_0
    :goto_0
    packed-switch p2, :pswitch_data_0

    .line 1276
    :cond_1
    :goto_1
    return-void

    .line 1214
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0061

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1221
    :pswitch_0
    if-eqz p3, :cond_3

    if-eqz p4, :cond_3

    .line 1222
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mLookupUri:Landroid/net/Uri;

    if-nez v1, :cond_4

    .line 1225
    :goto_2
    const-string v1, "contacts"

    .line 1227
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1228
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1229
    const-string v2, "contacts"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1231
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p4}, Landroid/provider/ContactsContract$Contacts;->lookupContact(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 1233
    const-string v0, "content://contacts/people"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1234
    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 1236
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :goto_3
    move-object v0, v1

    .line 1246
    :cond_3
    iput v4, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    .line 1247
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    invoke-interface {v1, v0}, Lcom/android/contacts/editor/ContactEditorFragment$Listener;->onSaveFinished(Landroid/content/Intent;)V

    goto :goto_1

    .line 1222
    :cond_4
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 1239
    :cond_5
    invoke-virtual {v1, p4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_3

    .line 1252
    :pswitch_1
    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    .line 1254
    if-ne p2, v4, :cond_6

    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->hasValidState()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1255
    invoke-direct {p0, p4}, Lcom/android/contacts/editor/ContactEditorFragment;->showJoinAggregateActivity(Landroid/net/Uri;)V

    .line 1260
    :cond_6
    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    .line 1261
    const-string v1, "android.intent.action.EDIT"

    invoke-virtual {p0, v1, p4, v0}, Lcom/android/contacts/editor/ContactEditorFragment;->load(Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 1262
    iput v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    .line 1263
    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mDataLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v1, v5, v0, v2}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_1

    .line 1268
    :pswitch_2
    iput v4, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    .line 1269
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    if-eqz v0, :cond_7

    .line 1270
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    invoke-interface {v0, p4}, Lcom/android/contacts/editor/ContactEditorFragment$Listener;->onContactSplit(Landroid/net/Uri;)V

    goto/16 :goto_1

    .line 1272
    :cond_7
    sget-object v0, Lcom/android/contacts/editor/ContactEditorFragment;->TAG:Ljava/lang/String;

    const-string v1, "No listener registered, can not call onSplitFinished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1217
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1656
    const-string v0, "uri"

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1657
    const-string v0, "action"

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAction:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1659
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->hasValidState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1661
    const-string v0, "state"

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1663
    :cond_0
    const-string v0, "photorequester"

    iget-wide v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mRawContactIdRequestingPhoto:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1664
    const-string v0, "viewidgenerator"

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mViewIdGenerator:Lcom/android/contacts/editor/ViewIdGenerator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1665
    const-string v0, "currentphotouri"

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCurrentPhotoUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1666
    const-string v0, "contactidforjoin"

    iget-wide v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContactIdForJoin:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1667
    const-string v0, "contactwritableforjoin"

    iget-boolean v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContactWritableForJoin:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1668
    const-string v0, "showJoinSuggestions"

    iget-wide v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionsRawContactId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1669
    const-string v0, "enabled"

    iget-boolean v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1670
    const-string v0, "newLocalProfile"

    iget-boolean v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mNewLocalProfile:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1671
    const-string v0, "isUserProfile"

    iget-boolean v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIsUserProfile:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1672
    const-string v0, "status"

    iget v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1673
    const-string v0, "updatedPhotos"

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mUpdatedPhotos:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1675
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1676
    return-void
.end method

.method public onSplitContactConfirmed()V
    .locals 2

    .prologue
    .line 1851
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    if-nez v0, :cond_0

    .line 1855
    sget-object v0, Lcom/android/contacts/editor/ContactEditorFragment;->TAG:Ljava/lang/String;

    const-string v1, "mState became null during the user\'s confirming split action. Cannot perform the save action."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1862
    :goto_0
    return-void

    .line 1860
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    invoke-virtual {v0}, Lcom/android/contacts/model/RawContactDeltaList;->markRawContactsForSplitting()V

    .line 1861
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/ContactEditorFragment;->save(I)Z

    goto :goto_0
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 454
    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mGroupLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 455
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 456
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 356
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 357
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionEngine:Lcom/android/contacts/editor/AggregationSuggestionEngine;

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionEngine:Lcom/android/contacts/editor/AggregationSuggestionEngine;

    invoke-virtual {v0}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->quit()Z

    .line 362
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->dismissEditorPopupsIfAny()V

    .line 366
    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    if-ne v0, v1, :cond_1

    .line 367
    invoke-virtual {p0, v1}, Lcom/android/contacts/editor/ContactEditorFragment;->save(I)Z

    .line 369
    :cond_1
    return-void
.end method

.method public save(I)Z
    .locals 9

    .prologue
    const/4 v7, 0x2

    const/4 v1, 0x0

    const/4 v8, 0x1

    .line 1095
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->hasValidState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    if-eq v0, v8, :cond_1

    :cond_0
    move v8, v1

    .line 1153
    :goto_0
    return v8

    .line 1100
    :cond_1
    if-eqz p1, :cond_2

    if-ne p1, v7, :cond_3

    .line 1101
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 1104
    :cond_3
    iput v7, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    .line 1107
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v2

    .line 1108
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->isSimContactsFeatureSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1109
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    invoke-virtual {v0}, Lcom/android/contacts/model/RawContactDeltaList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/RawContactDelta;

    .line 1110
    invoke-virtual {v0}, Lcom/android/contacts/model/RawContactDelta;->getValues()Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    move-result-object v4

    .line 1111
    const-string v5, "account_type"

    invoke-virtual {v4, v5}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1112
    const-string v6, "com.card.contacts"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1113
    const-string v6, "data_set"

    invoke-virtual {v4, v6}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1114
    invoke-virtual {v2, v5, v4}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/account/AccountType;

    move-result-object v4

    .line 1115
    invoke-static {v0, v4}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->prepareSIMInfo(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/account/AccountType;)Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;

    move-result-object v0

    .line 1116
    iget-object v4, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v0, v4}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->validateEntriesBeforeSave(Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1118
    iput v8, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    move v8, v1

    .line 1119
    goto :goto_0

    .line 1123
    :cond_5
    iput v7, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    .line 1127
    :cond_6
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->hasPendingChanges()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1128
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mLookupUri:Landroid/net/Uri;

    if-nez v0, :cond_7

    if-ne p1, v8, :cond_7

    .line 1131
    iput v8, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    goto :goto_0

    .line 1134
    :cond_7
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mLookupUri:Landroid/net/Uri;

    if-eqz v0, :cond_8

    move v0, v8

    :goto_1
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/android/contacts/editor/ContactEditorFragment;->onSaveCompleted(ZIZLandroid/net/Uri;)V

    goto :goto_0

    :cond_8
    move v0, v1

    goto :goto_1

    .line 1138
    :cond_9
    invoke-virtual {p0, v1}, Lcom/android/contacts/editor/ContactEditorFragment;->setEnabled(Z)V

    .line 1141
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->saveDefaultAccountIfNecessary()V

    .line 1144
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    const-string v2, "saveMode"

    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->isEditingUserProfile()Z

    move-result v4

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "saveCompleted"

    iget-object v7, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mUpdatedPhotos:Landroid/os/Bundle;

    move v3, p1

    invoke-static/range {v0 .. v7}, Lcom/android/contacts/ContactSaveService;->createSaveContactIntent(Landroid/content/Context;Lcom/android/contacts/model/RawContactDeltaList;Ljava/lang/String;IZLjava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 1148
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1151
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mUpdatedPhotos:Landroid/os/Bundle;

    goto/16 :goto_0
.end method

.method public setAggregationSuggestionViewEnabled(Z)V
    .locals 4

    .prologue
    .line 1642
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 1652
    :cond_0
    return-void

    .line 1646
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionView:Landroid/view/View;

    const v1, 0x7f06001f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1648
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    .line 1649
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 1650
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1649
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setData(Lcom/android/contacts/model/Contact;)V
    .locals 13
    .param p1, "data"    # Lcom/android/contacts/model/Contact;

    .prologue
    const/4 v12, 0x1

    .line 510
    iget-object v8, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    if-eqz v8, :cond_1

    .line 511
    sget-object v8, Lcom/android/contacts/editor/ContactEditorFragment;->TAG:Ljava/lang/String;

    const-string v9, "Ignoring background change. This will have to be rebased later"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    :cond_0
    :goto_0
    return-void

    .line 516
    :cond_1
    invoke-virtual {p1}, Lcom/android/contacts/model/Contact;->getRawContacts()Lcom/google/common/collect/ImmutableList;

    move-result-object v6

    .line 517
    .local v6, "rawContacts":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Lcom/android/contacts/model/RawContact;>;"
    invoke-virtual {v6}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v8

    if-ne v8, v12, :cond_2

    .line 518
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/model/RawContact;

    .line 519
    .local v3, "rawContact":Lcom/android/contacts/model/RawContact;
    invoke-virtual {v3}, Lcom/android/contacts/model/RawContact;->getAccountTypeString()Ljava/lang/String;

    move-result-object v7

    .line 520
    .local v7, "type":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/android/contacts/model/RawContact;->getDataSet()Ljava/lang/String;

    move-result-object v1

    .line 521
    .local v1, "dataSet":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/android/contacts/model/RawContact;->getAccountType()Lcom/android/contacts/model/account/AccountType;

    move-result-object v0

    .line 522
    .local v0, "accountType":Lcom/android/contacts/model/account/AccountType;
    invoke-virtual {v0}, Lcom/android/contacts/model/account/AccountType;->getEditContactActivityClassName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-virtual {v0}, Lcom/android/contacts/model/account/AccountType;->areContactsWritable()Z

    move-result v8

    if-nez v8, :cond_2

    .line 524
    iget-object v8, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    if-eqz v8, :cond_0

    .line 525
    invoke-virtual {v3}, Lcom/android/contacts/model/RawContact;->getAccountName()Ljava/lang/String;

    move-result-object v2

    .line 526
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/android/contacts/model/RawContact;->getId()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 527
    .local v4, "rawContactId":J
    iget-object v8, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    new-instance v9, Lcom/android/contacts/model/account/AccountWithDataSet;

    invoke-direct {v9, v2, v7, v1}, Lcom/android/contacts/model/account/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v10, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v10, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    iget-object v11, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    invoke-interface {v8, v9, v10, v11, v12}, Lcom/android/contacts/editor/ContactEditorFragment$Listener;->onCustomEditContactActivityRequested(Lcom/android/contacts/model/account/AccountWithDataSet;Landroid/net/Uri;Landroid/os/Bundle;Z)V

    goto :goto_0

    .line 536
    .end local v0    # "accountType":Lcom/android/contacts/model/account/AccountType;
    .end local v1    # "dataSet":Ljava/lang/String;
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "rawContact":Lcom/android/contacts/model/RawContact;
    .end local v4    # "rawContactId":J
    .end local v7    # "type":Ljava/lang/String;
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/ContactEditorFragment;->bindEditorsForExistingContact(Lcom/android/contacts/model/Contact;)V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 333
    iget-boolean v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mEnabled:Z

    if-eq v3, p1, :cond_1

    .line 334
    iput-boolean p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mEnabled:Z

    .line 335
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_0

    .line 336
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 337
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 338
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 337
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 341
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/contacts/editor/ContactEditorFragment;->setAggregationSuggestionViewEnabled(Z)V

    .line 342
    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 343
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 345
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_1
    return-void
.end method

.method public setIntentExtras(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 584
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 597
    :cond_0
    :goto_0
    return-void

    .line 588
    :cond_1
    iget-object v4, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v0

    .line 589
    .local v0, "accountTypes":Lcom/android/contacts/model/AccountTypeManager;
    iget-object v4, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/RawContactDeltaList;

    invoke-virtual {v4}, Lcom/android/contacts/model/RawContactDeltaList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/model/RawContactDelta;

    .line 590
    .local v2, "state":Lcom/android/contacts/model/RawContactDelta;
    invoke-virtual {v2, v0}, Lcom/android/contacts/model/RawContactDelta;->getAccountType(Lcom/android/contacts/model/AccountTypeManager;)Lcom/android/contacts/model/account/AccountType;

    move-result-object v3

    .line 591
    .local v3, "type":Lcom/android/contacts/model/account/AccountType;
    invoke-virtual {v3}, Lcom/android/contacts/model/account/AccountType;->areContactsWritable()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 593
    iget-object v4, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v4, v3, v2, p1}, Lcom/android/contacts/model/RawContactModifier;->parseExtras(Landroid/content/Context;Lcom/android/contacts/model/account/AccountType;Lcom/android/contacts/model/RawContactDelta;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public setListener(Lcom/android/contacts/editor/ContactEditorFragment$Listener;)V
    .locals 0
    .param p1, "value"    # Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    .prologue
    .line 469
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    .line 470
    return-void
.end method
