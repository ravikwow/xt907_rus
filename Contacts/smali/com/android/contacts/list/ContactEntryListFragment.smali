.class public abstract Lcom/android/contacts/list/ContactEntryListFragment;
.super Landroid/app/Fragment;
.source "ContactEntryListFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/contacts/list/ContactEntryListAdapter;",
        ">",
        "Landroid/app/Fragment;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/widget/AbsListView$OnScrollListener;",
        "Landroid/view/View$OnFocusChangeListener;",
        "Landroid/view/View$OnTouchListener;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mCheckBoxEnabled:Z

.field private mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

.field private mContext:Landroid/content/Context;

.field private mContextMenuAdapter:Lcom/android/contacts/widget/ContextMenuAdapter;

.field private mDarkTheme:Z

.field private mDelayedDirectorySearchHandler:Landroid/os/Handler;

.field private mDirectoryListStatus:I

.field private mDirectoryResultLimit:I

.field private mDirectorySearchMode:I

.field private mDisplayOrder:I

.field private mEmptyView:Lcom/android/contacts/ContactListEmptyView;

.field private mEnabled:Z

.field private mForceLoad:Z

.field private mIncludeProfile:Z

.field private mLegacyCompatibility:Z

.field private mListState:Landroid/os/Parcelable;

.field private mListView:Landroid/widget/ListView;

.field private mLoadPriorityDirectoriesOnly:Z

.field private mLoaderManager:Landroid/app/LoaderManager;

.field private mPhotoLoaderEnabled:Z

.field private mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

.field private mPreferencesChangeListener:Lcom/android/contacts/preference/ContactsPreferences$ChangeListener;

.field private mQueryString:Ljava/lang/String;

.field private mQuickContactEnabled:Z

.field private mSearchMode:Z

.field private mSectionHeaderDisplayEnabled:Z

.field private mSelectionVisible:Z

.field private mSortOrder:I

.field protected mUserProfileExists:Z

.field private mVerticalScrollbarPosition:I

.field private mView:Landroid/view/View;

.field private mVisibleScrollbarEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 107
    iput-boolean v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mQuickContactEnabled:Z

    .line 111
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVerticalScrollbarPosition:I

    .line 113
    iput v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectorySearchMode:I

    .line 121
    iput-boolean v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mEnabled:Z

    .line 134
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectoryResultLimit:I

    .line 151
    iput v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectoryListStatus:I

    .line 163
    new-instance v0, Lcom/android/contacts/list/ContactEntryListFragment$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/list/ContactEntryListFragment$1;-><init>(Lcom/android/contacts/list/ContactEntryListFragment;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDelayedDirectorySearchHandler:Landroid/os/Handler;

    .line 969
    new-instance v0, Lcom/android/contacts/list/ContactEntryListFragment$2;

    invoke-direct {v0, p0}, Lcom/android/contacts/list/ContactEntryListFragment$2;-><init>(Lcom/android/contacts/list/ContactEntryListFragment;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mPreferencesChangeListener:Lcom/android/contacts/preference/ContactsPreferences$ChangeListener;

    return-void
.end method

.method private configureVerticalScrollbar()V
    .locals 7

    .prologue
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    const v6, 0x7f080022

    const/4 v3, 0x1

    .line 561
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isVisibleScrollbarEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isSectionHeaderDisplayEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v3

    .line 563
    .local v0, "hasScrollbar":Z
    :goto_0
    iget-object v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    if-eqz v4, :cond_1

    .line 564
    iget-object v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v0}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 565
    iget-object v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v0}, Landroid/widget/ListView;->setFastScrollAlwaysVisible(Z)V

    .line 566
    iget-object v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    iget v5, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVerticalScrollbarPosition:I

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setVerticalScrollbarPosition(I)V

    .line 567
    iget-object v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    const/high16 v5, 0x2000000

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    .line 568
    const/4 v1, 0x0

    .line 569
    .local v1, "leftPadding":I
    const/4 v2, 0x0

    .line 570
    .local v2, "rightPadding":I
    iget v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVerticalScrollbarPosition:I

    if-ne v4, v3, :cond_3

    .line 571
    iget-object v3, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 575
    instance-of v3, p0, Lcom/motorola/contacts/list/ContactMultiplePickerFragment;

    if-eqz v3, :cond_0

    .line 576
    move v2, v1

    .line 583
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v4

    iget-object v5, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v3, v1, v4, v2, v5}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 586
    .end local v1    # "leftPadding":I
    .end local v2    # "rightPadding":I
    :cond_1
    return-void

    .line 561
    .end local v0    # "hasScrollbar":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 580
    .restart local v0    # "hasScrollbar":Z
    .restart local v1    # "leftPadding":I
    .restart local v2    # "rightPadding":I
    :cond_3
    iget-object v3, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    goto :goto_1
.end method

.method private hideSoftKeyboard()V
    .locals 3

    .prologue
    .line 868
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 870
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 871
    return-void
.end method

.method private loadDirectoryPartitionDelayed(ILcom/android/contacts/list/DirectoryPartition;)V
    .locals 4
    .param p1, "partitionIndex"    # I
    .param p2, "partition"    # Lcom/android/contacts/list/DirectoryPartition;

    .prologue
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    const/4 v3, 0x1

    .line 385
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDelayedDirectorySearchHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, p2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 386
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDelayedDirectorySearchHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 388
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDelayedDirectorySearchHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 389
    return-void
.end method

.method private removePendingDirectorySearchRequests()V
    .locals 2

    .prologue
    .line 404
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDelayedDirectorySearchHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 405
    return-void
.end method

.method private startLoadingDirectoryPartition(I)V
    .locals 6
    .param p1, "partitionIndex"    # I

    .prologue
    .line 363
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-object v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v4, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/list/DirectoryPartition;

    .line 364
    .local v3, "partition":Lcom/android/contacts/list/DirectoryPartition;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/contacts/list/DirectoryPartition;->setStatus(I)V

    .line 365
    invoke-virtual {v3}, Lcom/android/contacts/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v1

    .line 366
    .local v1, "directoryId":J
    iget-boolean v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mForceLoad:Z

    if-eqz v4, :cond_1

    .line 367
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-nez v4, :cond_0

    .line 368
    invoke-virtual {p0, p1, v3}, Lcom/android/contacts/list/ContactEntryListFragment;->loadDirectoryPartition(ILcom/android/contacts/list/DirectoryPartition;)V

    .line 377
    :goto_0
    return-void

    .line 370
    :cond_0
    invoke-direct {p0, p1, v3}, Lcom/android/contacts/list/ContactEntryListFragment;->loadDirectoryPartitionDelayed(ILcom/android/contacts/list/DirectoryPartition;)V

    goto :goto_0

    .line 373
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 374
    .local v0, "args":Landroid/os/Bundle;
    const-string v4, "directoryId"

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 375
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v4

    invoke-virtual {v4, p1, v0, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0
.end method


# virtual methods
.method public completeFragmentSpecificActionsOnLoadingCompleted()V
    .locals 0

    .prologue
    .line 924
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    return-void
.end method

.method protected completeRestoreInstanceState()V
    .locals 2

    .prologue
    .line 912
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListState:Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    .line 913
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListState:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 914
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListState:Landroid/os/Parcelable;

    .line 918
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->completeFragmentSpecificActionsOnLoadingCompleted()V

    .line 920
    return-void
.end method

.method protected configureAdapter()V
    .locals 2

    .prologue
    .line 821
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    if-nez v0, :cond_0

    .line 840
    :goto_0
    return-void

    .line 825
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mQuickContactEnabled:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setQuickContactEnabled(Z)V

    .line 826
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mIncludeProfile:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setIncludeProfile(Z)V

    .line 827
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mQueryString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setQueryString(Ljava/lang/String;)V

    .line 828
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    iget v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectorySearchMode:I

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setDirectorySearchMode(I)V

    .line 829
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSearchMode:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setPinnedPartitionHeadersEnabled(Z)V

    .line 830
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    iget v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDisplayOrder:I

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setContactNameDisplayOrder(I)V

    .line 831
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    iget v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSortOrder:I

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setSortOrder(I)V

    .line 832
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSectionHeaderDisplayEnabled:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 833
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSelectionVisible:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setSelectionVisible(Z)V

    .line 834
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    iget v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectoryResultLimit:I

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setDirectoryResultLimit(I)V

    .line 835
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDarkTheme:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setDarkTheme(Z)V

    .line 838
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mCheckBoxEnabled:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setCheckBoxEnabled(Z)V

    goto :goto_0
.end method

.method protected configurePhotoLoader()V
    .locals 2

    .prologue
    .line 807
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isPhotoLoaderEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    .line 808
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    if-nez v0, :cond_0

    .line 809
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/ContactPhotoManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    .line 811
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    .line 812
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 814
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    if-eqz v0, :cond_2

    .line 815
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setPhotoLoader(Lcom/android/contacts/ContactPhotoManager;)V

    .line 818
    :cond_2
    return-void
.end method

.method public createCursorLoader()Landroid/content/CursorLoader;
    .locals 7

    .prologue
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    const/4 v2, 0x0

    .line 359
    new-instance v0, Landroid/content/CursorLoader;

    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected abstract createListAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 227
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    return-object v0
.end method

.method protected getContactNameDisplayOrder()I
    .locals 1

    .prologue
    .line 696
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDisplayOrder:I

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 198
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getContextMenuAdapter()Lcom/android/contacts/widget/ContextMenuAdapter;
    .locals 1

    .prologue
    .line 729
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContextMenuAdapter:Lcom/android/contacts/widget/ContextMenuAdapter;

    return-object v0
.end method

.method public getDirectorySearchMode()I
    .locals 1

    .prologue
    .line 680
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectorySearchMode:I

    return v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 236
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public getLoaderManager()Landroid/app/LoaderManager;
    .locals 1

    .prologue
    .line 223
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mLoaderManager:Landroid/app/LoaderManager;

    return-object v0
.end method

.method public final getQueryString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 661
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mQueryString:Ljava/lang/String;

    return-object v0
.end method

.method public getSortOrder()I
    .locals 1

    .prologue
    .line 707
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSortOrder:I

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 232
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method protected abstract inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public isCheckBoxEnabled()Z
    .locals 1

    .prologue
    .line 549
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mCheckBoxEnabled:Z

    return v0
.end method

.method public isLegacyCompatibilityMode()Z
    .locals 1

    .prologue
    .line 688
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mLegacyCompatibility:Z

    return v0
.end method

.method public isLoading()Z
    .locals 2

    .prologue
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    const/4 v0, 0x1

    .line 457
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->isLoading()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 465
    :cond_0
    :goto_0
    return v0

    .line 461
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isLoadingDirectoryList()Z

    move-result v1

    if-nez v1, :cond_0

    .line 465
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLoadingDirectoryList()Z
    .locals 2

    .prologue
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    const/4 v0, 0x1

    .line 469
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isSearchMode()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getDirectorySearchMode()I

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectoryListStatus:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectoryListStatus:I

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPhotoLoaderEnabled()Z
    .locals 1

    .prologue
    .line 594
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mPhotoLoaderEnabled:Z

    return v0
.end method

.method public final isSearchMode()Z
    .locals 1

    .prologue
    .line 657
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSearchMode:Z

    return v0
.end method

.method public isSectionHeaderDisplayEnabled()Z
    .locals 1

    .prologue
    .line 529
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSectionHeaderDisplayEnabled:Z

    return v0
.end method

.method public isSelectionVisible()Z
    .locals 1

    .prologue
    .line 601
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSelectionVisible:Z

    return v0
.end method

.method public isVisibleScrollbarEnabled()Z
    .locals 1

    .prologue
    .line 540
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVisibleScrollbarEnabled:Z

    return v0
.end method

.method protected loadDirectoryPartition(ILcom/android/contacts/list/DirectoryPartition;)V
    .locals 4
    .param p1, "partitionIndex"    # I
    .param p2, "partition"    # Lcom/android/contacts/list/DirectoryPartition;

    .prologue
    .line 395
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 396
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "directoryId"

    invoke-virtual {p2}, Lcom/android/contacts/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 397
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 398
    return-void
.end method

.method protected loadPreferences()Z
    .locals 3

    .prologue
    .line 733
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    const/4 v0, 0x0

    .line 734
    .local v0, "changed":Z
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getContactNameDisplayOrder()I

    move-result v1

    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v2}, Lcom/android/contacts/preference/ContactsPreferences;->getDisplayOrder()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 735
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v1}, Lcom/android/contacts/preference/ContactsPreferences;->getDisplayOrder()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactEntryListFragment;->setContactNameDisplayOrder(I)V

    .line 736
    const/4 v0, 0x1

    .line 739
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getSortOrder()I

    move-result v1

    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v2}, Lcom/android/contacts/preference/ContactsPreferences;->getSortOrder()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 740
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v1}, Lcom/android/contacts/preference/ContactsPreferences;->getSortOrder()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactEntryListFragment;->setSortOrder(I)V

    .line 741
    const/4 v0, 0x1

    .line 744
    :cond_1
    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 184
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 185
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->setContext(Landroid/content/Context;)V

    .line 186
    invoke-super {p0}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactEntryListFragment;->setLoaderManager(Landroid/app/LoaderManager;)V

    .line 187
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 270
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 271
    new-instance v0, Lcom/android/contacts/preference/ContactsPreferences;

    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/contacts/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    .line 272
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->restoreSavedState(Landroid/os/Bundle;)V

    .line 273
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 4
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 344
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    const/4 v3, -0x1

    if-ne p1, v3, :cond_0

    .line 345
    new-instance v2, Lcom/android/contacts/list/DirectoryListLoader;

    iget-object v3, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/contacts/list/DirectoryListLoader;-><init>(Landroid/content/Context;)V

    .line 346
    .local v2, "loader":Lcom/android/contacts/list/DirectoryListLoader;
    iget-object v3, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v3, v2}, Lcom/android/contacts/list/ContactEntryListAdapter;->configureDirectoryLoader(Lcom/android/contacts/list/DirectoryListLoader;)V

    .line 354
    .end local v2    # "loader":Lcom/android/contacts/list/DirectoryListLoader;
    :goto_0
    return-object v2

    .line 349
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->createCursorLoader()Landroid/content/CursorLoader;

    move-result-object v2

    .line 350
    .local v2, "loader":Landroid/content/CursorLoader;
    if-eqz p2, :cond_1

    const-string v3, "directoryId"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "directoryId"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 353
    .local v0, "directoryId":J
    :goto_1
    iget-object v3, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v3, v2, v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->configureLoader(Landroid/content/CursorLoader;J)V

    goto :goto_0

    .line 350
    .end local v0    # "directoryId":J
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 750
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/list/ContactEntryListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 752
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->createListAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    .line 754
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isSearchMode()Z

    move-result v0

    .line 755
    .local v0, "searchMode":Z
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->setSearchMode(Z)V

    .line 756
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->configureDefaultPartition(ZZ)V

    .line 757
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactEntryListAdapter;->setPhotoLoader(Lcom/android/contacts/ContactPhotoManager;)V

    .line 758
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 760
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isSearchMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 761
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 762
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->requestFocus()Z

    .line 765
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mView:Landroid/view/View;

    return-object v1
.end method

.method protected onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    const/4 v2, 0x0

    .line 769
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/list/ContactEntryListFragment;->inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mView:Landroid/view/View;

    .line 771
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mView:Landroid/view/View;

    const v3, 0x102000a

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    .line 772
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    if-nez v1, :cond_0

    .line 773
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Your content must have a ListView whose id attribute is \'android.R.id.list\'"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 778
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mView:Landroid/view/View;

    const v3, 0x1020004

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 779
    .local v0, "emptyView":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 780
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 781
    instance-of v1, v0, Lcom/android/contacts/ContactListEmptyView;

    if-eqz v1, :cond_1

    .line 782
    check-cast v0, Lcom/android/contacts/ContactListEmptyView;

    .end local v0    # "emptyView":Landroid/view/View;
    iput-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mEmptyView:Lcom/android/contacts/ContactListEmptyView;

    .line 786
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 787
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 788
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 789
    iget-object v3, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isSearchMode()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 793
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 796
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSaveEnabled(Z)V

    .line 798
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContextMenuAdapter:Lcom/android/contacts/widget/ContextMenuAdapter;

    if-eqz v1, :cond_2

    .line 799
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContextMenuAdapter:Lcom/android/contacts/widget/ContextMenuAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 802
    :cond_2
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->configureVerticalScrollbar()V

    .line 803
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->configurePhotoLoader()V

    .line 804
    return-void

    :cond_3
    move v1, v2

    .line 789
    goto :goto_0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 878
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    .line 879
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->hideSoftKeyboard()V

    .line 881
    :cond_0
    return-void
.end method

.method protected abstract onItemClick(IJ)V
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
    .line 858
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->hideSoftKeyboard()V

    .line 860
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    sub-int v0, p3, v1

    .line 861
    .local v0, "adjPosition":I
    if-ltz v0, :cond_0

    .line 862
    invoke-virtual {p0, v0, p4, p5}, Lcom/android/contacts/list/ContactEntryListFragment;->onItemClick(IJ)V

    .line 864
    :cond_0
    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 5
    .param p2, "data"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    const/4 v4, -0x1

    .line 409
    iget-boolean v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mEnabled:Z

    if-nez v2, :cond_1

    .line 435
    :cond_0
    :goto_0
    return-void

    .line 413
    :cond_1
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v1

    .line 414
    .local v1, "loaderId":I
    if-ne v1, v4, :cond_2

    .line 415
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectoryListStatus:I

    .line 416
    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v2, p2}, Lcom/android/contacts/list/ContactEntryListAdapter;->changeDirectories(Landroid/database/Cursor;)V

    .line 417
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->startLoading()V

    goto :goto_0

    .line 419
    :cond_2
    invoke-virtual {p0, v1, p2}, Lcom/android/contacts/list/ContactEntryListFragment;->onPartitionLoaded(ILandroid/database/Cursor;)V

    .line 420
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isSearchMode()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 421
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getDirectorySearchMode()I

    move-result v0

    .line 422
    .local v0, "directorySearchMode":I
    if-eqz v0, :cond_0

    .line 423
    iget v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectoryListStatus:I

    if-nez v2, :cond_3

    .line 424
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectoryListStatus:I

    .line 425
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v4, v3, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0

    .line 427
    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->startLoading()V

    goto :goto_0

    .line 431
    .end local v0    # "directorySearchMode":I
    :cond_4
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectoryListStatus:I

    .line 432
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/LoaderManager;->destroyLoader(I)V

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 66
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/list/ContactEntryListFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 438
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method protected onPartitionLoaded(ILandroid/database/Cursor;)V
    .locals 1
    .param p1, "partitionIndex"    # I
    .param p2, "data"    # Landroid/database/Cursor;

    .prologue
    .line 441
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 454
    :cond_0
    :goto_0
    return-void

    .line 447
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/android/contacts/list/ContactEntryListAdapter;->changeCursor(ILandroid/database/Cursor;)V

    .line 448
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->setProfileHeader()V

    .line 449
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/list/ContactEntryListFragment;->showCount(ILandroid/database/Cursor;)V

    .line 451
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isLoading()Z

    move-result v0

    if-nez v0, :cond_0

    .line 452
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->completeRestoreInstanceState()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 896
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 897
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->removePendingDirectorySearchRequests()V

    .line 898
    return-void
.end method

.method public onPickerResult(Landroid/content/Intent;)V
    .locals 2
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    .line 966
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Picker result handler is not implemented."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 245
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 246
    const-string v0, "sectionHeaderDisplayEnabled"

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSectionHeaderDisplayEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 247
    const-string v0, "photoLoaderEnabled"

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mPhotoLoaderEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 248
    const-string v0, "quickContactEnabled"

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mQuickContactEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 249
    const-string v0, "includeProfile"

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mIncludeProfile:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 250
    const-string v0, "searchMode"

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSearchMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 251
    const-string v0, "visibleScrollbarEnabled"

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVisibleScrollbarEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 252
    const-string v0, "scrollbarPosition"

    iget v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVerticalScrollbarPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 253
    const-string v0, "directorySearchMode"

    iget v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectorySearchMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 254
    const-string v0, "selectionVisible"

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSelectionVisible:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 255
    const-string v0, "legacyCompatibility"

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mLegacyCompatibility:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 256
    const-string v0, "queryString"

    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mQueryString:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const-string v0, "directoryResultLimit"

    iget v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectoryResultLimit:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 258
    const-string v0, "darkTheme"

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDarkTheme:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 260
    const-string v0, "checkBoxEnabled"

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mCheckBoxEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 263
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 264
    const-string v0, "liststate"

    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 266
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 845
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 849
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 850
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    invoke-virtual {v0}, Lcom/android/contacts/ContactPhotoManager;->pause()V

    .line 854
    :cond_0
    :goto_0
    return-void

    .line 851
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isPhotoLoaderEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 852
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    invoke-virtual {v0}, Lcom/android/contacts/ContactPhotoManager;->resume()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 304
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 306
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mPreferencesChangeListener:Lcom/android/contacts/preference/ContactsPreferences$ChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/contacts/preference/ContactsPreferences;->registerChangeListener(Lcom/android/contacts/preference/ContactsPreferences$ChangeListener;)V

    .line 308
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->loadPreferences()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mForceLoad:Z

    .line 310
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectoryListStatus:I

    .line 311
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mLoadPriorityDirectoriesOnly:Z

    .line 313
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->startLoading()V

    .line 314
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 476
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 477
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v0}, Lcom/android/contacts/preference/ContactsPreferences;->unregisterChangeListener()V

    .line 478
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->clearPartitions()V

    .line 479
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 888
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    if-ne p1, v0, :cond_0

    .line 889
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->hideSoftKeyboard()V

    .line 891
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected reloadData()V
    .locals 2

    .prologue
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    const/4 v1, 0x1

    .line 482
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->removePendingDirectorySearchRequests()V

    .line 483
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->onDataReload()V

    .line 484
    iput-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mLoadPriorityDirectoriesOnly:Z

    .line 485
    iput-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mForceLoad:Z

    .line 486
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->startLoading()V

    .line 487
    return-void
.end method

.method public restoreSavedState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 276
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    if-nez p1, :cond_0

    .line 300
    :goto_0
    return-void

    .line 280
    :cond_0
    const-string v0, "sectionHeaderDisplayEnabled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSectionHeaderDisplayEnabled:Z

    .line 281
    const-string v0, "photoLoaderEnabled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mPhotoLoaderEnabled:Z

    .line 282
    const-string v0, "quickContactEnabled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mQuickContactEnabled:Z

    .line 283
    const-string v0, "includeProfile"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mIncludeProfile:Z

    .line 284
    const-string v0, "searchMode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSearchMode:Z

    .line 285
    const-string v0, "visibleScrollbarEnabled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVisibleScrollbarEnabled:Z

    .line 286
    const-string v0, "scrollbarPosition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVerticalScrollbarPosition:I

    .line 287
    const-string v0, "directorySearchMode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectorySearchMode:I

    .line 288
    const-string v0, "selectionVisible"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSelectionVisible:Z

    .line 289
    const-string v0, "legacyCompatibility"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mLegacyCompatibility:Z

    .line 290
    const-string v0, "queryString"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mQueryString:Ljava/lang/String;

    .line 291
    const-string v0, "directoryResultLimit"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectoryResultLimit:I

    .line 292
    const-string v0, "darkTheme"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDarkTheme:Z

    .line 295
    const-string v0, "checkBoxEnabled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mCheckBoxEnabled:Z

    .line 299
    const-string v0, "liststate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListState:Landroid/os/Parcelable;

    goto :goto_0
.end method

.method public setCheckBoxEnabled(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 545
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mCheckBoxEnabled:Z

    .line 546
    return-void
.end method

.method protected setContactNameDisplayOrder(I)V
    .locals 1
    .param p1, "displayOrder"    # I

    .prologue
    .line 700
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iput p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDisplayOrder:I

    .line 701
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    if-eqz v0, :cond_0

    .line 702
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setContactNameDisplayOrder(I)V

    .line 704
    :cond_0
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 193
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iput-object p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    .line 194
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->configurePhotoLoader()V

    .line 195
    return-void
.end method

.method public setDarkTheme(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 958
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDarkTheme:Z

    .line 959
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setDarkTheme(Z)V

    .line 960
    :cond_0
    return-void
.end method

.method public setDirectoryResultLimit(I)V
    .locals 0
    .param p1, "limit"    # I

    .prologue
    .line 718
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iput p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectoryResultLimit:I

    .line 719
    return-void
.end method

.method public setDirectorySearchMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 684
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iput p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectorySearchMode:I

    .line 685
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 202
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mEnabled:Z

    if-eq v0, p1, :cond_0

    .line 203
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mEnabled:Z

    .line 204
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    if-eqz v0, :cond_0

    .line 205
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mEnabled:Z

    if-eqz v0, :cond_1

    .line 206
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->reloadData()V

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->clearPartitions()V

    goto :goto_0
.end method

.method public setLegacyCompatibilityMode(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 692
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mLegacyCompatibility:Z

    .line 693
    return-void
.end method

.method public setLoaderManager(Landroid/app/LoaderManager;)V
    .locals 0
    .param p1, "loaderManager"    # Landroid/app/LoaderManager;

    .prologue
    .line 218
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iput-object p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mLoaderManager:Landroid/app/LoaderManager;

    .line 219
    return-void
.end method

.method public setPhotoLoaderEnabled(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 589
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mPhotoLoaderEnabled:Z

    .line 590
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->configurePhotoLoader()V

    .line 591
    return-void
.end method

.method protected setProfileHeader()V
    .locals 1

    .prologue
    .line 508
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mUserProfileExists:Z

    .line 509
    return-void
.end method

.method public setQueryString(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "queryString"    # Ljava/lang/String;
    .param p2, "delaySelection"    # Z

    .prologue
    .line 666
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 668
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mQueryString:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 669
    iput-object p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mQueryString:Ljava/lang/String;

    .line 670
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mQueryString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactEntryListFragment;->setSearchMode(Z)V

    .line 672
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    if-eqz v0, :cond_1

    .line 673
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setQueryString(Ljava/lang/String;)V

    .line 674
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->reloadData()V

    .line 677
    :cond_1
    return-void

    .line 670
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setQuickContactEnabled(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 609
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mQuickContactEnabled:Z

    .line 610
    return-void
.end method

.method protected setSearchMode(Z)V
    .locals 4
    .param p1, "flag"    # Z

    .prologue
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 627
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSearchMode:Z

    if-eq v0, p1, :cond_3

    .line 628
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSearchMode:Z

    .line 629
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSearchMode:Z

    if-nez v0, :cond_4

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactEntryListFragment;->setSectionHeaderDisplayEnabled(Z)V

    .line 631
    if-nez p1, :cond_0

    .line 632
    iput v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectoryListStatus:I

    .line 633
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 636
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    if-eqz v0, :cond_2

    .line 637
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setPinnedPartitionHeadersEnabled(Z)V

    .line 638
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setSearchMode(Z)V

    .line 640
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->clearPartitions()V

    .line 641
    if-nez p1, :cond_1

    .line 645
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->removeDirectoriesAfterDefault()V

    .line 647
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v0, v2, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->configureDefaultPartition(ZZ)V

    .line 650
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_3

    .line 651
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    if-nez p1, :cond_5

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 654
    :cond_3
    return-void

    :cond_4
    move v0, v2

    .line 629
    goto :goto_0

    :cond_5
    move v1, v2

    .line 651
    goto :goto_1
.end method

.method public setSectionHeaderDisplayEnabled(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 519
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSectionHeaderDisplayEnabled:Z

    if-eq v0, p1, :cond_1

    .line 520
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSectionHeaderDisplayEnabled:Z

    .line 521
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 524
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->configureVerticalScrollbar()V

    .line 526
    :cond_1
    return-void
.end method

.method public setSelectionVisible(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 605
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSelectionVisible:Z

    .line 606
    return-void
.end method

.method public setSortOrder(I)V
    .locals 1
    .param p1, "sortOrder"    # I

    .prologue
    .line 711
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iput p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSortOrder:I

    .line 712
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    if-eqz v0, :cond_0

    .line 713
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setSortOrder(I)V

    .line 715
    :cond_0
    return-void
.end method

.method public setVerticalScrollbarPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 554
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVerticalScrollbarPosition:I

    if-eq v0, p1, :cond_0

    .line 555
    iput p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVerticalScrollbarPosition:I

    .line 556
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->configureVerticalScrollbar()V

    .line 558
    :cond_0
    return-void
.end method

.method public setVisibleScrollbarEnabled(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 533
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVisibleScrollbarEnabled:Z

    if-eq v0, p1, :cond_0

    .line 534
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVisibleScrollbarEnabled:Z

    .line 535
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->configureVerticalScrollbar()V

    .line 537
    :cond_0
    return-void
.end method

.method protected showCount(ILandroid/database/Cursor;)V
    .locals 0
    .param p1, "partitionIndex"    # I
    .param p2, "data"    # Landroid/database/Cursor;

    .prologue
    .line 501
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    return-void
.end method

.method protected startLoading()V
    .locals 6

    .prologue
    .line 317
    .local p0, "this":Lcom/android/contacts/list/ContactEntryListFragment;, "Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-object v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    if-nez v4, :cond_0

    .line 340
    :goto_0
    return-void

    .line 322
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->configureAdapter()V

    .line 323
    iget-object v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v4}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v3

    .line 324
    .local v3, "partitionCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_4

    .line 325
    iget-object v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v4, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v2

    .line 326
    .local v2, "partition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    instance-of v4, v2, Lcom/android/contacts/list/DirectoryPartition;

    if-eqz v4, :cond_3

    move-object v0, v2

    .line 327
    check-cast v0, Lcom/android/contacts/list/DirectoryPartition;

    .line 328
    .local v0, "directoryPartition":Lcom/android/contacts/list/DirectoryPartition;
    invoke-virtual {v0}, Lcom/android/contacts/list/DirectoryPartition;->getStatus()I

    move-result v4

    if-nez v4, :cond_2

    .line 329
    invoke-virtual {v0}, Lcom/android/contacts/list/DirectoryPartition;->isPriorityDirectory()Z

    move-result v4

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mLoadPriorityDirectoriesOnly:Z

    if-nez v4, :cond_2

    .line 330
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/contacts/list/ContactEntryListFragment;->startLoadingDirectoryPartition(I)V

    .line 324
    .end local v0    # "directoryPartition":Lcom/android/contacts/list/DirectoryPartition;
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 334
    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_2

    .line 339
    .end local v2    # "partition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    :cond_4
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mLoadPriorityDirectoriesOnly:Z

    goto :goto_0
.end method
