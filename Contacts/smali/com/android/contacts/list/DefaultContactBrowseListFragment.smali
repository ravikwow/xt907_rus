.class public Lcom/android/contacts/list/DefaultContactBrowseListFragment;
.super Lcom/android/contacts/list/ContactBrowseListFragment;
.source "DefaultContactBrowseListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/list/DefaultContactBrowseListFragment$FilterHeaderClickListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAccountFilterHeader:Landroid/view/View;

.field private mCounterHeaderView:Landroid/widget/TextView;

.field private mFilterHeaderClickListener:Landroid/view/View$OnClickListener;

.field private mMessageContainer:Landroid/widget/FrameLayout;

.field private mProfileHeader:Landroid/view/View;

.field private mProfileHeaderContainer:Landroid/widget/FrameLayout;

.field private mProfileMessage:Landroid/widget/Button;

.field private mProfileTitle:Landroid/widget/TextView;

.field private mSearchHeaderView:Landroid/view/View;

.field private mSearchProgress:Landroid/view/View;

.field private mSearchProgressText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 69
    invoke-direct {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;-><init>()V

    .line 67
    new-instance v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$FilterHeaderClickListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$FilterHeaderClickListener;-><init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Lcom/android/contacts/list/DefaultContactBrowseListFragment$1;)V

    iput-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mFilterHeaderClickListener:Landroid/view/View$OnClickListener;

    .line 70
    invoke-virtual {p0, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setPhotoLoaderEnabled(Z)V

    .line 71
    invoke-virtual {p0, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setSectionHeaderDisplayEnabled(Z)V

    .line 72
    invoke-virtual {p0, v2}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setVisibleScrollbarEnabled(Z)V

    .line 73
    return-void
.end method

.method private addEmptyUserProfileHeader(Landroid/view/LayoutInflater;)V
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 268
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 272
    .local v0, "list":Landroid/widget/ListView;
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileHeaderContainer:Landroid/widget/FrameLayout;

    .line 273
    const v1, 0x7f040095

    invoke-virtual {p1, v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileHeader:Landroid/view/View;

    .line 274
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileHeader:Landroid/view/View;

    const v2, 0x7f06014d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCounterHeaderView:Landroid/widget/TextView;

    .line 275
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileHeader:Landroid/view/View;

    const v2, 0x7f06014c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileTitle:Landroid/widget/TextView;

    .line 276
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 277
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileHeaderContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileHeader:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 278
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileHeaderContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v3, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 281
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mMessageContainer:Landroid/widget/FrameLayout;

    .line 282
    const v1, 0x7f040094

    invoke-virtual {p1, v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileMessage:Landroid/widget/Button;

    .line 283
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mMessageContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileMessage:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 284
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mMessageContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v3, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 286
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileMessage:Landroid/widget/Button;

    new-instance v2, Lcom/android/contacts/list/DefaultContactBrowseListFragment$1;

    invoke-direct {v2, p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$1;-><init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    return-void
.end method

.method private checkHeaderViewVisibility()V
    .locals 3

    .prologue
    const/16 v1, 0x8

    .line 136
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCounterHeaderView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 137
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCounterHeaderView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 139
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->updateFilterHeaderView()V

    .line 142
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSearchHeaderView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSearchHeaderView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 145
    :cond_1
    return-void

    .line 137
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showEmptyUserProfile(Z)V
    .locals 4
    .param p1, "show"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 252
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileHeaderContainer:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 253
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileHeader:Landroid/view/View;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 254
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCounterHeaderView:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 255
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileTitle:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 256
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mMessageContainer:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 257
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mProfileMessage:Landroid/widget/Button;

    if-eqz p1, :cond_5

    :goto_5
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 258
    return-void

    :cond_0
    move v0, v2

    .line 252
    goto :goto_0

    :cond_1
    move v0, v2

    .line 253
    goto :goto_1

    :cond_2
    move v0, v2

    .line 254
    goto :goto_2

    :cond_3
    move v0, v2

    .line 255
    goto :goto_3

    :cond_4
    move v0, v2

    .line 256
    goto :goto_4

    :cond_5
    move v1, v2

    .line 257
    goto :goto_5
.end method

.method private showSearchProgress(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 132
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSearchProgress:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 133
    return-void

    .line 132
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private updateFilterHeaderView()V
    .locals 5

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 154
    iget-object v4, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAccountFilterHeader:Landroid/view/View;

    if-nez v4, :cond_0

    .line 165
    :goto_0
    return-void

    .line 157
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v0

    .line 158
    .local v0, "filter":Lcom/android/contacts/list/ContactListFilter;
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isSearchMode()Z

    move-result v4

    if-nez v4, :cond_2

    .line 159
    iget-object v4, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAccountFilterHeader:Landroid/view/View;

    invoke-static {v4, v0, v2}, Lcom/android/contacts/util/AccountFilterUtil;->updateAccountFilterTitleForPeople(Landroid/view/View;Lcom/android/contacts/list/ContactListFilter;Z)Z

    move-result v1

    .line 161
    .local v1, "shouldShowHeader":Z
    iget-object v4, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAccountFilterHeader:Landroid/view/View;

    if-eqz v1, :cond_1

    :goto_1
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    .line 163
    .end local v1    # "shouldShowHeader":Z
    :cond_2
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAccountFilterHeader:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public createCursorLoader()Landroid/content/CursorLoader;
    .locals 2

    .prologue
    .line 77
    new-instance v0, Lcom/android/contacts/list/ProfileAndContactsLoader;

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/list/ProfileAndContactsLoader;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected bridge synthetic createListAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->createListAdapter()Lcom/android/contacts/list/ContactListAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected createListAdapter()Lcom/android/contacts/list/ContactListAdapter;
    .locals 3

    .prologue
    .line 87
    new-instance v0, Lcom/android/contacts/list/DefaultContactListAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/list/DefaultContactListAdapter;-><init>(Landroid/content/Context;)V

    .line 88
    .local v0, "adapter":Lcom/android/contacts/list/DefaultContactListAdapter;
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isSectionHeaderDisplayEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DefaultContactListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 89
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DefaultContactListAdapter;->setDisplayPhotos(Z)V

    .line 90
    return-object v0
.end method

.method protected inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 95
    const v0, 0x7f040023

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 238
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 239
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 240
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/list/ContactListFilterController;->getInstance(Landroid/content/Context;)Lcom/android/contacts/list/ContactListFilterController;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/android/contacts/util/AccountFilterUtil;->handleAccountFilterResult(Lcom/android/contacts/list/ContactListFilterController;ILandroid/content/Intent;)V

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    sget-object v0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->TAG:Ljava/lang/String;

    const-string v1, "getActivity() returns null during Fragment#onActivityResult()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 100
    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/ContactBrowseListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 102
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f06001c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAccountFilterHeader:Landroid/view/View;

    .line 103
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mAccountFilterHeader:Landroid/view/View;

    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mFilterHeaderClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f06014d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCounterHeaderView:Landroid/widget/TextView;

    .line 108
    invoke-direct {p0, p1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->addEmptyUserProfileHeader(Landroid/view/LayoutInflater;)V

    .line 109
    invoke-direct {p0, v3}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->showEmptyUserProfile(Z)V

    .line 113
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 114
    .local v0, "headerContainer":Landroid/widget/FrameLayout;
    const v1, 0x7f040086

    invoke-virtual {p1, v1, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSearchHeaderView:Landroid/view/View;

    .line 115
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSearchHeaderView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 116
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0, v4, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 117
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->checkHeaderViewVisibility()V

    .line 119
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f060083

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSearchProgress:Landroid/view/View;

    .line 120
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSearchHeaderView:Landroid/view/View;

    const v2, 0x7f06012f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSearchProgressText:Landroid/widget/TextView;

    .line 121
    return-void
.end method

.method protected onItemClick(IJ)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "id"    # J

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/ContactListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->viewContact(Landroid/net/Uri;)V

    .line 83
    return-void
.end method

.method public setFilter(Lcom/android/contacts/list/ContactListFilter;)V
    .locals 0
    .param p1, "filter"    # Lcom/android/contacts/list/ContactListFilter;

    .prologue
    .line 149
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactBrowseListFragment;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 150
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->updateFilterHeaderView()V

    .line 151
    return-void
.end method

.method protected setProfileHeader()V
    .locals 1

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactListAdapter;->hasProfile()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mUserProfileExists:Z

    .line 233
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mUserProfileExists:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isSearchMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->showEmptyUserProfile(Z)V

    .line 234
    return-void

    .line 233
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setSearchMode(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 125
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactBrowseListFragment;->setSearchMode(Z)V

    .line 126
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->checkHeaderViewVisibility()V

    .line 127
    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->showSearchProgress(Z)V

    .line 128
    :cond_0
    return-void
.end method

.method protected showCount(ILandroid/database/Cursor;)V
    .locals 10
    .param p1, "partitionIndex"    # I
    .param p2, "data"    # Landroid/database/Cursor;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 169
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->isSearchMode()Z

    move-result v5

    if-nez v5, :cond_5

    if-eqz p2, :cond_5

    .line 170
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 171
    .local v1, "count":I
    if-eqz v1, :cond_3

    .line 172
    iget-boolean v5, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mUserProfileExists:Z

    if-eqz v5, :cond_1

    move v5, v6

    :goto_0
    sub-int/2addr v1, v5

    .line 173
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0e0001

    invoke-virtual {v5, v8, v1}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 176
    .local v4, "format":Ljava/lang/String;
    iget-boolean v5, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mUserProfileExists:Z

    if-eqz v5, :cond_2

    .line 177
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/list/ContactListAdapter;

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/contacts/list/ContactListAdapter;->setContactsCount(Ljava/lang/String;)V

    .line 228
    .end local v1    # "count":I
    .end local v4    # "format":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .restart local v1    # "count":I
    :cond_1
    move v5, v7

    .line 172
    goto :goto_0

    .line 179
    .restart local v4    # "format":Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCounterHeaderView:Landroid/widget/TextView;

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 182
    .end local v4    # "format":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v2

    .line 183
    .local v2, "filter":Lcom/android/contacts/list/ContactListFilter;
    if-eqz v2, :cond_4

    iget v3, v2, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    .line 185
    .local v3, "filterType":I
    :goto_2
    packed-switch v3, :pswitch_data_0

    .line 200
    :pswitch_0
    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCounterHeaderView:Landroid/widget/TextView;

    const v6, 0x7f0b0065

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 183
    .end local v3    # "filterType":I
    :cond_4
    const/4 v3, -0x2

    goto :goto_2

    .line 187
    .restart local v3    # "filterType":I
    :pswitch_1
    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCounterHeaderView:Landroid/widget/TextView;

    const v8, 0x7f0b0068

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v9, v2, Lcom/android/contacts/list/ContactListFilter;->accountName:Ljava/lang/String;

    aput-object v9, v6, v7

    invoke-virtual {p0, v8, v6}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 191
    :pswitch_2
    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCounterHeaderView:Landroid/widget/TextView;

    const v6, 0x7f0b0064

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 194
    :pswitch_3
    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCounterHeaderView:Landroid/widget/TextView;

    const v6, 0x7f0b0067

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 197
    :pswitch_4
    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mCounterHeaderView:Landroid/widget/TextView;

    const v6, 0x7f0b0066

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 205
    .end local v1    # "count":I
    .end local v2    # "filter":Lcom/android/contacts/list/ContactListFilter;
    .end local v3    # "filterType":I
    :cond_5
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListAdapter;

    .line 206
    .local v0, "adapter":Lcom/android/contacts/list/ContactListAdapter;
    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getQueryString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactListAdapter;->areAllPartitionsEmpty()Z

    move-result v5

    if-nez v5, :cond_7

    .line 212
    :cond_6
    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSearchHeaderView:Landroid/view/View;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 213
    invoke-direct {p0, v7}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->showSearchProgress(Z)V

    .line 226
    :goto_3
    invoke-direct {p0, v7}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->showEmptyUserProfile(Z)V

    goto :goto_1

    .line 215
    :cond_7
    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSearchHeaderView:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 216
    invoke-virtual {v0}, Lcom/android/contacts/list/ContactListAdapter;->isLoading()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 217
    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSearchProgressText:Landroid/widget/TextView;

    const v8, 0x7f0b0181

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(I)V

    .line 218
    invoke-direct {p0, v6}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->showSearchProgress(Z)V

    goto :goto_3

    .line 220
    :cond_8
    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSearchProgressText:Landroid/widget/TextView;

    const v6, 0x7f0b006d

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 221
    iget-object v5, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->mSearchProgressText:Landroid/widget/TextView;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    .line 223
    invoke-direct {p0, v7}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->showSearchProgress(Z)V

    goto :goto_3

    .line 185
    :pswitch_data_0
    .packed-switch -0x5
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
