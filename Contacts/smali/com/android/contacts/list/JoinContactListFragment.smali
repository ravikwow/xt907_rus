.class public Lcom/android/contacts/list/JoinContactListFragment;
.super Lcom/android/contacts/list/ContactEntryListFragment;
.source "JoinContactListFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/list/ContactEntryListFragment",
        "<",
        "Lcom/android/contacts/list/JoinContactListAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field private mListener:Lcom/android/contacts/list/OnContactPickerActionListener;

.field private final mLoaderCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetContactId:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 94
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;-><init>()V

    .line 49
    new-instance v0, Lcom/android/contacts/list/JoinContactListFragment$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/list/JoinContactListFragment$1;-><init>(Lcom/android/contacts/list/JoinContactListFragment;)V

    iput-object v0, p0, Lcom/android/contacts/list/JoinContactListFragment;->mLoaderCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 95
    invoke-virtual {p0, v2}, Lcom/android/contacts/list/JoinContactListFragment;->setPhotoLoaderEnabled(Z)V

    .line 96
    invoke-virtual {p0, v2}, Lcom/android/contacts/list/JoinContactListFragment;->setSectionHeaderDisplayEnabled(Z)V

    .line 97
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/JoinContactListFragment;->setVisibleScrollbarEnabled(Z)V

    .line 98
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/JoinContactListFragment;->setQuickContactEnabled(Z)V

    .line 99
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/list/JoinContactListFragment;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/contacts/list/JoinContactListFragment;

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/android/contacts/list/JoinContactListFragment;->mTargetContactId:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/android/contacts/list/JoinContactListFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/list/JoinContactListFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/contacts/list/JoinContactListFragment;->showTargetContactName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/contacts/list/JoinContactListFragment;Landroid/database/Cursor;Landroid/database/Cursor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/list/JoinContactListFragment;
    .param p1, "x1"    # Landroid/database/Cursor;
    .param p2, "x2"    # Landroid/database/Cursor;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/list/JoinContactListFragment;->onContactListLoaded(Landroid/database/Cursor;Landroid/database/Cursor;)V

    return-void
.end method

.method private onContactListLoaded(Landroid/database/Cursor;Landroid/database/Cursor;)V
    .locals 2
    .param p1, "suggestionsCursor"    # Landroid/database/Cursor;
    .param p2, "allContactsCursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v1, 0x1

    .line 118
    invoke-virtual {p0}, Lcom/android/contacts/list/JoinContactListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/JoinContactListAdapter;

    .line 119
    .local v0, "adapter":Lcom/android/contacts/list/JoinContactListAdapter;
    invoke-virtual {v0, p1}, Lcom/android/contacts/list/JoinContactListAdapter;->setSuggestionsCursor(Landroid/database/Cursor;)V

    .line 120
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/JoinContactListFragment;->setVisibleScrollbarEnabled(Z)V

    .line 121
    invoke-virtual {p0, v1, p2}, Lcom/android/contacts/list/JoinContactListFragment;->onPartitionLoaded(ILandroid/database/Cursor;)V

    .line 122
    return-void
.end method

.method private showTargetContactName(Ljava/lang/String;)V
    .locals 6
    .param p1, "displayName"    # Ljava/lang/String;

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/android/contacts/list/JoinContactListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 126
    .local v0, "activity":Landroid/app/Activity;
    const v3, 0x7f0600fe

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 127
    .local v2, "blurbView":Landroid/widget/TextView;
    const v3, 0x7f0b0038

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v0, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, "blurb":Ljava/lang/String;
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    return-void
.end method


# virtual methods
.method protected configureAdapter()V
    .locals 3

    .prologue
    .line 142
    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->configureAdapter()V

    .line 143
    invoke-virtual {p0}, Lcom/android/contacts/list/JoinContactListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/JoinContactListAdapter;

    .line 144
    .local v0, "adapter":Lcom/android/contacts/list/JoinContactListAdapter;
    iget-wide v1, p0, Lcom/android/contacts/list/JoinContactListFragment;->mTargetContactId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/list/JoinContactListAdapter;->setTargetContactId(J)V

    .line 145
    return-void
.end method

.method public bridge synthetic createListAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/android/contacts/list/JoinContactListFragment;->createListAdapter()Lcom/android/contacts/list/JoinContactListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public createListAdapter()Lcom/android/contacts/list/JoinContactListAdapter;
    .locals 2

    .prologue
    .line 137
    new-instance v0, Lcom/android/contacts/list/JoinContactListAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/list/JoinContactListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/list/JoinContactListAdapter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 149
    const v0, 0x7f04006b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onItemClick(IJ)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "id"    # J

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/android/contacts/list/JoinContactListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/list/JoinContactListAdapter;

    invoke-virtual {v1, p1}, Lcom/android/contacts/list/JoinContactListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v0

    .line 155
    .local v0, "contactUri":Landroid/net/Uri;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/contacts/list/JoinContactListFragment;->mListener:Lcom/android/contacts/list/OnContactPickerActionListener;

    invoke-interface {v1, v0}, Lcom/android/contacts/list/OnContactPickerActionListener;->onPickContactAction(Landroid/net/Uri;)V

    .line 156
    :cond_0
    return-void
.end method

.method public onPickerResult(Landroid/content/Intent;)V
    .locals 2
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    .line 160
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 161
    .local v0, "contactUri":Landroid/net/Uri;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/contacts/list/JoinContactListFragment;->mListener:Lcom/android/contacts/list/OnContactPickerActionListener;

    invoke-interface {v1, v0}, Lcom/android/contacts/list/OnContactPickerActionListener;->onPickContactAction(Landroid/net/Uri;)V

    .line 162
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 166
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 167
    const-string v0, "targetContactId"

    iget-wide v1, p0, Lcom/android/contacts/list/JoinContactListFragment;->mTargetContactId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 168
    return-void
.end method

.method public restoreSavedState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 172
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->restoreSavedState(Landroid/os/Bundle;)V

    .line 173
    if-eqz p1, :cond_0

    .line 174
    const-string v0, "targetContactId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/contacts/list/JoinContactListFragment;->mTargetContactId:J

    .line 176
    :cond_0
    return-void
.end method

.method public setOnContactPickerActionListener(Lcom/android/contacts/list/OnContactPickerActionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/contacts/list/OnContactPickerActionListener;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/contacts/list/JoinContactListFragment;->mListener:Lcom/android/contacts/list/OnContactPickerActionListener;

    .line 103
    return-void
.end method

.method public setQueryString(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "queryString"    # Ljava/lang/String;
    .param p2, "delaySelection"    # Z

    .prologue
    .line 180
    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/ContactEntryListFragment;->setQueryString(Ljava/lang/String;Z)V

    .line 182
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/JoinContactListFragment;->setSearchMode(Z)V

    .line 183
    return-void

    .line 182
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTargetContactId(J)V
    .locals 0
    .param p1, "targetContactId"    # J

    .prologue
    .line 132
    iput-wide p1, p0, Lcom/android/contacts/list/JoinContactListFragment;->mTargetContactId:J

    .line 133
    return-void
.end method

.method protected startLoading()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 107
    invoke-virtual {p0}, Lcom/android/contacts/list/JoinContactListFragment;->configureAdapter()V

    .line 109
    invoke-virtual {p0}, Lcom/android/contacts/list/JoinContactListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, -0x2

    iget-object v2, p0, Lcom/android/contacts/list/JoinContactListFragment;->mLoaderCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 113
    invoke-virtual {p0}, Lcom/android/contacts/list/JoinContactListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/contacts/list/JoinContactListFragment;->mLoaderCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 115
    return-void
.end method
