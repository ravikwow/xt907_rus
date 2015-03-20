.class public Lcom/android/contacts/list/PostalAddressListAdapter;
.super Lcom/android/contacts/list/ContactEntryListAdapter;
.source "PostalAddressListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/list/PostalAddressListAdapter$PostalQuery;
    }
.end annotation


# instance fields
.field private mDarkTheme:Z

.field private final mUnknownNameText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;-><init>(Landroid/content/Context;)V

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/list/PostalAddressListAdapter;->mDarkTheme:Z

    .line 71
    const v0, 0x104000e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/PostalAddressListAdapter;->mUnknownNameText:Ljava/lang/CharSequence;

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f090000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/PostalAddressListAdapter;->mDarkTheme:Z

    .line 74
    return-void
.end method


# virtual methods
.method protected bindName(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 2
    .param p1, "view"    # Lcom/android/contacts/list/ContactListItemView;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 162
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getContactNameDisplayOrder()I

    move-result v1

    invoke-virtual {p1, p2, v0, v1}, Lcom/android/contacts/list/ContactListItemView;->showDisplayName(Landroid/database/Cursor;II)V

    .line 163
    return-void
.end method

.method protected bindPhoto(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 5
    .param p1, "view"    # Lcom/android/contacts/list/ContactListItemView;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v3, 0x4

    .line 166
    const-wide/16 v0, 0x0

    .line 167
    .local v0, "photoId":J
    invoke-interface {p2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 168
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 171
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPhotoLoader()Lcom/android/contacts/ContactPhotoManager;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/contacts/list/ContactListItemView;->getPhotoView()Landroid/widget/ImageView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v1, v4}, Lcom/android/contacts/ContactPhotoManager;->loadThumbnail(Landroid/widget/ImageView;JZ)V

    .line 172
    return-void
.end method

.method protected bindPostalAddress(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 5
    .param p1, "view"    # Lcom/android/contacts/list/ContactListItemView;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v4, 0x1

    .line 131
    const/4 v1, 0x0

    .line 132
    .local v1, "label":Ljava/lang/CharSequence;
    invoke-interface {p2, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 133
    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 134
    .local v2, "type":I
    const/4 v3, 0x2

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "customLabel":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v2, v0}, Landroid/provider/ContactsContract$CommonDataKinds$StructuredPostal;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 139
    .end local v0    # "customLabel":Ljava/lang/String;
    .end local v2    # "type":I
    :cond_0
    invoke-virtual {p1, v1}, Lcom/android/contacts/list/ContactListItemView;->setLabel(Ljava/lang/CharSequence;)V

    .line 140
    const/4 v3, 0x3

    invoke-virtual {p1, p2, v3}, Lcom/android/contacts/list/ContactListItemView;->showData(Landroid/database/Cursor;I)V

    .line 141
    return-void
.end method

.method protected bindSectionHeaderAndDivider(Lcom/android/contacts/list/ContactListItemView;I)V
    .locals 4
    .param p1, "view"    # Lcom/android/contacts/list/ContactListItemView;
    .param p2, "position"    # I

    .prologue
    const/4 v3, 0x0

    .line 144
    invoke-virtual {p0, p2}, Lcom/android/contacts/widget/IndexerListAdapter;->getSectionForPosition(I)I

    move-result v0

    .line 145
    .local v0, "section":I
    invoke-virtual {p0, v0}, Lcom/android/contacts/widget/IndexerListAdapter;->getPositionForSection(I)I

    move-result v2

    if-ne v2, p2, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/android/contacts/widget/IndexerListAdapter;->getSections()[Ljava/lang/Object;

    move-result-object v2

    aget-object v1, v2, v0

    check-cast v1, Ljava/lang/String;

    .line 147
    .local v1, "title":Ljava/lang/String;
    invoke-virtual {p1, v1}, Lcom/android/contacts/list/ContactListItemView;->setSectionHeader(Ljava/lang/String;)V

    .line 154
    .end local v1    # "title":Ljava/lang/String;
    :goto_0
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Lcom/android/contacts/widget/IndexerListAdapter;->getPositionForSection(I)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v2, p2, :cond_1

    .line 155
    invoke-virtual {p1, v3}, Lcom/android/contacts/list/ContactListItemView;->setDividerVisible(Z)V

    .line 159
    :goto_1
    return-void

    .line 149
    :cond_0
    invoke-virtual {p1, v3}, Lcom/android/contacts/list/ContactListItemView;->setDividerVisible(Z)V

    .line 150
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/android/contacts/list/ContactListItemView;->setSectionHeader(Ljava/lang/String;)V

    goto :goto_0

    .line 157
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/android/contacts/list/ContactListItemView;->setDividerVisible(Z)V

    goto :goto_1
.end method

.method protected bindView(Landroid/view/View;ILandroid/database/Cursor;I)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "partition"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "position"    # I

    .prologue
    .line 123
    move-object v0, p1

    check-cast v0, Lcom/android/contacts/list/ContactListItemView;

    .line 124
    .local v0, "view":Lcom/android/contacts/list/ContactListItemView;
    invoke-virtual {p0, v0, p4}, Lcom/android/contacts/list/PostalAddressListAdapter;->bindSectionHeaderAndDivider(Lcom/android/contacts/list/ContactListItemView;I)V

    .line 125
    invoke-virtual {p0, v0, p3}, Lcom/android/contacts/list/PostalAddressListAdapter;->bindName(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V

    .line 126
    invoke-virtual {p0, v0, p3}, Lcom/android/contacts/list/PostalAddressListAdapter;->bindPhoto(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V

    .line 127
    invoke-virtual {p0, v0, p3}, Lcom/android/contacts/list/PostalAddressListAdapter;->bindPostalAddress(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V

    .line 128
    return-void
.end method

.method public configureLoader(Landroid/content/CursorLoader;J)V
    .locals 5
    .param p1, "loader"    # Landroid/content/CursorLoader;
    .param p2, "directoryId"    # J

    .prologue
    const/4 v4, 0x1

    .line 78
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$StructuredPostal;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "remove_duplicate_entries"

    const-string v3, "true"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 80
    .local v0, "builder":Landroid/net/Uri$Builder;
    invoke-virtual {p0}, Lcom/android/contacts/widget/IndexerListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    const-string v1, "address_book_index_extras"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 83
    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 85
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getContactNameDisplayOrder()I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 86
    # getter for: Lcom/android/contacts/list/PostalAddressListAdapter$PostalQuery;->PROJECTION_PRIMARY:[Ljava/lang/String;
    invoke-static {}, Lcom/android/contacts/list/PostalAddressListAdapter$PostalQuery;->access$000()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    .line 91
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getSortOrder()I

    move-result v1

    if-ne v1, v4, :cond_2

    .line 92
    const-string v1, "sort_key"

    invoke-virtual {p1, v1}, Landroid/content/CursorLoader;->setSortOrder(Ljava/lang/String;)V

    .line 96
    :goto_1
    return-void

    .line 88
    :cond_1
    # getter for: Lcom/android/contacts/list/PostalAddressListAdapter$PostalQuery;->PROJECTION_ALTERNATIVE:[Ljava/lang/String;
    invoke-static {}, Lcom/android/contacts/list/PostalAddressListAdapter$PostalQuery;->access$100()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    goto :goto_0

    .line 94
    :cond_2
    const-string v1, "sort_key_alt"

    invoke-virtual {p1, v1}, Landroid/content/CursorLoader;->setSortOrder(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getDataUri(I)Landroid/net/Uri;
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 108
    invoke-virtual {p0, p1}, Lcom/android/common/widget/CompositeCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/Cursor;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 109
    .local v0, "id":J
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    return-object v2
.end method

.method public getVisibleOffset()I
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x0

    return v0
.end method

.method protected newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "partition"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "position"    # I
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 115
    new-instance v0, Lcom/android/contacts/list/ContactListItemView;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/contacts/list/ContactListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 116
    .local v0, "view":Lcom/android/contacts/list/ContactListItemView;
    iget-object v1, p0, Lcom/android/contacts/list/PostalAddressListAdapter;->mUnknownNameText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView;->setUnknownNameText(Ljava/lang/CharSequence;)V

    .line 117
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->isQuickContactEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView;->setQuickContactEnabled(Z)V

    .line 118
    return-object v0
.end method
