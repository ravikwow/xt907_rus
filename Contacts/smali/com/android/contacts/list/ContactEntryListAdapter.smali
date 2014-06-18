.class public abstract Lcom/android/contacts/list/ContactEntryListAdapter;
.super Lcom/android/contacts/widget/IndexerListAdapter;
.source "ContactEntryListAdapter.java"


# instance fields
.field private mCheckBoxEnabled:Z

.field private mContactsCount:Ljava/lang/String;

.field private mDarkTheme:Z

.field private mDefaultFilterHeaderText:Ljava/lang/CharSequence;

.field private mDirectoryResultLimit:I

.field private mDirectorySearchMode:I

.field private mDisplayOrder:I

.field private mDisplayPhotos:Z

.field private mEmptyListEnabled:Z

.field private mFilter:Lcom/android/contacts/list/ContactListFilter;

.field private mIncludeProfile:Z

.field private mLoading:Z

.field private mPhotoLoader:Lcom/android/contacts/ContactPhotoManager;

.field private mProfileExists:Z

.field private mQueryString:Ljava/lang/String;

.field private mQuickContactEnabled:Z

.field private mSearchMode:Z

.field private mSelectionVisible:Z

.field private mSortOrder:I

.field private mUpperCaseQueryString:[C


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 97
    invoke-direct {p0, p1}, Lcom/android/contacts/widget/IndexerListAdapter;-><init>(Landroid/content/Context;)V

    .line 78
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mDirectoryResultLimit:I

    .line 80
    iput-boolean v2, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mLoading:Z

    .line 81
    iput-boolean v2, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mEmptyListEnabled:Z

    .line 86
    const-string v0, ""

    iput-object v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mContactsCount:Ljava/lang/String;

    .line 87
    iput-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mDarkTheme:Z

    .line 90
    iput-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mCheckBoxEnabled:Z

    .line 98
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->addPartitions()V

    .line 99
    const v0, 0x7f0b0197

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->setDefaultFilterHeaderText(I)V

    .line 100
    return-void
.end method

.method private getPartitionByDirectoryId(J)I
    .locals 5
    .param p1, "id"    # J

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v0

    .line 169
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 170
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v2

    .line 171
    .local v2, "partition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    instance-of v3, v2, Lcom/android/contacts/list/DirectoryPartition;

    if-eqz v3, :cond_0

    .line 172
    check-cast v2, Lcom/android/contacts/list/DirectoryPartition;

    .end local v2    # "partition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    invoke-virtual {v2}, Lcom/android/contacts/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_0

    .line 177
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 169
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 177
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private updateIndexer(Landroid/database/Cursor;)V
    .locals 5
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v4, 0x0

    .line 441
    if-nez p1, :cond_0

    .line 442
    invoke-virtual {p0, v4}, Lcom/android/contacts/list/ContactEntryListAdapter;->setIndexer(Landroid/widget/SectionIndexer;)V

    .line 455
    :goto_0
    return-void

    .line 446
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 447
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "address_book_index_titles"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 448
    const-string v3, "address_book_index_titles"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 450
    .local v2, "sections":[Ljava/lang/String;
    const-string v3, "address_book_index_counts"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    .line 451
    .local v1, "counts":[I
    new-instance v3, Lcom/android/contacts/list/ContactsSectionIndexer;

    invoke-direct {v3, v2, v1}, Lcom/android/contacts/list/ContactsSectionIndexer;-><init>([Ljava/lang/String;[I)V

    invoke-virtual {p0, v3}, Lcom/android/contacts/list/ContactEntryListAdapter;->setIndexer(Landroid/widget/SectionIndexer;)V

    goto :goto_0

    .line 453
    .end local v1    # "counts":[I
    .end local v2    # "sections":[Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, v4}, Lcom/android/contacts/list/ContactEntryListAdapter;->setIndexer(Landroid/widget/SectionIndexer;)V

    goto :goto_0
.end method


# virtual methods
.method protected addPartitions()V
    .locals 1

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->createDefaultDirectoryPartition()Lcom/android/contacts/list/DirectoryPartition;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->addPartition(Lcom/android/common/widget/CompositeCursorAdapter$Partition;)V

    .line 134
    return-void
.end method

.method public areAllPartitionsEmpty()Z
    .locals 3

    .prologue
    .line 509
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v0

    .line 510
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 511
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->isPartitionEmpty(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 512
    const/4 v2, 0x0

    .line 515
    :goto_1
    return v2

    .line 510
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 515
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method protected bindHeaderView(Landroid/view/View;ILandroid/database/Cursor;)V
    .locals 17
    .param p1, "view"    # Landroid/view/View;
    .param p2, "partitionIndex"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 547
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v11

    .line 548
    .local v11, "partition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    instance-of v12, v11, Lcom/android/contacts/list/DirectoryPartition;

    if-nez v12, :cond_0

    .line 582
    :goto_0
    return-void

    :cond_0
    move-object v7, v11

    .line 552
    check-cast v7, Lcom/android/contacts/list/DirectoryPartition;

    .line 553
    .local v7, "directoryPartition":Lcom/android/contacts/list/DirectoryPartition;
    invoke-virtual {v7}, Lcom/android/contacts/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v4

    .line 554
    .local v4, "directoryId":J
    const v12, 0x7f060044

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 555
    .local v10, "labelTextView":Landroid/widget/TextView;
    const v12, 0x7f0600cd

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 556
    .local v9, "displayNameTextView":Landroid/widget/TextView;
    const-wide/16 v12, 0x0

    cmp-long v12, v4, v12

    if-eqz v12, :cond_1

    const-wide/16 v12, 0x1

    cmp-long v12, v4, v12

    if-nez v12, :cond_2

    .line 557
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/list/ContactEntryListAdapter;->mDefaultFilterHeaderText:Ljava/lang/CharSequence;

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 558
    const/4 v12, 0x0

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 568
    :goto_1
    const v12, 0x7f0600ce

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 569
    .local v3, "countText":Landroid/widget/TextView;
    invoke-virtual {v7}, Lcom/android/contacts/list/DirectoryPartition;->isLoading()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 570
    const v12, 0x7f0b0181

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 560
    .end local v3    # "countText":Landroid/widget/TextView;
    :cond_2
    const v12, 0x7f0b0196

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(I)V

    .line 561
    invoke-virtual {v7}, Lcom/android/contacts/list/DirectoryPartition;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    .line 562
    .local v6, "directoryName":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_3

    move-object v8, v6

    .line 565
    .local v8, "displayName":Ljava/lang/String;
    :goto_2
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 562
    .end local v8    # "displayName":Ljava/lang/String;
    :cond_3
    invoke-virtual {v7}, Lcom/android/contacts/list/DirectoryPartition;->getDirectoryType()Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    .line 572
    .end local v6    # "directoryName":Ljava/lang/String;
    .restart local v3    # "countText":Landroid/widget/TextView;
    :cond_4
    if-nez p3, :cond_5

    const/4 v2, 0x0

    .line 573
    .local v2, "count":I
    :goto_3
    const-wide/16 v12, 0x0

    cmp-long v12, v4, v12

    if-eqz v12, :cond_6

    const-wide/16 v12, 0x1

    cmp-long v12, v4, v12

    if-eqz v12, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getDirectoryResultLimit()I

    move-result v12

    if-lt v2, v12, :cond_6

    .line 575
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/widget/IndexerListAdapter;->mContext:Landroid/content/Context;

    const v13, 0x7f0b006c

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getDirectoryResultLimit()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 572
    .end local v2    # "count":I
    :cond_5
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    goto :goto_3

    .line 578
    .restart local v2    # "count":I
    :cond_6
    const v12, 0x7f0b006d

    const v13, 0x7f0e0003

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v12, v13}, Lcom/android/contacts/list/ContactEntryListAdapter;->getQuantityText(III)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method protected bindQuickContact(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;IIII)V
    .locals 8
    .param p1, "view"    # Lcom/android/contacts/list/ContactListItemView;
    .param p2, "partitionIndex"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "photoIdColumn"    # I
    .param p5, "photoUriColumn"    # I
    .param p6, "contactIdColumn"    # I
    .param p7, "lookUpKeyColumn"    # I

    .prologue
    const/4 v7, -0x1

    .line 653
    const-wide/16 v0, 0x0

    .line 654
    .local v0, "photoId":J
    invoke-interface {p3, p4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 655
    invoke-interface {p3, p4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 658
    :cond_0
    invoke-virtual {p1}, Lcom/android/contacts/list/ContactListItemView;->getQuickContact()Landroid/widget/QuickContactBadge;

    move-result-object v4

    .line 659
    .local v4, "quickContact":Landroid/widget/QuickContactBadge;
    invoke-virtual {p0, p2, p3, p6, p7}, Lcom/android/contacts/list/ContactEntryListAdapter;->getContactUri(ILandroid/database/Cursor;II)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 662
    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-nez v5, :cond_1

    if-ne p5, v7, :cond_2

    .line 663
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPhotoLoader()Lcom/android/contacts/ContactPhotoManager;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mDarkTheme:Z

    invoke-virtual {v5, v4, v0, v1, v6}, Lcom/android/contacts/ContactPhotoManager;->loadThumbnail(Landroid/widget/ImageView;JZ)V

    .line 670
    :goto_0
    return-void

    .line 665
    :cond_2
    invoke-interface {p3, p5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 666
    .local v3, "photoUriString":Ljava/lang/String;
    if-nez v3, :cond_3

    const/4 v2, 0x0

    .line 667
    .local v2, "photoUri":Landroid/net/Uri;
    :goto_1
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPhotoLoader()Lcom/android/contacts/ContactPhotoManager;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mDarkTheme:Z

    invoke-virtual {v5, v4, v2, v7, v6}, Lcom/android/contacts/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;IZ)V

    goto :goto_0

    .line 666
    .end local v2    # "photoUri":Landroid/net/Uri;
    :cond_3
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_1
.end method

.method public changeCursor(ILandroid/database/Cursor;)V
    .locals 2
    .param p1, "partitionIndex"    # I
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 412
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 431
    :cond_0
    :goto_0
    return-void

    .line 417
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v0

    .line 418
    .local v0, "partition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    instance-of v1, v0, Lcom/android/contacts/list/DirectoryPartition;

    if-eqz v1, :cond_2

    .line 419
    check-cast v0, Lcom/android/contacts/list/DirectoryPartition;

    .end local v0    # "partition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DirectoryPartition;->setStatus(I)V

    .line 422
    :cond_2
    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mDisplayPhotos:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mPhotoLoader:Lcom/android/contacts/ContactPhotoManager;

    if-eqz v1, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->isPhotoSupported(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 423
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mPhotoLoader:Lcom/android/contacts/ContactPhotoManager;

    invoke-virtual {v1}, Lcom/android/contacts/ContactPhotoManager;->refreshCache()V

    .line 426
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/android/contacts/widget/IndexerListAdapter;->changeCursor(ILandroid/database/Cursor;)V

    .line 428
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getIndexedPartition()I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 429
    invoke-direct {p0, p2}, Lcom/android/contacts/list/ContactEntryListAdapter;->updateIndexer(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method public changeDirectories(Landroid/database/Cursor;)V
    .locals 14
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 362
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v11

    if-nez v11, :cond_0

    .line 365
    const-string v11, "ContactEntryListAdapter"

    const-string v12, "Directory search loader returned an empty cursor, which implies we have no directory entries."

    new-instance v13, Ljava/lang/RuntimeException;

    invoke-direct {v13}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v11, v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 408
    :goto_0
    return-void

    .line 369
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 371
    .local v1, "directoryIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    const-string v11, "_id"

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 372
    .local v7, "idColumnIndex":I
    const-string v11, "directoryType"

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 373
    .local v2, "directoryTypeColumnIndex":I
    const-string v11, "displayName"

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 374
    .local v3, "displayNameColumnIndex":I
    const-string v11, "photoSupport"

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 378
    .local v10, "photoSupportColumnIndex":I
    const/4 v11, -0x1

    invoke-interface {p1, v11}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 379
    :cond_1
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 380
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 381
    .local v5, "id":J
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 382
    invoke-direct {p0, v5, v6}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartitionByDirectoryId(J)I

    move-result v11

    const/4 v12, -0x1

    if-ne v11, v12, :cond_1

    .line 383
    new-instance v8, Lcom/android/contacts/list/DirectoryPartition;

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-direct {v8, v11, v12}, Lcom/android/contacts/list/DirectoryPartition;-><init>(ZZ)V

    .line 384
    .local v8, "partition":Lcom/android/contacts/list/DirectoryPartition;
    invoke-virtual {v8, v5, v6}, Lcom/android/contacts/list/DirectoryPartition;->setDirectoryId(J)V

    .line 385
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/android/contacts/list/DirectoryPartition;->setDirectoryType(Ljava/lang/String;)V

    .line 386
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/android/contacts/list/DirectoryPartition;->setDisplayName(Ljava/lang/String;)V

    .line 387
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 388
    .local v9, "photoSupport":I
    const/4 v11, 0x1

    if-eq v9, v11, :cond_2

    const/4 v11, 0x3

    if-ne v9, v11, :cond_3

    :cond_2
    const/4 v11, 0x1

    :goto_2
    invoke-virtual {v8, v11}, Lcom/android/contacts/list/DirectoryPartition;->setPhotoSupported(Z)V

    .line 390
    invoke-virtual {p0, v8}, Lcom/android/contacts/list/ContactEntryListAdapter;->addPartition(Lcom/android/common/widget/CompositeCursorAdapter$Partition;)V

    goto :goto_1

    .line 388
    :cond_3
    const/4 v11, 0x0

    goto :goto_2

    .line 395
    .end local v5    # "id":J
    .end local v8    # "partition":Lcom/android/contacts/list/DirectoryPartition;
    .end local v9    # "photoSupport":I
    :cond_4
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v0

    .line 396
    .local v0, "count":I
    move v4, v0

    .local v4, "i":I
    :cond_5
    :goto_3
    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_6

    .line 397
    invoke-virtual {p0, v4}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v8

    .line 398
    .local v8, "partition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    instance-of v11, v8, Lcom/android/contacts/list/DirectoryPartition;

    if-eqz v11, :cond_5

    .line 399
    check-cast v8, Lcom/android/contacts/list/DirectoryPartition;

    .end local v8    # "partition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    invoke-virtual {v8}, Lcom/android/contacts/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v5

    .line 400
    .restart local v5    # "id":J
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 401
    invoke-virtual {p0, v4}, Lcom/android/contacts/list/ContactEntryListAdapter;->removePartition(I)V

    goto :goto_3

    .line 406
    .end local v5    # "id":J
    :cond_6
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->invalidate()V

    .line 407
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0
.end method

.method public clearPartitions()V
    .locals 5

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v0

    .line 207
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 208
    invoke-virtual {p0, v2}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v3

    .line 209
    .local v3, "partition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    instance-of v4, v3, Lcom/android/contacts/list/DirectoryPartition;

    if-eqz v4, :cond_0

    move-object v1, v3

    .line 210
    check-cast v1, Lcom/android/contacts/list/DirectoryPartition;

    .line 211
    .local v1, "directoryPartition":Lcom/android/contacts/list/DirectoryPartition;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/android/contacts/list/DirectoryPartition;->setStatus(I)V

    .line 207
    .end local v1    # "directoryPartition":Lcom/android/contacts/list/DirectoryPartition;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 214
    .end local v3    # "partition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    :cond_1
    invoke-super {p0}, Lcom/android/contacts/widget/IndexerListAdapter;->clearPartitions()V

    .line 215
    return-void
.end method

.method protected clearPinnedHeaderContactsCount(Landroid/view/View;)V
    .locals 1
    .param p1, "header"    # Landroid/view/View;

    .prologue
    .line 129
    check-cast p1, Lcom/android/contacts/list/ContactListPinnedHeaderView;

    .end local p1    # "header":Landroid/view/View;
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/contacts/list/ContactListPinnedHeaderView;->setCountView(Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public configureDefaultPartition(ZZ)V
    .locals 8
    .param p1, "showIfEmpty"    # Z
    .param p2, "hasHeader"    # Z

    .prologue
    .line 522
    const/4 v1, -0x1

    .line 523
    .local v1, "defaultPartitionIndex":I
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v0

    .line 524
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 525
    invoke-virtual {p0, v2}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v3

    .line 526
    .local v3, "partition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    instance-of v4, v3, Lcom/android/contacts/list/DirectoryPartition;

    if-eqz v4, :cond_2

    check-cast v3, Lcom/android/contacts/list/DirectoryPartition;

    .end local v3    # "partition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    invoke-virtual {v3}, Lcom/android/contacts/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    .line 528
    move v1, v2

    .line 532
    :cond_0
    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    .line 533
    invoke-virtual {p0, v1, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setShowIfEmpty(IZ)V

    .line 534
    invoke-virtual {p0, v1, p2}, Lcom/android/contacts/list/ContactEntryListAdapter;->setHasHeader(IZ)V

    .line 536
    :cond_1
    return-void

    .line 524
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public configureDirectoryLoader(Lcom/android/contacts/list/DirectoryListLoader;)V
    .locals 1
    .param p1, "loader"    # Lcom/android/contacts/list/DirectoryListLoader;

    .prologue
    .line 353
    iget v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mDirectorySearchMode:I

    invoke-virtual {p1, v0}, Lcom/android/contacts/list/DirectoryListLoader;->setDirectorySearchMode(I)V

    .line 354
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/contacts/list/DirectoryListLoader;->setLocalInvisibleDirectoryEnabled(Z)V

    .line 355
    return-void
.end method

.method public abstract configureLoader(Landroid/content/CursorLoader;J)V
.end method

.method protected createDefaultDirectoryPartition()Lcom/android/contacts/list/DirectoryPartition;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 137
    new-instance v0, Lcom/android/contacts/list/DirectoryPartition;

    invoke-direct {v0, v3, v3}, Lcom/android/contacts/list/DirectoryPartition;-><init>(ZZ)V

    .line 138
    .local v0, "partition":Lcom/android/contacts/list/DirectoryPartition;
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/list/DirectoryPartition;->setDirectoryId(J)V

    .line 139
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b000e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DirectoryPartition;->setDirectoryType(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v0, v3}, Lcom/android/contacts/list/DirectoryPartition;->setPriorityDirectory(Z)V

    .line 141
    invoke-virtual {v0, v3}, Lcom/android/contacts/list/DirectoryPartition;->setPhotoSupported(Z)V

    .line 142
    return-object v0
.end method

.method protected createPinnedSectionHeaderView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 108
    new-instance v0, Lcom/android/contacts/list/ContactListPinnedHeaderView;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/contacts/list/ContactListPinnedHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getContactNameDisplayOrder()I
    .locals 1

    .prologue
    .line 259
    iget v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mDisplayOrder:I

    return v0
.end method

.method protected getContactUri(ILandroid/database/Cursor;II)Landroid/net/Uri;
    .locals 9
    .param p1, "partitionIndex"    # I
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "contactIdColumn"    # I
    .param p4, "lookUpKeyColumn"    # I

    .prologue
    .line 674
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 675
    .local v0, "contactId":J
    invoke-interface {p2, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 676
    .local v4, "lookupKey":Ljava/lang/String;
    invoke-static {v0, v1, v4}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 677
    .local v5, "uri":Landroid/net/Uri;
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/list/DirectoryPartition;

    invoke-virtual {v6}, Lcom/android/contacts/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v2

    .line 678
    .local v2, "directoryId":J
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-eqz v6, :cond_0

    .line 679
    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    const-string v7, "directory"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    .line 682
    :cond_0
    return-object v5
.end method

.method public getContactsCount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 690
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mContactsCount:Ljava/lang/String;

    return-object v0
.end method

.method public getDirectoryResultLimit()I
    .locals 1

    .prologue
    .line 251
    iget v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mDirectoryResultLimit:I

    return v0
.end method

.method public getDisplayPhotos()Z
    .locals 1

    .prologue
    .line 283
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mDisplayPhotos:Z

    return v0
.end method

.method public getFilter()Lcom/android/contacts/list/ContactListFilter;
    .locals 1

    .prologue
    .line 634
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    return-object v0
.end method

.method public getItemViewType(II)I
    .locals 3
    .param p1, "partitionIndex"    # I
    .param p2, "position"    # I

    .prologue
    .line 466
    invoke-super {p0, p1, p2}, Lcom/android/contacts/widget/IndexerListAdapter;->getItemViewType(II)I

    move-result v1

    .line 467
    .local v1, "type":I
    invoke-virtual {p0, p2}, Lcom/android/contacts/list/ContactEntryListAdapter;->isUserProfile(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getIndexedPartition()I

    move-result v2

    if-ne p1, v2, :cond_0

    .line 470
    invoke-virtual {p0, p2}, Lcom/android/contacts/list/ContactEntryListAdapter;->getItemPlacementInSection(I)Lcom/android/contacts/widget/IndexerListAdapter$Placement;

    move-result-object v0

    .line 471
    .local v0, "placement":Lcom/android/contacts/widget/IndexerListAdapter$Placement;
    iget-boolean v2, v0, Lcom/android/contacts/widget/IndexerListAdapter$Placement;->firstInSection:Z

    if-eqz v2, :cond_1

    .line 473
    .end local v0    # "placement":Lcom/android/contacts/widget/IndexerListAdapter$Placement;
    .end local v1    # "type":I
    :cond_0
    :goto_0
    return v1

    .line 471
    .restart local v0    # "placement":Lcom/android/contacts/widget/IndexerListAdapter$Placement;
    .restart local v1    # "type":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getItemViewTypeCount()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method protected getPhotoLoader()Lcom/android/contacts/ContactPhotoManager;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mPhotoLoader:Lcom/android/contacts/ContactPhotoManager;

    return-object v0
.end method

.method public getQuantityText(III)Ljava/lang/String;
    .locals 4
    .param p1, "count"    # I
    .param p2, "zeroResourceId"    # I
    .param p3, "pluralResourceId"    # I

    .prologue
    .line 613
    if-nez p1, :cond_0

    .line 614
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 618
    :goto_0
    return-object v1

    .line 616
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p3, p1}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 618
    .local v0, "format":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getQueryString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mQueryString:Ljava/lang/String;

    return-object v0
.end method

.method public getSortOrder()I
    .locals 1

    .prologue
    .line 267
    iget v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mSortOrder:I

    return v0
.end method

.method public getUpperCaseQueryString()[C
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mUpperCaseQueryString:[C

    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 461
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getItemViewTypeCount()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasProfile()Z
    .locals 1

    .prologue
    .line 345
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mProfileExists:Z

    return v0
.end method

.method public isCheckBoxEnabled()Z
    .locals 1

    .prologue
    .line 324
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mCheckBoxEnabled:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 484
    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mEmptyListEnabled:Z

    if-nez v1, :cond_1

    .line 492
    :cond_0
    :goto_0
    return v0

    .line 486
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->isSearchMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 487
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0

    .line 488
    :cond_2
    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mLoading:Z

    if-nez v1, :cond_0

    .line 492
    invoke-super {p0}, Lcom/android/contacts/widget/IndexerListAdapter;->isEmpty()Z

    move-result v0

    goto :goto_0
.end method

.method public isLoading()Z
    .locals 4

    .prologue
    .line 497
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v0

    .line 498
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 499
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v2

    .line 500
    .local v2, "partition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    instance-of v3, v2, Lcom/android/contacts/list/DirectoryPartition;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/android/contacts/list/DirectoryPartition;

    .end local v2    # "partition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    invoke-virtual {v2}, Lcom/android/contacts/list/DirectoryPartition;->isLoading()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 502
    const/4 v3, 0x1

    .line 505
    :goto_1
    return v3

    .line 498
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 505
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public isPhotoSupported(I)Z
    .locals 2
    .param p1, "partitionIndex"    # I

    .prologue
    .line 623
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v0

    .line 624
    .local v0, "partition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    instance-of v1, v0, Lcom/android/contacts/list/DirectoryPartition;

    if-eqz v1, :cond_0

    .line 625
    check-cast v0, Lcom/android/contacts/list/DirectoryPartition;

    .end local v0    # "partition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    invoke-virtual {v0}, Lcom/android/contacts/list/DirectoryPartition;->isPhotoSupported()Z

    move-result v1

    .line 627
    :goto_0
    return v1

    .restart local v0    # "partition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isQuickContactEnabled()Z
    .locals 1

    .prologue
    .line 307
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mQuickContactEnabled:Z

    return v0
.end method

.method public isSearchMode()Z
    .locals 1

    .prologue
    .line 218
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mSearchMode:Z

    return v0
.end method

.method public isSelectionVisible()Z
    .locals 1

    .prologue
    .line 299
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mSelectionVisible:Z

    return v0
.end method

.method protected isUserProfile(I)Z
    .locals 7
    .param p1, "position"    # I

    .prologue
    const/4 v5, 0x1

    .line 590
    const/4 v1, 0x0

    .line 591
    .local v1, "isUserProfile":Z
    if-nez p1, :cond_1

    .line 592
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartitionForPosition(I)I

    move-result v3

    .line 593
    .local v3, "partition":I
    if-ltz v3, :cond_1

    .line 596
    invoke-virtual {p0, v3}, Lcom/android/contacts/list/ContactEntryListAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v6

    invoke-interface {v6}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    .line 597
    .local v2, "offset":I
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 598
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 599
    const-string v6, "is_user_profile"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 600
    .local v4, "profileColumnIndex":I
    const/4 v6, -0x1

    if-eq v4, v6, :cond_0

    .line 601
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-ne v6, v5, :cond_2

    move v1, v5

    .line 604
    :cond_0
    :goto_0
    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 608
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v2    # "offset":I
    .end local v3    # "partition":I
    .end local v4    # "profileColumnIndex":I
    :cond_1
    return v1

    .line 601
    .restart local v0    # "cursor":Landroid/database/Cursor;
    .restart local v2    # "offset":I
    .restart local v3    # "partition":I
    .restart local v4    # "profileColumnIndex":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected newHeaderView(Landroid/content/Context;ILandroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "partition"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 541
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 542
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f040040

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public onDataReload()V
    .locals 6

    .prologue
    .line 187
    const/4 v3, 0x0

    .line 188
    .local v3, "notify":Z
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v0

    .line 189
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 190
    invoke-virtual {p0, v2}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v4

    .line 191
    .local v4, "partition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    instance-of v5, v4, Lcom/android/contacts/list/DirectoryPartition;

    if-eqz v5, :cond_1

    move-object v1, v4

    .line 192
    check-cast v1, Lcom/android/contacts/list/DirectoryPartition;

    .line 193
    .local v1, "directoryPartition":Lcom/android/contacts/list/DirectoryPartition;
    invoke-virtual {v1}, Lcom/android/contacts/list/DirectoryPartition;->isLoading()Z

    move-result v5

    if-nez v5, :cond_0

    .line 194
    const/4 v3, 0x1

    .line 196
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/android/contacts/list/DirectoryPartition;->setStatus(I)V

    .line 189
    .end local v1    # "directoryPartition":Lcom/android/contacts/list/DirectoryPartition;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 199
    .end local v4    # "partition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    :cond_2
    if-eqz v3, :cond_3

    .line 200
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->notifyDataSetChanged()V

    .line 202
    :cond_3
    return-void
.end method

.method removeDirectoriesAfterDefault()V
    .locals 7

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v2

    .line 156
    .local v2, "partitionCount":I
    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 157
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v1

    .line 158
    .local v1, "partition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    instance-of v3, v1, Lcom/android/contacts/list/DirectoryPartition;

    if-eqz v3, :cond_1

    check-cast v1, Lcom/android/contacts/list/DirectoryPartition;

    .end local v1    # "partition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    invoke-virtual {v1}, Lcom/android/contacts/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 165
    :cond_0
    return-void

    .line 162
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->removePartition(I)V

    .line 156
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public setCheckBoxEnabled(Z)V
    .locals 0
    .param p1, "checkBoxEnabled"    # Z

    .prologue
    .line 328
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mCheckBoxEnabled:Z

    .line 329
    return-void
.end method

.method public setContactNameDisplayOrder(I)V
    .locals 0
    .param p1, "displayOrder"    # I

    .prologue
    .line 263
    iput p1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mDisplayOrder:I

    .line 264
    return-void
.end method

.method public setContactsCount(Ljava/lang/String;)V
    .locals 0
    .param p1, "count"    # Ljava/lang/String;

    .prologue
    .line 686
    iput-object p1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mContactsCount:Ljava/lang/String;

    .line 687
    return-void
.end method

.method public setDarkTheme(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 349
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mDarkTheme:Z

    .line 350
    return-void
.end method

.method protected setDefaultFilterHeaderText(I)V
    .locals 1
    .param p1, "resourceId"    # I

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mDefaultFilterHeaderText:Ljava/lang/CharSequence;

    .line 104
    return-void
.end method

.method public setDirectoryResultLimit(I)V
    .locals 0
    .param p1, "limit"    # I

    .prologue
    .line 255
    iput p1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mDirectoryResultLimit:I

    .line 256
    return-void
.end method

.method public setDirectorySearchMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 247
    iput p1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mDirectorySearchMode:I

    .line 248
    return-void
.end method

.method public setDisplayPhotos(Z)V
    .locals 0
    .param p1, "displayPhotos"    # Z

    .prologue
    .line 287
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mDisplayPhotos:Z

    .line 288
    return-void
.end method

.method public setEmptyListEnabled(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 295
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mEmptyListEnabled:Z

    .line 296
    return-void
.end method

.method public setFilter(Lcom/android/contacts/list/ContactListFilter;)V
    .locals 0
    .param p1, "filter"    # Lcom/android/contacts/list/ContactListFilter;

    .prologue
    .line 638
    iput-object p1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    .line 639
    return-void
.end method

.method public setIncludeProfile(Z)V
    .locals 0
    .param p1, "includeProfile"    # Z

    .prologue
    .line 319
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mIncludeProfile:Z

    .line 320
    return-void
.end method

.method public setPhotoLoader(Lcom/android/contacts/ContactPhotoManager;)V
    .locals 0
    .param p1, "photoLoader"    # Lcom/android/contacts/ContactPhotoManager;

    .prologue
    .line 275
    iput-object p1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mPhotoLoader:Lcom/android/contacts/ContactPhotoManager;

    .line 276
    return-void
.end method

.method protected setPinnedHeaderContactsCount(Landroid/view/View;)V
    .locals 1
    .param p1, "header"    # Landroid/view/View;

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mProfileExists:Z

    if-eqz v0, :cond_0

    .line 121
    check-cast p1, Lcom/android/contacts/list/ContactListPinnedHeaderView;

    .end local p1    # "header":Landroid/view/View;
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mContactsCount:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/contacts/list/ContactListPinnedHeaderView;->setCountView(Ljava/lang/String;)V

    .line 125
    :goto_0
    return-void

    .line 123
    .restart local p1    # "header":Landroid/view/View;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->clearPinnedHeaderContactsCount(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected setPinnedSectionTitle(Landroid/view/View;Ljava/lang/String;)V
    .locals 0
    .param p1, "pinnedHeaderView"    # Landroid/view/View;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 113
    check-cast p1, Lcom/android/contacts/list/ContactListPinnedHeaderView;

    .end local p1    # "pinnedHeaderView":Landroid/view/View;
    invoke-virtual {p1, p2}, Lcom/android/contacts/list/ContactListPinnedHeaderView;->setSectionHeader(Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public setProfileExists(Z)V
    .locals 3
    .param p1, "exists"    # Z

    .prologue
    .line 333
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mProfileExists:Z

    .line 335
    if-eqz p1, :cond_0

    .line 336
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getIndexer()Landroid/widget/SectionIndexer;

    move-result-object v0

    .line 337
    .local v0, "indexer":Landroid/widget/SectionIndexer;
    if-eqz v0, :cond_0

    .line 338
    check-cast v0, Lcom/android/contacts/list/ContactsSectionIndexer;

    .end local v0    # "indexer":Landroid/widget/SectionIndexer;
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b01f1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactsSectionIndexer;->setProfileHeader(Ljava/lang/String;)V

    .line 342
    :cond_0
    return-void
.end method

.method public setQueryString(Ljava/lang/String;)V
    .locals 1
    .param p1, "queryString"    # Ljava/lang/String;

    .prologue
    .line 230
    iput-object p1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mQueryString:Ljava/lang/String;

    .line 231
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mUpperCaseQueryString:[C

    .line 236
    :goto_0
    return-void

    .line 234
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mUpperCaseQueryString:[C

    goto :goto_0
.end method

.method public setQuickContactEnabled(Z)V
    .locals 0
    .param p1, "quickContactEnabled"    # Z

    .prologue
    .line 311
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mQuickContactEnabled:Z

    .line 312
    return-void
.end method

.method public setSearchMode(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 222
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mSearchMode:Z

    .line 223
    return-void
.end method

.method public setSelectionVisible(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 303
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mSelectionVisible:Z

    .line 304
    return-void
.end method

.method public setSortOrder(I)V
    .locals 0
    .param p1, "sortOrder"    # I

    .prologue
    .line 271
    iput p1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mSortOrder:I

    .line 272
    return-void
.end method

.method public shouldIncludeProfile()Z
    .locals 1

    .prologue
    .line 315
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mIncludeProfile:Z

    return v0
.end method
