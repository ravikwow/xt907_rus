.class public Lcom/android/contacts/activities/PeopleActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "PeopleActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Lcom/android/contacts/activities/ActionBarAdapter$Listener;
.implements Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;
.implements Lcom/android/contacts/list/ProviderStatusWatcher$ProviderStatusListener;
.implements Lcom/android/contacts/util/DialogManager$DialogShowingViewActivity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/activities/PeopleActivity$GroupDetailFragmentListener;,
        Lcom/android/contacts/activities/PeopleActivity$GroupBrowserActionListener;,
        Lcom/android/contacts/activities/PeopleActivity$StrequentContactListFragmentListener;,
        Lcom/android/contacts/activities/PeopleActivity$ContactsUnavailableFragmentListener;,
        Lcom/android/contacts/activities/PeopleActivity$ContactDetailFragmentListener;,
        Lcom/android/contacts/activities/PeopleActivity$ContactDetailLoaderFragmentListener;,
        Lcom/android/contacts/activities/PeopleActivity$ContactBrowserActionListener;,
        Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;,
        Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;
    }
.end annotation


# static fields
.field private static final sNextInstanceId:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

.field private mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

.field private mBrowserView:Landroid/view/View;

.field private mContactDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

.field private mContactDetailLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;

.field private mContactDetailLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

.field private final mContactDetailLoaderFragmentListener:Lcom/android/contacts/activities/PeopleActivity$ContactDetailLoaderFragmentListener;

.field private mContactDetailsView:Lcom/android/contacts/widget/TransitionAnimationView;

.field private mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

.field private mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

.field private mCurrentFilterIsValid:Z

.field private final mDialogManager:Lcom/android/contacts/util/DialogManager;

.field private mEnableDebugMenuOptions:Z

.field private mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

.field private mFavoritesFragmentListener:Lcom/android/contacts/list/ContactTileListFragment$Listener;

.field private mFavoritesView:Landroid/view/View;

.field private mFragmentInitialized:Z

.field private mFrequentFragment:Lcom/android/contacts/list/ContactTileFrequentFragment;

.field private mGroupDetailFragment:Lcom/android/contacts/group/GroupDetailFragment;

.field private final mGroupDetailFragmentListener:Lcom/android/contacts/activities/PeopleActivity$GroupDetailFragmentListener;

.field private mGroupDetailsView:Lcom/android/contacts/widget/TransitionAnimationView;

.field private mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

.field private final mHandler:Landroid/os/Handler;

.field private final mInstanceId:I

.field private mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

.field private mIsRecreatedInstance:Z

.field private mOptionsMenuContactsAvailable:Z

.field private mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

.field private mProviderStatusWatcher:Lcom/android/contacts/list/ProviderStatusWatcher;

.field private mRequest:Lcom/android/contacts/list/ContactsRequest;

.field private mRunnable:Ljava/lang/Runnable;

.field private mTabPager:Landroid/support/v4/view/ViewPager;

.field private mTabPagerAdapter:Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;

.field private final mTabPagerListener:Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 225
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/android/contacts/activities/PeopleActivity;->sNextInstanceId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 227
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    .line 145
    new-instance v0, Lcom/android/contacts/util/DialogManager;

    invoke-direct {v0, p0}, Lcom/android/contacts/util/DialogManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mDialogManager:Lcom/android/contacts/util/DialogManager;

    .line 155
    new-instance v0, Lcom/android/contacts/activities/PeopleActivity$ContactDetailLoaderFragmentListener;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/PeopleActivity$ContactDetailLoaderFragmentListener;-><init>(Lcom/android/contacts/activities/PeopleActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailLoaderFragmentListener:Lcom/android/contacts/activities/PeopleActivity$ContactDetailLoaderFragmentListener;

    .line 159
    new-instance v0, Lcom/android/contacts/activities/PeopleActivity$GroupDetailFragmentListener;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/PeopleActivity$GroupDetailFragmentListener;-><init>(Lcom/android/contacts/activities/PeopleActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragmentListener:Lcom/android/contacts/activities/PeopleActivity$GroupDetailFragmentListener;

    .line 162
    new-instance v0, Lcom/android/contacts/activities/PeopleActivity$StrequentContactListFragmentListener;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/PeopleActivity$StrequentContactListFragmentListener;-><init>(Lcom/android/contacts/activities/PeopleActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragmentListener:Lcom/android/contacts/list/ContactTileListFragment$Listener;

    .line 189
    new-instance v0, Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;-><init>(Lcom/android/contacts/activities/PeopleActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPagerListener:Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;

    .line 195
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mHandler:Landroid/os/Handler;

    .line 228
    sget-object v0, Lcom/android/contacts/activities/PeopleActivity;->sNextInstanceId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mInstanceId:I

    .line 229
    new-instance v0, Lcom/android/contacts/list/ContactsIntentResolver;

    invoke-direct {v0, p0}, Lcom/android/contacts/list/ContactsIntentResolver;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

    .line 230
    invoke-static {p0}, Lcom/android/contacts/list/ProviderStatusWatcher;->getInstance(Landroid/content/Context;)Lcom/android/contacts/list/ProviderStatusWatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatusWatcher:Lcom/android/contacts/list/ProviderStatusWatcher;

    .line 231
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/PeopleActivity;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPagerAdapter:Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/activities/ActionBarAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/PeopleActivity;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/contacts/activities/PeopleActivity;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/PeopleActivity;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/contacts/activities/PeopleActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/activities/PeopleActivity;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/contacts/activities/PeopleActivity;->mRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/contacts/activities/PeopleActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/PeopleActivity;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/contacts/activities/PeopleActivity;Landroid/net/Uri;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/activities/PeopleActivity;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/PeopleActivity;->setupGroupDetailFragment(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/contacts/activities/PeopleActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/activities/PeopleActivity;
    .param p1, "x1"    # I

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/PeopleActivity;->showEmptyStateForTab(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/contacts/activities/PeopleActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/PeopleActivity;

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->areGroupWritableAccountsAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/group/GroupBrowseListFragment;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/PeopleActivity;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/list/DefaultContactBrowseListFragment;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/PeopleActivity;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/list/ContactTileListFragment;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/PeopleActivity;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/contacts/activities/PeopleActivity;Landroid/net/Uri;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/activities/PeopleActivity;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/PeopleActivity;->setupContactDetailFragment(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/list/ContactListFilterController;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/PeopleActivity;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/detail/ContactDetailLayoutController;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/PeopleActivity;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;

    return-object v0
.end method

.method private areContactWritableAccountsAvailable()Z
    .locals 1

    .prologue
    .line 245
    invoke-static {p0}, Lcom/android/contacts/ContactsUtils;->areContactWritableAccountsAvailable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private areGroupWritableAccountsAvailable()Z
    .locals 1

    .prologue
    .line 249
    invoke-static {p0}, Lcom/android/contacts/ContactsUtils;->areGroupWritableAccountsAvailable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private configureContactListFragment()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 1017
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactListFilterController;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 1019
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    .line 1020
    .local v0, "useTwoPane":Z
    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    if-eqz v0, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v3, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setVerticalScrollbarPosition(I)V

    .line 1024
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setSelectionVisible(Z)V

    .line 1025
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    if-nez v0, :cond_1

    :goto_1
    invoke-virtual {v1, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setQuickContactEnabled(Z)V

    .line 1026
    return-void

    .line 1020
    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    .line 1025
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private configureContactListFragmentForRequest()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 994
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->getContactUri()Landroid/net/Uri;

    move-result-object v0

    .line 995
    .local v0, "contactUri":Landroid/net/Uri;
    if-eqz v0, :cond_1

    .line 999
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1000
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v1, v3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setSelectionRequired(Z)V

    .line 1002
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setSelectedContactUri(Landroid/net/Uri;)V

    .line 1005
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactListFilterController;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 1006
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/activities/ActionBarAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/contacts/activities/PeopleActivity;->setQueryTextToFragment(Ljava/lang/String;)V

    .line 1008
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->isDirectorySearchEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1009
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v1, v3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setDirectorySearchMode(I)V

    .line 1013
    :goto_0
    return-void

    .line 1011
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setDirectorySearchMode(I)V

    goto :goto_0
.end method

.method private configureFragments(Z)V
    .locals 7
    .param p1, "fromRequest"    # Z

    .prologue
    .line 562
    if-eqz p1, :cond_3

    .line 563
    const/4 v2, 0x0

    .line 564
    .local v2, "filter":Lcom/android/contacts/list/ContactListFilter;
    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v5}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v0

    .line 565
    .local v0, "actionCode":I
    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v5}, Lcom/android/contacts/list/ContactsRequest;->isSearchMode()Z

    move-result v3

    .line 567
    .local v3, "searchMode":Z
    sparse-switch v0, :sswitch_data_0

    .line 598
    const/4 v4, -0x1

    .line 601
    .local v4, "tabToOpen":I
    :goto_0
    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 602
    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v5, v4}, Lcom/android/contacts/activities/ActionBarAdapter;->setCurrentTab(I)V

    .line 605
    :cond_0
    if-eqz v2, :cond_1

    .line 606
    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    const/4 v6, 0x0

    invoke-virtual {v5, v2, v6}, Lcom/android/contacts/list/ContactListFilterController;->setContactListFilter(Lcom/android/contacts/list/ContactListFilter;Z)V

    .line 607
    const/4 v3, 0x0

    .line 610
    :cond_1
    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v5}, Lcom/android/contacts/list/ContactsRequest;->getContactUri()Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 611
    const/4 v3, 0x0

    .line 614
    :cond_2
    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v5, v3}, Lcom/android/contacts/activities/ActionBarAdapter;->setSearchMode(Z)V

    .line 615
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->configureContactListFragmentForRequest()V

    .line 618
    .end local v0    # "actionCode":I
    .end local v2    # "filter":Lcom/android/contacts/list/ContactListFilter;
    .end local v3    # "searchMode":Z
    .end local v4    # "tabToOpen":I
    :cond_3
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->configureContactListFragment()V

    .line 619
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->configureGroupListFragment()V

    .line 621
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->invalidateOptionsMenuIfNeeded()V

    .line 622
    return-void

    .line 569
    .restart local v0    # "actionCode":I
    .restart local v2    # "filter":Lcom/android/contacts/list/ContactListFilter;
    .restart local v3    # "searchMode":Z
    :sswitch_0
    const/4 v5, -0x2

    invoke-static {v5}, Lcom/android/contacts/list/ContactListFilter;->createFilterWithType(I)Lcom/android/contacts/list/ContactListFilter;

    move-result-object v2

    .line 571
    const/4 v4, 0x1

    .line 572
    .restart local v4    # "tabToOpen":I
    goto :goto_0

    .line 574
    .end local v4    # "tabToOpen":I
    :sswitch_1
    const/4 v5, -0x5

    invoke-static {v5}, Lcom/android/contacts/list/ContactListFilter;->createFilterWithType(I)Lcom/android/contacts/list/ContactListFilter;

    move-result-object v2

    .line 576
    const/4 v4, 0x1

    .line 577
    .restart local v4    # "tabToOpen":I
    goto :goto_0

    .line 582
    .end local v4    # "tabToOpen":I
    :sswitch_2
    const/4 v4, 0x2

    .line 583
    .restart local v4    # "tabToOpen":I
    goto :goto_0

    .line 587
    .end local v4    # "tabToOpen":I
    :sswitch_3
    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v5}, Lcom/android/contacts/detail/ContactDetailFragment;->getUri()Landroid/net/Uri;

    move-result-object v1

    .line 588
    .local v1, "currentlyLoadedContactUri":Landroid/net/Uri;
    if-eqz v1, :cond_4

    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v5}, Lcom/android/contacts/list/ContactsRequest;->getContactUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 590
    iget-object v5, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailsView:Lcom/android/contacts/widget/TransitionAnimationView;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/contacts/widget/TransitionAnimationView;->setMaskVisibility(Z)V

    .line 592
    :cond_4
    const/4 v4, 0x1

    .line 593
    .restart local v4    # "tabToOpen":I
    goto :goto_0

    .line 595
    .end local v1    # "currentlyLoadedContactUri":Landroid/net/Uri;
    .end local v4    # "tabToOpen":I
    :sswitch_4
    const/4 v4, 0x0

    .line 596
    .restart local v4    # "tabToOpen":I
    goto :goto_0

    .line 567
    nop

    :sswitch_data_0
    .sparse-switch
        0xf -> :sswitch_0
        0x11 -> :sswitch_1
        0x14 -> :sswitch_4
        0x1e -> :sswitch_2
        0x28 -> :sswitch_2
        0x32 -> :sswitch_2
        0x8c -> :sswitch_3
    .end sparse-switch
.end method

.method private configureGroupListFragment()V
    .locals 3

    .prologue
    .line 1029
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    .line 1030
    .local v0, "useTwoPane":Z
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->setVerticalScrollbarPosition(I)V

    .line 1034
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-virtual {v1, v0}, Lcom/android/contacts/group/GroupBrowseListFragment;->setSelectionVisible(Z)V

    .line 1035
    return-void

    .line 1030
    :cond_0
    const/4 v1, 0x2

    goto :goto_0
.end method

.method private createNewGroup()V
    .locals 2

    .prologue
    .line 1632
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/activities/GroupEditorActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1633
    const-string v1, "android.intent.action.INSERT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1634
    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/activities/PeopleActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1635
    return-void
.end method

.method private createViewsAndFragments(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    const/4 v13, 0x1

    const v2, 0x7f060104

    .line 358
    const v0, 0x7f040072

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->setContentView(I)V

    .line 360
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v10

    .line 363
    .local v10, "fragmentManager":Landroid/app/FragmentManager;
    invoke-virtual {v10}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v12

    .line 366
    .local v12, "transaction":Landroid/app/FragmentTransaction;
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v11

    .line 367
    .local v11, "isUsingTwoPanes":Z
    if-eqz v11, :cond_4

    .line 368
    const v0, 0x7f06010f

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->getFragment(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactTileListFragment;

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    .line 369
    const v0, 0x7f060109

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->getFragment(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    .line 370
    const v0, 0x7f06010a

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->getFragment(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/group/GroupBrowseListFragment;

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    .line 405
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragmentListener:Lcom/android/contacts/list/ContactTileListFragment$Listener;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactTileListFragment;->setListener(Lcom/android/contacts/list/ContactTileListFragment$Listener;)V

    .line 407
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    new-instance v1, Lcom/android/contacts/activities/PeopleActivity$ContactBrowserActionListener;

    invoke-direct {v1, p0}, Lcom/android/contacts/activities/PeopleActivity$ContactBrowserActionListener;-><init>(Lcom/android/contacts/activities/PeopleActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setOnContactListActionListener(Lcom/android/contacts/list/OnContactBrowserActionListener;)V

    .line 409
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    new-instance v1, Lcom/android/contacts/activities/PeopleActivity$GroupBrowserActionListener;

    invoke-direct {v1, p0}, Lcom/android/contacts/activities/PeopleActivity$GroupBrowserActionListener;-><init>(Lcom/android/contacts/activities/PeopleActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->setListener(Lcom/android/contacts/group/GroupBrowseListFragment$OnGroupBrowserActionListener;)V

    .line 413
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-virtual {v12, v0}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 414
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v12, v0}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 415
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-virtual {v12, v0}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 417
    if-eqz v11, :cond_3

    .line 421
    const v0, 0x7f06010e

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->getView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesView:Landroid/view/View;

    .line 422
    const v0, 0x7f06010b

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/widget/TransitionAnimationView;

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailsView:Lcom/android/contacts/widget/TransitionAnimationView;

    .line 423
    const v0, 0x7f06010d

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/widget/TransitionAnimationView;

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailsView:Lcom/android/contacts/widget/TransitionAnimationView;

    .line 424
    const v0, 0x7f060108

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->getView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mBrowserView:Landroid/view/View;

    .line 427
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanesInFavorites(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 428
    const v0, 0x7f060110

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->getFragment(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactTileFrequentFragment;

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFrequentFragment:Lcom/android/contacts/list/ContactTileFrequentFragment;

    .line 429
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFrequentFragment:Lcom/android/contacts/list/ContactTileFrequentFragment;

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragmentListener:Lcom/android/contacts/list/ContactTileListFragment$Listener;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactTileFrequentFragment;->setListener(Lcom/android/contacts/list/ContactTileListFragment$Listener;)V

    .line 430
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFrequentFragment:Lcom/android/contacts/list/ContactTileFrequentFragment;

    sget-object v1, Lcom/android/contacts/list/ContactTileAdapter$DisplayType;->FREQUENT_ONLY:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactTileFrequentFragment;->setDisplayType(Lcom/android/contacts/list/ContactTileAdapter$DisplayType;)V

    .line 431
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFrequentFragment:Lcom/android/contacts/list/ContactTileFrequentFragment;

    invoke-virtual {v0, v13}, Lcom/android/contacts/list/ContactTileFrequentFragment;->enableQuickContact(Z)V

    .line 434
    :cond_1
    const v0, 0x7f06010c

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->getFragment(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/ContactLoaderFragment;

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    .line 435
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailLoaderFragmentListener:Lcom/android/contacts/activities/PeopleActivity$ContactDetailLoaderFragmentListener;

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/ContactLoaderFragment;->setListener(Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;)V

    .line 437
    const v0, 0x7f0600ea

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->getFragment(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/group/GroupDetailFragment;

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/android/contacts/group/GroupDetailFragment;

    .line 438
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/android/contacts/group/GroupDetailFragment;

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragmentListener:Lcom/android/contacts/activities/PeopleActivity$GroupDetailFragmentListener;

    invoke-virtual {v0, v1}, Lcom/android/contacts/group/GroupDetailFragment;->setListener(Lcom/android/contacts/group/GroupDetailFragment$Listener;)V

    .line 439
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/android/contacts/group/GroupDetailFragment;

    invoke-virtual {v0, v13}, Lcom/android/contacts/group/GroupDetailFragment;->setQuickContact(Z)V

    .line 441
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    if-eqz v0, :cond_2

    .line 442
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v12, v0}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 444
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/android/contacts/group/GroupDetailFragment;

    invoke-virtual {v12, v0}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 447
    new-instance v0, Lcom/android/contacts/detail/ContactDetailLayoutController;

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailsView:Lcom/android/contacts/widget/TransitionAnimationView;

    const v1, 0x7f06005d

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/PeopleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/android/contacts/activities/PeopleActivity$ContactDetailFragmentListener;

    invoke-direct {v6, p0}, Lcom/android/contacts/activities/PeopleActivity$ContactDetailFragmentListener;-><init>(Lcom/android/contacts/activities/PeopleActivity;)V

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/contacts/detail/ContactDetailLayoutController;-><init>(Landroid/app/Activity;Landroid/os/Bundle;Landroid/app/FragmentManager;Lcom/android/contacts/widget/TransitionAnimationView;Landroid/view/View;Lcom/android/contacts/detail/ContactDetailFragment$Listener;)V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;

    .line 452
    :cond_3
    invoke-virtual {v12}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 453
    invoke-virtual {v10}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 456
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanesInFavorites(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 457
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-virtual {v0, v13}, Lcom/android/contacts/list/ContactTileListFragment;->enableQuickContact(Z)V

    .line 458
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    sget-object v1, Lcom/android/contacts/list/ContactTileAdapter$DisplayType;->STARRED_ONLY:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactTileListFragment;->setDisplayType(Lcom/android/contacts/list/ContactTileAdapter$DisplayType;)V

    .line 467
    :goto_1
    new-instance v0, Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-direct {v0, p0, p0, v1, v11}, Lcom/android/contacts/activities/ActionBarAdapter;-><init>(Landroid/content/Context;Lcom/android/contacts/activities/ActionBarAdapter$Listener;Landroid/app/ActionBar;Z)V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    .line 468
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v0, p1, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->initialize(Landroid/os/Bundle;Lcom/android/contacts/list/ContactsRequest;)V

    .line 470
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->invalidateOptionsMenuIfNeeded()V

    .line 471
    return-void

    .line 372
    :cond_4
    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/PeopleActivity;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPager:Landroid/support/v4/view/ViewPager;

    .line 373
    new-instance v0, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;-><init>(Lcom/android/contacts/activities/PeopleActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPagerAdapter:Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;

    .line 374
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPagerAdapter:Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 375
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPagerListener:Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 377
    const-string v8, "tab-pager-favorite"

    .line 378
    .local v8, "FAVORITE_TAG":Ljava/lang/String;
    const-string v7, "tab-pager-all"

    .line 379
    .local v7, "ALL_TAG":Ljava/lang/String;
    const-string v9, "tab-pager-groups"

    .line 387
    .local v9, "GROUPS_TAG":Ljava/lang/String;
    const-string v0, "tab-pager-favorite"

    invoke-virtual {v10, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactTileListFragment;

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    .line 389
    const-string v0, "tab-pager-all"

    invoke-virtual {v10, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    .line 391
    const-string v0, "tab-pager-groups"

    invoke-virtual {v10, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/group/GroupBrowseListFragment;

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    .line 394
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    if-nez v0, :cond_0

    .line 395
    new-instance v0, Lcom/android/contacts/list/ContactTileListFragment;

    invoke-direct {v0}, Lcom/android/contacts/list/ContactTileListFragment;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    .line 396
    new-instance v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-direct {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    .line 397
    new-instance v0, Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-direct {v0}, Lcom/android/contacts/group/GroupBrowseListFragment;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    .line 399
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    const-string v1, "tab-pager-favorite"

    invoke-virtual {v12, v2, v0, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 400
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    const-string v1, "tab-pager-all"

    invoke-virtual {v12, v2, v0, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 401
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    const-string v1, "tab-pager-groups"

    invoke-virtual {v12, v2, v0, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    goto/16 :goto_0

    .line 462
    .end local v7    # "ALL_TAG":Ljava/lang/String;
    .end local v8    # "FAVORITE_TAG":Ljava/lang/String;
    .end local v9    # "GROUPS_TAG":Ljava/lang/String;
    :cond_5
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-virtual {v0, v11}, Lcom/android/contacts/list/ContactTileListFragment;->enableQuickContact(Z)V

    .line 463
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    sget-object v1, Lcom/android/contacts/list/ContactTileAdapter$DisplayType;->STREQUENT:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactTileListFragment;->setDisplayType(Lcom/android/contacts/list/ContactTileAdapter$DisplayType;)V

    goto/16 :goto_1
.end method

.method private deleteSelection()Z
    .locals 1

    .prologue
    .line 1761
    const/4 v0, 0x0

    return v0
.end method

.method private hasFrequents()Z
    .locals 1

    .prologue
    .line 1525
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanesInFavorites(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1526
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFrequentFragment:Lcom/android/contacts/list/ContactTileFrequentFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactTileFrequentFragment;->hasFrequents()Z

    move-result v0

    .line 1528
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactTileListFragment;->hasFrequents()Z

    move-result v0

    goto :goto_0
.end method

.method private invalidateOptionsMenuIfNeeded()V
    .locals 1

    .prologue
    .line 1425
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->isOptionsMenuChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1426
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->invalidateOptionsMenu()V

    .line 1428
    :cond_0
    return-void
.end method

.method private makeMenuItemVisible(Landroid/view/Menu;IZ)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "itemId"    # I
    .param p3, "visible"    # Z

    .prologue
    .line 1533
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1534
    .local v0, "item":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 1535
    invoke-interface {v0, p3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1537
    :cond_0
    return-void
.end method

.method private processIntent(Z)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 329
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactsIntentResolver;->resolveIntent(Landroid/content/Intent;)Lcom/android/contacts/list/ContactsRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    .line 330
    const-string v1, "PeopleActivity"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 331
    const-string v1, "PeopleActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " processIntent: forNewIntent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " intent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " request="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->isValid()Z

    move-result v1

    if-nez v1, :cond_1

    .line 335
    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->setResult(I)V

    .line 354
    :goto_0
    return v0

    .line 339
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->getRedirectIntent()Landroid/content/Intent;

    move-result-object v1

    .line 340
    if-eqz v1, :cond_2

    .line 342
    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/PeopleActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 346
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v1

    const/16 v2, 0x8c

    if-ne v1, v2, :cond_3

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 348
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/contacts/activities/ContactDetailActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 349
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 350
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactsRequest;->getContactUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 351
    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/PeopleActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 354
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setBackupAssistant(Landroid/view/MenuItem;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 1809
    if-nez p1, :cond_1

    .line 1842
    :cond_0
    :goto_0
    return v0

    .line 1813
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1814
    const v2, 0x7f0b000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1815
    const v3, 0x7f0b000b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1817
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1818
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1819
    const/high16 v2, 0x30000000

    invoke-virtual {v4, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1820
    invoke-virtual {v3, v4, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 1822
    if-eqz v2, :cond_0

    .line 1824
    :try_start_0
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1825
    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 1827
    if-eqz v5, :cond_0

    iget-boolean v5, v5, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v5, :cond_0

    .line 1828
    invoke-interface {p1, v4}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 1830
    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    .line 1831
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v2, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1832
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1833
    if-eqz v1, :cond_0

    .line 1834
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1835
    const/4 v0, 0x1

    goto :goto_0

    .line 1838
    :catch_0
    move-exception v1

    .line 1839
    const-string v2, "PeopleActivity"

    const-string v3, "Can not get the resource of BUA package"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private setQueryTextToFragment(Ljava/lang/String;)V
    .locals 3
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 989
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v1, p1, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setQueryString(Ljava/lang/String;Z)V

    .line 990
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isSearchMode()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setVisibleScrollbarEnabled(Z)V

    .line 991
    return-void

    .line 990
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setupContactDetailFragment(Landroid/net/Uri;)V
    .locals 1
    .param p1, "contactLookupUri"    # Landroid/net/Uri;

    .prologue
    .line 636
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    invoke-virtual {v0, p1}, Lcom/android/contacts/detail/ContactLoaderFragment;->loadUri(Landroid/net/Uri;)V

    .line 637
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->invalidateOptionsMenuIfNeeded()V

    .line 638
    return-void
.end method

.method private setupGroupDetailFragment(Landroid/net/Uri;)V
    .locals 2
    .param p1, "groupUri"    # Landroid/net/Uri;

    .prologue
    .line 642
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/android/contacts/group/GroupDetailFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/android/contacts/group/GroupDetailFragment;

    invoke-virtual {v0}, Lcom/android/contacts/group/GroupDetailFragment;->getGroupUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/android/contacts/group/GroupDetailFragment;

    invoke-virtual {v0}, Lcom/android/contacts/group/GroupDetailFragment;->getGroupUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/contacts/util/UriUtils;->areEqual(Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 644
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailsView:Lcom/android/contacts/widget/TransitionAnimationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/widget/TransitionAnimationView;->startMaskTransition(Z)V

    .line 646
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/android/contacts/group/GroupDetailFragment;

    invoke-virtual {v0, p1}, Lcom/android/contacts/group/GroupDetailFragment;->loadGroup(Landroid/net/Uri;)V

    .line 647
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->invalidateOptionsMenuIfNeeded()V

    .line 648
    return-void
.end method

.method private shareMultipleContacts(Landroid/content/Intent;)V
    .locals 7

    .prologue
    const-wide/16 v3, -0x1

    const/4 v0, 0x0

    .line 1848
    const-string v1, "com.android.contacts.SelectionResultIncluded"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 1849
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1852
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1853
    const-string v1, "com.android.contacts.SelectionResultSessionId"

    invoke-virtual {p1, v1, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 1854
    cmp-long v3, v1, v3

    if-nez v3, :cond_1

    .line 1855
    const-string v3, "PeopleActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error in the sessionId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1856
    const v1, 0x7f0b023b

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1896
    :cond_0
    :goto_0
    return-void

    .line 1859
    :cond_1
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_MULTI_VCARD_URI:Landroid/net/Uri;

    const-string v3, "0"

    invoke-static {v0, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1862
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v3, "multiple_picker_session_id"

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 1892
    :goto_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1893
    const-string v2, "text/x-vcard"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1894
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1895
    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/PeopleActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1865
    :cond_2
    const-string v1, "com.android.contacts.SelectedContacts"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1866
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    move v1, v0

    .line 1871
    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 1872
    if-eqz v1, :cond_3

    .line 1873
    const/16 v0, 0x3a

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1875
    :cond_3
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 1876
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    .line 1877
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 1878
    const/4 v6, 0x4

    if-lt v5, v6, :cond_4

    .line 1879
    const/4 v0, 0x2

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1880
    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1881
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1885
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 1886
    goto :goto_2

    .line 1883
    :cond_4
    const-string v4, "PeopleActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error in the lookup uri: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1887
    :cond_5
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_MULTI_VCARD_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_1
.end method

.method private showEmptyStateForTab(I)V
    .locals 4
    .param p1, "tab"    # I

    .prologue
    const/4 v0, -0x1

    .line 789
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    if-eqz v1, :cond_0

    .line 790
    packed-switch p1, :pswitch_data_0

    .line 804
    :cond_0
    :goto_0
    return-void

    .line 792
    :pswitch_0
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    const v2, 0x7f0b0067

    invoke-virtual {v1, v2, v0}, Lcom/android/contacts/list/ContactsUnavailableFragment;->setMessageText(II)V

    goto :goto_0

    .line 796
    :pswitch_1
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    const v2, 0x7f0b0058

    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->areGroupWritableAccountsAvailable()Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {v1, v2, v0}, Lcom/android/contacts/list/ContactsUnavailableFragment;->setMessageText(II)V

    goto :goto_0

    :cond_1
    const v0, 0x7f0b0059

    goto :goto_1

    .line 800
    :pswitch_2
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    const v2, 0x7f0b0057

    invoke-virtual {v1, v2, v0}, Lcom/android/contacts/list/ContactsUnavailableFragment;->setMessageText(II)V

    goto :goto_0

    .line 790
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private updateDebugOptionsVisibility(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 684
    iget-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mEnableDebugMenuOptions:Z

    if-eq v0, p1, :cond_0

    .line 685
    iput-boolean p1, p0, Lcom/android/contacts/activities/PeopleActivity;->mEnableDebugMenuOptions:Z

    .line 686
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->invalidateOptionsMenu()V

    .line 688
    :cond_0
    return-void
.end method

.method private updateFragmentsVisibility()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 695
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v4}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v2

    .line 698
    .local v2, "tab":I
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 699
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v4}, Lcom/android/contacts/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 700
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPagerAdapter:Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;

    invoke-virtual {v4, v5}, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->setSearchMode(Z)V

    .line 709
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->invalidateOptionsMenu()V

    .line 710
    invoke-direct {p0, v2}, Lcom/android/contacts/activities/PeopleActivity;->showEmptyStateForTab(I)V

    .line 711
    if-nez v2, :cond_1

    .line 712
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->areGroupWritableAccountsAvailable()Z

    move-result v7

    if-nez v7, :cond_4

    :goto_1
    invoke-virtual {v4, v5}, Lcom/android/contacts/group/GroupBrowseListFragment;->setAddAccountsVisibility(Z)V

    .line 786
    :cond_1
    :goto_2
    return-void

    .line 703
    :cond_2
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPagerAdapter:Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;

    invoke-virtual {v4}, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->isSearchMode()Z

    move-result v3

    .line 704
    .local v3, "wasSearchMode":Z
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPagerAdapter:Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;

    invoke-virtual {v4, v6}, Lcom/android/contacts/activities/PeopleActivity$TabPagerAdapter;->setSearchMode(Z)V

    .line 705
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v4

    if-eq v4, v2, :cond_0

    .line 706
    iget-object v7, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPager:Landroid/support/v4/view/ViewPager;

    if-nez v3, :cond_3

    move v4, v5

    :goto_3
    invoke-virtual {v7, v2, v4}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    :cond_3
    move v4, v6

    goto :goto_3

    .end local v3    # "wasSearchMode":Z
    :cond_4
    move v5, v6

    .line 712
    goto :goto_1

    .line 720
    :cond_5
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v4}, Lcom/android/contacts/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 721
    const/4 v2, 0x1

    .line 723
    :cond_6
    packed-switch v2, :pswitch_data_0

    .line 744
    :goto_4
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 745
    .local v0, "fragmentManager":Landroid/app/FragmentManager;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 749
    .local v1, "ft":Landroid/app/FragmentTransaction;
    packed-switch v2, :pswitch_data_1

    .line 778
    :goto_5
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    .line 779
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 780
    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 785
    :cond_7
    invoke-direct {p0, v2}, Lcom/android/contacts/activities/PeopleActivity;->showEmptyStateForTab(I)V

    goto :goto_2

    .line 725
    .end local v0    # "fragmentManager":Landroid/app/FragmentManager;
    .end local v1    # "ft":Landroid/app/FragmentTransaction;
    :pswitch_0
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesView:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 726
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mBrowserView:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 727
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailsView:Lcom/android/contacts/widget/TransitionAnimationView;

    invoke-virtual {v4, v7}, Lcom/android/contacts/widget/TransitionAnimationView;->setVisibility(I)V

    .line 728
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailsView:Lcom/android/contacts/widget/TransitionAnimationView;

    invoke-virtual {v4, v7}, Lcom/android/contacts/widget/TransitionAnimationView;->setVisibility(I)V

    goto :goto_4

    .line 731
    :pswitch_1
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesView:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 732
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mBrowserView:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 733
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailsView:Lcom/android/contacts/widget/TransitionAnimationView;

    invoke-virtual {v4, v6}, Lcom/android/contacts/widget/TransitionAnimationView;->setVisibility(I)V

    .line 734
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailsView:Lcom/android/contacts/widget/TransitionAnimationView;

    invoke-virtual {v4, v7}, Lcom/android/contacts/widget/TransitionAnimationView;->setVisibility(I)V

    .line 735
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->areGroupWritableAccountsAvailable()Z

    move-result v7

    if-nez v7, :cond_8

    :goto_6
    invoke-virtual {v4, v5}, Lcom/android/contacts/group/GroupBrowseListFragment;->setAddAccountsVisibility(Z)V

    goto :goto_4

    :cond_8
    move v5, v6

    goto :goto_6

    .line 738
    :pswitch_2
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesView:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 739
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mBrowserView:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 740
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailsView:Lcom/android/contacts/widget/TransitionAnimationView;

    invoke-virtual {v4, v6}, Lcom/android/contacts/widget/TransitionAnimationView;->setVisibility(I)V

    .line 741
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailsView:Lcom/android/contacts/widget/TransitionAnimationView;

    invoke-virtual {v4, v7}, Lcom/android/contacts/widget/TransitionAnimationView;->setVisibility(I)V

    goto :goto_4

    .line 751
    .restart local v0    # "fragmentManager":Landroid/app/FragmentManager;
    .restart local v1    # "ft":Landroid/app/FragmentTransaction;
    :pswitch_3
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-static {v1, v4}, Lcom/android/contacts/activities/PeopleActivity;->showFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 752
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mFrequentFragment:Lcom/android/contacts/list/ContactTileFrequentFragment;

    invoke-static {v1, v4}, Lcom/android/contacts/activities/PeopleActivity;->showFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 753
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-static {v1, v4}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 754
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    invoke-static {v1, v4}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 755
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-static {v1, v4}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 756
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-static {v1, v4}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 757
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/android/contacts/group/GroupDetailFragment;

    invoke-static {v1, v4}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    goto :goto_5

    .line 760
    :pswitch_4
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-static {v1, v4}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 761
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mFrequentFragment:Lcom/android/contacts/list/ContactTileFrequentFragment;

    invoke-static {v1, v4}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 762
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-static {v1, v4}, Lcom/android/contacts/activities/PeopleActivity;->showFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 763
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    invoke-static {v1, v4}, Lcom/android/contacts/activities/PeopleActivity;->showFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 764
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-static {v1, v4}, Lcom/android/contacts/activities/PeopleActivity;->showFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 765
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-static {v1, v4}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 766
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/android/contacts/group/GroupDetailFragment;

    invoke-static {v1, v4}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    goto/16 :goto_5

    .line 769
    :pswitch_5
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mFavoritesFragment:Lcom/android/contacts/list/ContactTileListFragment;

    invoke-static {v1, v4}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 770
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mFrequentFragment:Lcom/android/contacts/list/ContactTileFrequentFragment;

    invoke-static {v1, v4}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 771
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-static {v1, v4}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 772
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    invoke-static {v1, v4}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 773
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-static {v1, v4}, Lcom/android/contacts/activities/PeopleActivity;->hideFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 774
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-static {v1, v4}, Lcom/android/contacts/activities/PeopleActivity;->showFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 775
    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/android/contacts/group/GroupDetailFragment;

    invoke-static {v1, v4}, Lcom/android/contacts/activities/PeopleActivity;->showFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    goto/16 :goto_5

    .line 723
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch

    .line 749
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private updateViewConfiguration(Z)V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 1043
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatusWatcher:Lcom/android/contacts/list/ProviderStatusWatcher;

    invoke-virtual {v0}, Lcom/android/contacts/list/ProviderStatusWatcher;->getProviderStatus()Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    move-result-object v0

    .line 1044
    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/android/contacts/list/ProviderStatusWatcher$Status;->status:I

    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    iget v2, v2, Lcom/android/contacts/list/ProviderStatusWatcher$Status;->status:I

    if-ne v1, v2, :cond_0

    .line 1104
    :goto_0
    return-void

    .line 1046
    :cond_0
    iput-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    .line 1048
    const v0, 0x7f060105

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1049
    const v1, 0x7f060107

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/PeopleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1051
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    iget v2, v2, Lcom/android/contacts/list/ProviderStatusWatcher$Status;->status:I

    if-nez v2, :cond_4

    .line 1053
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1054
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1

    .line 1055
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v5}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 1058
    :cond_1
    if-eqz v1, :cond_2

    .line 1059
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1061
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    if-eqz v0, :cond_3

    .line 1062
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setEnabled(Z)V

    .line 1103
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->invalidateOptionsMenuIfNeeded()V

    goto :goto_0

    .line 1068
    :cond_4
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->areContactWritableAccountsAvailable()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {p0}, Lcom/android/contacts/util/AccountPromptUtils;->shouldShowAccountPrompt(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1070
    invoke-static {p0}, Lcom/android/contacts/util/AccountPromptUtils;->launchAccountPrompt(Landroid/app/Activity;)V

    goto :goto_0

    .line 1076
    :cond_5
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    if-eqz v2, :cond_6

    .line 1077
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v2, v5}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setEnabled(Z)V

    .line 1079
    :cond_6
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    if-nez v2, :cond_7

    .line 1080
    new-instance v2, Lcom/android/contacts/list/ContactsUnavailableFragment;

    invoke-direct {v2}, Lcom/android/contacts/list/ContactsUnavailableFragment;-><init>()V

    iput-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    .line 1081
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    new-instance v3, Lcom/android/contacts/activities/PeopleActivity$ContactsUnavailableFragmentListener;

    invoke-direct {v3, p0}, Lcom/android/contacts/activities/PeopleActivity$ContactsUnavailableFragmentListener;-><init>(Lcom/android/contacts/activities/PeopleActivity;)V

    invoke-virtual {v2, v3}, Lcom/android/contacts/list/ContactsUnavailableFragment;->setOnContactsUnavailableActionListener(Lcom/android/contacts/list/OnContactsUnavailableActionListener;)V

    .line 1083
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    const v3, 0x7f060106

    iget-object v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    invoke-virtual {v2, v3, v4}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1087
    :cond_7
    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    iget-object v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    invoke-virtual {v2, v3}, Lcom/android/contacts/list/ContactsUnavailableFragment;->updateStatus(Lcom/android/contacts/list/ProviderStatusWatcher$Status;)V

    .line 1091
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1092
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_8

    .line 1093
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v6}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 1096
    :cond_8
    if-eqz v1, :cond_9

    .line 1097
    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1100
    :cond_9
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->showEmptyStateForTab(I)V

    goto :goto_1
.end method


# virtual methods
.method public areContactsAvailable()Z
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    iget v0, v0, Lcom/android/contacts/list/ProviderStatusWatcher$Status;->status:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDialogManager()Lcom/android/contacts/util/DialogManager;
    .locals 1

    .prologue
    .line 1794
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mDialogManager:Lcom/android/contacts/util/DialogManager;

    return-object v0
.end method

.method public isOptionsMenuChanged()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1431
    iget-boolean v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mOptionsMenuContactsAvailable:Z

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->areContactsAvailable()Z

    move-result v2

    if-eq v1, v2, :cond_1

    .line 1448
    :cond_0
    :goto_0
    return v0

    .line 1435
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isOptionsMenuChanged()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1439
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    invoke-virtual {v1}, Lcom/android/contacts/detail/ContactLoaderFragment;->isOptionsMenuChanged()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1444
    :cond_3
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/android/contacts/group/GroupDetailFragment;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupDetailFragment:Lcom/android/contacts/group/GroupDetailFragment;

    invoke-virtual {v1}, Lcom/android/contacts/group/GroupDetailFragment;->isOptionsMenuChanged()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1448
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAction(I)V
    .locals 4
    .param p1, "action"    # I

    .prologue
    .line 655
    packed-switch p1, :pswitch_data_0

    .line 674
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unkonwn ActionBarAdapter action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 658
    :pswitch_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/contacts/activities/PeopleActivity;->configureFragments(Z)V

    .line 659
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->updateFragmentsVisibility()V

    .line 660
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->invalidateOptionsMenu()V

    .line 676
    :goto_0
    return-void

    .line 663
    :pswitch_1
    const-string v1, ""

    invoke-direct {p0, v1}, Lcom/android/contacts/activities/PeopleActivity;->setQueryTextToFragment(Ljava/lang/String;)V

    .line 664
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->updateFragmentsVisibility()V

    .line 665
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->invalidateOptionsMenu()V

    goto :goto_0

    .line 668
    :pswitch_2
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/activities/ActionBarAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v0

    .line 669
    .local v0, "queryString":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->setQueryTextToFragment(Ljava/lang/String;)V

    .line 670
    const-string v1, "debug debug!"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/contacts/activities/PeopleActivity;->updateDebugOptionsVisibility(Z)V

    goto :goto_0

    .line 655
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    const/4 v0, -0x1

    .line 1645
    sparse-switch p1, :sswitch_data_0

    .line 1701
    :cond_0
    :goto_0
    return-void

    .line 1647
    :sswitch_0
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    invoke-static {v0, p2, p3}, Lcom/android/contacts/util/AccountFilterUtil;->handleAccountFilterResult(Lcom/android/contacts/list/ContactListFilterController;ILandroid/content/Intent;)V

    goto :goto_0

    .line 1654
    :sswitch_1
    if-ne p2, v0, :cond_0

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1655
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    const/16 v1, 0x8c

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 1656
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setSelectionRequired(Z)V

    .line 1657
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setSelectedContactUri(Landroid/net/Uri;)V

    .line 1659
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    if-eqz v0, :cond_1

    .line 1660
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->clearFocusOnSearchView()V

    .line 1663
    :cond_1
    iput-boolean v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mCurrentFilterIsValid:Z

    goto :goto_0

    .line 1670
    :sswitch_2
    if-ne p2, v0, :cond_0

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1671
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactsRequest;->setActionCode(I)V

    .line 1672
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mGroupsFragment:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->setSelectedUri(Landroid/net/Uri;)V

    goto :goto_0

    .line 1679
    :sswitch_3
    if-ne p2, v0, :cond_0

    .line 1680
    invoke-direct {p0, p3}, Lcom/android/contacts/activities/PeopleActivity;->shareMultipleContacts(Landroid/content/Intent;)V

    goto :goto_0

    .line 1689
    :sswitch_4
    if-ne p2, v0, :cond_0

    .line 1690
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0, p3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->onPickerResult(Landroid/content/Intent;)V

    goto :goto_0

    .line 1645
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_1
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x5 -> :sswitch_2
        0x6 -> :sswitch_0
        0x32 -> :sswitch_3
    .end sparse-switch
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 2
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 267
    instance-of v0, p1, Lcom/android/contacts/detail/ContactDetailFragment;

    if-eqz v0, :cond_1

    .line 268
    check-cast p1, Lcom/android/contacts/detail/ContactDetailFragment;

    .end local p1    # "fragment":Landroid/app/Fragment;
    iput-object p1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailFragment:Lcom/android/contacts/detail/ContactDetailFragment;

    .line 274
    :cond_0
    :goto_0
    return-void

    .line 269
    .restart local p1    # "fragment":Landroid/app/Fragment;
    :cond_1
    instance-of v0, p1, Lcom/android/contacts/list/ContactsUnavailableFragment;

    if-eqz v0, :cond_0

    .line 270
    check-cast p1, Lcom/android/contacts/list/ContactsUnavailableFragment;

    .end local p1    # "fragment":Landroid/app/Fragment;
    iput-object p1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    .line 271
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactsUnavailableFragment:Lcom/android/contacts/list/ContactsUnavailableFragment;

    new-instance v1, Lcom/android/contacts/activities/PeopleActivity$ContactsUnavailableFragmentListener;

    invoke-direct {v1, p0}, Lcom/android/contacts/activities/PeopleActivity$ContactsUnavailableFragmentListener;-><init>(Lcom/android/contacts/activities/PeopleActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactsUnavailableFragment;->setOnContactsUnavailableActionListener(Lcom/android/contacts/list/OnContactsUnavailableActionListener;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 1742
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1743
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->setSearchMode(Z)V

    .line 1747
    :goto_0
    return-void

    .line 1745
    :cond_0
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onContactListFilterChanged()V
    .locals 2

    .prologue
    .line 626
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 633
    :cond_0
    :goto_0
    return-void

    .line 630
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactListFilterController;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 632
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->invalidateOptionsMenuIfNeeded()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x3

    const/4 v0, 0x0

    .line 278
    const-string v1, "ContactsPerf"

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 279
    const-string v1, "ContactsPerf"

    const-string v2, "PeopleActivity.onCreate start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_0
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 283
    invoke-direct {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->processIntent(Z)Z

    move-result v1

    if-nez v1, :cond_2

    .line 284
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->finish()V

    .line 299
    :cond_1
    :goto_0
    return-void

    .line 288
    :cond_2
    invoke-static {p0}, Lcom/android/contacts/list/ContactListFilterController;->getInstance(Landroid/content/Context;)Lcom/android/contacts/list/ContactListFilterController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    .line 289
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactListFilterController;->checkFilterValidity(Z)V

    .line 290
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    invoke-virtual {v1, p0}, Lcom/android/contacts/list/ContactListFilterController;->addListener(Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;)V

    .line 292
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatusWatcher:Lcom/android/contacts/list/ProviderStatusWatcher;

    invoke-virtual {v1, p0}, Lcom/android/contacts/list/ProviderStatusWatcher;->addListener(Lcom/android/contacts/list/ProviderStatusWatcher$ProviderStatusListener;)V

    .line 294
    if-eqz p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    iput-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsRecreatedInstance:Z

    .line 295
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/PeopleActivity;->createViewsAndFragments(Landroid/os/Bundle;)V

    .line 296
    const-string v0, "ContactsPerf"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 297
    const-string v0, "ContactsPerf"

    const-string v1, "PeopleActivity.onCreate finish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 1398
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->areContactsAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1400
    const/4 v0, 0x0

    .line 1421
    :goto_0
    return v0

    .line 1402
    :cond_0
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 1404
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 1405
    const v1, 0x7f10000a

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1421
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 543
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatusWatcher:Lcom/android/contacts/list/ProviderStatusWatcher;

    invoke-virtual {v0, p0}, Lcom/android/contacts/list/ProviderStatusWatcher;->removeListener(Lcom/android/contacts/list/ProviderStatusWatcher$ProviderStatusListener;)V

    .line 547
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->setListener(Lcom/android/contacts/activities/ActionBarAdapter$Listener;)V

    .line 550
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    if-eqz v0, :cond_1

    .line 551
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    invoke-virtual {v0, p0}, Lcom/android/contacts/list/ContactListFilterController;->removeListener(Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;)V

    .line 555
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 558
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onDestroy()V

    .line 559
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x1

    .line 1706
    packed-switch p1, :pswitch_data_0

    .line 1722
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v1

    .line 1723
    if-eqz v1, :cond_1

    const/high16 v2, -0x80000000

    and-int/2addr v2, v1

    if-nez v2, :cond_1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1727
    new-instance v2, Ljava/lang/String;

    new-array v3, v0, [I

    aput v1, v3, v4

    invoke-direct {v2, v3, v4, v0}, Ljava/lang/String;-><init>([III)V

    .line 1728
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1729
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v1, v2}, Lcom/android/contacts/activities/ActionBarAdapter;->setQueryString(Ljava/lang/String;)V

    .line 1730
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v1, v0}, Lcom/android/contacts/activities/ActionBarAdapter;->setSearchMode(Z)V

    .line 1737
    :cond_0
    :goto_0
    return v0

    .line 1715
    :pswitch_0
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->deleteSelection()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1737
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/contacts/ContactsActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 1706
    nop

    :pswitch_data_0
    .packed-switch 0x43
        :pswitch_0
    .end packed-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    .line 303
    invoke-virtual {p0, p1}, Lcom/android/contacts/activities/PeopleActivity;->setIntent(Landroid/content/Intent;)V

    .line 304
    invoke-direct {p0, v3}, Lcom/android/contacts/activities/PeopleActivity;->processIntent(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 305
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->finish()V

    .line 316
    :goto_0
    return-void

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/activities/ActionBarAdapter;->initialize(Landroid/os/Bundle;Lcom/android/contacts/list/ContactsRequest;)V

    .line 310
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListFilterController;->checkFilterValidity(Z)V

    .line 311
    iput-boolean v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mCurrentFilterIsValid:Z

    .line 314
    invoke-direct {p0, v3}, Lcom/android/contacts/activities/PeopleActivity;->configureFragments(Z)V

    .line 315
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->invalidateOptionsMenuIfNeeded()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    .prologue
    const/high16 v6, 0x80000

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1541
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    move v0, v1

    .line 1628
    :cond_0
    :goto_0
    return v0

    .line 1544
    :sswitch_0
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/activities/ActionBarAdapter;->isUpShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1546
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->onBackPressed()V

    goto :goto_0

    .line 1551
    :sswitch_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/contacts/preference/ContactsPreferenceActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1555
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1110007

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 1557
    if-nez v2, :cond_1

    .line 1558
    const-string v2, ":android:show_fragment"

    const-class v3, Lcom/android/contacts/preference/DisplayOptionsPreferenceFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1560
    const-string v2, ":android:show_fragment_title"

    const v3, 0x7f0b01a5

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1563
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/PeopleActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1567
    :sswitch_2
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactListFilterController;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/android/contacts/util/AccountFilterUtil;->startAccountFilterActivityForResult(Landroid/app/Activity;ILcom/android/contacts/list/ContactListFilter;)V

    goto :goto_0

    .line 1573
    :sswitch_3
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->onSearchRequested()Z

    goto :goto_0

    .line 1577
    :sswitch_4
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.INSERT"

    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1580
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1581
    const-string v2, "finishActivityOnSaveCompleted"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1584
    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Lcom/android/contacts/activities/PeopleActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1588
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/PeopleActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1593
    :sswitch_5
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->createNewGroup()V

    goto :goto_0

    .line 1597
    :sswitch_6
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->areContactsAvailable()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->show(Landroid/app/FragmentManager;Z)V

    goto :goto_0

    .line 1601
    :sswitch_7
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/dialog/ClearFrequentsDialog;->show(Landroid/app/FragmentManager;)V

    goto :goto_0

    .line 1605
    :sswitch_8
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.SYNC_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1606
    const-string v3, "authorities"

    new-array v4, v0, [Ljava/lang/String;

    const-string v5, "com.android.contacts"

    aput-object v5, v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1609
    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1610
    invoke-virtual {p0, v2}, Lcom/android/contacts/activities/PeopleActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1614
    :sswitch_9
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.providers.contacts.DUMP_DATABASE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1615
    invoke-virtual {v1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1616
    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/PeopleActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1621
    :sswitch_a
    new-instance v1, Landroid/content/Intent;

    const-string v2, "motorola.intent.ACTION_MULTIPLE_PICK"

    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1622
    const-string v2, "for_export_only"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1623
    const/16 v2, 0x32

    invoke-virtual {p0, v1, v2}, Lcom/android/contacts/activities/PeopleActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1541
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f060169 -> :sswitch_3
        0x7f06016a -> :sswitch_4
        0x7f06016b -> :sswitch_5
        0x7f06016c -> :sswitch_2
        0x7f06016d -> :sswitch_6
        0x7f06016e -> :sswitch_7
        0x7f06016f -> :sswitch_8
        0x7f060170 -> :sswitch_1
        0x7f060171 -> :sswitch_a
        0x7f060173 -> :sswitch_9
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 512
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mOptionsMenuContactsAvailable:Z

    .line 513
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatusWatcher:Lcom/android/contacts/list/ProviderStatusWatcher;

    invoke-virtual {v0}, Lcom/android/contacts/list/ProviderStatusWatcher;->stop()V

    .line 514
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onPause()V

    .line 515
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 10

    .prologue
    const v9, 0x7f060172

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1453
    invoke-virtual {p0}, Lcom/android/contacts/activities/PeopleActivity;->areContactsAvailable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mOptionsMenuContactsAvailable:Z

    .line 1454
    iget-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mOptionsMenuContactsAvailable:Z

    if-nez v0, :cond_0

    .line 1517
    :goto_0
    return v2

    .line 1459
    :cond_0
    const v0, 0x7f06016a

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1460
    const v3, 0x7f06016c

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 1462
    const v4, 0x7f06016b

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 1464
    const v5, 0x7f06016e

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 1465
    const v6, 0x7f060167

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 1467
    iget-object v7, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v7}, Lcom/android/contacts/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v7

    .line 1468
    if-eqz v7, :cond_2

    .line 1469
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1470
    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1471
    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1472
    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1473
    invoke-interface {v6, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1502
    :goto_1
    if-nez v7, :cond_4

    move v0, v1

    .line 1503
    :goto_2
    const v3, 0x7f060169

    invoke-direct {p0, p1, v3, v0}, Lcom/android/contacts/activities/PeopleActivity;->makeMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 1504
    const v3, 0x7f06016d

    invoke-direct {p0, p1, v3, v0}, Lcom/android/contacts/activities/PeopleActivity;->makeMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 1505
    const v3, 0x7f06016f

    invoke-direct {p0, p1, v3, v0}, Lcom/android/contacts/activities/PeopleActivity;->makeMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 1506
    const v4, 0x7f060170

    if-eqz v0, :cond_5

    invoke-static {p0}, Lcom/android/contacts/preference/ContactsPreferenceActivity;->isEmpty(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_5

    move v3, v1

    :goto_3
    invoke-direct {p0, p1, v4, v3}, Lcom/android/contacts/activities/PeopleActivity;->makeMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 1510
    const v3, 0x7f060173

    iget-boolean v4, p0, Lcom/android/contacts/activities/PeopleActivity;->mEnableDebugMenuOptions:Z

    invoke-direct {p0, p1, v3, v4}, Lcom/android/contacts/activities/PeopleActivity;->makeMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 1513
    if-eqz v0, :cond_1

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->setBackupAssistant(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v2, v1

    :cond_1
    invoke-direct {p0, p1, v9, v2}, Lcom/android/contacts/activities/PeopleActivity;->makeMenuItemVisible(Landroid/view/Menu;IZ)V

    move v2, v1

    .line 1517
    goto :goto_0

    .line 1475
    :cond_2
    iget-object v8, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v8}, Lcom/android/contacts/activities/ActionBarAdapter;->getCurrentTab()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 1500
    :goto_4
    const v0, 0x7f0b0007

    invoke-static {p0, v6, v0}, Lcom/android/contacts/util/HelpUtils;->prepareHelpMenuItem(Landroid/content/Context;Landroid/view/MenuItem;I)Z

    goto :goto_1

    .line 1477
    :pswitch_0
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1478
    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1479
    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1480
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->hasFrequents()Z

    move-result v0

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_4

    .line 1483
    :pswitch_1
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1484
    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1485
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1486
    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_4

    .line 1490
    :pswitch_2
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->areGroupWritableAccountsAvailable()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1491
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1495
    :goto_5
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1496
    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1497
    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_4

    .line 1493
    :cond_3
    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_5

    :cond_4
    move v0, v2

    .line 1502
    goto/16 :goto_2

    :cond_5
    move v3, v2

    .line 1506
    goto :goto_3

    .line 1475
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onProviderStatusChange()V
    .locals 1

    .prologue
    .line 1039
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->updateViewConfiguration(Z)V

    .line 1040
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1783
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1787
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1788
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ActionBarAdapter;->setFocusOnSearchView()V

    .line 1790
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 519
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onResume()V

    .line 521
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mProviderStatusWatcher:Lcom/android/contacts/list/ProviderStatusWatcher;

    invoke-virtual {v0}, Lcom/android/contacts/list/ProviderStatusWatcher;->start()V

    .line 522
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->updateViewConfiguration(Z)V

    .line 526
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0, p0}, Lcom/android/contacts/activities/ActionBarAdapter;->setListener(Lcom/android/contacts/activities/ActionBarAdapter$Listener;)V

    .line 527
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    .line 528
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPagerListener:Lcom/android/contacts/activities/PeopleActivity$TabPagerListener;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 532
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->updateFragmentsVisibility()V

    .line 533
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 1766
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1767
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/activities/ActionBarAdapter;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1768
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;

    if-eqz v0, :cond_0

    .line 1769
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactDetailLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;

    invoke-virtual {v0, p1}, Lcom/android/contacts/detail/ContactDetailLayoutController;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1775
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->setListener(Lcom/android/contacts/activities/ActionBarAdapter$Listener;)V

    .line 1776
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1

    .line 1777
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mTabPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 1779
    :cond_1
    return-void
.end method

.method public onSearchRequested()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1639
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mActionBarAdapter:Lcom/android/contacts/activities/ActionBarAdapter;

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/ActionBarAdapter;->setSearchMode(Z)V

    .line 1640
    return v1
.end method

.method public onSelectedTabChanged()V
    .locals 0

    .prologue
    .line 680
    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;->updateFragmentsVisibility()V

    .line 681
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 475
    iget-boolean v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mFragmentInitialized:Z

    if-nez v1, :cond_2

    .line 476
    iput-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mFragmentInitialized:Z

    .line 492
    iget-boolean v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsRecreatedInstance:Z

    if-nez v1, :cond_1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/contacts/activities/PeopleActivity;->configureFragments(Z)V

    .line 507
    :cond_0
    :goto_1
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onStart()V

    .line 508
    return-void

    .line 492
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 493
    :cond_2
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mCurrentFilterIsValid:Z

    if-nez v1, :cond_0

    .line 503
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    iget-object v2, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/contacts/list/ContactListFilterController;->setContactListFilter(Lcom/android/contacts/list/ContactListFilter;Z)V

    .line 504
    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactListFilterController;->checkFilterValidity(Z)V

    .line 505
    iput-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mCurrentFilterIsValid:Z

    goto :goto_1
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 537
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onStop()V

    .line 538
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mCurrentFilterIsValid:Z

    .line 539
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 236
    const-string v0, "%s@%d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/contacts/activities/PeopleActivity;->mInstanceId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
