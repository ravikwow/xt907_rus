.class public Lcom/android/contacts/detail/ContactDetailFragment;
.super Landroid/app/Fragment;
.source "ContactDetailFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/contacts/activities/ContactDetailActivity$FragmentKeyListener;
.implements Lcom/android/contacts/editor/SelectAccountDialogFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/detail/ContactDetailFragment$InvitableAccountTypesAdapter;,
        Lcom/android/contacts/detail/ContactDetailFragment$Listener;,
        Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;,
        Lcom/android/contacts/detail/ContactDetailFragment$MakeLocalCopyQuickFix;,
        Lcom/android/contacts/detail/ContactDetailFragment$AddToMyContactsQuickFix;,
        Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;,
        Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;,
        Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;,
        Lcom/android/contacts/detail/ContactDetailFragment$AddConnectionViewCache;,
        Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewCache;,
        Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewCache;,
        Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;,
        Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;,
        Lcom/android/contacts/detail/ContactDetailFragment$AddConnectionViewEntry;,
        Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewEntry;,
        Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewEntry;,
        Lcom/android/contacts/detail/ContactDetailFragment$SeparatorViewEntry;,
        Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewEntry;,
        Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

.field private mAllEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mContactData:Lcom/android/contacts/model/Contact;

.field private mContactHasSocialUpdates:Z

.field private mContext:Landroid/content/Context;

.field private mDefaultCountryIso:Ljava/lang/String;

.field private mDialFrom:Lcom/motorola/contacts/util/MEDialer$DialFrom;

.field private mEmailEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mEmptyView:Landroid/view/View;

.field private mEventEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mForwardDragToListView:Landroid/view/View$OnDragListener;

.field private mForwardTouchToListView:Landroid/view/View$OnTouchListener;

.field private mGroupEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mHasPhone:Z

.field private mHasSip:Z

.field private mHasSms:Z

.field private mImEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsUniqueEmail:Z

.field private mIsUniqueNumber:Z

.field private mListState:Landroid/os/Parcelable;

.field private mListView:Landroid/widget/ListView;

.field private mListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;

.field private mLookupUri:Landroid/net/Uri;

.field private mNicknameEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mNoteEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mOtherEntriesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/contacts/model/account/AccountType;",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPhoneEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mPhotoSetter:Lcom/android/contacts/detail/ContactDetailPhotoSetter;

.field private mPhotoTouchOverlay:Landroid/view/View;

.field private mPopup:Landroid/widget/ListPopupWindow;

.field private mPostalEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mPotentialQuickFixes:[Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;

.field private mPrimaryPhoneUri:Landroid/net/Uri;

.field private mQuickFix:Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;

.field private mQuickFixButton:Landroid/widget/Button;

.field private mRelationEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mShowStaticPhoto:Z

.field private mSipEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mSmsEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mStaticPhotoContainer:Landroid/view/ViewGroup;

.field private mVerticalScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mView:Landroid/view/View;

.field private mViewEntryDimensions:Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;

.field private mWebsiteEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 257
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 154
    iput-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPrimaryPhoneUri:Landroid/net/Uri;

    .line 157
    new-instance v0, Lcom/android/contacts/detail/ContactDetailPhotoSetter;

    invoke-direct {v0}, Lcom/android/contacts/detail/ContactDetailPhotoSetter;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhotoSetter:Lcom/android/contacts/detail/ContactDetailPhotoSetter;

    .line 163
    iput-boolean v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mShowStaticPhoto:Z

    .line 165
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;

    const/4 v1, 0x0

    new-instance v2, Lcom/android/contacts/detail/ContactDetailFragment$MakeLocalCopyQuickFix;

    invoke-direct {v2, p0, v3}, Lcom/android/contacts/detail/ContactDetailFragment$MakeLocalCopyQuickFix;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;Lcom/android/contacts/detail/ContactDetailFragment$1;)V

    aput-object v2, v0, v1

    new-instance v1, Lcom/android/contacts/detail/ContactDetailFragment$AddToMyContactsQuickFix;

    invoke-direct {v1, p0, v3}, Lcom/android/contacts/detail/ContactDetailFragment$AddToMyContactsQuickFix;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;Lcom/android/contacts/detail/ContactDetailFragment$1;)V

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPotentialQuickFixes:[Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;

    .line 201
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhoneEntries:Ljava/util/ArrayList;

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mSmsEntries:Ljava/util/ArrayList;

    .line 203
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mEmailEntries:Ljava/util/ArrayList;

    .line 204
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPostalEntries:Ljava/util/ArrayList;

    .line 205
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mImEntries:Ljava/util/ArrayList;

    .line 206
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mNicknameEntries:Ljava/util/ArrayList;

    .line 207
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mGroupEntries:Ljava/util/ArrayList;

    .line 208
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mRelationEntries:Ljava/util/ArrayList;

    .line 209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mNoteEntries:Ljava/util/ArrayList;

    .line 210
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mWebsiteEntries:Ljava/util/ArrayList;

    .line 211
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mSipEntries:Ljava/util/ArrayList;

    .line 212
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mEventEntries:Ljava/util/ArrayList;

    .line 213
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mOtherEntriesMap:Ljava/util/Map;

    .line 215
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    .line 222
    sget-object v0, Lcom/motorola/contacts/util/MEDialer$DialFrom;->CONTACTS:Lcom/motorola/contacts/util/MEDialer$DialFrom;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mDialFrom:Lcom/motorola/contacts/util/MEDialer$DialFrom;

    .line 231
    new-instance v0, Lcom/android/contacts/detail/ContactDetailFragment$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/detail/ContactDetailFragment$1;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;)V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mForwardTouchToListView:Landroid/view/View$OnTouchListener;

    .line 246
    new-instance v0, Lcom/android/contacts/detail/ContactDetailFragment$2;

    invoke-direct {v0, p0}, Lcom/android/contacts/detail/ContactDetailFragment$2;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;)V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mForwardDragToListView:Landroid/view/View$OnDragListener;

    .line 259
    return-void
.end method

.method static synthetic access$1000(Lcom/android/contacts/detail/ContactDetailFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailFragment;

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactHasSocialUpdates:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/view/LayoutInflater;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailFragment;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailFragment;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/detail/ContactDetailPhotoSetter;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailFragment;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhotoSetter:Lcom/android/contacts/detail/ContactDetailPhotoSetter;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailFragment;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mViewEntryDimensions:Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/contacts/detail/ContactDetailFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailFragment;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/contacts/detail/ContactDetailFragment;Ljava/util/List;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment;->getDefaultGroupId(Ljava/util/List;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1900(Lcom/android/contacts/detail/ContactDetailFragment;Lcom/android/contacts/model/account/AccountWithDataSet;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailFragment;
    .param p1, "x1"    # Lcom/android/contacts/model/account/AccountWithDataSet;

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment;->createCopy(Lcom/android/contacts/model/account/AccountWithDataSet;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailFragment;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailFragment;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mQuickFix:Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/detail/ContactDetailFragment$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailFragment;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/model/Contact;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailFragment;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/contacts/detail/ContactDetailFragment;Landroid/view/View;Landroid/widget/ListAdapter;Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailFragment;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Landroid/widget/ListAdapter;
    .param p3, "x3"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 129
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/detail/ContactDetailFragment;->showListPopup(Landroid/view/View;Landroid/widget/ListAdapter;Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/contacts/detail/ContactDetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/detail/ContactDetailFragment;

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->dismissPopupIfShown()V

    return-void
.end method

.method private addMoreNetworks()V
    .locals 7

    .prologue
    .line 901
    new-instance v1, Lcom/android/contacts/detail/ContactDetailFragment$InvitableAccountTypesAdapter;

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-direct {v1, v3, v4}, Lcom/android/contacts/detail/ContactDetailFragment$InvitableAccountTypesAdapter;-><init>(Landroid/content/Context;Lcom/android/contacts/model/Contact;)V

    .line 905
    .local v1, "popupAdapter":Lcom/android/contacts/detail/ContactDetailFragment$InvitableAccountTypesAdapter;
    new-instance v2, Lcom/android/contacts/detail/ContactDetailFragment$4;

    invoke-direct {v2, p0, v1}, Lcom/android/contacts/detail/ContactDetailFragment$4;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;Lcom/android/contacts/detail/ContactDetailFragment$InvitableAccountTypesAdapter;)V

    .line 919
    .local v2, "popupItemListener":Landroid/widget/AdapterView$OnItemClickListener;
    new-instance v0, Lcom/android/contacts/detail/ContactDetailFragment$5;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/contacts/detail/ContactDetailFragment$5;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;Lcom/android/contacts/detail/ContactDetailFragment$InvitableAccountTypesAdapter;Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 927
    .local v0, "onClickListener":Landroid/view/View$OnClickListener;
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/contacts/detail/ContactDetailFragment$AddConnectionViewEntry;

    iget-object v5, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v0, v6}, Lcom/android/contacts/detail/ContactDetailFragment$AddConnectionViewEntry;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;Lcom/android/contacts/detail/ContactDetailFragment$1;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 928
    return-void
.end method

.method private addNetworks()V
    .locals 8

    .prologue
    const/4 v1, 0x1

    .line 837
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-static {v0, v2}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->getAttribution(Landroid/content/Context;Lcom/android/contacts/model/Contact;)Ljava/lang/String;

    move-result-object v2

    .line 838
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 839
    :goto_0
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mOtherEntriesMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    .line 843
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v4}, Lcom/android/contacts/model/Contact;->getInvitableAccountTypes()Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v4

    .line 844
    if-nez v0, :cond_2

    if-nez v3, :cond_2

    if-nez v4, :cond_2

    .line 891
    :cond_0
    :goto_1
    return-void

    .line 838
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 849
    :cond_2
    iget-object v5, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    const v6, 0x7f0b0168

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 851
    iget-object v6, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewEntry;

    invoke-direct {v7, v5}, Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 855
    if-eqz v0, :cond_3

    .line 856
    new-instance v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    invoke-direct {v0}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;-><init>()V

    .line 857
    iput-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->kind:Ljava/lang/String;

    .line 858
    iput-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    .line 859
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 862
    if-lez v3, :cond_3

    .line 863
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/contacts/detail/ContactDetailFragment$SeparatorViewEntry;

    invoke-direct {v2}, Lcom/android/contacts/detail/ContactDetailFragment$SeparatorViewEntry;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 868
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mOtherEntriesMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/account/AccountType;

    .line 871
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewEntry;

    iget-object v6, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6, v0}, Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewEntry;-><init>(Landroid/content/Context;Lcom/android/contacts/model/account/AccountType;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 873
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mOtherEntriesMap:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    .line 875
    new-instance v5, Lcom/android/contacts/detail/ContactDetailFragment$SeparatorViewEntry;

    invoke-direct {v5}, Lcom/android/contacts/detail/ContactDetailFragment$SeparatorViewEntry;-><init>()V

    .line 876
    invoke-virtual {v5, v1}, Lcom/android/contacts/detail/ContactDetailFragment$SeparatorViewEntry;->setIsInSubSection(Z)V

    .line 877
    iget-object v6, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 880
    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->setIsInSubSection(Z)V

    .line 881
    iget-object v5, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 885
    :cond_5
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mOtherEntriesMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 888
    if-lez v4, :cond_0

    .line 889
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->addMoreNetworks()V

    goto/16 :goto_1
.end method

.method private addPhoneticName()V
    .locals 4

    .prologue
    .line 812
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-static {v0, v1}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->getPhoneticName(Landroid/content/Context;Lcom/android/contacts/model/Contact;)Ljava/lang/String;

    move-result-object v0

    .line 813
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 828
    :goto_0
    return-void

    .line 818
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0167

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 820
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewEntry;

    invoke-direct {v3, v1}, Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 824
    new-instance v2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    invoke-direct {v2}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;-><init>()V

    .line 825
    iput-object v1, v2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->kind:Ljava/lang/String;

    .line 826
    iput-object v0, v2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    .line 827
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private final buildEntries()V
    .locals 39

    .prologue
    .line 548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v34

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/detail/ContactDetailFragment;->mHasPhone:Z

    .line 549
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/android/contacts/util/PhoneCapabilityTester;->isSmsIntentRegistered(Landroid/content/Context;)Z

    move-result v34

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/detail/ContactDetailFragment;->mHasSms:Z

    .line 550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/android/contacts/util/PhoneCapabilityTester;->isSipPhone(Landroid/content/Context;)Z

    move-result v34

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/detail/ContactDetailFragment;->mHasSip:Z

    .line 553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->clear()V

    .line 555
    const/16 v34, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/detail/ContactDetailFragment;->mPrimaryPhoneUri:Landroid/net/Uri;

    .line 558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    move-object/from16 v34, v0

    if-nez v34, :cond_1

    .line 778
    :cond_0
    :goto_0
    return-void

    .line 562
    :cond_1
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 563
    .local v12, "groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/contacts/model/Contact;->getRawContacts()Lcom/google/common/collect/ImmutableList;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_1e

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/contacts/model/RawContact;

    .line 564
    .local v25, "rawContact":Lcom/android/contacts/model/RawContact;
    invoke-virtual/range {v25 .. v25}, Lcom/android/contacts/model/RawContact;->getId()Ljava/lang/Long;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    .line 565
    .local v26, "rawContactId":J
    invoke-virtual/range {v25 .. v25}, Lcom/android/contacts/model/RawContact;->getDataItems()Ljava/util/List;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_2

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/model/dataitem/DataItem;

    .line 566
    .local v5, "dataItem":Lcom/android/contacts/model/dataitem/DataItem;
    move-wide/from16 v0, v26

    invoke-virtual {v5, v0, v1}, Lcom/android/contacts/model/dataitem/DataItem;->setRawContactId(J)V

    .line 568
    invoke-virtual {v5}, Lcom/android/contacts/model/dataitem/DataItem;->getMimeType()Ljava/lang/String;

    move-result-object v34

    if-eqz v34, :cond_3

    .line 570
    instance-of v0, v5, Lcom/android/contacts/model/dataitem/GroupMembershipDataItem;

    move/from16 v34, v0

    if-eqz v34, :cond_4

    move-object v11, v5

    .line 571
    check-cast v11, Lcom/android/contacts/model/dataitem/GroupMembershipDataItem;

    .line 573
    .local v11, "groupMembership":Lcom/android/contacts/model/dataitem/GroupMembershipDataItem;
    invoke-virtual {v11}, Lcom/android/contacts/model/dataitem/GroupMembershipDataItem;->getGroupRowId()J

    move-result-wide v34

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 574
    .local v10, "groupId":Ljava/lang/Long;
    if-eqz v10, :cond_3

    .line 575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/contacts/model/Contact;->getGroupMetaData()Lcom/google/common/collect/ImmutableList;

    move-result-object v34

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v35

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-wide/from16 v2, v35

    invoke-direct {v0, v12, v1, v2, v3}, Lcom/android/contacts/detail/ContactDetailFragment;->handleGroupMembership(Ljava/util/ArrayList;Ljava/util/List;J)V

    goto :goto_1

    .line 580
    .end local v10    # "groupId":Ljava/lang/Long;
    .end local v11    # "groupMembership":Lcom/android/contacts/model/dataitem/GroupMembershipDataItem;
    :cond_4
    invoke-virtual {v5}, Lcom/android/contacts/model/dataitem/DataItem;->getDataKind()Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v21

    .line 581
    .local v21, "kind":Lcom/android/contacts/model/dataitem/DataKind;
    if-eqz v21, :cond_3

    .line 583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/android/contacts/model/Contact;->isDirectoryEntry()Z

    move-result v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/android/contacts/model/Contact;->getDirectoryId()J

    move-result-wide v36

    move-object/from16 v0, v34

    move/from16 v1, v35

    move-wide/from16 v2, v36

    invoke-static {v0, v5, v1, v2, v3}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->fromValues(Landroid/content/Context;Lcom/android/contacts/model/dataitem/DataItem;ZJ)Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    move-result-object v9

    .line 585
    .local v9, "entry":Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/contacts/model/dataitem/DataKind;->maxLinesForDisplay:I

    move/from16 v34, v0

    move/from16 v0, v34

    iput v0, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->maxLines:I

    .line 587
    iget-object v0, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v34

    if-nez v34, :cond_7

    const/4 v13, 0x1

    .line 588
    .local v13, "hasData":Z
    :goto_2
    invoke-virtual {v5}, Lcom/android/contacts/model/dataitem/DataItem;->isSuperPrimary()Z

    move-result v20

    .line 590
    .local v20, "isSuperPrimary":Z
    instance-of v0, v5, Lcom/android/contacts/model/dataitem/StructuredNameDataItem;

    move/from16 v34, v0

    if-nez v34, :cond_3

    .line 592
    instance-of v0, v5, Lcom/android/contacts/model/dataitem/PhoneDataItem;

    move/from16 v34, v0

    if-eqz v34, :cond_e

    if-eqz v13, :cond_e

    move-object/from16 v23, v5

    .line 593
    check-cast v23, Lcom/android/contacts/model/dataitem/PhoneDataItem;

    .line 595
    .local v23, "phone":Lcom/android/contacts/model/dataitem/PhoneDataItem;
    invoke-virtual/range {v23 .. v23}, Lcom/android/contacts/model/dataitem/PhoneDataItem;->getFormattedPhoneNumber()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    iput-object v0, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    .line 596
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasPhone:Z

    move/from16 v34, v0

    if-eqz v34, :cond_8

    iget-object v0, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/android/contacts/ContactsUtils;->getCallIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v24

    .line 598
    .local v24, "phoneIntent":Landroid/content/Intent;
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasSms:Z

    move/from16 v34, v0

    if-eqz v34, :cond_9

    new-instance v30, Landroid/content/Intent;

    const-string v34, "android.intent.action.SENDTO"

    const-string v35, "smsto"

    iget-object v0, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    invoke-static/range {v35 .. v37}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v35

    move-object/from16 v0, v30

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 602
    .local v30, "smsIntent":Landroid/content/Intent;
    :goto_4
    if-eqz v24, :cond_5

    .line 604
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/detail/ContactDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mDialFrom:Lcom/motorola/contacts/util/MEDialer$DialFrom;

    move-object/from16 v35, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v24

    move-object/from16 v2, v35

    invoke-static {v0, v1, v2}, Lcom/motorola/contacts/util/MEDialer;->onDial(Landroid/content/Context;Landroid/content/Intent;Lcom/motorola/contacts/util/MEDialer$DialFrom;)V

    .line 610
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasPhone:Z

    move/from16 v34, v0

    if-eqz v34, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasSms:Z

    move/from16 v34, v0

    if-eqz v34, :cond_a

    .line 611
    move-object/from16 v0, v24

    iput-object v0, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    .line 612
    move-object/from16 v0, v30

    iput-object v0, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryIntent:Landroid/content/Intent;

    .line 613
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/contacts/model/dataitem/DataKind;->iconAltRes:I

    move/from16 v34, v0

    move/from16 v0, v34

    iput v0, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryActionIcon:I

    .line 614
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/contacts/model/dataitem/DataKind;->iconAltDescriptionRes:I

    move/from16 v34, v0

    move/from16 v0, v34

    iput v0, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryActionDescription:I

    .line 624
    :goto_5
    if-eqz v20, :cond_6

    iget-object v0, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->uri:Landroid/net/Uri;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/detail/ContactDetailFragment;->mPrimaryPhoneUri:Landroid/net/Uri;

    .line 626
    :cond_6
    move/from16 v0, v20

    iput-boolean v0, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->isPrimary:Z

    .line 629
    iget-boolean v0, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->isPrimary:Z

    move/from16 v34, v0

    if-eqz v34, :cond_d

    .line 631
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhoneEntries:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v0, v1, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 587
    .end local v13    # "hasData":Z
    .end local v20    # "isSuperPrimary":Z
    .end local v23    # "phone":Lcom/android/contacts/model/dataitem/PhoneDataItem;
    .end local v24    # "phoneIntent":Landroid/content/Intent;
    .end local v30    # "smsIntent":Landroid/content/Intent;
    :cond_7
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 596
    .restart local v13    # "hasData":Z
    .restart local v20    # "isSuperPrimary":Z
    .restart local v23    # "phone":Lcom/android/contacts/model/dataitem/PhoneDataItem;
    :cond_8
    const/16 v24, 0x0

    goto/16 :goto_3

    .line 598
    .restart local v24    # "phoneIntent":Landroid/content/Intent;
    :cond_9
    const/16 v30, 0x0

    goto :goto_4

    .line 615
    .restart local v30    # "smsIntent":Landroid/content/Intent;
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasPhone:Z

    move/from16 v34, v0

    if-eqz v34, :cond_b

    .line 616
    move-object/from16 v0, v24

    iput-object v0, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    goto :goto_5

    .line 617
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasSms:Z

    move/from16 v34, v0

    if-eqz v34, :cond_c

    .line 618
    move-object/from16 v0, v30

    iput-object v0, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    goto :goto_5

    .line 620
    :cond_c
    const/16 v34, 0x0

    move-object/from16 v0, v34

    iput-object v0, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    goto :goto_5

    .line 634
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhoneEntries:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 636
    .end local v23    # "phone":Lcom/android/contacts/model/dataitem/PhoneDataItem;
    .end local v24    # "phoneIntent":Landroid/content/Intent;
    .end local v30    # "smsIntent":Landroid/content/Intent;
    :cond_e
    instance-of v0, v5, Lcom/android/contacts/model/dataitem/EmailDataItem;

    move/from16 v34, v0

    if-eqz v34, :cond_10

    if-eqz v13, :cond_10

    .line 638
    new-instance v34, Landroid/content/Intent;

    const-string v35, "android.intent.action.SENDTO"

    const-string v36, "mailto"

    iget-object v0, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    invoke-static/range {v36 .. v38}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v36

    invoke-direct/range {v34 .. v36}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, v34

    iput-object v0, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    .line 640
    move/from16 v0, v20

    iput-boolean v0, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->isPrimary:Z

    .line 642
    iget-boolean v0, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->isPrimary:Z

    move/from16 v34, v0

    if-eqz v34, :cond_f

    .line 643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mEmailEntries:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v0, v1, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 649
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/contacts/model/Contact;->getStatuses()Lcom/google/common/collect/ImmutableMap;

    move-result-object v34

    iget-wide v0, v9, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->id:J

    move-wide/from16 v35, v0

    invoke-static/range {v35 .. v36}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/contacts/util/DataStatus;

    .line 650
    .local v31, "status":Lcom/android/contacts/util/DataStatus;
    if-eqz v31, :cond_3

    move-object v8, v5

    .line 651
    check-cast v8, Lcom/android/contacts/model/dataitem/EmailDataItem;

    .line 652
    .local v8, "email":Lcom/android/contacts/model/dataitem/EmailDataItem;
    invoke-static {v8}, Lcom/android/contacts/model/dataitem/ImDataItem;->createFromEmail(Lcom/android/contacts/model/dataitem/EmailDataItem;)Lcom/android/contacts/model/dataitem/ImDataItem;

    move-result-object v17

    .line 654
    .local v17, "im":Lcom/android/contacts/model/dataitem/ImDataItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/android/contacts/model/Contact;->isDirectoryEntry()Z

    move-result v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/android/contacts/model/Contact;->getDirectoryId()J

    move-result-wide v36

    move-object/from16 v0, v34

    move-object/from16 v1, v17

    move/from16 v2, v35

    move-wide/from16 v3, v36

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->fromValues(Landroid/content/Context;Lcom/android/contacts/model/dataitem/DataItem;ZJ)Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    move-result-object v18

    .line 656
    .local v18, "imEntry":Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/android/contacts/detail/ContactDetailFragment;->buildImActions(Landroid/content/Context;Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;Lcom/android/contacts/model/dataitem/ImDataItem;)V

    .line 657
    invoke-virtual/range {v31 .. v31}, Lcom/android/contacts/util/DataStatus;->getPresence()I

    move-result v34

    move-object/from16 v0, v18

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->setPresence(I)V

    .line 658
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/contacts/model/dataitem/DataKind;->maxLinesForDisplay:I

    move/from16 v34, v0

    move/from16 v0, v34

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->maxLines:I

    .line 659
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mImEntries:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 645
    .end local v8    # "email":Lcom/android/contacts/model/dataitem/EmailDataItem;
    .end local v17    # "im":Lcom/android/contacts/model/dataitem/ImDataItem;
    .end local v18    # "imEntry":Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    .end local v31    # "status":Lcom/android/contacts/util/DataStatus;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mEmailEntries:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 661
    :cond_10
    instance-of v0, v5, Lcom/android/contacts/model/dataitem/StructuredPostalDataItem;

    move/from16 v34, v0

    if-eqz v34, :cond_11

    if-eqz v13, :cond_11

    .line 663
    iget-object v0, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/android/contacts/util/StructuredPostalUtils;->getViewPostalAddressIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v34

    move-object/from16 v0, v34

    iput-object v0, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    .line 664
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mPostalEntries:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 665
    :cond_11
    instance-of v0, v5, Lcom/android/contacts/model/dataitem/ImDataItem;

    move/from16 v34, v0

    if-eqz v34, :cond_13

    if-eqz v13, :cond_13

    .line 667
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    check-cast v5, Lcom/android/contacts/model/dataitem/ImDataItem;

    .end local v5    # "dataItem":Lcom/android/contacts/model/dataitem/DataItem;
    move-object/from16 v0, v34

    invoke-static {v0, v9, v5}, Lcom/android/contacts/detail/ContactDetailFragment;->buildImActions(Landroid/content/Context;Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;Lcom/android/contacts/model/dataitem/ImDataItem;)V

    .line 670
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/contacts/model/Contact;->getStatuses()Lcom/google/common/collect/ImmutableMap;

    move-result-object v34

    iget-wide v0, v9, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->id:J

    move-wide/from16 v35, v0

    invoke-static/range {v35 .. v36}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/contacts/util/DataStatus;

    .line 671
    .restart local v31    # "status":Lcom/android/contacts/util/DataStatus;
    if-eqz v31, :cond_12

    .line 672
    invoke-virtual/range {v31 .. v31}, Lcom/android/contacts/util/DataStatus;->getPresence()I

    move-result v34

    move/from16 v0, v34

    invoke-virtual {v9, v0}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->setPresence(I)V

    .line 674
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mImEntries:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 675
    .end local v31    # "status":Lcom/android/contacts/util/DataStatus;
    .restart local v5    # "dataItem":Lcom/android/contacts/model/dataitem/DataItem;
    :cond_13
    instance-of v0, v5, Lcom/android/contacts/model/dataitem/OrganizationDataItem;

    move/from16 v34, v0

    if-nez v34, :cond_3

    .line 678
    instance-of v0, v5, Lcom/android/contacts/model/dataitem/NicknameDataItem;

    move/from16 v34, v0

    if-eqz v34, :cond_16

    if-eqz v13, :cond_16

    .line 680
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/contacts/model/Contact;->getNameRawContactId()J

    move-result-wide v34

    cmp-long v34, v34, v26

    if-nez v34, :cond_14

    const/16 v19, 0x1

    .line 683
    .local v19, "isNameRawContact":Z
    :goto_7
    if-eqz v19, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/contacts/model/Contact;->getDisplayNameSource()I

    move-result v34

    const/16 v35, 0x23

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_15

    const/4 v6, 0x1

    .line 687
    .local v6, "duplicatesTitle":Z
    :goto_8
    if-nez v6, :cond_3

    .line 688
    const/16 v34, 0x0

    move-object/from16 v0, v34

    iput-object v0, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->uri:Landroid/net/Uri;

    .line 689
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mNicknameEntries:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 680
    .end local v6    # "duplicatesTitle":Z
    .end local v19    # "isNameRawContact":Z
    :cond_14
    const/16 v19, 0x0

    goto :goto_7

    .line 683
    .restart local v19    # "isNameRawContact":Z
    :cond_15
    const/4 v6, 0x0

    goto :goto_8

    .line 691
    .end local v19    # "isNameRawContact":Z
    :cond_16
    instance-of v0, v5, Lcom/android/contacts/model/dataitem/NoteDataItem;

    move/from16 v34, v0

    if-eqz v34, :cond_17

    if-eqz v13, :cond_17

    .line 693
    const/16 v34, 0x0

    move-object/from16 v0, v34

    iput-object v0, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->uri:Landroid/net/Uri;

    .line 694
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mNoteEntries:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 695
    :cond_17
    instance-of v0, v5, Lcom/android/contacts/model/dataitem/WebsiteDataItem;

    move/from16 v34, v0

    if-eqz v34, :cond_18

    if-eqz v13, :cond_18

    .line 697
    const/16 v34, 0x0

    move-object/from16 v0, v34

    iput-object v0, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->uri:Landroid/net/Uri;

    .line 699
    :try_start_0
    new-instance v33, Landroid/net/WebAddress;

    iget-object v0, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-direct/range {v33 .. v34}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V

    .line 700
    .local v33, "webAddress":Landroid/net/WebAddress;
    new-instance v34, Landroid/content/Intent;

    const-string v35, "android.intent.action.VIEW"

    invoke-virtual/range {v33 .. v33}, Landroid/net/WebAddress;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v36

    invoke-direct/range {v34 .. v36}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, v34

    iput-object v0, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;
    :try_end_0
    .catch Landroid/net/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 705
    .end local v33    # "webAddress":Landroid/net/WebAddress;
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mWebsiteEntries:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 702
    :catch_0
    move-exception v7

    .line 703
    .local v7, "e":Landroid/net/ParseException;
    const-string v34, "ContactDetailFragment"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Couldn\'t parse website: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    iget-object v0, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 706
    .end local v7    # "e":Landroid/net/ParseException;
    :cond_18
    instance-of v0, v5, Lcom/android/contacts/model/dataitem/SipAddressDataItem;

    move/from16 v34, v0

    if-eqz v34, :cond_1a

    if-eqz v13, :cond_1a

    .line 708
    const/16 v34, 0x0

    move-object/from16 v0, v34

    iput-object v0, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->uri:Landroid/net/Uri;

    .line 709
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasSip:Z

    move/from16 v34, v0

    if-eqz v34, :cond_19

    .line 710
    const-string v34, "sip"

    iget-object v0, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    invoke-static/range {v34 .. v36}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Lcom/android/contacts/ContactsUtils;->getCallIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v34

    move-object/from16 v0, v34

    iput-object v0, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    .line 714
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/detail/ContactDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v34

    iget-object v0, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mDialFrom:Lcom/motorola/contacts/util/MEDialer$DialFrom;

    move-object/from16 v36, v0

    invoke-static/range {v34 .. v36}, Lcom/motorola/contacts/util/MEDialer;->onDial(Landroid/content/Context;Landroid/content/Intent;Lcom/motorola/contacts/util/MEDialer$DialFrom;)V

    .line 721
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mSipEntries:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 719
    :cond_19
    const/16 v34, 0x0

    move-object/from16 v0, v34

    iput-object v0, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    goto :goto_a

    .line 728
    :cond_1a
    instance-of v0, v5, Lcom/android/contacts/model/dataitem/EventDataItem;

    move/from16 v34, v0

    if-eqz v34, :cond_1b

    if-eqz v13, :cond_1b

    .line 729
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    iget-object v0, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-static/range {v34 .. v35}, Lcom/android/contacts/util/DateUtils;->formatDate(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    iput-object v0, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    .line 730
    const/16 v34, 0x0

    move-object/from16 v0, v34

    iput-object v0, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->uri:Landroid/net/Uri;

    .line 731
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mEventEntries:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 732
    :cond_1b
    instance-of v0, v5, Lcom/android/contacts/model/dataitem/RelationDataItem;

    move/from16 v34, v0

    if-eqz v34, :cond_1c

    if-eqz v13, :cond_1c

    .line 733
    new-instance v34, Landroid/content/Intent;

    const-string v35, "android.intent.action.SEARCH"

    invoke-direct/range {v34 .. v35}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v34

    iput-object v0, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    .line 734
    iget-object v0, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    move-object/from16 v34, v0

    const-string v35, "query"

    iget-object v0, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v34 .. v36}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 735
    iget-object v0, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    move-object/from16 v34, v0

    const-string v35, "vnd.android.cursor.dir/contact"

    invoke-virtual/range {v34 .. v35}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 736
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mRelationEntries:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 739
    :cond_1c
    new-instance v34, Landroid/content/Intent;

    const-string v35, "android.intent.action.VIEW"

    invoke-direct/range {v34 .. v35}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v34

    iput-object v0, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    .line 740
    iget-object v0, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    move-object/from16 v34, v0

    iget-object v0, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->uri:Landroid/net/Uri;

    move-object/from16 v35, v0

    iget-object v0, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v34 .. v36}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 742
    invoke-virtual {v5}, Lcom/android/contacts/model/dataitem/DataItem;->buildDataString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    iput-object v0, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    .line 744
    iget-object v0, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v34

    if-nez v34, :cond_3

    .line 747
    invoke-virtual {v5}, Lcom/android/contacts/model/dataitem/DataItem;->getAccountType()Lcom/android/contacts/model/account/AccountType;

    move-result-object v32

    .line 748
    .local v32, "type":Lcom/android/contacts/model/account/AccountType;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mOtherEntriesMap:Ljava/util/Map;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_1d

    .line 749
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mOtherEntriesMap:Ljava/util/Map;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/List;

    .line 750
    .local v22, "listEntries":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;>;"
    move-object/from16 v0, v22

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 753
    .end local v22    # "listEntries":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;>;"
    :cond_1d
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 754
    .restart local v22    # "listEntries":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;>;"
    move-object/from16 v0, v22

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 755
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mOtherEntriesMap:Ljava/util/Map;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 762
    .end local v5    # "dataItem":Lcom/android/contacts/model/dataitem/DataItem;
    .end local v9    # "entry":Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    .end local v13    # "hasData":Z
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v20    # "isSuperPrimary":Z
    .end local v21    # "kind":Lcom/android/contacts/model/dataitem/DataKind;
    .end local v22    # "listEntries":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;>;"
    .end local v25    # "rawContact":Lcom/android/contacts/model/RawContact;
    .end local v26    # "rawContactId":J
    .end local v32    # "type":Lcom/android/contacts/model/account/AccountType;
    :cond_1e
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v34

    if-nez v34, :cond_0

    .line 763
    new-instance v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    invoke-direct {v9}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;-><init>()V

    .line 764
    .restart local v9    # "entry":Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    invoke-static {v12}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 765
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    .line 766
    .local v28, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v29

    .line 767
    .local v29, "size":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_b
    move/from16 v0, v29

    if-ge v14, v0, :cond_20

    .line 768
    if-eqz v14, :cond_1f

    .line 769
    const-string v34, ", "

    move-object/from16 v0, v28

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 771
    :cond_1f
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/String;

    move-object/from16 v0, v28

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 767
    add-int/lit8 v14, v14, 0x1

    goto :goto_b

    .line 773
    :cond_20
    const-string v34, "mimetype"

    move-object/from16 v0, v34

    iput-object v0, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    .line 774
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    const v35, 0x7f0b010c

    invoke-virtual/range {v34 .. v35}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    iput-object v0, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->kind:Ljava/lang/String;

    .line 775
    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    iput-object v0, v9, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    .line 776
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mGroupEntries:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public static buildImActions(Landroid/content/Context;Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;Lcom/android/contacts/model/dataitem/ImDataItem;)V
    .locals 5

    .prologue
    const/4 v0, 0x5

    .line 988
    invoke-virtual {p2}, Lcom/android/contacts/model/dataitem/ImDataItem;->isCreatedFromEmail()Z

    move-result v1

    .line 990
    if-nez v1, :cond_1

    invoke-virtual {p2}, Lcom/android/contacts/model/dataitem/ImDataItem;->isProtocolValid()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1037
    :cond_0
    :goto_0
    return-void

    .line 994
    :cond_1
    invoke-virtual {p2}, Lcom/android/contacts/model/dataitem/ImDataItem;->getData()Ljava/lang/String;

    move-result-object v2

    .line 995
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 999
    if-eqz v1, :cond_2

    move v1, v0

    .line 1001
    :goto_1
    if-ne v1, v0, :cond_5

    .line 1002
    invoke-virtual {p2}, Lcom/android/contacts/model/dataitem/ImDataItem;->getChatCapability()I

    move-result v1

    .line 1003
    iput v1, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->chatCapability:I

    .line 1004
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v0, v4}, Landroid/provider/ContactsContract$CommonDataKinds$Im;->getProtocolLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->typeString:Ljava/lang/String;

    .line 1006
    and-int/lit8 v0, v1, 0x4

    if-eqz v0, :cond_3

    .line 1007
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "xmpp:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "?message"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v0, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    .line 1009
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "xmpp:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?call"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v0, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryIntent:Landroid/content/Intent;

    goto :goto_0

    .line 999
    :cond_2
    invoke-virtual {p2}, Lcom/android/contacts/model/dataitem/ImDataItem;->getProtocol()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1

    .line 1011
    :cond_3
    and-int/lit8 v0, v1, 0x1

    if-eqz v0, :cond_4

    .line 1013
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "xmpp:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "?message"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v0, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    .line 1015
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "xmpp:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?call"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v0, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryIntent:Landroid/content/Intent;

    goto/16 :goto_0

    .line 1018
    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "xmpp:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?message"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v0, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    goto/16 :goto_0

    .line 1023
    :cond_5
    invoke-virtual {p2}, Lcom/android/contacts/model/dataitem/ImDataItem;->getCustomProtocol()Ljava/lang/String;

    move-result-object v0

    .line 1025
    const/4 v3, -0x1

    if-eq v1, v3, :cond_6

    .line 1027
    invoke-static {v1}, Lcom/android/contacts/ContactsUtils;->lookupProviderNameFromId(I)Ljava/lang/String;

    move-result-object v0

    .line 1030
    :cond_6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1031
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 1032
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v3, "imto"

    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 1034
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v1, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    goto/16 :goto_0
.end method

.method private clearDefaultContactMethod(J)V
    .locals 2
    .param p1, "id"    # J

    .prologue
    .line 1974
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lcom/android/contacts/ContactSaveService;->createClearPrimaryIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    .line 1975
    .local v0, "clearIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1976
    return-void
.end method

.method private configureQuickFix()V
    .locals 6

    .prologue
    .line 513
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mQuickFix:Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;

    .line 515
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPotentialQuickFixes:[Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;

    .local v0, "arr$":[Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 516
    .local v1, "fix":Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;
    invoke-virtual {v1}, Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;->isApplicable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 517
    iput-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mQuickFix:Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;

    .line 523
    .end local v1    # "fix":Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;
    :cond_0
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mQuickFix:Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;

    if-nez v4, :cond_2

    .line 524
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mQuickFixButton:Landroid/widget/Button;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 529
    :goto_1
    return-void

    .line 515
    .restart local v1    # "fix":Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 526
    .end local v1    # "fix":Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;
    :cond_2
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mQuickFixButton:Landroid/widget/Button;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 527
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mQuickFixButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mQuickFix:Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;

    invoke-virtual {v5}, Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private copyToClipboard(I)V
    .locals 5
    .param p1, "viewEntryPosition"    # I

    .prologue
    .line 1980
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    .line 1981
    .local v0, "detailViewEntry":Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    .line 1984
    .local v1, "textToCopy":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1987
    :goto_0
    return-void

    .line 1986
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->typeString:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {v2, v3, v1, v4}, Lcom/android/contacts/util/ClipboardUtils;->copyText(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto :goto_0
.end method

.method private createCopy(Lcom/android/contacts/model/account/AccountWithDataSet;)V
    .locals 2
    .param p1, "account"    # Lcom/android/contacts/model/account/AccountWithDataSet;

    .prologue
    .line 1885
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;

    if-eqz v0, :cond_0

    .line 1886
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v1}, Lcom/android/contacts/model/Contact;->getContentValues()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/contacts/detail/ContactDetailFragment$Listener;->onCreateRawContactRequested(Ljava/util/ArrayList;Lcom/android/contacts/model/account/AccountWithDataSet;)V

    .line 1888
    :cond_0
    return-void
.end method

.method private dismissPopupIfShown()V
    .locals 1

    .prologue
    .line 1065
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPopup:Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1066
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 1068
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPopup:Landroid/widget/ListPopupWindow;

    .line 1069
    return-void
.end method

.method private flattenList(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 936
    .local p1, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 939
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 940
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    iget-object v2, v3, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->kind:Ljava/lang/String;

    .line 942
    .local v2, "kind":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewEntry;

    invoke-direct {v4, v2}, Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 947
    .end local v2    # "kind":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 949
    if-eqz v1, :cond_1

    .line 950
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/contacts/detail/ContactDetailFragment$SeparatorViewEntry;

    invoke-direct {v4}, Lcom/android/contacts/detail/ContactDetailFragment$SeparatorViewEntry;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 952
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 947
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 956
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 957
    return-void
.end method

.method private getDefaultGroupId(Ljava/util/List;)J
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/GroupMetaData;",
            ">;)J"
        }
    .end annotation

    .prologue
    .local p1, "groups":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/GroupMetaData;>;"
    const-wide/16 v4, -0x1

    .line 533
    const-wide/16 v0, -0x1

    .line 534
    .local v0, "defaultGroupId":J
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/GroupMetaData;

    .line 535
    .local v2, "group":Lcom/android/contacts/GroupMetaData;
    invoke-virtual {v2}, Lcom/android/contacts/GroupMetaData;->isDefaultGroup()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 537
    cmp-long v6, v0, v4

    if-eqz v6, :cond_2

    move-wide v0, v4

    .line 541
    .end local v0    # "defaultGroupId":J
    .end local v2    # "group":Lcom/android/contacts/GroupMetaData;
    :cond_1
    return-wide v0

    .line 538
    .restart local v0    # "defaultGroupId":J
    .restart local v2    # "group":Lcom/android/contacts/GroupMetaData;
    :cond_2
    invoke-virtual {v2}, Lcom/android/contacts/GroupMetaData;->getGroupId()J

    move-result-wide v0

    goto :goto_0
.end method

.method private handleGroupMembership(Ljava/util/ArrayList;Ljava/util/List;J)V
    .locals 5
    .param p3, "groupId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/GroupMetaData;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 965
    .local p1, "groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "groupMetaData":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/GroupMetaData;>;"
    if-nez p2, :cond_1

    .line 980
    :cond_0
    :goto_0
    return-void

    .line 969
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/GroupMetaData;

    .line 970
    .local v0, "group":Lcom/android/contacts/GroupMetaData;
    invoke-virtual {v0}, Lcom/android/contacts/GroupMetaData;->getGroupId()J

    move-result-wide v3

    cmp-long v3, v3, p3

    if-nez v3, :cond_2

    .line 971
    invoke-virtual {v0}, Lcom/android/contacts/GroupMetaData;->isDefaultGroup()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/android/contacts/GroupMetaData;->isFavorites()Z

    move-result v3

    if-nez v3, :cond_0

    .line 972
    invoke-virtual {v0}, Lcom/android/contacts/GroupMetaData;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 973
    .local v2, "title":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 974
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private setDefaultContactMethod(J)V
    .locals 2
    .param p1, "id"    # J

    .prologue
    .line 1969
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lcom/android/contacts/ContactSaveService;->createSetSuperPrimaryIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    .line 1970
    .local v0, "setIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1971
    return-void
.end method

.method private setupFlattenedList()V
    .locals 2

    .prologue
    .line 786
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewEntry;

    invoke-direct {v1}, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewEntry;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 788
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->addPhoneticName()V

    .line 790
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->flattenList(Ljava/util/ArrayList;)V

    .line 791
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mSmsEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->flattenList(Ljava/util/ArrayList;)V

    .line 792
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mEmailEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->flattenList(Ljava/util/ArrayList;)V

    .line 793
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mImEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->flattenList(Ljava/util/ArrayList;)V

    .line 794
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mNicknameEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->flattenList(Ljava/util/ArrayList;)V

    .line 795
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mWebsiteEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->flattenList(Ljava/util/ArrayList;)V

    .line 797
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->addNetworks()V

    .line 799
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mSipEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->flattenList(Ljava/util/ArrayList;)V

    .line 800
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPostalEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->flattenList(Ljava/util/ArrayList;)V

    .line 801
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mEventEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->flattenList(Ljava/util/ArrayList;)V

    .line 802
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mGroupEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->flattenList(Ljava/util/ArrayList;)V

    .line 803
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mRelationEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->flattenList(Ljava/util/ArrayList;)V

    .line 804
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mNoteEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->flattenList(Ljava/util/ArrayList;)V

    .line 805
    return-void
.end method

.method private showListPopup(Landroid/view/View;Landroid/widget/ListAdapter;Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 3
    .param p1, "anchorView"    # Landroid/view/View;
    .param p2, "adapter"    # Landroid/widget/ListAdapter;
    .param p3, "onItemClickListener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 1044
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->dismissPopupIfShown()V

    .line 1045
    new-instance v0, Landroid/widget/ListPopupWindow;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPopup:Landroid/widget/ListPopupWindow;

    .line 1046
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 1047
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 1048
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p2}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1049
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPopup:Landroid/widget/ListPopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 1053
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPopup:Landroid/widget/ListPopupWindow;

    new-instance v1, Lcom/android/contacts/detail/ContactDetailFragment$6;

    invoke-direct {v1, p0, p3}, Lcom/android/contacts/detail/ContactDetailFragment$6;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1061
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->show()V

    .line 1062
    return-void
.end method


# virtual methods
.method protected bindData()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/16 v6, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 422
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    if-nez v3, :cond_1

    .line 506
    :cond_0
    :goto_0
    return-void

    .line 426
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 427
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 430
    :cond_2
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    if-nez v3, :cond_4

    .line 431
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 432
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticPhotoContainer:Landroid/view/ViewGroup;

    if-eqz v3, :cond_3

    .line 433
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticPhotoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 435
    :cond_3
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 436
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAdapter:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    if-eqz v3, :cond_0

    .line 437
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAdapter:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    invoke-virtual {v3}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 443
    :cond_4
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v3}, Lcom/android/contacts/model/Contact;->getStreamItems()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    move v3, v4

    :goto_1
    iput-boolean v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactHasSocialUpdates:Z

    .line 446
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticPhotoContainer:Landroid/view/ViewGroup;

    if-eqz v3, :cond_6

    .line 451
    iget-boolean v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mShowStaticPhoto:Z

    if-eqz v3, :cond_c

    .line 452
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticPhotoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 453
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticPhotoContainer:Landroid/view/ViewGroup;

    const v6, 0x7f06004c

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 455
    .local v2, "photoView":Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v3}, Lcom/android/contacts/model/Contact;->getPhotoUri()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a

    move v0, v4

    .line 456
    .local v0, "expandPhotoOnClick":Z
    :goto_2
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhotoSetter:Lcom/android/contacts/detail/ContactDetailPhotoSetter;

    iget-object v6, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v3, v6, v7, v2, v0}, Lcom/android/contacts/detail/ContactDetailPhotoSetter;->setupContactPhotoForClick(Landroid/content/Context;Lcom/android/contacts/model/Contact;Landroid/widget/ImageView;Z)Landroid/view/View$OnClickListener;

    move-result-object v1

    .line 458
    .local v1, "listener":Landroid/view/View$OnClickListener;
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhotoTouchOverlay:Landroid/view/View;

    if-eqz v3, :cond_6

    .line 459
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhotoTouchOverlay:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 460
    if-nez v0, :cond_5

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    iget-object v6, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v6}, Lcom/android/contacts/model/Contact;->isWritableContact(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 461
    :cond_5
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhotoTouchOverlay:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 472
    .end local v0    # "expandPhotoOnClick":Z
    .end local v1    # "listener":Landroid/view/View$OnClickListener;
    .end local v2    # "photoView":Landroid/widget/ImageView;
    :cond_6
    :goto_3
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->buildEntries()V

    .line 475
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    .line 476
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mSmsEntries:Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    .line 477
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mEmailEntries:Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    .line 478
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPostalEntries:Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    .line 479
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mImEntries:Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    .line 480
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mEventEntries:Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    .line 482
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v4, :cond_d

    move v3, v4

    :goto_4
    iput-boolean v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mIsUniqueNumber:Z

    .line 483
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mEmailEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v4, :cond_e

    :goto_5
    iput-boolean v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mIsUniqueEmail:Z

    .line 486
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->setupFlattenedList()V

    .line 488
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAdapter:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    if-nez v3, :cond_7

    .line 489
    new-instance v3, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    invoke-direct {v3, p0, v8}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;Lcom/android/contacts/detail/ContactDetailFragment$1;)V

    iput-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAdapter:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    .line 490
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAdapter:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 494
    :cond_7
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListState:Landroid/os/Parcelable;

    if-eqz v3, :cond_8

    .line 495
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListState:Landroid/os/Parcelable;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 496
    iput-object v8, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListState:Landroid/os/Parcelable;

    .line 499
    :cond_8
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAdapter:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    invoke-virtual {v3}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->notifyDataSetChanged()V

    .line 501
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 503
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->configureQuickFix()V

    .line 505
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_9
    move v3, v5

    .line 443
    goto/16 :goto_1

    .restart local v2    # "photoView":Landroid/widget/ImageView;
    :cond_a
    move v0, v5

    .line 455
    goto/16 :goto_2

    .line 463
    .restart local v0    # "expandPhotoOnClick":Z
    .restart local v1    # "listener":Landroid/view/View$OnClickListener;
    :cond_b
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhotoTouchOverlay:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setClickable(Z)V

    goto :goto_3

    .line 467
    .end local v0    # "expandPhotoOnClick":Z
    .end local v1    # "listener":Landroid/view/View$OnClickListener;
    .end local v2    # "photoView":Landroid/widget/ImageView;
    :cond_c
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticPhotoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_3

    :cond_d
    move v3, v5

    .line 482
    goto :goto_4

    :cond_e
    move v4, v5

    .line 483
    goto :goto_5
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getFirstListItemOffset()I
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->getFirstListItemOffset(Landroid/widget/ListView;)I

    move-result v0

    return v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mLookupUri:Landroid/net/Uri;

    return-object v0
.end method

.method public handleKeyDown(I)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1991
    packed-switch p1, :pswitch_data_0

    :cond_0
    move v0, v2

    .line 2031
    :goto_0
    return v0

    .line 1994
    :pswitch_0
    :try_start_0
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 1996
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    .line 2004
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v0

    .line 2005
    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    .line 2006
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAdapter:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    invoke-virtual {v3, v0}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getItem(I)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    .line 2007
    if-eqz v0, :cond_4

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    if-eqz v3, :cond_4

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.CALL_PRIVILEGED"

    if-ne v3, v4, :cond_4

    .line 2009
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    .line 2010
    goto :goto_0

    .line 2012
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPrimaryPhoneUri:Landroid/net/Uri;

    if-eqz v0, :cond_4

    .line 2014
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPrimaryPhoneUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/android/contacts/ContactsUtils;->getCallIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 2016
    if-eqz v0, :cond_3

    .line 2019
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mDialFrom:Lcom/motorola/contacts/util/MEDialer$DialFrom;

    invoke-static {v2, v0, v3}, Lcom/motorola/contacts/util/MEDialer;->onDial(Landroid/content/Context;Landroid/content/Intent;Lcom/motorola/contacts/util/MEDialer$DialFrom;)V

    .line 2022
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_3
    move v0, v1

    .line 2025
    goto :goto_0

    :cond_4
    move v0, v2

    .line 2027
    goto :goto_0

    .line 2000
    :catch_0
    move-exception v0

    goto :goto_1

    .line 1991
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public onAccountChosen(Lcom/android/contacts/model/account/AccountWithDataSet;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "account"    # Lcom/android/contacts/model/account/AccountWithDataSet;
    .param p2, "extraArgs"    # Landroid/os/Bundle;

    .prologue
    .line 1881
    invoke-direct {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment;->createCopy(Lcom/android/contacts/model/account/AccountWithDataSet;)V

    .line 1882
    return-void
.end method

.method public onAccountSelectorCancelled()V
    .locals 0

    .prologue
    .line 1877
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 301
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 302
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    .line 303
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/ContactsUtils;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mDefaultCountryIso:Ljava/lang/String;

    .line 304
    new-instance v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mViewEntryDimensions:Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;

    .line 305
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1947
    :try_start_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1953
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1964
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown menu option "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1948
    :catch_0
    move-exception v0

    .line 1949
    const-string v1, "ContactDetailFragment"

    const-string v2, "bad menuInfo"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1950
    const/4 v0, 0x0

    .line 1962
    :goto_0
    return v0

    .line 1955
    :pswitch_0
    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->copyToClipboard(I)V

    move v0, v1

    .line 1956
    goto :goto_0

    .line 1958
    :pswitch_1
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/contacts/detail/ContactDetailFragment;->setDefaultContactMethod(J)V

    move v0, v1

    .line 1959
    goto :goto_0

    .line 1961
    :pswitch_2
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/contacts/detail/ContactDetailFragment;->clearDefaultContactMethod(J)V

    move v0, v1

    .line 1962
    goto :goto_0

    .line 1953
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 263
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 264
    if-eqz p1, :cond_0

    .line 265
    const-string v1, "contactUri"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mLookupUri:Landroid/net/Uri;

    .line 266
    const-string v1, "liststate"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListState:Landroid/os/Parcelable;

    .line 269
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "RequestFromFavorites"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 271
    .local v0, "isRequestFromFavorites":Z
    if-eqz v0, :cond_1

    .line 272
    sget-object v1, Lcom/motorola/contacts/util/MEDialer$DialFrom;->FAVORITES:Lcom/motorola/contacts/util/MEDialer$DialFrom;

    iput-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mDialFrom:Lcom/motorola/contacts/util/MEDialer$DialFrom;

    .line 277
    :goto_0
    return-void

    .line 274
    :cond_1
    sget-object v1, Lcom/motorola/contacts/util/MEDialer$DialFrom;->CONTACTS:Lcom/motorola/contacts/util/MEDialer$DialFrom;

    iput-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mDialFrom:Lcom/motorola/contacts/util/MEDialer$DialFrom;

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 1907
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 1909
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 1910
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    iget v1, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    .line 1912
    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1913
    const v1, 0x7f0b01b7

    invoke-virtual {p0, v1}, Lcom/android/contacts/detail/ContactDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v4, v4, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1917
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v1}, Lcom/android/contacts/model/Contact;->isDirectoryEntry()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1941
    :cond_0
    :goto_0
    return-void

    .line 1921
    :cond_1
    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    .line 1927
    const-string v3, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1928
    iget-boolean v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mIsUniqueNumber:Z

    .line 1934
    :goto_1
    iget-boolean v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->isPrimary:Z

    if-eqz v0, :cond_3

    .line 1935
    const v0, 0x7f0b01b9

    invoke-virtual {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v4, v2, v4, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0

    .line 1929
    :cond_2
    const-string v3, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1930
    iget-boolean v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mIsUniqueEmail:Z

    goto :goto_1

    .line 1937
    :cond_3
    if-nez v1, :cond_0

    .line 1938
    const/4 v0, 0x2

    const v1, 0x7f0b01b8

    invoke-virtual {p0, v1}, Lcom/android/contacts/detail/ContactDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v4, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 309
    const v0, 0x7f040014

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    .line 312
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mForwardTouchToListView:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 313
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mForwardDragToListView:Landroid/view/View$OnDragListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 315
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mInflater:Landroid/view/LayoutInflater;

    .line 317
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    const v1, 0x7f060068

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticPhotoContainer:Landroid/view/ViewGroup;

    .line 318
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    const v1, 0x7f060113

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhotoTouchOverlay:Landroid/view/View;

    .line 320
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    .line 321
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 322
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 323
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mVerticalScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 326
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mEmptyView:Landroid/view/View;

    .line 328
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    const v1, 0x7f060066

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mQuickFixButton:Landroid/widget/Button;

    .line 329
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mQuickFixButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/contacts/detail/ContactDetailFragment$3;

    invoke-direct {v1, p0}, Lcom/android/contacts/detail/ContactDetailFragment$3;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 338
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 340
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    if-eqz v0, :cond_0

    .line 341
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->bindData()V

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2303
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->dismissPopupIfShown()V

    .line 2304
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2305
    iput-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    .line 2306
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2307
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 2308
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 1899
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;

    if-nez v1, :cond_1

    .line 1903
    :cond_0
    :goto_0
    return-void

    .line 1900
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAdapter:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    invoke-virtual {v1, p3}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getItem(I)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;

    move-result-object v0

    .line 1901
    .local v0, "entry":Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;
    if-eqz v0, :cond_0

    .line 1902
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;

    invoke-virtual {v0, p2, v1}, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->click(Landroid/view/View;Lcom/android/contacts/detail/ContactDetailFragment$Listener;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 290
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->dismissPopupIfShown()V

    .line 291
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 292
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 296
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 297
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 281
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 282
    const-string v0, "contactUri"

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 283
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 284
    const-string v0, "liststate"

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 286
    :cond_0
    return-void
.end method

.method public requestToMoveToOffset(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 418
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    invoke-static {v0, p1}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->requestToMoveToOffset(Landroid/widget/ListView;I)V

    .line 419
    return-void
.end method

.method public resetAdapter()V
    .locals 2

    .prologue
    .line 397
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAdapter:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 400
    :cond_0
    return-void
.end method

.method public setData(Landroid/net/Uri;Lcom/android/contacts/model/Contact;)V
    .locals 0
    .param p1, "lookupUri"    # Landroid/net/Uri;
    .param p2, "result"    # Lcom/android/contacts/model/Contact;

    .prologue
    .line 387
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mLookupUri:Landroid/net/Uri;

    .line 388
    iput-object p2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    .line 389
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->bindData()V

    .line 390
    return-void
.end method

.method public setListener(Lcom/android/contacts/detail/ContactDetailFragment$Listener;)V
    .locals 0
    .param p1, "value"    # Lcom/android/contacts/detail/ContactDetailFragment$Listener;

    .prologue
    .line 348
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;

    .line 349
    return-void
.end method

.method public setShowStaticPhoto(Z)V
    .locals 0
    .param p1, "showPhoto"    # Z

    .prologue
    .line 376
    iput-boolean p1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mShowStaticPhoto:Z

    .line 377
    return-void
.end method

.method public setVerticalScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 364
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mVerticalScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 365
    return-void
.end method

.method public showEmptyState()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 383
    invoke-virtual {p0, v0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->setData(Landroid/net/Uri;Lcom/android/contacts/model/Contact;)V

    .line 384
    return-void
.end method
