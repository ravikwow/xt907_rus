.class public abstract Lcom/android/contacts/list/ContactBrowseListFragment;
.super Lcom/android/contacts/list/ContactEntryListFragment;
.source "ContactBrowseListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/list/ContactBrowseListFragment$ContactLookupTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/list/ContactEntryListFragment",
        "<",
        "Lcom/android/contacts/list/ContactListAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field private mContactLookupTask:Lcom/android/contacts/list/ContactBrowseListFragment$ContactLookupTask;

.field private mDelaySelection:Z

.field private mFilter:Lcom/android/contacts/list/ContactListFilter;

.field private mHandler:Landroid/os/Handler;

.field private mLastSelectedPosition:I

.field protected mListener:Lcom/android/contacts/list/OnContactBrowserActionListener;

.field private mPersistentSelectionPrefix:Ljava/lang/String;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mRefreshingContactUri:Z

.field private mSelectedContactDirectoryId:J

.field private mSelectedContactId:J

.field private mSelectedContactLookupKey:Ljava/lang/String;

.field private mSelectedContactUri:Landroid/net/Uri;

.field private mSelectionPersistenceRequested:Z

.field private mSelectionRequired:Z

.field private mSelectionToScreenRequested:Z

.field private mSelectionVerified:Z

.field private mSmoothScrollRequested:Z

.field private mStartedLoading:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;-><init>()V

    .line 90
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mLastSelectedPosition:I

    .line 93
    const-string v0, "defaultContactBrowserSelection"

    iput-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mPersistentSelectionPrefix:Ljava/lang/String;

    .line 98
    return-void
.end method

.method private checkSelection()V
    .locals 14

    .prologue
    const/4 v13, -0x6

    const/4 v12, 0x0

    .line 435
    iget-boolean v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionVerified:Z

    if-eqz v1, :cond_1

    .line 537
    :cond_0
    :goto_0
    return-void

    .line 439
    :cond_1
    iget-boolean v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mRefreshingContactUri:Z

    if-nez v1, :cond_0

    .line 443
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->isLoadingDirectoryList()Z

    move-result v1

    if-nez v1, :cond_0

    .line 447
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListAdapter;

    .line 448
    .local v0, "adapter":Lcom/android/contacts/list/ContactListAdapter;
    if-eqz v0, :cond_0

    .line 452
    const/4 v8, 0x1

    .line 453
    .local v8, "directoryLoading":Z
    invoke-virtual {v0}, Lcom/android/contacts/list/ContactListAdapter;->getPartitionCount()I

    move-result v6

    .line 454
    .local v6, "count":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-ge v9, v6, :cond_2

    .line 455
    invoke-virtual {v0, v9}, Lcom/android/contacts/list/ContactListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v10

    .line 456
    .local v10, "partition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    instance-of v1, v10, Lcom/android/contacts/list/DirectoryPartition;

    if-eqz v1, :cond_5

    move-object v7, v10

    .line 457
    check-cast v7, Lcom/android/contacts/list/DirectoryPartition;

    .line 458
    .local v7, "directory":Lcom/android/contacts/list/DirectoryPartition;
    invoke-virtual {v7}, Lcom/android/contacts/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactDirectoryId:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_5

    .line 459
    invoke-virtual {v7}, Lcom/android/contacts/list/DirectoryPartition;->isLoading()Z

    move-result v8

    .line 465
    .end local v7    # "directory":Lcom/android/contacts/list/DirectoryPartition;
    .end local v10    # "partition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    :cond_2
    if-nez v8, :cond_0

    .line 469
    iget-wide v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactDirectoryId:J

    iget-object v3, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactLookupKey:Ljava/lang/String;

    iget-wide v4, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactId:J

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/list/ContactListAdapter;->setSelectedContact(JLjava/lang/String;J)V

    .line 472
    invoke-virtual {v0}, Lcom/android/contacts/list/ContactListAdapter;->getSelectedContactPosition()I

    move-result v11

    .line 473
    .local v11, "selectedPosition":I
    const/4 v1, -0x1

    if-eq v11, v1, :cond_6

    .line 474
    iput v11, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mLastSelectedPosition:I

    .line 520
    :goto_2
    iput-boolean v12, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionRequired:Z

    .line 521
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionVerified:Z

    .line 523
    iget-boolean v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionPersistenceRequested:Z

    if-eqz v1, :cond_3

    .line 524
    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    invoke-direct {p0, v1}, Lcom/android/contacts/list/ContactBrowseListFragment;->saveSelectedUri(Landroid/net/Uri;)V

    .line 525
    iput-boolean v12, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionPersistenceRequested:Z

    .line 528
    :cond_3
    iget-boolean v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionToScreenRequested:Z

    if-eqz v1, :cond_4

    .line 529
    invoke-virtual {p0, v11}, Lcom/android/contacts/list/ContactBrowseListFragment;->requestSelectionToScreen(I)V

    .line 532
    :cond_4
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->invalidateViews()V

    .line 534
    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mListener:Lcom/android/contacts/list/OnContactBrowserActionListener;

    if-eqz v1, :cond_0

    .line 535
    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mListener:Lcom/android/contacts/list/OnContactBrowserActionListener;

    invoke-interface {v1}, Lcom/android/contacts/list/OnContactBrowserActionListener;->onSelectionChange()V

    goto :goto_0

    .line 454
    .end local v11    # "selectedPosition":I
    .restart local v10    # "partition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 476
    .end local v10    # "partition":Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    .restart local v11    # "selectedPosition":I
    :cond_6
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->isSearchMode()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 477
    iget-boolean v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mDelaySelection:Z

    if-eqz v1, :cond_b

    .line 478
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->selectFirstFoundContactAfterDelay()V

    .line 479
    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mListener:Lcom/android/contacts/list/OnContactBrowserActionListener;

    if-eqz v1, :cond_0

    .line 480
    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mListener:Lcom/android/contacts/list/OnContactBrowserActionListener;

    invoke-interface {v1}, Lcom/android/contacts/list/OnContactBrowserActionListener;->onSelectionChange()V

    goto/16 :goto_0

    .line 484
    :cond_7
    iget-boolean v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionRequired:Z

    if-eqz v1, :cond_a

    .line 490
    iput-boolean v12, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionRequired:Z

    .line 499
    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    iget v1, v1, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    if-eq v1, v13, :cond_8

    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    iget v1, v1, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_9

    .line 502
    :cond_8
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->reloadData()V

    goto/16 :goto_0

    .line 505
    :cond_9
    invoke-direct {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->notifyInvalidSelection()V

    goto/16 :goto_0

    .line 508
    :cond_a
    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    iget v1, v1, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    if-ne v1, v13, :cond_b

    .line 512
    invoke-direct {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->notifyInvalidSelection()V

    goto/16 :goto_0

    .line 516
    :cond_b
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/contacts/list/ContactBrowseListFragment;->saveSelectedUri(Landroid/net/Uri;)V

    .line 517
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->selectDefaultContact()V

    goto :goto_2
.end method

.method private getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 159
    new-instance v0, Lcom/android/contacts/list/ContactBrowseListFragment$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/list/ContactBrowseListFragment$1;-><init>(Lcom/android/contacts/list/ContactBrowseListFragment;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mHandler:Landroid/os/Handler;

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getPersistentSelectionKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 699
    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    if-nez v0, :cond_0

    .line 700
    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mPersistentSelectionPrefix:Ljava/lang/String;

    .line 702
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mPersistentSelectionPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactListFilter;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private notifyInvalidSelection()V
    .locals 1

    .prologue
    .line 650
    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mListener:Lcom/android/contacts/list/OnContactBrowserActionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mListener:Lcom/android/contacts/list/OnContactBrowserActionListener;

    invoke-interface {v0}, Lcom/android/contacts/list/OnContactBrowserActionListener;->onInvalidSelection()V

    .line 651
    :cond_0
    return-void
.end method

.method private parseSelectedContactUri()V
    .locals 8

    .prologue
    const/4 v6, 0x2

    const/4 v7, 0x0

    const-wide/16 v4, 0x0

    .line 370
    iget-object v2, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    if-eqz v2, :cond_4

    .line 371
    iget-object v2, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    const-string v3, "directory"

    invoke-virtual {v2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 373
    .local v0, "directoryParam":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-wide v2, v4

    :goto_0
    iput-wide v2, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactDirectoryId:J

    .line 375
    iget-object v2, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 376
    iget-object v2, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    .line 377
    .local v1, "pathSegments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactLookupKey:Ljava/lang/String;

    .line 378
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 379
    iget-object v2, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactId:J

    .line 396
    .end local v0    # "directoryParam":Ljava/lang/String;
    .end local v1    # "pathSegments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    :goto_1
    return-void

    .line 373
    .restart local v0    # "directoryParam":Ljava/lang/String;
    :cond_1
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_0

    .line 381
    :cond_2
    iget-object v2, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v2, v6, :cond_3

    .line 383
    iput-object v7, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactLookupKey:Ljava/lang/String;

    .line 384
    iget-object v2, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactId:J

    goto :goto_1

    .line 386
    :cond_3
    const-string v2, "ContactList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported contact URI: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    iput-object v7, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactLookupKey:Ljava/lang/String;

    .line 388
    iput-wide v4, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactId:J

    goto :goto_1

    .line 392
    .end local v0    # "directoryParam":Ljava/lang/String;
    :cond_4
    iput-wide v4, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactDirectoryId:J

    .line 393
    iput-object v7, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactLookupKey:Ljava/lang/String;

    .line 394
    iput-wide v4, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactId:J

    goto :goto_1
.end method

.method private restoreFilter()V
    .locals 1

    .prologue
    .line 695
    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {v0}, Lcom/android/contacts/list/ContactListFilter;->restoreDefaultPreferences(Landroid/content/SharedPreferences;)Lcom/android/contacts/list/ContactListFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    .line 696
    return-void
.end method

.method private restoreSelectedUri(Z)V
    .locals 7
    .param p1, "willReloadData"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 678
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionRequired:Z

    if-eqz v0, :cond_0

    .line 688
    :goto_0
    return-void

    .line 682
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mPrefs:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->getPersistentSelectionKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 683
    .local v6, "selectedUri":Ljava/lang/String;
    if-nez v6, :cond_1

    move-object v0, p0

    move v3, v2

    move v4, v2

    move v5, p1

    .line 684
    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/list/ContactBrowseListFragment;->setSelectedContactUri(Landroid/net/Uri;ZZZZ)V

    goto :goto_0

    .line 686
    :cond_1
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v0, p0

    move v3, v2

    move v4, v2

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/list/ContactBrowseListFragment;->setSelectedContactUri(Landroid/net/Uri;ZZZZ)V

    goto :goto_0
.end method

.method private saveFilter()V
    .locals 2

    .prologue
    .line 691
    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mPrefs:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    invoke-static {v0, v1}, Lcom/android/contacts/list/ContactListFilter;->storeToPreferences(Landroid/content/SharedPreferences;Lcom/android/contacts/list/ContactListFilter;)V

    .line 692
    return-void
.end method

.method private saveSelectedUri(Landroid/net/Uri;)V
    .locals 3
    .param p1, "contactUri"    # Landroid/net/Uri;

    .prologue
    .line 660
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->isSearchMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 673
    :goto_0
    return-void

    .line 664
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mPrefs:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    invoke-static {v1, v2}, Lcom/android/contacts/list/ContactListFilter;->storeToPreferences(Landroid/content/SharedPreferences;Lcom/android/contacts/list/ContactListFilter;)V

    .line 666
    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 667
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    if-nez p1, :cond_1

    .line 668
    invoke-direct {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->getPersistentSelectionKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 672
    :goto_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 670
    :cond_1
    invoke-direct {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->getPersistentSelectionKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method

.method private setSelectedContactUri(Landroid/net/Uri;ZZZZ)V
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "required"    # Z
    .param p3, "smoothScroll"    # Z
    .param p4, "persistent"    # Z
    .param p5, "willReloadData"    # Z

    .prologue
    .line 342
    iput-boolean p3, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSmoothScrollRequested:Z

    .line 343
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionToScreenRequested:Z

    .line 345
    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    if-nez v1, :cond_0

    if-nez p1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 347
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionVerified:Z

    .line 348
    iput-boolean p2, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionRequired:Z

    .line 349
    iput-boolean p4, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionPersistenceRequested:Z

    .line 350
    iput-object p1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    .line 351
    invoke-direct {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->parseSelectedContactUri()V

    .line 353
    if-nez p5, :cond_2

    .line 356
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListAdapter;

    .line 357
    .local v0, "adapter":Lcom/android/contacts/list/ContactListAdapter;
    if-eqz v0, :cond_2

    .line 358
    iget-wide v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactDirectoryId:J

    iget-object v3, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactLookupKey:Ljava/lang/String;

    iget-wide v4, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactId:J

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/list/ContactListAdapter;->setSelectedContact(JLjava/lang/String;J)V

    .line 360
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->invalidateViews()V

    .line 365
    .end local v0    # "adapter":Lcom/android/contacts/list/ContactListAdapter;
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->refreshSelectedContactUri()V

    .line 367
    :cond_3
    return-void
.end method


# virtual methods
.method protected configureAdapter()V
    .locals 7

    .prologue
    .line 400
    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->configureAdapter()V

    .line 402
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListAdapter;

    .line 403
    .local v0, "adapter":Lcom/android/contacts/list/ContactListAdapter;
    if-nez v0, :cond_0

    .line 419
    :goto_0
    return-void

    .line 407
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->isSearchMode()Z

    move-result v6

    .line 408
    .local v6, "searchMode":Z
    if-nez v6, :cond_2

    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    if-eqz v1, :cond_2

    .line 409
    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListAdapter;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 410
    iget-boolean v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionRequired:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    iget v1, v1, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    const/4 v2, -0x6

    if-ne v1, v2, :cond_2

    .line 412
    :cond_1
    iget-wide v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactDirectoryId:J

    iget-object v3, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactLookupKey:Ljava/lang/String;

    iget-wide v4, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactId:J

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/list/ContactListAdapter;->setSelectedContact(JLjava/lang/String;J)V

    .line 418
    :cond_2
    if-nez v6, :cond_3

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListAdapter;->setIncludeProfile(Z)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getFilter()Lcom/android/contacts/list/ContactListFilter;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    return-object v0
.end method

.method public getSelectedContactUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    return-object v0
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 588
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mRefreshingContactUri:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOptionsMenuChanged()Z
    .locals 1

    .prologue
    .line 708
    const/4 v0, 0x0

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 175
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->onAttach(Landroid/app/Activity;)V

    .line 176
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mPrefs:Landroid/content/SharedPreferences;

    .line 177
    invoke-direct {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->restoreFilter()V

    .line 178
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/contacts/list/ContactBrowseListFragment;->restoreSelectedUri(Z)V

    .line 179
    return-void
.end method

.method protected onContactUriQueryFinished(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 270
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mRefreshingContactUri:Z

    .line 271
    iput-object p1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    .line 272
    invoke-direct {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->parseSelectedContactUri()V

    .line 273
    invoke-direct {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->checkSelection()V

    .line 274
    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 1
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
    .line 423
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/ContactEntryListFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    .line 424
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionVerified:Z

    .line 427
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->refreshSelectedContactUri()V

    .line 428
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 48
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/list/ContactBrowseListFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

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
    .line 432
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 237
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 238
    const-string v0, "filter"

    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 239
    const-string v0, "selectedUri"

    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 240
    const-string v0, "selectionVerified"

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionVerified:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 241
    const-string v0, "lastSelected"

    iget v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mLastSelectedPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 242
    return-void
.end method

.method protected refreshSelectedContactUri()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 245
    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mContactLookupTask:Lcom/android/contacts/list/ContactBrowseListFragment$ContactLookupTask;

    if-eqz v1, :cond_0

    .line 246
    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mContactLookupTask:Lcom/android/contacts/list/ContactBrowseListFragment$ContactLookupTask;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactBrowseListFragment$ContactLookupTask;->cancel()V

    .line 249
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->isSelectionVisible()Z

    move-result v1

    if-nez v1, :cond_1

    .line 267
    :goto_0
    return-void

    .line 253
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mRefreshingContactUri:Z

    .line 255
    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    if-nez v1, :cond_2

    .line 256
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactBrowseListFragment;->onContactUriQueryFinished(Landroid/net/Uri;)V

    goto :goto_0

    .line 260
    :cond_2
    iget-wide v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactDirectoryId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    iget-wide v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactDirectoryId:J

    const-wide/16 v3, 0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    .line 262
    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactBrowseListFragment;->onContactUriQueryFinished(Landroid/net/Uri;)V

    goto :goto_0

    .line 264
    :cond_3
    new-instance v1, Lcom/android/contacts/list/ContactBrowseListFragment$ContactLookupTask;

    iget-object v2, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/list/ContactBrowseListFragment$ContactLookupTask;-><init>(Lcom/android/contacts/list/ContactBrowseListFragment;Landroid/net/Uri;)V

    iput-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mContactLookupTask:Lcom/android/contacts/list/ContactBrowseListFragment$ContactLookupTask;

    .line 265
    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mContactLookupTask:Lcom/android/contacts/list/ContactBrowseListFragment$ContactLookupTask;

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    check-cast v0, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v0}, Lcom/android/contacts/list/ContactBrowseListFragment$ContactLookupTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public reloadData()V
    .locals 1

    .prologue
    .line 605
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mStartedLoading:Z

    if-eqz v0, :cond_0

    .line 606
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionVerified:Z

    .line 607
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mLastSelectedPosition:I

    .line 608
    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->reloadData()V

    .line 610
    :cond_0
    return-void
.end method

.method protected requestSelectionToScreen(I)V
    .locals 3
    .param p1, "selectedPosition"    # I

    .prologue
    .line 578
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 579
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/widget/AutoScrollListView;

    .line 580
    .local v0, "listView":Lcom/android/contacts/widget/AutoScrollListView;
    invoke-virtual {v0}, Lcom/android/contacts/widget/AutoScrollListView;->getHeaderViewsCount()I

    move-result v1

    add-int/2addr v1, p1

    iget-boolean v2, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSmoothScrollRequested:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/widget/AutoScrollListView;->requestPositionToScreen(IZ)V

    .line 582
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionToScreenRequested:Z

    .line 584
    .end local v0    # "listView":Lcom/android/contacts/widget/AutoScrollListView;
    :cond_0
    return-void
.end method

.method public restoreSavedState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 222
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->restoreSavedState(Landroid/os/Bundle;)V

    .line 224
    if-nez p1, :cond_0

    .line 233
    :goto_0
    return-void

    .line 228
    :cond_0
    const-string v0, "filter"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListFilter;

    iput-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    .line 229
    const-string v0, "selectedUri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    .line 230
    const-string v0, "selectionVerified"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionVerified:Z

    .line 231
    const-string v0, "lastSelected"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mLastSelectedPosition:I

    .line 232
    invoke-direct {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->parseSelectedContactUri()V

    goto :goto_0
.end method

.method protected selectDefaultContact()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 559
    const/4 v1, 0x0

    .line 560
    .local v1, "contactUri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/list/ContactListAdapter;

    .line 561
    .local v6, "adapter":Lcom/android/contacts/list/ContactListAdapter;
    iget v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mLastSelectedPosition:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 562
    invoke-virtual {v6}, Lcom/android/contacts/list/ContactListAdapter;->getCount()I

    move-result v7

    .line 563
    .local v7, "count":I
    iget v8, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mLastSelectedPosition:I

    .line 564
    .local v8, "pos":I
    if-lt v8, v7, :cond_0

    if-lez v7, :cond_0

    .line 565
    add-int/lit8 v8, v7, -0x1

    .line 567
    :cond_0
    invoke-virtual {v6, v8}, Lcom/android/contacts/list/ContactListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v1

    .line 570
    .end local v7    # "count":I
    .end local v8    # "pos":I
    :cond_1
    if-nez v1, :cond_2

    .line 571
    invoke-virtual {v6}, Lcom/android/contacts/list/ContactListAdapter;->getFirstContactUri()Landroid/net/Uri;

    move-result-object v1

    .line 574
    :cond_2
    iget-boolean v3, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSmoothScrollRequested:Z

    move-object v0, p0

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/list/ContactBrowseListFragment;->setSelectedContactUri(Landroid/net/Uri;ZZZZ)V

    .line 575
    return-void
.end method

.method public selectFirstFoundContactAfterDelay()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 545
    invoke-direct {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->getHandler()Landroid/os/Handler;

    move-result-object v6

    .line 546
    .local v6, "handler":Landroid/os/Handler;
    invoke-virtual {v6, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 548
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->getQueryString()Ljava/lang/String;

    move-result-object v7

    .line 549
    .local v7, "queryString":Ljava/lang/String;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 551
    const-wide/16 v0, 0x1f4

    invoke-virtual {v6, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 556
    :goto_0
    return-void

    .line 554
    :cond_0
    const/4 v1, 0x0

    move-object v0, p0

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/list/ContactBrowseListFragment;->setSelectedContactUri(Landroid/net/Uri;ZZZZ)V

    goto :goto_0
.end method

.method public setFilter(Lcom/android/contacts/list/ContactListFilter;)V
    .locals 1
    .param p1, "filter"    # Lcom/android/contacts/list/ContactListFilter;

    .prologue
    .line 192
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/list/ContactBrowseListFragment;->setFilter(Lcom/android/contacts/list/ContactListFilter;Z)V

    .line 193
    return-void
.end method

.method public setFilter(Lcom/android/contacts/list/ContactListFilter;Z)V
    .locals 3
    .param p1, "filter"    # Lcom/android/contacts/list/ContactListFilter;
    .param p2, "restoreSelectedUri"    # Z

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/ContactListFilter;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    :cond_2
    const-string v0, "ContactList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New filter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iput-object p1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    .line 207
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mLastSelectedPosition:I

    .line 208
    invoke-direct {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->saveFilter()V

    .line 209
    if-eqz p2, :cond_3

    .line 210
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    .line 211
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/contacts/list/ContactBrowseListFragment;->restoreSelectedUri(Z)V

    .line 213
    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->reloadData()V

    goto :goto_0
.end method

.method public setOnContactListActionListener(Lcom/android/contacts/list/OnContactBrowserActionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/contacts/list/OnContactBrowserActionListener;

    .prologue
    .line 613
    iput-object p1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mListener:Lcom/android/contacts/list/OnContactBrowserActionListener;

    .line 614
    return-void
.end method

.method public setQueryString(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "queryString"    # Ljava/lang/String;
    .param p2, "delaySelection"    # Z

    .prologue
    .line 308
    iput-boolean p2, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mDelaySelection:Z

    .line 309
    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/ContactEntryListFragment;->setQueryString(Ljava/lang/String;Z)V

    .line 310
    return-void
.end method

.method protected setSearchMode(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->isSearchMode()Z

    move-result v0

    if-eq v0, p1, :cond_1

    .line 184
    if-nez p1, :cond_0

    .line 185
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/contacts/list/ContactBrowseListFragment;->restoreSelectedUri(Z)V

    .line 187
    :cond_0
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->setSearchMode(Z)V

    .line 189
    :cond_1
    return-void
.end method

.method public setSelectedContactUri(Landroid/net/Uri;)V
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 303
    move-object v0, p0

    move-object v1, p1

    move v4, v2

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/list/ContactBrowseListFragment;->setSelectedContactUri(Landroid/net/Uri;ZZZZ)V

    .line 304
    return-void
.end method

.method public setSelectionRequired(Z)V
    .locals 0
    .param p1, "required"    # Z

    .prologue
    .line 322
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionRequired:Z

    .line 323
    return-void
.end method

.method protected startLoading()V
    .locals 1

    .prologue
    .line 593
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mStartedLoading:Z

    .line 594
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionVerified:Z

    .line 595
    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->startLoading()V

    .line 596
    return-void
.end method

.method public viewContact(Landroid/net/Uri;)V
    .locals 6
    .param p1, "contactUri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 621
    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/list/ContactBrowseListFragment;->setSelectedContactUri(Landroid/net/Uri;ZZZZ)V

    .line 622
    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mListener:Lcom/android/contacts/list/OnContactBrowserActionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mListener:Lcom/android/contacts/list/OnContactBrowserActionListener;

    invoke-interface {v0, p1}, Lcom/android/contacts/list/OnContactBrowserActionListener;->onViewContactAction(Landroid/net/Uri;)V

    .line 623
    :cond_0
    return-void
.end method
