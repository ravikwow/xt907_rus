.class public Lcom/android/contacts/list/DefaultContactListAdapter;
.super Lcom/android/contacts/list/ContactListAdapter;
.source "DefaultContactListAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/contacts/list/ContactListAdapter;-><init>(Landroid/content/Context;)V

    .line 53
    return-void
.end method

.method private configureSelection(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V
    .locals 4
    .param p1, "loader"    # Landroid/content/CursorLoader;
    .param p2, "directoryId"    # J
    .param p4, "filter"    # Lcom/android/contacts/list/ContactListFilter;

    .prologue
    .line 138
    if-nez p4, :cond_1

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-nez v2, :cond_0

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    .local v0, "selection":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 149
    .local v1, "selectionArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget v2, p4, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    packed-switch v2, :pswitch_data_0

    .line 180
    :cond_2
    :goto_1
    :pswitch_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    .line 181
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/CursorLoader;->setSelectionArgs([Ljava/lang/String;)V

    goto :goto_0

    .line 161
    :pswitch_1
    const-string v2, "starred!=0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 165
    :pswitch_2
    const-string v2, "has_phone_number=1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 169
    :pswitch_3
    const-string v2, "in_visible_group=1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactListAdapter;->isCustomFilterForPhoneNumbersOnly()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 171
    const-string v2, " AND has_phone_number=1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 149
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
    .line 225
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 226
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "only_phones"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method


# virtual methods
.method protected bindView(Landroid/view/View;ILandroid/database/Cursor;I)V
    .locals 9
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "partition"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "position"    # I

    .prologue
    const/4 v8, 0x0

    .line 186
    move-object v1, p1

    check-cast v1, Lcom/android/contacts/list/ContactListItemView;

    .line 188
    .local v1, "view":Lcom/android/contacts/list/ContactListItemView;
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactListAdapter;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactListAdapter;->getUpperCaseQueryString()[C

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactListItemView;->setHighlightedPrefix([C)V

    .line 190
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactListAdapter;->isSelectionVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {p0, p2, p3}, Lcom/android/contacts/list/DefaultContactListAdapter;->isSelectedContact(ILandroid/database/Cursor;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactListItemView;->setActivated(Z)V

    .line 194
    :cond_0
    invoke-virtual {p0, v1, p4, p3}, Lcom/android/contacts/list/DefaultContactListAdapter;->bindSectionHeaderAndDivider(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;)V

    .line 196
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactListAdapter;->isQuickContactEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 197
    const/4 v4, 0x4

    const/4 v5, 0x5

    const/4 v6, 0x0

    const/4 v7, 0x6

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/list/DefaultContactListAdapter;->bindQuickContact(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;IIII)V

    .line 207
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactListAdapter;->isCheckBoxEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 208
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactListItemView;->showCheckBox(Z)V

    .line 209
    sget-object v0, Lcom/android/contacts/list/ContactListItemView$PhotoPosition;->LEFT:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactListItemView;->setPhotoPosition(Lcom/android/contacts/list/ContactListItemView$PhotoPosition;)V

    .line 213
    :cond_2
    invoke-virtual {p0, v1, p3}, Lcom/android/contacts/list/DefaultContactListAdapter;->bindName(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V

    .line 214
    invoke-virtual {p0, v1, p3}, Lcom/android/contacts/list/DefaultContactListAdapter;->bindPresenceAndStatusMessage(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V

    .line 216
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactListAdapter;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 217
    invoke-virtual {p0, v1, p3}, Lcom/android/contacts/list/DefaultContactListAdapter;->bindSearchSnippet(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V

    .line 221
    :goto_2
    return-void

    :cond_3
    move-object v0, v8

    .line 188
    goto :goto_0

    .line 201
    :cond_4
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactListAdapter;->getDisplayPhotos()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 202
    invoke-virtual {p0, v1, p2, p3}, Lcom/android/contacts/list/DefaultContactListAdapter;->bindPhoto(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;)V

    goto :goto_1

    .line 219
    :cond_5
    invoke-virtual {v1, v8}, Lcom/android/contacts/list/ContactListItemView;->setSnippet(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public configureLoader(Landroid/content/CursorLoader;J)V
    .locals 8
    .param p1, "loader"    # Landroid/content/CursorLoader;
    .param p2, "directoryId"    # J

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 57
    instance-of v4, p1, Lcom/android/contacts/list/ProfileAndContactsLoader;

    if-eqz v4, :cond_0

    move-object v4, p1

    .line 58
    check-cast v4, Lcom/android/contacts/list/ProfileAndContactsLoader;

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactListAdapter;->shouldIncludeProfile()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/contacts/list/ProfileAndContactsLoader;->setLoadProfile(Z)V

    .line 61
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactListAdapter;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v1

    .line 62
    .local v1, "filter":Lcom/android/contacts/list/ContactListFilter;
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactListAdapter;->isSearchMode()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 63
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactListAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v2

    .line 64
    .local v2, "query":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 65
    const-string v2, ""

    .line 67
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 68
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 71
    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 72
    invoke-virtual {p0, v6}, Lcom/android/contacts/list/DefaultContactListAdapter;->getProjection(Z)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    .line 73
    const-string v4, "0"

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    .line 96
    .end local v2    # "query":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactListAdapter;->getSortOrder()I

    move-result v4

    if-ne v4, v7, :cond_5

    .line 97
    const-string v3, "sort_key"

    .line 102
    .local v3, "sortOrder":Ljava/lang/String;
    :goto_1
    invoke-virtual {p1, v3}, Landroid/content/CursorLoader;->setSortOrder(Ljava/lang/String;)V

    .line 103
    return-void

    .line 75
    .end local v3    # "sortOrder":Ljava/lang/String;
    .restart local v2    # "query":Ljava/lang/String;
    :cond_2
    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 76
    .local v0, "builder":Landroid/net/Uri$Builder;
    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 77
    const-string v4, "directory"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 79
    const-wide/16 v4, 0x0

    cmp-long v4, p2, v4

    if-eqz v4, :cond_3

    const-wide/16 v4, 0x1

    cmp-long v4, p2, v4

    if-eqz v4, :cond_3

    .line 80
    const-string v4, "limit"

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactListAdapter;->getDirectoryResultLimit()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 83
    :cond_3
    const-string v4, "snippet_args"

    const-string v5, "\u0001,\u0001,\u2026,5"

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 85
    const-string v4, "deferred_snippeting"

    const-string v5, "1"

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 86
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 87
    invoke-virtual {p0, v7}, Lcom/android/contacts/list/DefaultContactListAdapter;->getProjection(Z)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    goto :goto_0

    .line 90
    .end local v0    # "builder":Landroid/net/Uri$Builder;
    .end local v2    # "query":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/android/contacts/list/DefaultContactListAdapter;->configureUri(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V

    .line 91
    invoke-virtual {p0, v6}, Lcom/android/contacts/list/DefaultContactListAdapter;->getProjection(Z)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    .line 92
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/android/contacts/list/DefaultContactListAdapter;->configureSelection(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V

    goto :goto_0

    .line 99
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

    .line 106
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 107
    .local v2, "uri":Landroid/net/Uri;
    if-eqz p4, :cond_0

    iget v3, p4, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    if-ne v3, v6, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactListAdapter;->getSelectedContactLookupKey()Ljava/lang/String;

    move-result-object v1

    .line 109
    .local v1, "lookupKey":Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 110
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {v3, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 116
    .end local v1    # "lookupKey":Ljava/lang/String;
    :cond_0
    :goto_0
    cmp-long v3, p2, v7

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 117
    invoke-static {v2}, Lcom/android/contacts/list/DefaultContactListAdapter;->buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 121
    :cond_1
    if-eqz p4, :cond_3

    iget v3, p4, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    const/4 v4, -0x3

    if-eq v3, v4, :cond_3

    iget v3, p4, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    if-eq v3, v6, :cond_3

    .line 124
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 125
    .local v0, "builder":Landroid/net/Uri$Builder;
    const-string v3, "directory"

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 127
    iget v3, p4, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    if-nez v3, :cond_2

    .line 128
    invoke-virtual {p4, v0}, Lcom/android/contacts/list/ContactListFilter;->addAccountQueryParameterToUrl(Landroid/net/Uri$Builder;)Landroid/net/Uri$Builder;

    .line 130
    :cond_2
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 133
    .end local v0    # "builder":Landroid/net/Uri$Builder;
    :cond_3
    invoke-virtual {p1, v2}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 134
    return-void

    .line 112
    .restart local v1    # "lookupKey":Ljava/lang/String;
    :cond_4
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactListAdapter;->getSelectedContactId()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0
.end method
