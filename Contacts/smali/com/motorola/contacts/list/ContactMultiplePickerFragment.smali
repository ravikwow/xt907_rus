.class public Lcom/motorola/contacts/list/ContactMultiplePickerFragment;
.super Lcom/android/contacts/list/ContactPickerFragment;
.source "ContactMultiplePickerFragment.java"


# instance fields
.field private mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

.field private mListener:Lcom/motorola/contacts/list/OnContactMultiplePickerActionListener;

.field public mSelectionCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 30
    invoke-direct {p0}, Lcom/android/contacts/list/ContactPickerFragment;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/contacts/list/ContactMultiplePickerFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    .line 31
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactEntryListFragment;->setPhotoLoaderEnabled(Z)V

    .line 32
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactEntryListFragment;->setSectionHeaderDisplayEnabled(Z)V

    .line 33
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactEntryListFragment;->setVisibleScrollbarEnabled(Z)V

    .line 34
    invoke-virtual {p0, v2}, Lcom/android/contacts/list/ContactEntryListFragment;->setQuickContactEnabled(Z)V

    .line 35
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactEntryListFragment;->setCheckBoxEnabled(Z)V

    .line 36
    invoke-virtual {p0, v2}, Lcom/android/contacts/list/ContactEntryListFragment;->setDirectorySearchMode(I)V

    .line 37
    return-void
.end method


# virtual methods
.method public completeFragmentSpecificActionsOnLoadingCompleted()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 88
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/AbsListView;->clearChoices()V

    .line 89
    iget-object v5, p0, Lcom/motorola/contacts/list/ContactMultiplePickerFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 90
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v3

    .line 91
    .local v3, "offsetOfRealData":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v5, p0, Lcom/motorola/contacts/list/ContactMultiplePickerFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v5}, Lcom/android/common/widget/CompositeCursorAdapter;->getCount()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 93
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isLegacyCompatibilityMode()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 94
    iget-object v5, p0, Lcom/motorola/contacts/list/ContactMultiplePickerFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    check-cast v5, Lcom/android/contacts/list/LegacyContactListAdapter;

    invoke-virtual {v5, v2}, Lcom/android/contacts/list/LegacyContactListAdapter;->getPersonUri(I)Landroid/net/Uri;

    move-result-object v4

    .line 98
    .local v4, "uri":Landroid/net/Uri;
    :goto_1
    if-eqz v4, :cond_0

    .line 99
    invoke-static {v4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 100
    .local v0, "dataId":J
    iget-object v5, p0, Lcom/motorola/contacts/list/ContactMultiplePickerFragment;->mSelectionCache:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 101
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v6

    add-int v7, v2, v3

    iget-object v5, p0, Lcom/motorola/contacts/list/ContactMultiplePickerFragment;->mSelectionCache:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v6, v7, v5}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 91
    .end local v0    # "dataId":J
    :cond_0
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 96
    .end local v4    # "uri":Landroid/net/Uri;
    :cond_1
    iget-object v5, p0, Lcom/motorola/contacts/list/ContactMultiplePickerFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    check-cast v5, Lcom/android/contacts/list/ContactListAdapter;

    invoke-virtual {v5, v2}, Lcom/android/contacts/list/ContactListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v4

    .restart local v4    # "uri":Landroid/net/Uri;
    goto :goto_1

    .line 103
    .restart local v0    # "dataId":J
    :cond_2
    iget-object v5, p0, Lcom/motorola/contacts/list/ContactMultiplePickerFragment;->mListener:Lcom/motorola/contacts/list/OnContactMultiplePickerActionListener;

    invoke-interface {v5}, Lcom/motorola/contacts/list/OnContactMultiplePickerActionListener;->isSelectAllSupported()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v5

    add-int v6, v2, v3

    invoke-virtual {v5, v6, v9}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 105
    iget-object v5, p0, Lcom/motorola/contacts/list/ContactMultiplePickerFragment;->mSelectionCache:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 112
    .end local v0    # "dataId":J
    .end local v2    # "i":I
    .end local v3    # "offsetOfRealData":I
    .end local v4    # "uri":Landroid/net/Uri;
    :cond_3
    iget-object v5, p0, Lcom/motorola/contacts/list/ContactMultiplePickerFragment;->mListener:Lcom/motorola/contacts/list/OnContactMultiplePickerActionListener;

    invoke-interface {v5}, Lcom/motorola/contacts/list/OnContactMultiplePickerActionListener;->onContactLoadingCompletedAction()V

    .line 113
    return-void
.end method

.method protected createListAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;
    .locals 2

    .prologue
    .line 78
    invoke-super {p0}, Lcom/android/contacts/list/ContactPickerFragment;->createListAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/contacts/list/ContactMultiplePickerFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    .line 79
    iget-object v0, p0, Lcom/motorola/contacts/list/ContactMultiplePickerFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isCheckBoxEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setCheckBoxEnabled(Z)V

    .line 80
    iget-object v0, p0, Lcom/motorola/contacts/list/ContactMultiplePickerFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    return-object v0
.end method

.method protected inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 123
    const v0, 0x7f040027

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->onAttach(Landroid/app/Activity;)V

    .line 42
    iget-object v0, p0, Lcom/motorola/contacts/list/ContactMultiplePickerFragment;->mSelectionCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/contacts/list/ContactMultiplePickerFragment;->mSelectionCache:Ljava/util/HashMap;

    .line 45
    :cond_0
    invoke-static {p1}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 46
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactEntryListFragment;->setVerticalScrollbarPosition(I)V

    .line 50
    :goto_0
    return-void

    .line 48
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactEntryListFragment;->setVerticalScrollbarPosition(I)V

    goto :goto_0
.end method

.method protected onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 117
    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/ContactPickerFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 118
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 119
    return-void
.end method

.method protected onItemClick(IJ)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "id"    # J

    .prologue
    .line 129
    invoke-super {p0, p1, p2, p3}, Lcom/android/contacts/list/ContactPickerFragment;->onItemClick(IJ)V

    .line 132
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isLegacyCompatibilityMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 133
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/list/LegacyContactListAdapter;

    invoke-virtual {v2, p1}, Lcom/android/contacts/list/LegacyContactListAdapter;->getPersonUri(I)Landroid/net/Uri;

    move-result-object v1

    .line 138
    .local v1, "uri":Landroid/net/Uri;
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    .line 139
    .local v0, "offsetOfRealData":I
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    add-int v3, p1, v0

    invoke-virtual {v2, v3}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/motorola/contacts/list/ContactMultiplePickerFragment;->toggleContact(Landroid/net/Uri;Z)V

    .line 141
    return-void

    .line 135
    .end local v0    # "offsetOfRealData":I
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/list/ContactListAdapter;

    invoke-virtual {v2, p1}, Lcom/android/contacts/list/ContactListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v1

    .restart local v1    # "uri":Landroid/net/Uri;
    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactPickerFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 55
    const-string v0, "userSelectionCache"

    iget-object v1, p0, Lcom/motorola/contacts/list/ContactMultiplePickerFragment;->mSelectionCache:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 56
    return-void
.end method

.method public restoreSavedState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactPickerFragment;->restoreSavedState(Landroid/os/Bundle;)V

    .line 63
    if-nez p1, :cond_0

    .line 68
    :goto_0
    return-void

    .line 67
    :cond_0
    const-string v0, "userSelectionCache"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/motorola/contacts/list/ContactMultiplePickerFragment;->mSelectionCache:Ljava/util/HashMap;

    goto :goto_0
.end method

.method public setOnContactPickerActionListener(Lcom/android/contacts/list/OnContactPickerActionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/contacts/list/OnContactPickerActionListener;

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactPickerFragment;->setOnContactPickerActionListener(Lcom/android/contacts/list/OnContactPickerActionListener;)V

    .line 73
    check-cast p1, Lcom/motorola/contacts/list/OnContactMultiplePickerActionListener;

    .end local p1    # "listener":Lcom/android/contacts/list/OnContactPickerActionListener;
    iput-object p1, p0, Lcom/motorola/contacts/list/ContactMultiplePickerFragment;->mListener:Lcom/motorola/contacts/list/OnContactMultiplePickerActionListener;

    .line 74
    return-void
.end method

.method public toggleContact(Landroid/net/Uri;Z)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "isItemChecked"    # Z

    .prologue
    .line 144
    iget-object v0, p0, Lcom/motorola/contacts/list/ContactMultiplePickerFragment;->mListener:Lcom/motorola/contacts/list/OnContactMultiplePickerActionListener;

    invoke-interface {v0, p1, p2}, Lcom/motorola/contacts/list/OnContactMultiplePickerActionListener;->onToggleContactAction(Landroid/net/Uri;Z)V

    .line 145
    return-void
.end method
