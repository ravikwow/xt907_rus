.class public Lcom/android/contacts/list/PhoneFavoriteFragment;
.super Landroid/app/Fragment;
.source "PhoneFavoriteFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/list/PhoneFavoriteFragment$ScrollListener;,
        Lcom/android/contacts/list/PhoneFavoriteFragment$ContactsPreferenceChangeListener;,
        Lcom/android/contacts/list/PhoneFavoriteFragment$FilterHeaderClickListener;,
        Lcom/android/contacts/list/PhoneFavoriteFragment$ContactTileAdapterListener;,
        Lcom/android/contacts/list/PhoneFavoriteFragment$AllContactsLoaderListener;,
        Lcom/android/contacts/list/PhoneFavoriteFragment$ContactTileLoaderListener;,
        Lcom/android/contacts/list/PhoneFavoriteFragment$Listener;
    }
.end annotation


# static fields
.field private static LOADER_ID_ALL_CONTACTS:I

.field private static LOADER_ID_CONTACT_TILE:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAccountFilterHeader:Landroid/view/View;

.field private mAccountFilterHeaderContainer:Landroid/widget/FrameLayout;

.field private mAdapter:Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;

.field private mAllContactsAdapter:Lcom/android/contacts/list/PhoneNumberListAdapter;

.field private mAllContactsForceReload:Z

.field private final mAllContactsLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private mAllContactsLoaderStarted:Z

.field private mContactTileAdapter:Lcom/android/contacts/list/ContactTileAdapter;

.field private final mContactTileAdapterListener:Lcom/android/contacts/list/ContactTileView$Listener;

.field private final mContactTileLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private final mContactsPreferenceChangeListener:Lcom/android/contacts/list/PhoneFavoriteFragment$ContactsPreferenceChangeListener;

.field private mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

.field private mEmptyView:Landroid/widget/TextView;

.field private mFilter:Lcom/android/contacts/list/ContactListFilter;

.field private final mFilterHeaderClickListener:Landroid/view/View$OnClickListener;

.field private final mHandler:Landroid/os/Handler;

.field private mListView:Landroid/widget/ListView;

.field private mListener:Lcom/android/contacts/list/PhoneFavoriteFragment$Listener;

.field private mLoadingView:Landroid/view/View;

.field private mOptionsMenuHasFrequents:Z

.field private final mScrollListener:Lcom/android/contacts/list/PhoneFavoriteFragment$ScrollListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const-class v0, Lcom/android/contacts/list/PhoneFavoriteFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/list/PhoneFavoriteFragment;->TAG:Ljava/lang/String;

    .line 71
    const/4 v0, 0x1

    sput v0, Lcom/android/contacts/list/PhoneFavoriteFragment;->LOADER_ID_CONTACT_TILE:I

    .line 72
    const/4 v0, 0x2

    sput v0, Lcom/android/contacts/list/PhoneFavoriteFragment;->LOADER_ID_ALL_CONTACTS:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 224
    new-instance v0, Lcom/android/contacts/list/PhoneFavoriteFragment$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/list/PhoneFavoriteFragment$1;-><init>(Lcom/android/contacts/list/PhoneFavoriteFragment;)V

    iput-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mHandler:Landroid/os/Handler;

    .line 268
    new-instance v0, Lcom/android/contacts/list/PhoneFavoriteFragment$ContactTileAdapterListener;

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/list/PhoneFavoriteFragment$ContactTileAdapterListener;-><init>(Lcom/android/contacts/list/PhoneFavoriteFragment;Lcom/android/contacts/list/PhoneFavoriteFragment$1;)V

    iput-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mContactTileAdapterListener:Lcom/android/contacts/list/ContactTileView$Listener;

    .line 270
    new-instance v0, Lcom/android/contacts/list/PhoneFavoriteFragment$ContactTileLoaderListener;

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/list/PhoneFavoriteFragment$ContactTileLoaderListener;-><init>(Lcom/android/contacts/list/PhoneFavoriteFragment;Lcom/android/contacts/list/PhoneFavoriteFragment$1;)V

    iput-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mContactTileLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 272
    new-instance v0, Lcom/android/contacts/list/PhoneFavoriteFragment$AllContactsLoaderListener;

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/list/PhoneFavoriteFragment$AllContactsLoaderListener;-><init>(Lcom/android/contacts/list/PhoneFavoriteFragment;Lcom/android/contacts/list/PhoneFavoriteFragment$1;)V

    iput-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 274
    new-instance v0, Lcom/android/contacts/list/PhoneFavoriteFragment$FilterHeaderClickListener;

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/list/PhoneFavoriteFragment$FilterHeaderClickListener;-><init>(Lcom/android/contacts/list/PhoneFavoriteFragment;Lcom/android/contacts/list/PhoneFavoriteFragment$1;)V

    iput-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mFilterHeaderClickListener:Landroid/view/View$OnClickListener;

    .line 275
    new-instance v0, Lcom/android/contacts/list/PhoneFavoriteFragment$ContactsPreferenceChangeListener;

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/list/PhoneFavoriteFragment$ContactsPreferenceChangeListener;-><init>(Lcom/android/contacts/list/PhoneFavoriteFragment;Lcom/android/contacts/list/PhoneFavoriteFragment$1;)V

    iput-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mContactsPreferenceChangeListener:Lcom/android/contacts/list/PhoneFavoriteFragment$ContactsPreferenceChangeListener;

    .line 277
    new-instance v0, Lcom/android/contacts/list/PhoneFavoriteFragment$ScrollListener;

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/list/PhoneFavoriteFragment$ScrollListener;-><init>(Lcom/android/contacts/list/PhoneFavoriteFragment;Lcom/android/contacts/list/PhoneFavoriteFragment$1;)V

    iput-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mScrollListener:Lcom/android/contacts/list/PhoneFavoriteFragment$ScrollListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/list/PhoneFavoriteFragment;)Lcom/android/contacts/list/ContactTileAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/PhoneFavoriteFragment;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mContactTileAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/list/PhoneFavoriteFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/PhoneFavoriteFragment;

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsForceReload:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/contacts/list/PhoneFavoriteFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/PhoneFavoriteFragment;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mLoadingView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/contacts/list/PhoneFavoriteFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/list/PhoneFavoriteFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsForceReload:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/contacts/list/PhoneFavoriteFragment;)Lcom/android/contacts/list/PhoneFavoriteFragment$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/PhoneFavoriteFragment;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mListener:Lcom/android/contacts/list/PhoneFavoriteFragment$Listener;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/contacts/list/PhoneFavoriteFragment;)Lcom/android/contacts/list/ContactListFilter;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/PhoneFavoriteFragment;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/contacts/list/PhoneFavoriteFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/PhoneFavoriteFragment;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/contacts/list/PhoneFavoriteFragment;->loadContactsPreferences()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/contacts/list/PhoneFavoriteFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/list/PhoneFavoriteFragment;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/contacts/list/PhoneFavoriteFragment;->requestReloadAllContacts()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/contacts/list/PhoneFavoriteFragment;)Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/PhoneFavoriteFragment;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAdapter:Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/contacts/list/PhoneFavoriteFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/PhoneFavoriteFragment;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/contacts/list/PhoneFavoriteFragment;)Lcom/android/contacts/list/PhoneNumberListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/PhoneFavoriteFragment;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/list/PhoneNumberListAdapter;

    return-object v0
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 64
    sget v0, Lcom/android/contacts/list/PhoneFavoriteFragment;->LOADER_ID_ALL_CONTACTS:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/contacts/list/PhoneFavoriteFragment;)Landroid/app/LoaderManager$LoaderCallbacks;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/PhoneFavoriteFragment;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/contacts/list/PhoneFavoriteFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/PhoneFavoriteFragment;

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsLoaderStarted:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/contacts/list/PhoneFavoriteFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/list/PhoneFavoriteFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsLoaderStarted:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/contacts/list/PhoneFavoriteFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/list/PhoneFavoriteFragment;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/contacts/list/PhoneFavoriteFragment;->updateFilterHeaderView()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/contacts/list/PhoneFavoriteFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/PhoneFavoriteFragment;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAccountFilterHeader:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/contacts/list/PhoneFavoriteFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/list/PhoneFavoriteFragment;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/contacts/list/PhoneFavoriteFragment;->invalidateOptionsMenuIfNeeded()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/contacts/list/PhoneFavoriteFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/list/PhoneFavoriteFragment;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private hasFrequents()Z
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mContactTileAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactTileAdapter;->getNumFrequents()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private invalidateOptionsMenuIfNeeded()V
    .locals 1

    .prologue
    .line 389
    invoke-direct {p0}, Lcom/android/contacts/list/PhoneFavoriteFragment;->isOptionsMenuChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 392
    :cond_0
    return-void
.end method

.method private isOptionsMenuChanged()Z
    .locals 2

    .prologue
    .line 385
    iget-boolean v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mOptionsMenuHasFrequents:Z

    invoke-direct {p0}, Lcom/android/contacts/list/PhoneFavoriteFragment;->hasFrequents()Z

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadContactsPreferences()Z
    .locals 4

    .prologue
    .line 506
    iget-object v3, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/list/PhoneNumberListAdapter;

    if-nez v3, :cond_2

    .line 507
    :cond_0
    const/4 v0, 0x0

    .line 523
    :cond_1
    :goto_0
    return v0

    .line 510
    :cond_2
    const/4 v0, 0x0

    .line 511
    .local v0, "changed":Z
    iget-object v3, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v3}, Lcom/android/contacts/preference/ContactsPreferences;->getDisplayOrder()I

    move-result v1

    .line 512
    .local v1, "currentDisplayOrder":I
    iget-object v3, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/list/PhoneNumberListAdapter;

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactEntryListAdapter;->getContactNameDisplayOrder()I

    move-result v3

    if-eq v3, v1, :cond_3

    .line 513
    iget-object v3, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/list/PhoneNumberListAdapter;

    invoke-virtual {v3, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setContactNameDisplayOrder(I)V

    .line 514
    const/4 v0, 0x1

    .line 517
    :cond_3
    iget-object v3, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v3}, Lcom/android/contacts/preference/ContactsPreferences;->getSortOrder()I

    move-result v2

    .line 518
    .local v2, "currentSortOrder":I
    iget-object v3, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/list/PhoneNumberListAdapter;

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactEntryListAdapter;->getSortOrder()I

    move-result v3

    if-eq v3, v2, :cond_1

    .line 519
    iget-object v3, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/list/PhoneNumberListAdapter;

    invoke-virtual {v3, v2}, Lcom/android/contacts/list/ContactEntryListAdapter;->setSortOrder(I)V

    .line 520
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private requestReloadAllContacts()V
    .locals 4

    .prologue
    .line 538
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/list/PhoneNumberListAdapter;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsLoaderStarted:Z

    if-nez v0, :cond_1

    .line 540
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsForceReload:Z

    .line 549
    :goto_0
    return-void

    .line 546
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/list/PhoneNumberListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->onDataReload()V

    .line 548
    invoke-virtual {p0}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    sget v1, Lcom/android/contacts/list/PhoneFavoriteFragment;->LOADER_ID_ALL_CONTACTS:I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0
.end method

.method private updateFilterHeaderView()V
    .locals 3

    .prologue
    .line 552
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneFavoriteFragment;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v0

    .line 553
    .local v0, "filter":Lcom/android/contacts/list/ContactListFilter;
    iget-object v1, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAccountFilterHeader:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/list/PhoneNumberListAdapter;

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 557
    :cond_0
    :goto_0
    return-void

    .line 556
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAccountFilterHeader:Landroid/view/View;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/android/contacts/util/AccountFilterUtil;->updateAccountFilterTitleForPhone(Landroid/view/View;Lcom/android/contacts/list/ContactListFilter;Z)Z

    goto :goto_0
.end method


# virtual methods
.method public getFilter()Lcom/android/contacts/list/ContactListFilter;
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 495
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 496
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 497
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/list/ContactListFilterController;->getInstance(Landroid/content/Context;)Lcom/android/contacts/list/ContactListFilterController;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/android/contacts/util/AccountFilterUtil;->handleAccountFilterResult(Lcom/android/contacts/list/ContactListFilterController;ILandroid/content/Intent;)V

    .line 503
    :cond_0
    :goto_0
    return-void

    .line 500
    :cond_1
    sget-object v0, Lcom/android/contacts/list/PhoneFavoriteFragment;->TAG:Ljava/lang/String;

    const-string v1, "getActivity() returns null during Fragment#onActivityResult()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 284
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 286
    new-instance v0, Lcom/android/contacts/preference/ContactsPreferences;

    invoke-direct {v0, p1}, Lcom/android/contacts/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    .line 292
    new-instance v0, Lcom/android/contacts/list/ContactTileAdapter;

    iget-object v1, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mContactTileAdapterListener:Lcom/android/contacts/list/ContactTileView$Listener;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0008

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sget-object v3, Lcom/android/contacts/list/ContactTileAdapter$DisplayType;->STREQUENT_PHONE_ONLY:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/android/contacts/list/ContactTileAdapter;-><init>(Landroid/content/Context;Lcom/android/contacts/list/ContactTileView$Listener;ILcom/android/contacts/list/ContactTileAdapter$DisplayType;)V

    iput-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mContactTileAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    .line 295
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mContactTileAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-static {p1}, Lcom/android/contacts/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/ContactPhotoManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactTileAdapter;->setPhotoLoader(Lcom/android/contacts/ContactPhotoManager;)V

    .line 298
    new-instance v0, Lcom/android/contacts/list/PhoneNumberListAdapter;

    invoke-direct {v0, p1}, Lcom/android/contacts/list/PhoneNumberListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/list/PhoneNumberListAdapter;

    .line 299
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/list/PhoneNumberListAdapter;

    invoke-virtual {v0, v5}, Lcom/android/contacts/list/ContactEntryListAdapter;->setDisplayPhotos(Z)V

    .line 300
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/list/PhoneNumberListAdapter;

    invoke-virtual {v0, v5}, Lcom/android/contacts/list/ContactEntryListAdapter;->setQuickContactEnabled(Z)V

    .line 301
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/list/PhoneNumberListAdapter;

    invoke-virtual {v0, v4}, Lcom/android/contacts/list/ContactEntryListAdapter;->setSearchMode(Z)V

    .line 302
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/list/PhoneNumberListAdapter;

    invoke-virtual {v0, v4}, Lcom/android/contacts/list/ContactEntryListAdapter;->setIncludeProfile(Z)V

    .line 303
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/list/PhoneNumberListAdapter;

    invoke-virtual {v0, v4}, Lcom/android/contacts/list/ContactEntryListAdapter;->setSelectionVisible(Z)V

    .line 304
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/list/PhoneNumberListAdapter;

    invoke-virtual {v0, v5}, Lcom/android/contacts/list/ContactEntryListAdapter;->setDarkTheme(Z)V

    .line 305
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/list/PhoneNumberListAdapter;

    invoke-static {p1}, Lcom/android/contacts/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/ContactPhotoManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setPhotoLoader(Lcom/android/contacts/ContactPhotoManager;)V

    .line 307
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/list/PhoneNumberListAdapter;

    invoke-virtual {v0, v4, v4}, Lcom/android/common/widget/CompositeCursorAdapter;->setHasHeader(IZ)V

    .line 309
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/list/PhoneNumberListAdapter;

    invoke-virtual {v0, v5}, Lcom/android/contacts/widget/IndexerListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 311
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/list/PhoneNumberListAdapter;

    invoke-virtual {v0, v4}, Lcom/android/contacts/widget/PinnedHeaderListAdapter;->setPinnedPartitionHeadersEnabled(Z)V

    .line 313
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/list/PhoneNumberListAdapter;

    sget-object v1, Lcom/android/contacts/list/ContactListItemView$PhotoPosition;->LEFT:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/PhoneNumberListAdapter;->setPhotoPosition(Lcom/android/contacts/list/ContactListItemView$PhotoPosition;)V

    .line 317
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/list/PhoneNumberListAdapter;

    invoke-virtual {v0, v5}, Lcom/android/contacts/list/PhoneNumberListAdapter;->setUseCallableUri(Z)V

    .line 319
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/list/PhoneNumberListAdapter;

    iget-object v1, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v1}, Lcom/android/contacts/preference/ContactsPreferences;->getDisplayOrder()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setContactNameDisplayOrder(I)V

    .line 320
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/list/PhoneNumberListAdapter;

    iget-object v1, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v1}, Lcom/android/contacts/preference/ContactsPreferences;->getSortOrder()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setSortOrder(I)V

    .line 321
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 326
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 327
    if-eqz p1, :cond_0

    .line 328
    const-string v0, "filter"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListFilter;

    iput-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    .line 330
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/list/PhoneNumberListAdapter;

    iget-object v1, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 334
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 335
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 396
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 397
    const v0, 0x7f100010

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 398
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    .line 346
    const v0, 0x7f04008e

    invoke-virtual {p1, v0, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 349
    .local v6, "listLayout":Landroid/view/View;
    const v0, 0x7f0700a2

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mListView:Landroid/widget/ListView;

    .line 350
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 351
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 352
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 353
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setVerticalScrollbarPosition(I)V

    .line 354
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mListView:Landroid/widget/ListView;

    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/view/View;->setScrollBarStyle(I)V

    .line 357
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAccountFilterHeaderContainer:Landroid/widget/FrameLayout;

    .line 358
    const v0, 0x7f040001

    iget-object v1, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, v0, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAccountFilterHeader:Landroid/view/View;

    .line 360
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAccountFilterHeader:Landroid/view/View;

    iget-object v1, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mFilterHeaderClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 361
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAccountFilterHeaderContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAccountFilterHeader:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 363
    const v0, 0x7f040090

    iget-object v1, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, v0, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mLoadingView:Landroid/view/View;

    .line 365
    new-instance v0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mContactTileAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    iget-object v3, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAccountFilterHeaderContainer:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/list/PhoneNumberListAdapter;

    iget-object v5, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mLoadingView:Landroid/view/View;

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;-><init>(Landroid/content/Context;Lcom/android/contacts/list/ContactTileAdapter;Landroid/view/View;Lcom/android/contacts/list/ContactEntryListAdapter;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAdapter:Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;

    .line 369
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAdapter:Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 371
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mScrollListener:Lcom/android/contacts/list/PhoneFavoriteFragment$ScrollListener;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 372
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v7}, Landroid/widget/AbsListView;->setFastScrollEnabled(Z)V

    .line 373
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v7}, Landroid/widget/AbsListView;->setFastScrollAlwaysVisible(Z)V

    .line 375
    const v0, 0x7f0700a3

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mEmptyView:Landroid/widget/TextView;

    .line 376
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mEmptyView:Landroid/widget/TextView;

    const v1, 0x7f0c0089

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 377
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    .line 379
    invoke-direct {p0}, Lcom/android/contacts/list/PhoneFavoriteFragment;->updateFilterHeaderView()V

    .line 381
    return-object v6
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    .line 588
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 589
    invoke-virtual {p0}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    sget v2, Lcom/android/contacts/list/PhoneFavoriteFragment;->LOADER_ID_ALL_CONTACTS:I

    invoke-virtual {v1, v2}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 590
    invoke-virtual {p0}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    sget v2, Lcom/android/contacts/list/PhoneFavoriteFragment;->LOADER_ID_CONTACT_TILE:I

    invoke-virtual {v1, v2}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 591
    iget-object v1, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mContactTileAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactTileAdapter;->getContactCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 592
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 593
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 595
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
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
    .line 481
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mContactTileAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactTileAdapter;->getCount()I

    move-result v0

    .line 482
    .local v0, "contactTileAdapterCount":I
    if-gt p3, v0, :cond_1

    .line 483
    sget-object v2, Lcom/android/contacts/list/PhoneFavoriteFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onItemClick() event for unexpected position. The position "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is before \"all\" section. Ignored."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    :cond_0
    :goto_0
    return-void

    .line 486
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mContactTileAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactTileAdapter;->getCount()I

    move-result v2

    sub-int v2, p3, v2

    add-int/lit8 v1, v2, -0x1

    .line 487
    .local v1, "localPosition":I
    iget-object v2, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mListener:Lcom/android/contacts/list/PhoneFavoriteFragment$Listener;

    if-eqz v2, :cond_0

    .line 488
    iget-object v2, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mListener:Lcom/android/contacts/list/PhoneFavoriteFragment$Listener;

    iget-object v3, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/list/PhoneNumberListAdapter;

    invoke-virtual {v3, v1}, Lcom/android/contacts/list/PhoneNumberListAdapter;->getDataUri(I)Landroid/net/Uri;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/contacts/list/PhoneFavoriteFragment$Listener;->onContactSelected(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 413
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    move v1, v2

    .line 433
    :goto_0
    return v1

    .line 419
    :sswitch_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->show(Landroid/app/FragmentManager;Z)V

    goto :goto_0

    .line 422
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.settings.SYNC_SETTINGS"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 423
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "authorities"

    new-array v4, v1, [Ljava/lang/String;

    const-string v5, "com.android.contacts"

    aput-object v5, v4, v2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 426
    const/high16 v2, 0x80000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 427
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 430
    .end local v0    # "intent":Landroid/content/Intent;
    :sswitch_2
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/dialog/ClearFrequentsDialog;->show(Landroid/app/FragmentManager;)V

    goto :goto_0

    .line 413
    :sswitch_data_0
    .sparse-switch
        0x7f070185 -> :sswitch_0
        0x7f070186 -> :sswitch_1
        0x7f0701b0 -> :sswitch_2
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 402
    const v1, 0x7f0701b0

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 403
    .local v0, "clearFrequents":Landroid/view/MenuItem;
    invoke-direct {p0}, Lcom/android/contacts/list/PhoneFavoriteFragment;->hasFrequents()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mOptionsMenuHasFrequents:Z

    .line 404
    iget-boolean v1, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mOptionsMenuHasFrequents:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 405
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 339
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 340
    const-string v0, "filter"

    iget-object v1, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 341
    return-void
.end method

.method public onStart()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 438
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 440
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    iget-object v1, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mContactsPreferenceChangeListener:Lcom/android/contacts/list/PhoneFavoriteFragment$ContactsPreferenceChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/contacts/preference/ContactsPreferences;->registerChangeListener(Lcom/android/contacts/preference/ContactsPreferences$ChangeListener;)V

    .line 442
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAdapter:Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->register()V

    .line 446
    invoke-direct {p0}, Lcom/android/contacts/list/PhoneFavoriteFragment;->loadContactsPreferences()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 447
    iput-boolean v4, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsForceReload:Z

    .line 453
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    sget v1, Lcom/android/contacts/list/PhoneFavoriteFragment;->LOADER_ID_CONTACT_TILE:I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mContactTileLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 458
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mLoadingView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 459
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 460
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 464
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 465
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v0}, Lcom/android/contacts/preference/ContactsPreferences;->unregisterChangeListener()V

    .line 467
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAdapter:Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;

    if-eqz v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAdapter:Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;->unregister()V

    .line 471
    :cond_0
    return-void
.end method

.method public setFilter(Lcom/android/contacts/list/ContactListFilter;)V
    .locals 2
    .param p1, "filter"    # Lcom/android/contacts/list/ContactListFilter;

    .prologue
    .line 564
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/ContactListFilter;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 581
    :cond_1
    :goto_0
    return-void

    .line 574
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    .line 576
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/list/PhoneNumberListAdapter;

    if-eqz v0, :cond_1

    .line 577
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/list/PhoneNumberListAdapter;

    iget-object v1, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 578
    invoke-direct {p0}, Lcom/android/contacts/list/PhoneFavoriteFragment;->requestReloadAllContacts()V

    .line 579
    invoke-direct {p0}, Lcom/android/contacts/list/PhoneFavoriteFragment;->updateFilterHeaderView()V

    goto :goto_0
.end method

.method public setListener(Lcom/android/contacts/list/PhoneFavoriteFragment$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/contacts/list/PhoneFavoriteFragment$Listener;

    .prologue
    .line 584
    iput-object p1, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mListener:Lcom/android/contacts/list/PhoneFavoriteFragment$Listener;

    .line 585
    return-void
.end method
