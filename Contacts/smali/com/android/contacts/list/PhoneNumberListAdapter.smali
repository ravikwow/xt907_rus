.class public Lcom/android/contacts/list/PhoneNumberListAdapter;
.super Lcom/android/contacts/list/ContactEntryListAdapter;
.source "PhoneNumberListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/list/PhoneNumberListAdapter$PhoneQuery;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mPhotoPosition:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

.field private final mUnknownNameText:Ljava/lang/CharSequence;

.field private mUseCallableUri:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/android/contacts/list/PhoneNumberListAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/list/PhoneNumberListAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;-><init>(Landroid/content/Context;)V

    .line 94
    const v0, 0x7f0b019d

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/PhoneNumberListAdapter;->setDefaultFilterHeaderText(I)V

    .line 95
    const v0, 0x104000e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/PhoneNumberListAdapter;->mUnknownNameText:Ljava/lang/CharSequence;

    .line 96
    return-void
.end method

.method private applyFilter(Landroid/content/CursorLoader;Landroid/net/Uri$Builder;JLcom/android/contacts/list/ContactListFilter;)V
    .locals 5
    .param p1, "loader"    # Landroid/content/CursorLoader;
    .param p2, "uriBuilder"    # Landroid/net/Uri$Builder;
    .param p3, "directoryId"    # J
    .param p5, "filter"    # Lcom/android/contacts/list/ContactListFilter;

    .prologue
    .line 156
    if-eqz p5, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-eqz v2, :cond_1

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 161
    .local v0, "selection":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 163
    .local v1, "selectionArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget v2, p5, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    packed-switch v2, :pswitch_data_0

    .line 179
    :pswitch_0
    sget-object v2, Lcom/android/contacts/list/PhoneNumberListAdapter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported filter type came (type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p5, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", toString: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " showing all contacts."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :goto_1
    :pswitch_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    .line 186
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/CursorLoader;->setSelectionArgs([Ljava/lang/String;)V

    goto :goto_0

    .line 165
    :pswitch_2
    const-string v2, "in_visible_group=1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    const-string v2, " AND has_phone_number=1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 170
    :pswitch_3
    invoke-virtual {p5, p2}, Lcom/android/contacts/list/ContactListFilter;->addAccountQueryParameterToUrl(Landroid/net/Uri$Builder;)Landroid/net/Uri$Builder;

    goto :goto_1

    .line 163
    nop

    :pswitch_data_0
    .packed-switch -0x5
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected bindName(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 2
    .param p1, "view"    # Lcom/android/contacts/list/ContactListItemView;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 307
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberListAdapter;->getContactNameDisplayOrder()I

    move-result v1

    invoke-virtual {p1, p2, v0, v1}, Lcom/android/contacts/list/ContactListItemView;->showDisplayName(Landroid/database/Cursor;II)V

    .line 309
    return-void
.end method

.method protected bindPhoneNumber(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 5
    .param p1, "view"    # Lcom/android/contacts/list/ContactListItemView;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v4, 0x1

    .line 283
    const/4 v1, 0x0

    .line 284
    .local v1, "label":Ljava/lang/CharSequence;
    invoke-interface {p2, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 285
    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 286
    .local v2, "type":I
    const/4 v3, 0x2

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 289
    .local v0, "customLabel":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberListAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v2, v0}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 291
    .end local v0    # "customLabel":Ljava/lang/String;
    .end local v2    # "type":I
    :cond_0
    invoke-virtual {p1, v1}, Lcom/android/contacts/list/ContactListItemView;->setLabel(Ljava/lang/CharSequence;)V

    .line 292
    const/4 v3, 0x3

    invoke-virtual {p1, p2, v3}, Lcom/android/contacts/list/ContactListItemView;->showData(Landroid/database/Cursor;I)V

    .line 293
    return-void
.end method

.method protected bindPhoto(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 5
    .param p1, "view"    # Lcom/android/contacts/list/ContactListItemView;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v3, 0x6

    .line 316
    const-wide/16 v0, 0x0

    .line 317
    .local v0, "photoId":J
    invoke-interface {p2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 318
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 321
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberListAdapter;->getPhotoLoader()Lcom/android/contacts/ContactPhotoManager;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/contacts/list/ContactListItemView;->getPhotoView()Landroid/widget/ImageView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v1, v4}, Lcom/android/contacts/ContactPhotoManager;->loadThumbnail(Landroid/widget/ImageView;JZ)V

    .line 322
    return-void
.end method

.method protected bindSectionHeaderAndDivider(Lcom/android/contacts/list/ContactListItemView;I)V
    .locals 4
    .param p1, "view"    # Lcom/android/contacts/list/ContactListItemView;
    .param p2, "position"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 296
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 297
    invoke-virtual {p0, p2}, Lcom/android/contacts/list/PhoneNumberListAdapter;->getItemPlacementInSection(I)Lcom/android/contacts/widget/IndexerListAdapter$Placement;

    move-result-object v0

    .line 298
    .local v0, "placement":Lcom/android/contacts/widget/IndexerListAdapter$Placement;
    iget-boolean v3, v0, Lcom/android/contacts/widget/IndexerListAdapter$Placement;->firstInSection:Z

    if-eqz v3, :cond_0

    iget-object v1, v0, Lcom/android/contacts/widget/IndexerListAdapter$Placement;->sectionHeader:Ljava/lang/String;

    :cond_0
    invoke-virtual {p1, v1}, Lcom/android/contacts/list/ContactListItemView;->setSectionHeader(Ljava/lang/String;)V

    .line 299
    iget-boolean v1, v0, Lcom/android/contacts/widget/IndexerListAdapter$Placement;->lastInSection:Z

    if-nez v1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {p1, v1}, Lcom/android/contacts/list/ContactListItemView;->setDividerVisible(Z)V

    .line 304
    .end local v0    # "placement":Lcom/android/contacts/widget/IndexerListAdapter$Placement;
    :goto_1
    return-void

    .line 299
    .restart local v0    # "placement":Lcom/android/contacts/widget/IndexerListAdapter$Placement;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 301
    .end local v0    # "placement":Lcom/android/contacts/widget/IndexerListAdapter$Placement;
    :cond_2
    invoke-virtual {p1, v1}, Lcom/android/contacts/list/ContactListItemView;->setSectionHeader(Ljava/lang/String;)V

    .line 302
    invoke-virtual {p1, v2}, Lcom/android/contacts/list/ContactListItemView;->setDividerVisible(Z)V

    goto :goto_1
.end method

.method protected bindView(Landroid/view/View;ILandroid/database/Cursor;I)V
    .locals 18
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "partition"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "position"    # I

    .prologue
    .line 222
    move-object/from16 v3, p1

    check-cast v3, Lcom/android/contacts/list/ContactListItemView;

    .line 224
    .local v3, "view":Lcom/android/contacts/list/ContactListItemView;
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/list/PhoneNumberListAdapter;->isSearchMode()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/list/PhoneNumberListAdapter;->getUpperCaseQueryString()[C

    move-result-object v2

    :goto_0
    invoke-virtual {v3, v2}, Lcom/android/contacts/list/ContactListItemView;->setHighlightedPrefix([C)V

    .line 231
    invoke-interface/range {p3 .. p4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 232
    const/4 v12, 0x1

    .line 233
    .local v12, "isFirstEntry":Z
    const/16 v17, 0x1

    .line 234
    .local v17, "showBottomDivider":Z
    const/4 v2, 0x4

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 235
    .local v10, "currentContactId":J
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v2

    if-nez v2, :cond_0

    .line 236
    const/4 v2, 0x4

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 237
    .local v15, "previousContactId":J
    cmp-long v2, v10, v15

    if-nez v2, :cond_0

    .line 238
    const/4 v12, 0x0

    .line 241
    .end local v15    # "previousContactId":J
    :cond_0
    invoke-interface/range {p3 .. p4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 242
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_1

    .line 243
    const/4 v2, 0x4

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 244
    .local v13, "nextContactId":J
    cmp-long v2, v10, v13

    if-nez v2, :cond_1

    .line 249
    const/16 v17, 0x0

    .line 252
    .end local v13    # "nextContactId":J
    :cond_1
    invoke-interface/range {p3 .. p4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 254
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v3, v1}, Lcom/android/contacts/list/PhoneNumberListAdapter;->bindSectionHeaderAndDivider(Lcom/android/contacts/list/ContactListItemView;I)V

    .line 255
    if-eqz v12, :cond_5

    .line 256
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v3, v1}, Lcom/android/contacts/list/PhoneNumberListAdapter;->bindName(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V

    .line 257
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/list/PhoneNumberListAdapter;->isQuickContactEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 260
    const/4 v6, 0x6

    const/4 v7, -0x1

    const/4 v8, 0x4

    const/4 v9, 0x5

    move-object/from16 v2, p0

    move/from16 v4, p2

    move-object/from16 v5, p3

    invoke-virtual/range {v2 .. v9}, Lcom/android/contacts/list/PhoneNumberListAdapter;->bindQuickContact(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;IIII)V

    .line 272
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/list/PhoneNumberListAdapter;->isCheckBoxEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 273
    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Lcom/android/contacts/list/ContactListItemView;->showCheckBox(Z)V

    .line 274
    sget-object v2, Lcom/android/contacts/list/ContactListItemView$PhotoPosition;->LEFT:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    invoke-virtual {v3, v2}, Lcom/android/contacts/list/ContactListItemView;->setPhotoPosition(Lcom/android/contacts/list/ContactListItemView$PhotoPosition;)V

    .line 278
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v3, v1}, Lcom/android/contacts/list/PhoneNumberListAdapter;->bindPhoneNumber(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V

    .line 279
    move/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/android/contacts/list/ContactListItemView;->setDividerVisible(Z)V

    .line 280
    return-void

    .line 224
    .end local v10    # "currentContactId":J
    .end local v12    # "isFirstEntry":Z
    .end local v17    # "showBottomDivider":Z
    :cond_3
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 263
    .restart local v10    # "currentContactId":J
    .restart local v12    # "isFirstEntry":Z
    .restart local v17    # "showBottomDivider":Z
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v3, v1}, Lcom/android/contacts/list/PhoneNumberListAdapter;->bindPhoto(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V

    goto :goto_1

    .line 266
    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/contacts/list/PhoneNumberListAdapter;->unbindName(Lcom/android/contacts/list/ContactListItemView;)V

    .line 268
    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/android/contacts/list/ContactListItemView;->removePhotoView(ZZ)V

    goto :goto_1
.end method

.method public configureLoader(Landroid/content/CursorLoader;J)V
    .locals 9
    .param p1, "loader"    # Landroid/content/CursorLoader;
    .param p2, "directoryId"    # J

    .prologue
    const-wide/16 v4, 0x0

    const/4 v8, 0x1

    .line 104
    cmp-long v0, p2, v4

    if-eqz v0, :cond_0

    .line 105
    sget-object v0, Lcom/android/contacts/list/PhoneNumberListAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PhoneNumberListAdapter is not ready for non-default directory ID (directoryId: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberListAdapter;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 111
    iget-boolean v0, p0, Lcom/android/contacts/list/PhoneNumberListAdapter;->mUseCallableUri:Z

    if-eqz v0, :cond_1

    sget-object v6, Landroid/provider/ContactsContract$CommonDataKinds$Callable;->CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 113
    .local v6, "baseUri":Landroid/net/Uri;
    :goto_0
    invoke-virtual {v6}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    .line 114
    .local v2, "builder":Landroid/net/Uri$Builder;
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberListAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v7

    .line 115
    .local v7, "query":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 116
    const-string v0, ""

    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 120
    :goto_1
    const-string v0, "directory"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 133
    .end local v7    # "query":Ljava/lang/String;
    :goto_2
    const-string v0, "remove_duplicate_entries"

    const-string v1, "true"

    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 134
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 137
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberListAdapter;->getContactNameDisplayOrder()I

    move-result v0

    if-ne v0, v8, :cond_6

    .line 138
    # getter for: Lcom/android/contacts/list/PhoneNumberListAdapter$PhoneQuery;->PROJECTION_PRIMARY:[Ljava/lang/String;
    invoke-static {}, Lcom/android/contacts/list/PhoneNumberListAdapter$PhoneQuery;->access$000()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    .line 143
    :goto_3
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberListAdapter;->getSortOrder()I

    move-result v0

    if-ne v0, v8, :cond_7

    .line 144
    const-string v0, "sort_key"

    invoke-virtual {p1, v0}, Landroid/content/CursorLoader;->setSortOrder(Ljava/lang/String;)V

    .line 148
    :goto_4
    return-void

    .line 111
    .end local v2    # "builder":Landroid/net/Uri$Builder;
    .end local v6    # "baseUri":Landroid/net/Uri;
    :cond_1
    sget-object v6, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_FILTER_URI:Landroid/net/Uri;

    goto :goto_0

    .line 118
    .restart local v2    # "builder":Landroid/net/Uri$Builder;
    .restart local v6    # "baseUri":Landroid/net/Uri;
    .restart local v7    # "query":Ljava/lang/String;
    :cond_2
    invoke-virtual {v2, v7}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_1

    .line 123
    .end local v2    # "builder":Landroid/net/Uri$Builder;
    .end local v6    # "baseUri":Landroid/net/Uri;
    .end local v7    # "query":Ljava/lang/String;
    :cond_3
    iget-boolean v0, p0, Lcom/android/contacts/list/PhoneNumberListAdapter;->mUseCallableUri:Z

    if-eqz v0, :cond_5

    sget-object v6, Landroid/provider/ContactsContract$CommonDataKinds$Callable;->CONTENT_URI:Landroid/net/Uri;

    .line 124
    .restart local v6    # "baseUri":Landroid/net/Uri;
    :goto_5
    invoke-virtual {v6}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "directory"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 126
    .restart local v2    # "builder":Landroid/net/Uri$Builder;
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 127
    const-string v0, "address_book_index_extras"

    const-string v1, "true"

    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 129
    :cond_4
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberListAdapter;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/list/PhoneNumberListAdapter;->applyFilter(Landroid/content/CursorLoader;Landroid/net/Uri$Builder;JLcom/android/contacts/list/ContactListFilter;)V

    goto :goto_2

    .line 123
    .end local v2    # "builder":Landroid/net/Uri$Builder;
    .end local v6    # "baseUri":Landroid/net/Uri;
    :cond_5
    sget-object v6, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_5

    .line 140
    .restart local v2    # "builder":Landroid/net/Uri$Builder;
    .restart local v6    # "baseUri":Landroid/net/Uri;
    :cond_6
    # getter for: Lcom/android/contacts/list/PhoneNumberListAdapter$PhoneQuery;->PROJECTION_ALTERNATIVE:[Ljava/lang/String;
    invoke-static {}, Lcom/android/contacts/list/PhoneNumberListAdapter$PhoneQuery;->access$100()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    goto :goto_3

    .line 146
    :cond_7
    const-string v0, "sort_key_alt"

    invoke-virtual {p1, v0}, Landroid/content/CursorLoader;->setSortOrder(Ljava/lang/String;)V

    goto :goto_4
.end method

.method public getDataUri(I)Landroid/net/Uri;
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 200
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/PhoneNumberListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 201
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 202
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 203
    .local v1, "id":J
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 206
    .end local v1    # "id":J
    :goto_0
    return-object v3

    .line 205
    :cond_0
    sget-object v3, Lcom/android/contacts/list/PhoneNumberListAdapter;->TAG:Ljava/lang/String;

    const-string v4, "Cursor was null in getDataUri() call. Returning null instead."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const/4 v3, 0x0

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
    .line 213
    new-instance v0, Lcom/android/contacts/list/ContactListItemView;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/contacts/list/ContactListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 214
    .local v0, "view":Lcom/android/contacts/list/ContactListItemView;
    iget-object v1, p0, Lcom/android/contacts/list/PhoneNumberListAdapter;->mUnknownNameText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView;->setUnknownNameText(Ljava/lang/CharSequence;)V

    .line 215
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberListAdapter;->isQuickContactEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView;->setQuickContactEnabled(Z)V

    .line 216
    iget-object v1, p0, Lcom/android/contacts/list/PhoneNumberListAdapter;->mPhotoPosition:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView;->setPhotoPosition(Lcom/android/contacts/list/ContactListItemView$PhotoPosition;)V

    .line 217
    return-object v0
.end method

.method public setPhotoPosition(Lcom/android/contacts/list/ContactListItemView$PhotoPosition;)V
    .locals 0
    .param p1, "photoPosition"    # Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    .prologue
    .line 325
    iput-object p1, p0, Lcom/android/contacts/list/PhoneNumberListAdapter;->mPhotoPosition:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    .line 326
    return-void
.end method

.method public setUseCallableUri(Z)V
    .locals 0
    .param p1, "useCallableUri"    # Z

    .prologue
    .line 333
    iput-boolean p1, p0, Lcom/android/contacts/list/PhoneNumberListAdapter;->mUseCallableUri:Z

    .line 334
    return-void
.end method

.method protected unbindName(Lcom/android/contacts/list/ContactListItemView;)V
    .locals 0
    .param p1, "view"    # Lcom/android/contacts/list/ContactListItemView;

    .prologue
    .line 312
    invoke-virtual {p1}, Lcom/android/contacts/list/ContactListItemView;->hideDisplayName()V

    .line 313
    return-void
.end method
