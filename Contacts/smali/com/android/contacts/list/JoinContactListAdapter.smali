.class public Lcom/android/contacts/list/JoinContactListAdapter;
.super Lcom/android/contacts/list/ContactListAdapter;
.source "JoinContactListAdapter.java"


# instance fields
.field private mTargetContactId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 46
    invoke-direct {p0, p1}, Lcom/android/contacts/list/ContactListAdapter;-><init>(Landroid/content/Context;)V

    .line 47
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/JoinContactListAdapter;->setPinnedPartitionHeadersEnabled(Z)V

    .line 48
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/JoinContactListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 49
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/JoinContactListAdapter;->setIndexedPartition(I)V

    .line 50
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/JoinContactListAdapter;->setDirectorySearchMode(I)V

    .line 51
    return-void
.end method

.method private inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "layoutId"    # I
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/android/contacts/list/JoinContactListAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected addPartitions()V
    .locals 2

    .prologue
    .line 56
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/list/JoinContactListAdapter;->addPartition(ZZ)V

    .line 59
    invoke-virtual {p0}, Lcom/android/contacts/list/JoinContactListAdapter;->createDefaultDirectoryPartition()Lcom/android/contacts/list/DirectoryPartition;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/JoinContactListAdapter;->addPartition(Lcom/android/common/widget/CompositeCursorAdapter$Partition;)V

    .line 60
    return-void
.end method

.method protected bindHeaderView(Landroid/view/View;ILandroid/database/Cursor;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "partitionIndex"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 162
    return-void
.end method

.method protected bindView(Landroid/view/View;ILandroid/database/Cursor;I)V
    .locals 2
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "partition"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "position"    # I

    .prologue
    .line 181
    packed-switch p2, :pswitch_data_0

    .line 197
    :goto_0
    return-void

    :pswitch_0
    move-object v0, p1

    .line 183
    check-cast v0, Lcom/android/contacts/list/ContactListItemView;

    .line 184
    .local v0, "view":Lcom/android/contacts/list/ContactListItemView;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView;->setSectionHeader(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p0, v0, p2, p3}, Lcom/android/contacts/list/JoinContactListAdapter;->bindPhoto(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;)V

    .line 186
    invoke-virtual {p0, v0, p3}, Lcom/android/contacts/list/JoinContactListAdapter;->bindName(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V

    goto :goto_0

    .end local v0    # "view":Lcom/android/contacts/list/ContactListItemView;
    :pswitch_1
    move-object v0, p1

    .line 190
    check-cast v0, Lcom/android/contacts/list/ContactListItemView;

    .line 191
    .restart local v0    # "view":Lcom/android/contacts/list/ContactListItemView;
    invoke-virtual {p0, v0, p4, p3}, Lcom/android/contacts/list/JoinContactListAdapter;->bindSectionHeaderAndDivider(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;)V

    .line 192
    invoke-virtual {p0, v0, p2, p3}, Lcom/android/contacts/list/JoinContactListAdapter;->bindPhoto(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;)V

    .line 193
    invoke-virtual {p0, v0, p3}, Lcom/android/contacts/list/JoinContactListAdapter;->bindName(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V

    goto :goto_0

    .line 181
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public configureDefaultPartition(ZZ)V
    .locals 2
    .param p1, "showIfEmpty"    # Z
    .param p2, "hasHeader"    # Z

    .prologue
    .line 125
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-super {p0, v0, v1}, Lcom/android/contacts/list/ContactListAdapter;->configureDefaultPartition(ZZ)V

    .line 126
    return-void
.end method

.method public configureLoader(Landroid/content/CursorLoader;J)V
    .locals 11
    .param p1, "cursorLoader"    # Landroid/content/CursorLoader;
    .param p2, "directoryId"    # J

    .prologue
    const-wide/16 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 68
    move-object v3, p1

    check-cast v3, Lcom/android/contacts/list/JoinContactLoader;

    .line 70
    .local v3, "loader":Lcom/android/contacts/list/JoinContactLoader;
    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 71
    .local v1, "builder":Landroid/net/Uri$Builder;
    iget-wide v4, p0, Lcom/android/contacts/list/JoinContactListAdapter;->mTargetContactId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 72
    const-string v4, "suggestions"

    invoke-virtual {v1, v4}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 74
    invoke-virtual {p0}, Lcom/android/contacts/list/JoinContactListAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v2

    .line 75
    .local v2, "filter":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 76
    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 79
    :cond_0
    const-string v4, "limit"

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 81
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/contacts/list/JoinContactLoader;->setSuggestionUri(Landroid/net/Uri;)V

    .line 84
    invoke-virtual {p0, v7}, Lcom/android/contacts/list/JoinContactListAdapter;->getProjection(Z)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/contacts/list/JoinContactLoader;->setProjection([Ljava/lang/String;)V

    .line 86
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 87
    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v4}, Lcom/android/contacts/list/JoinContactListAdapter;->buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "directory"

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 98
    .local v0, "allContactsUri":Landroid/net/Uri;
    :goto_0
    invoke-virtual {v3, v0}, Lcom/android/contacts/list/JoinContactLoader;->setUri(Landroid/net/Uri;)V

    .line 99
    const-string v4, "_id!=?"

    invoke-virtual {v3, v4}, Lcom/android/contacts/list/JoinContactLoader;->setSelection(Ljava/lang/String;)V

    .line 100
    new-array v4, v8, [Ljava/lang/String;

    iget-wide v5, p0, Lcom/android/contacts/list/JoinContactListAdapter;->mTargetContactId:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v3, v4}, Lcom/android/contacts/list/JoinContactLoader;->setSelectionArgs([Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lcom/android/contacts/list/JoinContactListAdapter;->getSortOrder()I

    move-result v4

    if-ne v4, v8, :cond_2

    .line 102
    const-string v4, "sort_key"

    invoke-virtual {v3, v4}, Lcom/android/contacts/list/JoinContactLoader;->setSortOrder(Ljava/lang/String;)V

    .line 106
    :goto_1
    return-void

    .line 93
    .end local v0    # "allContactsUri":Landroid/net/Uri;
    :cond_1
    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Lcom/android/contacts/list/JoinContactListAdapter;->buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "directory"

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .restart local v0    # "allContactsUri":Landroid/net/Uri;
    goto :goto_0

    .line 104
    :cond_2
    const-string v4, "sort_key_alt"

    invoke-virtual {v3, v4}, Lcom/android/contacts/list/JoinContactLoader;->setSortOrder(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getContactUri(ILandroid/database/Cursor;)Landroid/net/Uri;
    .locals 4
    .param p1, "partitionIndex"    # I
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 201
    const/4 v3, 0x0

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 202
    .local v0, "contactId":J
    const/4 v3, 0x6

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 203
    .local v2, "lookupKey":Ljava/lang/String;
    invoke-static {v0, v1, v2}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    return-object v3
.end method

.method public getItemViewType(II)I
    .locals 1
    .param p1, "partition"    # I
    .param p2, "position"    # I

    .prologue
    .line 135
    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/ContactListAdapter;->getItemViewType(II)I

    move-result v0

    return v0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 130
    invoke-super {p0}, Lcom/android/contacts/list/ContactListAdapter;->getViewTypeCount()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method protected newHeaderView(Landroid/content/Context;ILandroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "partition"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const v2, 0x7f06007b

    const v1, 0x7f04006c

    .line 141
    packed-switch p2, :pswitch_data_0

    .line 156
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 143
    :pswitch_0
    invoke-direct {p0, v1, p4}, Lcom/android/contacts/list/JoinContactListAdapter;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 144
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0b003a

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 149
    .end local v0    # "view":Landroid/view/View;
    :pswitch_1
    invoke-direct {p0, v1, p4}, Lcom/android/contacts/list/JoinContactListAdapter;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 150
    .restart local v0    # "view":Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0b003b

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 141
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "partition"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "position"    # I
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 167
    packed-switch p2, :pswitch_data_0

    .line 172
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 170
    :pswitch_0
    invoke-super/range {p0 .. p5}, Lcom/android/contacts/list/ContactListAdapter;->newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 167
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setSuggestionsCursor(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 114
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/contacts/list/JoinContactListAdapter;->changeCursor(ILandroid/database/Cursor;)V

    .line 115
    return-void
.end method

.method public setTargetContactId(J)V
    .locals 0
    .param p1, "targetContactId"    # J

    .prologue
    .line 63
    iput-wide p1, p0, Lcom/android/contacts/list/JoinContactListAdapter;->mTargetContactId:J

    .line 64
    return-void
.end method
