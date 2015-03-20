.class public Lcom/android/contacts/list/DefaultContactListAdapter;
.super Lcom/android/contacts/list/ContactListAdapter;
.source "DefaultContactListAdapter.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/motorola/contacts/widget/ListAccelerator$Interface;


# instance fields
.field private mInterface:Lcom/motorola/contacts/widget/ListAccelerator$Interface;

.field private mMultiSelectMode:Z

.field private mMultiSelectedIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0, p1}, Lcom/android/contacts/list/ContactListAdapter;-><init>(Landroid/content/Context;)V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mMultiSelectMode:Z

    .line 59
    iput-object v1, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mMultiSelectedIds:Ljava/util/ArrayList;

    .line 289
    iput-object v1, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mInterface:Lcom/motorola/contacts/widget/ListAccelerator$Interface;

    .line 67
    return-void
.end method

.method private configureSelection(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V
    .locals 4
    .param p1, "loader"    # Landroid/content/CursorLoader;
    .param p2, "directoryId"    # J
    .param p4, "filter"    # Lcom/android/contacts/list/ContactListFilter;

    .prologue
    .line 152
    if-nez p4, :cond_1

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-nez v2, :cond_0

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 161
    .local v0, "selection":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 163
    .local v1, "selectionArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget v2, p4, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    packed-switch v2, :pswitch_data_0

    .line 194
    :cond_2
    :goto_1
    :pswitch_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    .line 195
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/CursorLoader;->setSelectionArgs([Ljava/lang/String;)V

    goto :goto_0

    .line 175
    :pswitch_1
    const-string v2, "starred!=0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 179
    :pswitch_2
    const-string v2, "has_phone_number=1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 183
    :pswitch_3
    const-string v2, "in_visible_group=1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactListAdapter;->isCustomFilterForPhoneNumbersOnly()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 185
    const-string v2, " AND has_phone_number=1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 163
    nop

    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method private isCustomFilterForPhoneNumbersOnly()Z
    .locals 3

    .prologue
    .line 258
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 259
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "only_phones"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public AddMultiSelectRecord(J)V
    .locals 2
    .param p1, "contactID"    # J

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mMultiSelectedIds:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 311
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mMultiSelectedIds:Ljava/util/ArrayList;

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mMultiSelectedIds:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    return-void
.end method

.method public ClearMultiSelectRecords()V
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mMultiSelectedIds:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mMultiSelectedIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 305
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mMultiSelectedIds:Ljava/util/ArrayList;

    .line 307
    :cond_0
    return-void
.end method

.method public RemoveMultiSelectRecord(J)Z
    .locals 2
    .param p1, "contactID"    # J

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mMultiSelectedIds:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 318
    const/4 v0, 0x0

    .line 320
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mMultiSelectedIds:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method protected bindView(Landroid/view/View;ILandroid/database/Cursor;I)V
    .locals 9
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "partition"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "position"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x0

    .line 209
    move-object v1, p1

    check-cast v1, Lcom/android/contacts/list/ContactListItemView;

    .line 211
    .local v1, "view":Lcom/android/contacts/list/ContactListItemView;
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getUpperCaseQueryString()[C

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactListItemView;->setHighlightedPrefix([C)V

    .line 214
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactListAdapter;->getMultiSelectMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 215
    invoke-virtual {p0, p4}, Lcom/android/contacts/list/ContactListAdapter;->getContactId(I)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/android/contacts/list/DefaultContactListAdapter;->isExistMultiSelectRecord(J)Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setActivated(Z)V

    .line 224
    :goto_1
    invoke-virtual {p0, v1, p4, p3}, Lcom/android/contacts/list/ContactListAdapter;->bindSectionHeaderAndDivider(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;)V

    .line 226
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->isQuickContactEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 227
    const/4 v4, 0x4

    const/4 v5, 0x5

    const/4 v7, 0x6

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/list/ContactEntryListAdapter;->bindQuickContact(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;IIII)V

    .line 237
    :cond_0
    :goto_2
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->isCheckBoxEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 238
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactListItemView;->showCheckBox(Z)V

    .line 239
    iget-object v0, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 240
    sget-object v0, Lcom/android/contacts/list/ContactListItemView$PhotoPosition;->LEFT:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactListItemView;->setPhotoPosition(Lcom/android/contacts/list/ContactListItemView$PhotoPosition;)V

    .line 246
    :cond_1
    invoke-virtual {p0, v1, p3}, Lcom/android/contacts/list/ContactListAdapter;->bindName(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V

    .line 247
    invoke-virtual {p0, v1, p3}, Lcom/android/contacts/list/ContactListAdapter;->bindPresenceAndStatusMessage(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V

    .line 249
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 250
    invoke-virtual {p0, v1, p3}, Lcom/android/contacts/list/ContactListAdapter;->bindSearchSnippet(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V

    .line 254
    :goto_3
    return-void

    :cond_2
    move-object v0, v8

    .line 211
    goto :goto_0

    .line 217
    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->isSelectionVisible()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 218
    invoke-virtual {p0, p2, p3}, Lcom/android/contacts/list/ContactListAdapter;->isSelectedContact(ILandroid/database/Cursor;)Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setActivated(Z)V

    goto :goto_1

    .line 220
    :cond_4
    invoke-virtual {v1, v6}, Landroid/view/View;->setActivated(Z)V

    goto :goto_1

    .line 231
    :cond_5
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getDisplayPhotos()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {p0, v1, p2, p3}, Lcom/android/contacts/list/ContactListAdapter;->bindPhoto(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;)V

    goto :goto_2

    .line 252
    :cond_6
    invoke-virtual {v1, v8}, Lcom/android/contacts/list/ContactListItemView;->setSnippet(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public configureLoader(Landroid/content/CursorLoader;J)V
    .locals 8
    .param p1, "loader"    # Landroid/content/CursorLoader;
    .param p2, "directoryId"    # J

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 71
    instance-of v4, p1, Lcom/android/contacts/list/ProfileAndContactsLoader;

    if-eqz v4, :cond_0

    move-object v4, p1

    .line 72
    check-cast v4, Lcom/android/contacts/list/ProfileAndContactsLoader;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->shouldIncludeProfile()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/contacts/list/ProfileAndContactsLoader;->setLoadProfile(Z)V

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v1

    .line 76
    .local v1, "filter":Lcom/android/contacts/list/ContactListFilter;
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->isSearchMode()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 77
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v2

    .line 78
    .local v2, "query":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 79
    const-string v2, ""

    .line 81
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 82
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 85
    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 86
    invoke-virtual {p0, v6}, Lcom/android/contacts/list/ContactListAdapter;->getProjection(Z)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    .line 87
    const-string v4, "0"

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    .line 110
    .end local v2    # "query":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getSortOrder()I

    move-result v4

    if-ne v4, v7, :cond_5

    .line 111
    const-string v3, "sort_key"

    .line 116
    .local v3, "sortOrder":Ljava/lang/String;
    :goto_1
    invoke-virtual {p1, v3}, Landroid/content/CursorLoader;->setSortOrder(Ljava/lang/String;)V

    .line 117
    return-void

    .line 89
    .end local v3    # "sortOrder":Ljava/lang/String;
    .restart local v2    # "query":Ljava/lang/String;
    :cond_2
    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 90
    .local v0, "builder":Landroid/net/Uri$Builder;
    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 91
    const-string v4, "directory"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 93
    const-wide/16 v4, 0x0

    cmp-long v4, p2, v4

    if-eqz v4, :cond_3

    const-wide/16 v4, 0x1

    cmp-long v4, p2, v4

    if-eqz v4, :cond_3

    .line 94
    const-string v4, "limit"

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getDirectoryResultLimit()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 97
    :cond_3
    const-string v4, "snippet_args"

    const-string v5, "\u0001,\u0001,\u2026,5"

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 99
    const-string v4, "deferred_snippeting"

    const-string v5, "1"

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 100
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 101
    invoke-virtual {p0, v7}, Lcom/android/contacts/list/ContactListAdapter;->getProjection(Z)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    goto :goto_0

    .line 104
    .end local v0    # "builder":Landroid/net/Uri$Builder;
    .end local v2    # "query":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/android/contacts/list/DefaultContactListAdapter;->configureUri(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V

    .line 105
    invoke-virtual {p0, v6}, Lcom/android/contacts/list/ContactListAdapter;->getProjection(Z)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    .line 106
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/android/contacts/list/DefaultContactListAdapter;->configureSelection(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V

    goto :goto_0

    .line 113
    :cond_5
    const-string v3, "sort_key_alt"

    .restart local v3    # "sortOrder":Ljava/lang/String;
    goto :goto_1
.end method

.method protected configureUri(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V
    .locals 9
    .param p1, "loader"    # Landroid/content/CursorLoader;
    .param p2, "directoryId"    # J
    .param p4, "filter"    # Lcom/android/contacts/list/ContactListFilter;

    .prologue
    const-wide/16 v7, 0x0

    const/4 v6, -0x6

    .line 120
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 121
    .local v2, "uri":Landroid/net/Uri;
    if-eqz p4, :cond_0

    iget v3, p4, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    if-ne v3, v6, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListAdapter;->getSelectedContactLookupKey()Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, "lookupKey":Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 124
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {v3, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 130
    .end local v1    # "lookupKey":Ljava/lang/String;
    :cond_0
    :goto_0
    cmp-long v3, p2, v7

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/widget/IndexerListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 131
    invoke-static {v2}, Lcom/android/contacts/list/DefaultContactListAdapter;->buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 135
    :cond_1
    if-eqz p4, :cond_3

    iget v3, p4, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    const/4 v4, -0x3

    if-eq v3, v4, :cond_3

    iget v3, p4, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    if-eq v3, v6, :cond_3

    .line 138
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 139
    .local v0, "builder":Landroid/net/Uri$Builder;
    const-string v3, "directory"

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 141
    iget v3, p4, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    if-nez v3, :cond_2

    .line 142
    invoke-virtual {p4, v0}, Lcom/android/contacts/list/ContactListFilter;->addAccountQueryParameterToUrl(Landroid/net/Uri$Builder;)Landroid/net/Uri$Builder;

    .line 144
    :cond_2
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 147
    .end local v0    # "builder":Landroid/net/Uri$Builder;
    :cond_3
    invoke-virtual {p1, v2}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 148
    return-void

    .line 126
    .restart local v1    # "lookupKey":Ljava/lang/String;
    :cond_4
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListAdapter;->getSelectedContactId()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0
.end method

.method public getAbovePartitionCount()I
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mInterface:Lcom/motorola/contacts/widget/ListAccelerator$Interface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mInterface:Lcom/motorola/contacts/widget/ListAccelerator$Interface;

    invoke-interface {v0}, Lcom/motorola/contacts/widget/ListAccelerator$Interface;->getAbovePartitionCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMultiSelectMode()Z
    .locals 1

    .prologue
    .line 299
    iget-boolean v0, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mMultiSelectMode:Z

    return v0
.end method

.method public getMultiSelectedRecords()[J
    .locals 5

    .prologue
    .line 331
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mMultiSelectedIds:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    const/4 v3, 0x0

    new-array v1, v3, [J

    .line 336
    :cond_0
    return-object v1

    .line 332
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mMultiSelectedIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 333
    .local v2, "sz":I
    new-array v1, v2, [J

    .line 334
    .local v1, "retArr":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 335
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mMultiSelectedIds:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    aput-wide v3, v1, v0

    .line 334
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getTopOffset()I
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mInterface:Lcom/motorola/contacts/widget/ListAccelerator$Interface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mInterface:Lcom/motorola/contacts/widget/ListAccelerator$Interface;

    invoke-interface {v0}, Lcom/motorola/contacts/widget/ListAccelerator$Interface;->getTopOffset()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVisibleOffset()I
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mInterface:Lcom/motorola/contacts/widget/ListAccelerator$Interface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mInterface:Lcom/motorola/contacts/widget/ListAccelerator$Interface;

    invoke-interface {v0}, Lcom/motorola/contacts/widget/ListAccelerator$Interface;->getVisibleOffset()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isExistMultiSelectRecord(J)Z
    .locals 3
    .param p1, "contactID"    # J

    .prologue
    const/4 v0, 0x0

    .line 324
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mMultiSelectedIds:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 327
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mMultiSelectedIds:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isNeeded()Z
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mInterface:Lcom/motorola/contacts/widget/ListAccelerator$Interface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mInterface:Lcom/motorola/contacts/widget/ListAccelerator$Interface;

    invoke-interface {v0}, Lcom/motorola/contacts/widget/ListAccelerator$Interface;->isNeeded()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isScrollBarLeftForTwoPanel()Z
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mInterface:Lcom/motorola/contacts/widget/ListAccelerator$Interface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mInterface:Lcom/motorola/contacts/widget/ListAccelerator$Interface;

    invoke-interface {v0}, Lcom/motorola/contacts/widget/ListAccelerator$Interface;->isScrollBarLeftForTwoPanel()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "partition"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "position"    # I
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 201
    invoke-super/range {p0 .. p5}, Lcom/android/contacts/list/ContactListAdapter;->newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListItemView;

    .line 202
    .local v0, "view":Lcom/android/contacts/list/ContactListItemView;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView;->setActivatedStateSupported(Z)V

    .line 203
    return-object v0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 269
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 265
    return-void
.end method

.method public setListAcceleratorListener(Lcom/motorola/contacts/widget/ListAccelerator$Interface;)V
    .locals 0
    .param p1, "l"    # Lcom/motorola/contacts/widget/ListAccelerator$Interface;

    .prologue
    .line 287
    iput-object p1, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mInterface:Lcom/motorola/contacts/widget/ListAccelerator$Interface;

    .line 288
    return-void
.end method

.method public setMultiSelectMode(Z)V
    .locals 0
    .param p1, "mode"    # Z

    .prologue
    .line 294
    iput-boolean p1, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mMultiSelectMode:Z

    .line 295
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactListAdapter;->ClearMultiSelectRecords()V

    .line 296
    :cond_0
    return-void
.end method
