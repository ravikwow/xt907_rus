.class public Lcom/android/contacts/activities/DialtactsActivity;
.super Lcom/android/contacts/activities/TransactionSafeActivity;
.source "DialtactsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;,
        Lcom/android/contacts/activities/DialtactsActivity$ViewPagerAdapter;,
        Lcom/android/contacts/activities/DialtactsActivity$ViewPagerVisibilityListener;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field public static final DEBUG:Z

.field private static final VDBG:Z


# instance fields
.field private mCallLogFragment:Lcom/android/contacts/calllog/CallLogFragment;

.field private mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

.field private final mContactListFilterListener:Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;

.field private mDialerShowLabelFtrFlag:Z

.field private mDialpadFragment:Lcom/android/contacts/dialpad/DialpadFragment;

.field mDuringSwipe:Z

.field private final mFilterOptionClickListener:Landroid/view/View$OnClickListener;

.field private mFilterOptionsMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mFilterText:Ljava/lang/String;

.field private final mFirstLayoutListener:Landroid/view/View$OnLayoutChangeListener;

.field private mInSearchUi:Z

.field private mLastManuallySelectedFragment:I

.field private mMenuButton:Landroid/view/View;

.field private final mPageChangeListener:Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;

.field private mPhoneFavoriteFragment:Lcom/android/contacts/list/PhoneFavoriteFragment;

.field private final mPhoneFavoriteListener:Lcom/android/contacts/list/PhoneFavoriteFragment$Listener;

.field private final mPhoneNumberPickerActionListener:Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;

.field private final mPhoneSearchCloseListener:Landroid/widget/SearchView$OnCloseListener;

.field private final mPhoneSearchQueryTextListener:Landroid/widget/SearchView$OnQueryTextListener;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mSearchButton:Landroid/view/View;

.field private mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

.field private mSearchMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mSearchView:Landroid/widget/SearchView;

.field private final mTabListener:Landroid/app/ActionBar$TabListener;

.field mUserTabClick:Z

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 89
    sget-boolean v0, Lcom/android/contacts/ContactsUtils;->DBG:Z

    sput-boolean v0, Lcom/android/contacts/activities/DialtactsActivity;->DBG:Z

    .line 90
    sget-boolean v0, Lcom/android/contacts/ContactsUtils;->VDBG:Z

    sput-boolean v0, Lcom/android/contacts/activities/DialtactsActivity;->VDBG:Z

    .line 91
    sget-boolean v0, Lcom/android/contacts/activities/DialtactsActivity;->DBG:Z

    sput-boolean v0, Lcom/android/contacts/activities/DialtactsActivity;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 82
    invoke-direct {p0}, Lcom/android/contacts/activities/TransactionSafeActivity;-><init>()V

    .line 181
    iput-boolean v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDuringSwipe:Z

    .line 189
    iput-boolean v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mUserTabClick:Z

    .line 290
    new-instance v0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;-><init>(Lcom/android/contacts/activities/DialtactsActivity;Lcom/android/contacts/activities/DialtactsActivity$1;)V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPageChangeListener:Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;

    .line 298
    new-instance v0, Lcom/android/contacts/activities/DialtactsActivity$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/DialtactsActivity$1;-><init>(Lcom/android/contacts/activities/DialtactsActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactListFilterListener:Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;

    .line 322
    new-instance v0, Lcom/android/contacts/activities/DialtactsActivity$2;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/DialtactsActivity$2;-><init>(Lcom/android/contacts/activities/DialtactsActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mTabListener:Landroid/app/ActionBar$TabListener;

    .line 379
    new-instance v0, Lcom/android/contacts/activities/DialtactsActivity$3;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/DialtactsActivity$3;-><init>(Lcom/android/contacts/activities/DialtactsActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mFilterOptionClickListener:Landroid/view/View$OnClickListener;

    .line 401
    new-instance v0, Lcom/android/contacts/activities/DialtactsActivity$4;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/DialtactsActivity$4;-><init>(Lcom/android/contacts/activities/DialtactsActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mFilterOptionsMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 412
    new-instance v0, Lcom/android/contacts/activities/DialtactsActivity$5;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/DialtactsActivity$5;-><init>(Lcom/android/contacts/activities/DialtactsActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 425
    new-instance v0, Lcom/android/contacts/activities/DialtactsActivity$6;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/DialtactsActivity$6;-><init>(Lcom/android/contacts/activities/DialtactsActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPhoneNumberPickerActionListener:Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;

    .line 450
    new-instance v0, Lcom/android/contacts/activities/DialtactsActivity$7;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/DialtactsActivity$7;-><init>(Lcom/android/contacts/activities/DialtactsActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPhoneSearchQueryTextListener:Landroid/widget/SearchView$OnQueryTextListener;

    .line 479
    new-instance v0, Lcom/android/contacts/activities/DialtactsActivity$8;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/DialtactsActivity$8;-><init>(Lcom/android/contacts/activities/DialtactsActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPhoneSearchCloseListener:Landroid/widget/SearchView$OnCloseListener;

    .line 490
    new-instance v0, Lcom/android/contacts/activities/DialtactsActivity$9;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/DialtactsActivity$9;-><init>(Lcom/android/contacts/activities/DialtactsActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mFirstLayoutListener:Landroid/view/View$OnLayoutChangeListener;

    .line 983
    new-instance v0, Lcom/android/contacts/activities/DialtactsActivity$11;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/DialtactsActivity$11;-><init>(Lcom/android/contacts/activities/DialtactsActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPhoneFavoriteListener:Lcom/android/contacts/list/PhoneFavoriteFragment$Listener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/android/contacts/dialpad/DialpadFragment;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/DialtactsActivity;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/android/contacts/dialpad/DialpadFragment;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/DialtactsActivity;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/view/MenuItem$OnMenuItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/DialtactsActivity;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mFilterOptionsMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/contacts/activities/DialtactsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/activities/DialtactsActivity;

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/contacts/activities/DialtactsActivity;->enterSearchUi()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/contacts/activities/DialtactsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/activities/DialtactsActivity;

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/contacts/activities/DialtactsActivity;->exitSearchUi()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/contacts/activities/DialtactsActivity;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/activities/DialtactsActivity;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/DialtactsActivity;->hideInputMethod(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/contacts/activities/DialtactsActivity;)Landroid/widget/SearchView;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/DialtactsActivity;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/contacts/activities/DialtactsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/activities/DialtactsActivity;

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/contacts/activities/DialtactsActivity;->addSearchFragment()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/contacts/activities/DialtactsActivity;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/activities/DialtactsActivity;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/DialtactsActivity;->showInputMethod(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/contacts/activities/DialtactsActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/activities/DialtactsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/DialtactsActivity;->updateFakeMenuButtonsVisibility(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/contacts/activities/DialtactsActivity;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/activities/DialtactsActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/activities/DialtactsActivity;->sendFragmentVisibilityChange(IZ)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/android/contacts/list/PhoneFavoriteFragment;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/DialtactsActivity;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPhoneFavoriteFragment:Lcom/android/contacts/list/PhoneFavoriteFragment;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/android/contacts/list/ContactListFilterController;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/DialtactsActivity;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/android/contacts/list/PhoneNumberPickerFragment;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/DialtactsActivity;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/DialtactsActivity;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPageChangeListener:Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/contacts/activities/DialtactsActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/activities/DialtactsActivity;
    .param p1, "x1"    # I

    .prologue
    .line 82
    iput p1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mLastManuallySelectedFragment:I

    return p1
.end method

.method private addSearchFragment()V
    .locals 3

    .prologue
    .line 644
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    if-eqz v2, :cond_0

    .line 653
    :goto_0
    return-void

    .line 646
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 647
    .local v0, "ft":Landroid/app/FragmentTransaction;
    new-instance v1, Lcom/android/contacts/list/PhoneNumberPickerFragment;

    invoke-direct {v1}, Lcom/android/contacts/list/PhoneNumberPickerFragment;-><init>()V

    .line 649
    .local v1, "searchFragment":Landroid/app/Fragment;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setUserVisibleHint(Z)V

    .line 650
    const v2, 0x7f0600c9

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 651
    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 652
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0
.end method

.method private enterSearchUi()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1153
    iget-object v4, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    if-nez v4, :cond_0

    .line 1199
    :goto_0
    return-void

    .line 1162
    :cond_0
    iget-object v4, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    if-nez v4, :cond_1

    .line 1163
    invoke-direct {p0}, Lcom/android/contacts/activities/DialtactsActivity;->prepareSearchView()V

    .line 1166
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 1168
    .local v0, "actionBar":Landroid/app/ActionBar;
    invoke-virtual {v0}, Landroid/app/ActionBar;->getSelectedTab()Landroid/app/ActionBar$Tab;

    move-result-object v2

    .line 1171
    .local v2, "tab":Landroid/app/ActionBar$Tab;
    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/contacts/dialpad/DialpadFragment;->phoneIsInUse()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1172
    invoke-virtual {v2}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v4

    iput v4, p0, Lcom/android/contacts/activities/DialtactsActivity;->mLastManuallySelectedFragment:I

    .line 1175
    :cond_2
    iget-object v4, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 1177
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 1178
    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 1179
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 1180
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 1182
    invoke-direct {p0, v7}, Lcom/android/contacts/activities/DialtactsActivity;->updateFakeMenuButtonsVisibility(Z)V

    .line 1184
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    const/4 v4, 0x3

    if-ge v1, v4, :cond_3

    .line 1185
    invoke-direct {p0, v1, v7}, Lcom/android/contacts/activities/DialtactsActivity;->sendFragmentVisibilityChange(IZ)V

    .line 1184
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1189
    :cond_3
    iget-object v4, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    invoke-virtual {v4, v6}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setUserVisibleHint(Z)V

    .line 1190
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    .line 1191
    .local v3, "transaction":Landroid/app/FragmentTransaction;
    iget-object v4, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    invoke-virtual {v3, v4}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1192
    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1193
    iget-object v4, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 1197
    iget-object v4, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v4}, Landroid/widget/SearchView;->onActionViewExpanded()V

    .line 1198
    iput-boolean v6, p0, Lcom/android/contacts/activities/DialtactsActivity;->mInSearchUi:Z

    goto :goto_0
.end method

.method private exitSearchUi()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1222
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 1225
    .local v0, "actionBar":Landroid/app/ActionBar;
    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    if-eqz v3, :cond_0

    .line 1226
    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    invoke-virtual {v3, v4}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setUserVisibleHint(Z)V

    .line 1228
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 1229
    .local v2, "transaction":Landroid/app/FragmentTransaction;
    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1230
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1234
    .end local v2    # "transaction":Landroid/app/FragmentTransaction;
    :cond_0
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 1235
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 1236
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 1237
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 1239
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v3, 0x3

    if-ge v1, v3, :cond_2

    .line 1240
    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v3

    if-ne v1, v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    invoke-direct {p0, v1, v3}, Lcom/android/contacts/activities/DialtactsActivity;->sendFragmentVisibilityChange(IZ)V

    .line 1239
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v3, v4

    .line 1240
    goto :goto_1

    .line 1244
    :cond_2
    iput-boolean v4, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDuringSwipe:Z

    .line 1245
    iput-boolean v4, p0, Lcom/android/contacts/activities/DialtactsActivity;->mUserTabClick:Z

    .line 1247
    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 1249
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/contacts/activities/DialtactsActivity;->hideInputMethod(Landroid/view/View;)V

    .line 1252
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->invalidateOptionsMenu()V

    .line 1255
    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v3}, Landroid/widget/SearchView;->onActionViewCollapsed()V

    .line 1256
    iput-boolean v4, p0, Lcom/android/contacts/activities/DialtactsActivity;->mInSearchUi:Z

    .line 1257
    return-void
.end method

.method private fixIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 757
    const-string v0, "android.intent.action.CALL_BUTTON"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 758
    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "vnd.android.cursor.dir/calls"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 759
    const-string v0, "call_key"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 760
    invoke-virtual {p0, p1}, Lcom/android/contacts/activities/DialtactsActivity;->setIntent(Landroid/content/Intent;)V

    .line 762
    :cond_0
    return-void
.end method

.method public static getCallSettingsIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 1323
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1324
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.CallFeaturesSetting"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1325
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1326
    return-object v0
.end method

.method private getFragmentAt(I)Landroid/app/Fragment;
    .locals 3

    .prologue
    .line 1260
    packed-switch p1, :pswitch_data_0

    .line 1268
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown fragment index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1262
    :pswitch_0
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/android/contacts/dialpad/DialpadFragment;

    .line 1266
    :goto_0
    return-object v0

    .line 1264
    :pswitch_1
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogFragment:Lcom/android/contacts/calllog/CallLogFragment;

    goto :goto_0

    .line 1266
    :pswitch_2
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPhoneFavoriteFragment:Lcom/android/contacts/list/PhoneFavoriteFragment;

    goto :goto_0

    .line 1260
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private hideInputMethod(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 1211
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/DialtactsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1212
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1213
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1215
    :cond_0
    return-void
.end method

.method private isDialIntent(Landroid/content/Intent;)Z
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    .line 913
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 914
    .local v0, "action":Ljava/lang/String;
    const-string v3, "android.intent.action.DIAL"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "com.android.phone.action.TOUCH_DIALER"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 923
    :cond_0
    :goto_0
    return v2

    .line 917
    :cond_1
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 918
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 919
    .local v1, "data":Landroid/net/Uri;
    if-eqz v1, :cond_2

    const-string v3, "tel"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 923
    .end local v1    # "data":Landroid/net/Uri;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isSendKeyWhileInCall(Landroid/content/Intent;Z)Z
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "recentCallsRequest"    # Z

    .prologue
    const/4 v3, 0x0

    .line 817
    if-eqz p2, :cond_0

    .line 818
    const-string v4, "call_key"

    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 821
    .local v0, "callKey":Z
    :try_start_0
    const-string v4, "phone"

    invoke-static {v4}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 822
    .local v2, "phone":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->showCallScreen()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 823
    const/4 v3, 0x1

    .line 830
    .end local v0    # "callKey":Z
    .end local v2    # "phone":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return v3

    .line 825
    .restart local v0    # "callKey":Z
    :catch_0
    move-exception v1

    .line 826
    .local v1, "e":Landroid/os/RemoteException;
    const-string v4, "DialtactsActivity"

    const-string v5, "Failed to handle send while in call"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static log(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1345
    const-string v0, "DialtactsActivity"

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

    .line 1346
    return-void
.end method

.method private prepareOptionsMenuForCallLogTab(Landroid/view/Menu;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1101
    const v0, 0x7f06015e

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1102
    const v1, 0x7f060160

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1103
    const v2, 0x7f060161

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 1104
    const v3, 0x7f06015f

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 1105
    const v4, 0x7f060162

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 1108
    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1109
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1110
    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1111
    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1112
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1113
    return-void
.end method

.method private prepareOptionsMenuForDialerTab(Landroid/view/Menu;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1064
    sget-boolean v0, Lcom/android/contacts/activities/DialtactsActivity;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1065
    const-string v0, "DialtactsActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPrepareOptionsMenu(dialer). swipe: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDuringSwipe:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", user tab click: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mUserTabClick:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    :cond_0
    const v0, 0x7f06015e

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1071
    const v1, 0x7f060160

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1072
    const v2, 0x7f060161

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 1073
    const v3, 0x7f06015f

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 1074
    const v4, 0x7f060162

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 1077
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1078
    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1079
    iget-boolean v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDuringSwipe:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mUserTabClick:Z

    if-eqz v1, :cond_2

    .line 1081
    :cond_1
    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1082
    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1086
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1097
    :goto_0
    return-void

    .line 1091
    :cond_2
    invoke-static {p0}, Lcom/android/contacts/ContactsUtils;->isLandscape(Landroid/content/Context;)Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1094
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1095
    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private prepareOptionsMenuForFavoritesTab(Landroid/view/Menu;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1117
    const v0, 0x7f06015e

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1118
    const v1, 0x7f060160

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1119
    const v2, 0x7f060161

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 1120
    const v3, 0x7f06015f

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 1121
    const v4, 0x7f060162

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 1124
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1125
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1126
    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1127
    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1128
    const/4 v0, 0x0

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1129
    return-void
.end method

.method private prepareOptionsMenuInSearchMode(Landroid/view/Menu;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1049
    const v0, 0x7f06015e

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1050
    const v1, 0x7f060160

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1051
    const v2, 0x7f060161

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 1052
    const v3, 0x7f06015f

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 1053
    const v4, 0x7f060162

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 1056
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1057
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1058
    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1059
    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1060
    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1061
    return-void
.end method

.method private prepareSearchView()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 656
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f04003f

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 658
    .local v1, "searchViewLayout":Landroid/view/View;
    const v2, 0x7f060089

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SearchView;

    iput-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    .line 659
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPhoneSearchQueryTextListener:Landroid/widget/SearchView$OnQueryTextListener;

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 660
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPhoneSearchCloseListener:Landroid/widget/SearchView$OnCloseListener;

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setOnCloseListener(Landroid/widget/SearchView$OnCloseListener;)V

    .line 667
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 668
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    const v3, 0x7f0b01a7

    invoke-virtual {p0, v3}, Lcom/android/contacts/activities/DialtactsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 669
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, v5}, Landroid/widget/SearchView;->setIconified(Z)V

    .line 670
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    new-instance v3, Lcom/android/contacts/activities/DialtactsActivity$10;

    invoke-direct {v3, p0}, Lcom/android/contacts/activities/DialtactsActivity$10;-><init>(Lcom/android/contacts/activities/DialtactsActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 679
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v2

    if-nez v2, :cond_0

    .line 681
    const v2, 0x7f0600cb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 682
    .local v0, "filterOptionView":Landroid/view/View;
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 683
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mFilterOptionClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 686
    .end local v0    # "filterOptionView":Landroid/view/View;
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    new-instance v3, Landroid/app/ActionBar$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 688
    return-void
.end method

.method private sendFragmentVisibilityChange(IZ)V
    .locals 3

    .prologue
    .line 1273
    sget-boolean v0, Lcom/android/contacts/activities/DialtactsActivity;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1274
    const-string v0, "DialtactsActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendFragmentVisibiltyChange(). position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", visibility: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    :cond_0
    if-ltz p1, :cond_1

    .line 1279
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/DialtactsActivity;->getFragmentAt(I)Landroid/app/Fragment;

    move-result-object v0

    .line 1280
    if-eqz v0, :cond_1

    .line 1281
    invoke-virtual {v0, p2}, Landroid/app/Fragment;->setMenuVisibility(Z)V

    .line 1282
    invoke-virtual {v0, p2}, Landroid/app/Fragment;->setUserVisibleHint(Z)V

    .line 1284
    instance-of v1, v0, Lcom/android/contacts/activities/DialtactsActivity$ViewPagerVisibilityListener;

    if-eqz v1, :cond_1

    .line 1285
    check-cast v0, Lcom/android/contacts/activities/DialtactsActivity$ViewPagerVisibilityListener;

    invoke-interface {v0, p2}, Lcom/android/contacts/activities/DialtactsActivity$ViewPagerVisibilityListener;->onVisibilityChanged(Z)V

    .line 1290
    :cond_1
    return-void
.end method

.method private setCurrentTab(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    .line 840
    const-string v5, "vnd.android.cursor.dir/calls"

    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 842
    .local v2, "recentCallsRequest":Z
    invoke-direct {p0, p1, v2}, Lcom/android/contacts/activities/DialtactsActivity;->isSendKeyWhileInCall(Landroid/content/Intent;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 843
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->finish()V

    .line 880
    :goto_0
    return-void

    .line 849
    :cond_0
    iget v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mLastManuallySelectedFragment:I

    .line 854
    .local v3, "savedTabIndex":I
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0025

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 856
    .local v0, "hasDefaultTab":Z
    invoke-static {}, Lcom/android/contacts/dialpad/DialpadFragment;->phoneIsInUse()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-direct {p0, p1}, Lcom/android/contacts/activities/DialtactsActivity;->isDialIntent(Landroid/content/Intent;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 857
    :cond_1
    const/4 v4, 0x0

    .line 868
    .local v4, "tabIndex":I
    :goto_1
    iget-object v5, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    .line 869
    .local v1, "previousItemIndex":I
    iget-object v5, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5, v4, v7}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 870
    if-eq v1, v4, :cond_2

    .line 871
    invoke-direct {p0, v1, v7}, Lcom/android/contacts/activities/DialtactsActivity;->sendFragmentVisibilityChange(IZ)V

    .line 873
    :cond_2
    iget-object v5, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPageChangeListener:Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;

    invoke-virtual {v5, v4}, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->setCurrentPosition(I)V

    .line 874
    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/android/contacts/activities/DialtactsActivity;->sendFragmentVisibilityChange(IZ)V

    .line 877
    iput v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mLastManuallySelectedFragment:I

    .line 878
    iput-boolean v7, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDuringSwipe:Z

    .line 879
    iput-boolean v7, p0, Lcom/android/contacts/activities/DialtactsActivity;->mUserTabClick:Z

    goto :goto_0

    .line 858
    .end local v1    # "previousItemIndex":I
    .end local v4    # "tabIndex":I
    :cond_3
    if-eqz v2, :cond_4

    .line 859
    const/4 v4, 0x1

    .restart local v4    # "tabIndex":I
    goto :goto_1

    .line 861
    .end local v4    # "tabIndex":I
    :cond_4
    if-eqz v0, :cond_5

    .line 862
    const/4 v4, 0x0

    .restart local v4    # "tabIndex":I
    goto :goto_1

    .line 865
    .end local v4    # "tabIndex":I
    :cond_5
    iget v4, p0, Lcom/android/contacts/activities/DialtactsActivity;->mLastManuallySelectedFragment:I

    .restart local v4    # "tabIndex":I
    goto :goto_1
.end method

.method private setupCallLog()V
    .locals 2

    .prologue
    .line 779
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    .line 780
    .local v0, "tab":Landroid/app/ActionBar$Tab;
    const v1, 0x7f0b0073

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setContentDescription(I)Landroid/app/ActionBar$Tab;

    .line 782
    iget-boolean v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialerShowLabelFtrFlag:Z

    if-eqz v1, :cond_0

    .line 783
    const v1, 0x7f0b0215

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    .line 788
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mTabListener:Landroid/app/ActionBar$TabListener;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 789
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 790
    return-void

    .line 785
    :cond_0
    const v1, 0x7f020068

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setIcon(I)Landroid/app/ActionBar$Tab;

    goto :goto_0
.end method

.method private setupDialer()V
    .locals 2

    .prologue
    .line 765
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    .line 766
    .local v0, "tab":Landroid/app/ActionBar$Tab;
    const v1, 0x7f0b0072

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setContentDescription(I)Landroid/app/ActionBar$Tab;

    .line 767
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mTabListener:Landroid/app/ActionBar$TabListener;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 769
    iget-boolean v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialerShowLabelFtrFlag:Z

    if-eqz v1, :cond_0

    .line 770
    const v1, 0x7f0b0214

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    .line 775
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 776
    return-void

    .line 772
    :cond_0
    const v1, 0x7f020066

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setIcon(I)Landroid/app/ActionBar$Tab;

    goto :goto_0
.end method

.method private setupFavorites()V
    .locals 2

    .prologue
    .line 793
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    .line 794
    .local v0, "tab":Landroid/app/ActionBar$Tab;
    const v1, 0x7f0b0071

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setContentDescription(I)Landroid/app/ActionBar$Tab;

    .line 796
    iget-boolean v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialerShowLabelFtrFlag:Z

    if-eqz v1, :cond_0

    .line 797
    const v1, 0x7f0b0019

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    .line 802
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mTabListener:Landroid/app/ActionBar$TabListener;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 803
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 804
    return-void

    .line 799
    :cond_0
    const v1, 0x7f020065

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setIcon(I)Landroid/app/ActionBar$Tab;

    goto :goto_0
.end method

.method private setupFilterText(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 958
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v2, 0x100000

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 965
    :cond_0
    :goto_0
    return-void

    .line 961
    :cond_1
    const-string v1, "com.android.contacts.extra.FILTER_TEXT"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 962
    .local v0, "filter":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 963
    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mFilterText:Ljava/lang/String;

    goto :goto_0
.end method

.method private showInputMethod(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1202
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/DialtactsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1203
    if-eqz v0, :cond_0

    .line 1204
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1205
    const-string v0, "DialtactsActivity"

    const-string v1, "Failed to show soft input method."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    :cond_0
    return-void
.end method

.method private updateFakeMenuButtonsVisibility(Z)V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 1301
    sget-boolean v0, Lcom/android/contacts/activities/DialtactsActivity;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1302
    const-string v0, "DialtactsActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateFakeMenuButtonVisibility("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchButton:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1306
    if-eqz p1, :cond_3

    .line 1307
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchButton:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1312
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mMenuButton:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1313
    if-eqz p1, :cond_4

    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1314
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mMenuButton:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1319
    :cond_2
    :goto_1
    return-void

    .line 1309
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchButton:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1316
    :cond_4
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mMenuButton:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public getCallOrigin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 933
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/contacts/activities/DialtactsActivity;->isDialIntent(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.android.contacts.activities.DialtactsActivity"

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1331
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 1341
    :goto_0
    return-void

    .line 1334
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1336
    :pswitch_0
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    invoke-static {v0, p2, p3}, Lcom/android/contacts/util/AccountFilterUtil;->handleAccountFilterResult(Lcom/android/contacts/list/ContactListFilterController;ILandroid/content/Intent;)V

    goto :goto_0

    .line 1334
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 5
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    const/4 v4, 0x1

    .line 694
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 695
    .local v0, "currentPosition":I
    :goto_0
    sget-boolean v2, Lcom/android/contacts/activities/DialtactsActivity;->DBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAttachFragment, currentPosition = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/activities/DialtactsActivity;->log(Ljava/lang/String;)V

    .line 697
    :cond_0
    instance-of v2, p1, Lcom/android/contacts/dialpad/DialpadFragment;

    if-eqz v2, :cond_3

    .line 698
    check-cast p1, Lcom/android/contacts/dialpad/DialpadFragment;

    .end local p1    # "fragment":Landroid/app/Fragment;
    iput-object p1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/android/contacts/dialpad/DialpadFragment;

    .line 702
    if-nez v0, :cond_1

    .line 703
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/android/contacts/dialpad/DialpadFragment;

    invoke-virtual {v2, v4}, Lcom/android/contacts/dialpad/DialpadFragment;->onVisibilityChanged(Z)V

    .line 742
    :cond_1
    :goto_1
    return-void

    .line 694
    .end local v0    # "currentPosition":I
    .restart local p1    # "fragment":Landroid/app/Fragment;
    :cond_2
    const/4 v0, -0x1

    goto :goto_0

    .line 706
    .restart local v0    # "currentPosition":I
    :cond_3
    instance-of v2, p1, Lcom/android/contacts/calllog/CallLogFragment;

    if-eqz v2, :cond_4

    .line 707
    check-cast p1, Lcom/android/contacts/calllog/CallLogFragment;

    .end local p1    # "fragment":Landroid/app/Fragment;
    iput-object p1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogFragment:Lcom/android/contacts/calllog/CallLogFragment;

    goto :goto_1

    .line 708
    .restart local p1    # "fragment":Landroid/app/Fragment;
    :cond_4
    instance-of v2, p1, Lcom/android/contacts/list/PhoneFavoriteFragment;

    if-eqz v2, :cond_5

    .line 709
    check-cast p1, Lcom/android/contacts/list/PhoneFavoriteFragment;

    .end local p1    # "fragment":Landroid/app/Fragment;
    iput-object p1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPhoneFavoriteFragment:Lcom/android/contacts/list/PhoneFavoriteFragment;

    .line 710
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPhoneFavoriteFragment:Lcom/android/contacts/list/PhoneFavoriteFragment;

    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPhoneFavoriteListener:Lcom/android/contacts/list/PhoneFavoriteFragment$Listener;

    invoke-virtual {v2, v3}, Lcom/android/contacts/list/PhoneFavoriteFragment;->setListener(Lcom/android/contacts/list/PhoneFavoriteFragment$Listener;)V

    .line 711
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactListFilterController;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 713
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPhoneFavoriteFragment:Lcom/android/contacts/list/PhoneFavoriteFragment;

    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactListFilterController;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/contacts/list/PhoneFavoriteFragment;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    goto :goto_1

    .line 715
    .restart local p1    # "fragment":Landroid/app/Fragment;
    :cond_5
    instance-of v2, p1, Lcom/android/contacts/list/PhoneNumberPickerFragment;

    if-eqz v2, :cond_1

    .line 716
    check-cast p1, Lcom/android/contacts/list/PhoneNumberPickerFragment;

    .end local p1    # "fragment":Landroid/app/Fragment;
    iput-object p1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    .line 717
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPhoneNumberPickerActionListener:Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;

    invoke-virtual {v2, v3}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setOnPhoneNumberPickerActionListener(Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;)V

    .line 718
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    invoke-virtual {v2, v4}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setQuickContactEnabled(Z)V

    .line 719
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    invoke-virtual {v2, v4}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setDarkTheme(Z)V

    .line 720
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    sget-object v3, Lcom/android/contacts/list/ContactListItemView$PhotoPosition;->LEFT:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    invoke-virtual {v2, v3}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setPhotoPosition(Lcom/android/contacts/list/ContactListItemView$PhotoPosition;)V

    .line 721
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    invoke-virtual {v2, v4}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setUseCallableUri(Z)V

    .line 722
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactListFilterController;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 724
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    iget-object v3, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactListFilterController;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 733
    :cond_6
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setUserVisibleHint(Z)V

    .line 736
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    invoke-virtual {v2}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->isHidden()Z

    move-result v2

    if-nez v2, :cond_1

    .line 737
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 738
    .local v1, "transaction":Landroid/app/FragmentTransaction;
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 739
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto/16 :goto_1
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 969
    iget-boolean v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mInSearchUi:Z

    if-eqz v0, :cond_0

    .line 971
    invoke-direct {p0}, Lcom/android/contacts/activities/DialtactsActivity;->exitSearchUi()V

    .line 981
    :goto_0
    return-void

    .line 972
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->isTaskRoot()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 977
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/DialtactsActivity;->moveTaskToBack(Z)Z

    goto :goto_0

    .line 979
    :cond_1
    invoke-super {p0}, Lcom/android/contacts/activities/TransactionSafeActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 609
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 626
    const-string v1, "DialtactsActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected onClick event from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    :cond_0
    :goto_0
    return-void

    .line 611
    :sswitch_0
    invoke-direct {p0}, Lcom/android/contacts/activities/DialtactsActivity;->enterSearchUi()V

    goto :goto_0

    .line 615
    :sswitch_1
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/android/contacts/dialpad/DialpadFragment;

    if-eqz v1, :cond_1

    .line 616
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/android/contacts/dialpad/DialpadFragment;

    invoke-virtual {v1, p1}, Lcom/android/contacts/dialpad/DialpadFragment;->constructPopupMenu(Landroid/view/View;)Landroid/widget/PopupMenu;

    move-result-object v0

    .line 617
    .local v0, "popup":Landroid/widget/PopupMenu;
    if-eqz v0, :cond_0

    .line 618
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    goto :goto_0

    .line 621
    .end local v0    # "popup":Landroid/widget/PopupMenu;
    :cond_1
    const-string v1, "DialtactsActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DialpadFragment is null during onClick() event for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 609
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0600bc -> :sswitch_1
        0x7f0600ca -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 502
    const-string v5, "onCreate enter"

    invoke-static {v5}, Lcom/android/contacts/activities/DialtactsActivity;->log(Ljava/lang/String;)V

    .line 503
    invoke-super {p0, p1}, Lcom/android/contacts/activities/TransactionSafeActivity;->onCreate(Landroid/os/Bundle;)V

    .line 505
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 506
    .local v3, "intent":Landroid/content/Intent;
    invoke-direct {p0, v3}, Lcom/android/contacts/activities/DialtactsActivity;->fixIntent(Landroid/content/Intent;)V

    .line 508
    const v5, 0x7f04003e

    invoke-virtual {p0, v5}, Lcom/android/contacts/activities/DialtactsActivity;->setContentView(I)V

    .line 510
    invoke-static {p0}, Lcom/android/contacts/list/ContactListFilterController;->getInstance(Landroid/content/Context;)Lcom/android/contacts/list/ContactListFilterController;

    move-result-object v5

    iput-object v5, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    .line 511
    iget-object v5, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    iget-object v6, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactListFilterListener:Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;

    invoke-virtual {v5, v6}, Lcom/android/contacts/list/ContactListFilterController;->addListener(Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;)V

    .line 513
    const v5, 0x7f0600c9

    invoke-virtual {p0, v5}, Lcom/android/contacts/activities/DialtactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/android/contacts/activities/DialtactsActivity;->mFirstLayoutListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 515
    const v5, 0x7f060060

    invoke-virtual {p0, v5}, Lcom/android/contacts/activities/DialtactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/support/v4/view/ViewPager;

    iput-object v5, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 516
    iget-object v5, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v6, Lcom/android/contacts/activities/DialtactsActivity$ViewPagerAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    invoke-direct {v6, p0, v7}, Lcom/android/contacts/activities/DialtactsActivity$ViewPagerAdapter;-><init>(Lcom/android/contacts/activities/DialtactsActivity;Landroid/app/FragmentManager;)V

    invoke-virtual {v5, v6}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 517
    iget-object v5, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v6, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPageChangeListener:Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;

    invoke-virtual {v5, v6}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 518
    iget-object v5, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5, v9}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 521
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 522
    .local v1, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f08005d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 523
    .local v4, "minCellSize":I
    iget v5, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int v0, v5, v4

    .line 524
    .local v0, "cellCount":I
    iget v5, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int v2, v5, v0

    .line 525
    .local v2, "fakeMenuItemWidth":I
    sget-boolean v5, Lcom/android/contacts/activities/DialtactsActivity;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "DialtactsActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The size of fake menu buttons (in pixel): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    :cond_0
    const v5, 0x7f0600bc

    invoke-virtual {p0, v5}, Lcom/android/contacts/activities/DialtactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/contacts/activities/DialtactsActivity;->mMenuButton:Landroid/view/View;

    .line 529
    iget-object v5, p0, Lcom/android/contacts/activities/DialtactsActivity;->mMenuButton:Landroid/view/View;

    if-eqz v5, :cond_1

    .line 530
    iget-object v5, p0, Lcom/android/contacts/activities/DialtactsActivity;->mMenuButton:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->setMinimumWidth(I)V

    .line 531
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 533
    iget-object v5, p0, Lcom/android/contacts/activities/DialtactsActivity;->mMenuButton:Landroid/view/View;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 538
    :cond_1
    :goto_0
    const v5, 0x7f0600ca

    invoke-virtual {p0, v5}, Lcom/android/contacts/activities/DialtactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchButton:Landroid/view/View;

    .line 539
    iget-object v5, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchButton:Landroid/view/View;

    if-eqz v5, :cond_2

    .line 540
    iget-object v5, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchButton:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->setMinimumWidth(I)V

    .line 541
    iget-object v5, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchButton:Landroid/view/View;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 544
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0022

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialerShowLabelFtrFlag:Z

    .line 547
    invoke-direct {p0}, Lcom/android/contacts/activities/DialtactsActivity;->setupDialer()V

    .line 548
    invoke-direct {p0}, Lcom/android/contacts/activities/DialtactsActivity;->setupCallLog()V

    .line 549
    invoke-direct {p0}, Lcom/android/contacts/activities/DialtactsActivity;->setupFavorites()V

    .line 550
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 551
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 552
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 555
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    iput-object v5, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPrefs:Landroid/content/SharedPreferences;

    .line 556
    iget-object v5, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v6, "DialtactsActivity_last_manually_selected_tab"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/contacts/activities/DialtactsActivity;->mLastManuallySelectedFragment:I

    .line 558
    iget v5, p0, Lcom/android/contacts/activities/DialtactsActivity;->mLastManuallySelectedFragment:I

    const/4 v6, 0x3

    if-lt v5, v6, :cond_3

    .line 560
    iput v8, p0, Lcom/android/contacts/activities/DialtactsActivity;->mLastManuallySelectedFragment:I

    .line 563
    :cond_3
    invoke-direct {p0, v3}, Lcom/android/contacts/activities/DialtactsActivity;->setCurrentTab(Landroid/content/Intent;)V

    .line 565
    const-string v5, "com.android.contacts.action.FILTER_CONTACTS"

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    if-nez p1, :cond_4

    .line 567
    invoke-direct {p0, v3}, Lcom/android/contacts/activities/DialtactsActivity;->setupFilterText(Landroid/content/Intent;)V

    .line 569
    :cond_4
    return-void

    .line 535
    :cond_5
    iget-object v5, p0, Lcom/android/contacts/activities/DialtactsActivity;->mMenuButton:Landroid/view/View;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5

    .prologue
    .line 1005
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 1006
    const v1, 0x7f100005

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1009
    const v0, 0x7f06015f

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1010
    const v1, 0x7f06015e

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1011
    const v2, 0x7f060160

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 1012
    const v3, 0x7f060161

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 1014
    invoke-static {}, Lcom/android/contacts/activities/DialtactsActivity;->getCallSettingsIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 1015
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1016
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mFilterOptionsMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1017
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 1020
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 602
    const-string v0, "onDestroy enter"

    invoke-static {v0}, Lcom/android/contacts/activities/DialtactsActivity;->log(Ljava/lang/String;)V

    .line 603
    invoke-super {p0}, Lcom/android/contacts/activities/TransactionSafeActivity;->onDestroy()V

    .line 604
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactListFilterListener:Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListFilterController;->removeListener(Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;)V

    .line 605
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "newIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    .line 884
    invoke-virtual {p0, p1}, Lcom/android/contacts/activities/DialtactsActivity;->setIntent(Landroid/content/Intent;)V

    .line 885
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/DialtactsActivity;->fixIntent(Landroid/content/Intent;)V

    .line 886
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/DialtactsActivity;->setCurrentTab(Landroid/content/Intent;)V

    .line 887
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 888
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.android.contacts.action.FILTER_CONTACTS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 889
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/DialtactsActivity;->setupFilterText(Landroid/content/Intent;)V

    .line 891
    :cond_0
    iget-boolean v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mInSearchUi:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    invoke-virtual {v1}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 892
    :cond_1
    invoke-direct {p0}, Lcom/android/contacts/activities/DialtactsActivity;->exitSearchUi()V

    .line 895
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    if-nez v1, :cond_5

    .line 896
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/android/contacts/dialpad/DialpadFragment;

    if-eqz v1, :cond_4

    .line 897
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDialpadFragment:Lcom/android/contacts/dialpad/DialpadFragment;

    invoke-virtual {v1, v2}, Lcom/android/contacts/dialpad/DialpadFragment;->setStartedFromNewIntent(Z)V

    .line 908
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->invalidateOptionsMenu()V

    .line 909
    return-void

    .line 899
    :cond_4
    const-string v1, "DialtactsActivity"

    const-string v2, "DialpadFragment isn\'t ready yet when the tab is already selected."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 901
    :cond_5
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    if-ne v1, v2, :cond_3

    .line 902
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogFragment:Lcom/android/contacts/calllog/CallLogFragment;

    if-eqz v1, :cond_6

    .line 903
    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mCallLogFragment:Lcom/android/contacts/calllog/CallLogFragment;

    invoke-virtual {v1, p1}, Lcom/android/contacts/calllog/CallLogFragment;->configureScreenFromIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 905
    :cond_6
    const-string v1, "DialtactsActivity"

    const-string v2, "CallLogFragment isn\'t ready yet when the tab is already selected."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 746
    const-string v0, "onPause enter"

    invoke-static {v0}, Lcom/android/contacts/activities/DialtactsActivity;->log(Ljava/lang/String;)V

    .line 747
    invoke-super {p0}, Lcom/android/contacts/activities/TransactionSafeActivity;->onPause()V

    .line 749
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "DialtactsActivity_last_manually_selected_tab"

    iget v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mLastManuallySelectedFragment:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 751
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1025
    iget-boolean v1, p0, Lcom/android/contacts/activities/DialtactsActivity;->mInSearchUi:Z

    if-eqz v1, :cond_1

    .line 1026
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/DialtactsActivity;->prepareOptionsMenuInSearchMode(Landroid/view/Menu;)V

    .line 1044
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 1029
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->getSelectedTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    .line 1030
    .local v0, "tab":Landroid/app/ActionBar$Tab;
    if-eqz v0, :cond_0

    .line 1031
    invoke-virtual {v0}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1033
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/DialtactsActivity;->prepareOptionsMenuForDialerTab(Landroid/view/Menu;)V

    goto :goto_0

    .line 1036
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/DialtactsActivity;->prepareOptionsMenuForCallLogTab(Landroid/view/Menu;)V

    goto :goto_0

    .line 1039
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/DialtactsActivity;->prepareOptionsMenuForFavoritesTab(Landroid/view/Menu;)V

    goto :goto_0

    .line 1031
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onStart()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 573
    invoke-super {p0}, Lcom/android/contacts/activities/TransactionSafeActivity;->onStart()V

    .line 574
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPhoneFavoriteFragment:Lcom/android/contacts/list/PhoneFavoriteFragment;

    if-eqz v2, :cond_0

    .line 575
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPhoneFavoriteFragment:Lcom/android/contacts/list/PhoneFavoriteFragment;

    iget-object v5, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    invoke-virtual {v5}, Lcom/android/contacts/list/ContactListFilterController;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/contacts/list/PhoneFavoriteFragment;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 576
    sget-boolean v2, Lcom/android/contacts/activities/DialtactsActivity;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "onStart favorite fragment set filter"

    invoke-static {v2}, Lcom/android/contacts/activities/DialtactsActivity;->log(Ljava/lang/String;)V

    .line 578
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    if-eqz v2, :cond_1

    .line 579
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    iget-object v5, p0, Lcom/android/contacts/activities/DialtactsActivity;->mContactListFilterController:Lcom/android/contacts/list/ContactListFilterController;

    invoke-virtual {v5}, Lcom/android/contacts/list/ContactListFilterController;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 580
    sget-boolean v2, Lcom/android/contacts/activities/DialtactsActivity;->DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "onStart search fragment set filter"

    invoke-static {v2}, Lcom/android/contacts/activities/DialtactsActivity;->log(Ljava/lang/String;)V

    .line 583
    :cond_1
    iget-boolean v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDuringSwipe:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mUserTabClick:Z

    if-eqz v2, :cond_4

    .line 584
    :cond_2
    sget-boolean v2, Lcom/android/contacts/activities/DialtactsActivity;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "DialtactsActivity"

    const-string v5, "reset buggy flag state.."

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    :cond_3
    iput-boolean v4, p0, Lcom/android/contacts/activities/DialtactsActivity;->mDuringSwipe:Z

    .line 586
    iput-boolean v4, p0, Lcom/android/contacts/activities/DialtactsActivity;->mUserTabClick:Z

    .line 589
    :cond_4
    iget-object v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPageChangeListener:Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;

    invoke-virtual {v2}, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->getCurrentPosition()I

    move-result v0

    .line 590
    .local v0, "currentPosition":I
    sget-boolean v2, Lcom/android/contacts/activities/DialtactsActivity;->DEBUG:Z

    if-eqz v2, :cond_5

    .line 591
    const-string v2, "DialtactsActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onStart(). current position: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/contacts/activities/DialtactsActivity;->mPageChangeListener:Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;

    invoke-virtual {v6}, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->getCurrentPosition()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". Reset all menu visibility state."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    :cond_5
    if-nez v0, :cond_6

    iget-boolean v2, p0, Lcom/android/contacts/activities/DialtactsActivity;->mInSearchUi:Z

    if-nez v2, :cond_6

    move v2, v3

    :goto_0
    invoke-direct {p0, v2}, Lcom/android/contacts/activities/DialtactsActivity;->updateFakeMenuButtonsVisibility(Z)V

    .line 595
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    const/4 v2, 0x3

    if-ge v1, v2, :cond_8

    .line 596
    if-ne v1, v0, :cond_7

    move v2, v3

    :goto_2
    invoke-direct {p0, v1, v2}, Lcom/android/contacts/activities/DialtactsActivity;->sendFragmentVisibilityChange(IZ)V

    .line 595
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1    # "i":I
    :cond_6
    move v2, v4

    .line 594
    goto :goto_0

    .restart local v1    # "i":I
    :cond_7
    move v2, v4

    .line 596
    goto :goto_2

    .line 598
    :cond_8
    return-void
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 1
    .param p1, "initialQuery"    # Ljava/lang/String;
    .param p2, "selectInitialQuery"    # Z
    .param p3, "appSearchData"    # Landroid/os/Bundle;
    .param p4, "globalSearch"    # Z

    .prologue
    .line 1134
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchFragment:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p4, :cond_2

    .line 1135
    iget-boolean v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mInSearchUi:Z

    if-eqz v0, :cond_1

    .line 1136
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1137
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->findFocus()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/contacts/activities/DialtactsActivity;->showInputMethod(Landroid/view/View;)V

    .line 1147
    :goto_0
    return-void

    .line 1139
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->requestFocus()Z

    goto :goto_0

    .line 1142
    :cond_1
    invoke-direct {p0}, Lcom/android/contacts/activities/DialtactsActivity;->enterSearchUi()V

    goto :goto_0

    .line 1145
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/contacts/activities/TransactionSafeActivity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    goto :goto_0
.end method
