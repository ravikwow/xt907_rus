.class public Lcom/android/providers/downloads/ui/DownloadList;
.super Landroid/app/Activity;
.source "DownloadList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;,
        Lcom/android/providers/downloads/ui/DownloadList$MyDataSetObserver;,
        Lcom/android/providers/downloads/ui/DownloadList$MyContentObserver;,
        Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;
    }
.end annotation


# instance fields
.field private mActionMode:Landroid/view/ActionMode;

.field private mContentObserver:Lcom/android/providers/downloads/ui/DownloadList$MyContentObserver;

.field private mCurrentCursor:Landroid/database/Cursor;

.field private mCurrentView:Landroid/widget/ListView;

.field private mCurrentViewIsExpandableListView:Z

.field private mDataSetObserver:Lcom/android/providers/downloads/ui/DownloadList$MyDataSetObserver;

.field private mDateOrderedListView:Landroid/widget/ExpandableListView;

.field private mDateSortedAdapter:Lcom/android/providers/downloads/ui/DateSortedDownloadAdapter;

.field private mDateSortedCursor:Landroid/database/Cursor;

.field private mDownloadManager:Landroid/app/DownloadManager;

.field private mEmptyView:Landroid/view/View;

.field private mFailedDialog:Landroid/app/AlertDialog;

.field private mIdColumnId:I

.field private mIsSortedBySize:Z

.field private mLocalUriColumnId:I

.field private mMediaTypeColumnId:I

.field private mQueuedDialog:Landroid/app/AlertDialog;

.field private mQueuedDownloadId:Ljava/lang/Long;

.field private mReasonColumndId:I

.field mSelectedCountFormat:Ljava/lang/String;

.field private final mSelectedIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;",
            ">;"
        }
    .end annotation
.end field

.field private mSizeOrderedListView:Landroid/widget/ListView;

.field private mSizeSortedAdapter:Lcom/android/providers/downloads/ui/DownloadAdapter;

.field private mSizeSortedCursor:Landroid/database/Cursor;

.field private mSortOption:Landroid/widget/Button;

.field private mStatusColumnId:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 71
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 84
    new-instance v0, Lcom/android/providers/downloads/ui/DownloadList$MyContentObserver;

    invoke-direct {v0, p0}, Lcom/android/providers/downloads/ui/DownloadList$MyContentObserver;-><init>(Lcom/android/providers/downloads/ui/DownloadList;)V

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mContentObserver:Lcom/android/providers/downloads/ui/DownloadList$MyContentObserver;

    .line 85
    new-instance v0, Lcom/android/providers/downloads/ui/DownloadList$MyDataSetObserver;

    invoke-direct {v0, p0, v2}, Lcom/android/providers/downloads/ui/DownloadList$MyDataSetObserver;-><init>(Lcom/android/providers/downloads/ui/DownloadList;Lcom/android/providers/downloads/ui/DownloadList$1;)V

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDataSetObserver:Lcom/android/providers/downloads/ui/DownloadList$MyDataSetObserver;

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSelectedIds:Ljava/util/Map;

    .line 112
    iput-boolean v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mCurrentViewIsExpandableListView:Z

    .line 113
    iput-boolean v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mIsSortedBySize:Z

    .line 119
    iput-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mQueuedDownloadId:Ljava/lang/Long;

    .line 299
    return-void
.end method

.method static synthetic access$100(Lcom/android/providers/downloads/ui/DownloadList;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSelectedIds:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/providers/downloads/ui/DownloadList;)Landroid/view/ActionMode;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/providers/downloads/ui/DownloadList;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/providers/downloads/ui/DownloadList;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mCurrentCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/providers/downloads/ui/DownloadList;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadList;->haveCursors()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/providers/downloads/ui/DownloadList;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/android/providers/downloads/ui/DownloadList;->deleteDownload(J)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/providers/downloads/ui/DownloadList;)Landroid/app/DownloadManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDownloadManager:Landroid/app/DownloadManager;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/providers/downloads/ui/DownloadList;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mQueuedDownloadId:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/android/providers/downloads/ui/DownloadList;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mQueuedDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1702(Lcom/android/providers/downloads/ui/DownloadList;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mFailedDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/providers/downloads/ui/DownloadList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadList;->chooseListToShow()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/providers/downloads/ui/DownloadList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadList;->ensureSomeGroupIsExpanded()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/providers/downloads/ui/DownloadList;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mIsSortedBySize:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/providers/downloads/ui/DownloadList;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mIsSortedBySize:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/providers/downloads/ui/DownloadList;)Lcom/android/providers/downloads/ui/DateSortedDownloadAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedAdapter:Lcom/android/providers/downloads/ui/DateSortedDownloadAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/providers/downloads/ui/DownloadList;)Landroid/widget/ExpandableListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateOrderedListView:Landroid/widget/ExpandableListView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/providers/downloads/ui/DownloadList;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/providers/downloads/ui/DownloadList;Landroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/ui/DownloadList;->handleItemClick(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/providers/downloads/ui/DownloadList;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSizeSortedCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method private activeListView()Landroid/widget/ListView;
    .locals 2

    .prologue
    .line 580
    iget-boolean v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mIsSortedBySize:Z

    if-eqz v0, :cond_1

    .line 581
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSizeSortedCursor:Landroid/database/Cursor;

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mCurrentCursor:Landroid/database/Cursor;

    .line 582
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSizeOrderedListView:Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mCurrentView:Landroid/widget/ListView;

    .line 583
    const v0, 0x7f070002

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/DownloadList;->setTitle(I)V

    .line 584
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSortOption:Landroid/widget/Button;

    const v1, 0x7f070006

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 585
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mCurrentViewIsExpandableListView:Z

    .line 593
    :goto_0
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 594
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 596
    :cond_0
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mCurrentView:Landroid/widget/ListView;

    return-object v0

    .line 587
    :cond_1
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mCurrentCursor:Landroid/database/Cursor;

    .line 588
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateOrderedListView:Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mCurrentView:Landroid/widget/ListView;

    .line 589
    const v0, 0x7f070001

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/DownloadList;->setTitle(I)V

    .line 590
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSortOption:Landroid/widget/Button;

    const v1, 0x7f070005

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 591
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mCurrentViewIsExpandableListView:Z

    goto :goto_0
.end method

.method private checkSelectionForDeletedEntries()V
    .locals 4

    .prologue
    .line 823
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 824
    .local v0, allIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_0

    .line 826
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    iget v3, p0, Lcom/android/providers/downloads/ui/DownloadList;->mIdColumnId:I

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 825
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 830
    :cond_0
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSelectedIds:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 831
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 832
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 835
    :cond_2
    return-void
.end method

.method private chooseListToShow()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 540
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateOrderedListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v1, v2}, Landroid/widget/ExpandableListView;->setVisibility(I)V

    .line 541
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSizeOrderedListView:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 548
    const/high16 v1, 0x7f07

    invoke-virtual {p0, v1}, Lcom/android/providers/downloads/ui/DownloadList;->setTitle(I)V

    .line 551
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 552
    :cond_0
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mEmptyView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 553
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSortOption:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 562
    :goto_0
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_1

    .line 563
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {p0, v1}, Lcom/android/providers/downloads/ui/DownloadList;->setActionModeTitle(Landroid/view/ActionMode;)V

    .line 565
    :cond_1
    return-void

    .line 555
    :cond_2
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mEmptyView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 556
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSortOption:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 557
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadList;->activeListView()Landroid/widget/ListView;

    move-result-object v0

    .line 558
    .local v0, lv:Landroid/widget/ListView;
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 559
    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    goto :goto_0
.end method

.method private deleteDownload(J)V
    .locals 3
    .parameter "downloadId"

    .prologue
    .line 792
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDownloadManager:Landroid/app/DownloadManager;

    const/4 v1, 0x1

    new-array v1, v1, [J

    const/4 v2, 0x0

    aput-wide p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager;->markRowDeleted([J)I

    .line 793
    return-void
.end method

.method private ensureSomeGroupIsExpanded()V
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateOrderedListView:Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/android/providers/downloads/ui/DownloadList$2;

    invoke-direct {v1, p0}, Lcom/android/providers/downloads/ui/DownloadList$2;-><init>(Lcom/android/providers/downloads/ui/DownloadList;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->post(Ljava/lang/Runnable;)Z

    .line 257
    return-void
.end method

.method private findCommonMimeType(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 890
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/ui/DownloadList;->findCommonString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    .line 891
    if-eqz v0, :cond_0

    .line 908
    :goto_0
    return-object v0

    .line 896
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 897
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 898
    if-eqz v0, :cond_1

    .line 899
    const/4 v3, 0x0

    const/16 v4, 0x2f

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 902
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/providers/downloads/ui/DownloadList;->findCommonString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    .line 903
    if-eqz v0, :cond_3

    .line 904
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 908
    :cond_3
    const-string v0, "*/*"

    goto :goto_0
.end method

.method private findCommonString(Ljava/util/Collection;)Ljava/lang/String;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 911
    .local p1, set:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 912
    .local v3, str:Ljava/lang/String;
    const/4 v0, 0x1

    .line 913
    .local v0, found:Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 914
    .local v2, s:Ljava/lang/String;
    if-nez v3, :cond_1

    .line 915
    move-object v3, v2

    goto :goto_0

    .line 916
    :cond_1
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 917
    const/4 v0, 0x0

    .line 921
    .end local v2           #s:Ljava/lang/String;
    :cond_2
    if-eqz v0, :cond_3

    .end local v3           #str:Ljava/lang/String;
    :goto_1
    return-object v3

    .restart local v3       #str:Ljava/lang/String;
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private getDeleteClickHandler(J)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .parameter "downloadId"

    .prologue
    .line 603
    new-instance v0, Lcom/android/providers/downloads/ui/DownloadList$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/providers/downloads/ui/DownloadList$5;-><init>(Lcom/android/providers/downloads/ui/DownloadList;J)V

    return-object v0
.end method

.method private getErrorMessage(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .parameter "cursor"

    .prologue
    .line 691
    iget v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mReasonColumndId:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 715
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadList;->getUnknownErrorMessage()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 693
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/ui/DownloadList;->isOnExternalStorage(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 694
    const v0, 0x7f070013

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/DownloadList;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 698
    :cond_0
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadList;->getUnknownErrorMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 702
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/ui/DownloadList;->isOnExternalStorage(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 703
    const v0, 0x7f070010

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/DownloadList;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 705
    :cond_1
    const v0, 0x7f070011

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/DownloadList;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 709
    :pswitch_2
    const v0, 0x7f070014

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/DownloadList;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 712
    :pswitch_3
    const v0, 0x7f070012

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/DownloadList;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 691
    nop

    :pswitch_data_0
    .packed-switch 0x3ee
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method private getRestartClickHandler(J)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .parameter "downloadId"

    .prologue
    .line 615
    new-instance v0, Lcom/android/providers/downloads/ui/DownloadList$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/providers/downloads/ui/DownloadList$6;-><init>(Lcom/android/providers/downloads/ui/DownloadList;J)V

    return-object v0
.end method

.method private getUnknownErrorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 734
    const v0, 0x7f07000c

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/DownloadList;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleItemClick(Landroid/database/Cursor;)V
    .locals 5
    .parameter "cursor"

    .prologue
    .line 646
    iget v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mIdColumnId:I

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v0, v2

    .line 647
    .local v0, id:J
    iget v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mStatusColumnId:I

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 685
    :goto_0
    return-void

    .line 650
    :sswitch_0
    invoke-direct {p0, v0, v1}, Lcom/android/providers/downloads/ui/DownloadList;->sendRunningDownloadClickedBroadcast(J)V

    goto :goto_0

    .line 654
    :sswitch_1
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/ui/DownloadList;->isPausedForWifi(Landroid/database/Cursor;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 655
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mQueuedDownloadId:Ljava/lang/Long;

    .line 656
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f07000d

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f07000e

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f070018

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f070016

    invoke-direct {p0, v0, v1}, Lcom/android/providers/downloads/ui/DownloadList;->getDeleteClickHandler(J)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/providers/downloads/ui/DownloadList$7;

    invoke-direct {v3, p0}, Lcom/android/providers/downloads/ui/DownloadList$7;-><init>(Lcom/android/providers/downloads/ui/DownloadList;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mQueuedDialog:Landroid/app/AlertDialog;

    goto :goto_0

    .line 673
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/android/providers/downloads/ui/DownloadList;->sendRunningDownloadClickedBroadcast(J)V

    goto :goto_0

    .line 678
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/ui/DownloadList;->openCurrentDownload(Landroid/database/Cursor;)V

    goto :goto_0

    .line 682
    :sswitch_3
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/ui/DownloadList;->getErrorMessage(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/downloads/ui/DownloadList;->showFailedDialog(JLjava/lang/String;)V

    goto :goto_0

    .line 647
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_2
        0x10 -> :sswitch_3
    .end sparse-switch
.end method

.method private haveCursors()Z
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSizeSortedCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isOnExternalStorage(Landroid/database/Cursor;)Z
    .locals 7
    .parameter "cursor"

    .prologue
    const/4 v4, 0x0

    .line 720
    iget v5, p0, Lcom/android/providers/downloads/ui/DownloadList;->mLocalUriColumnId:I

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 721
    .local v2, localUriString:Ljava/lang/String;
    if-nez v2, :cond_1

    .line 730
    :cond_0
    :goto_0
    return v4

    .line 724
    :cond_1
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 725
    .local v1, localUri:Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    const-string v6, "file"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 728
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 729
    .local v3, path:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 730
    .local v0, externalRoot:Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    goto :goto_0
.end method

.method private isPausedForWifi(Landroid/database/Cursor;)Z
    .locals 2
    .parameter "cursor"

    .prologue
    .line 814
    iget v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mReasonColumndId:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private moveToDownload(J)Z
    .locals 2
    .parameter "downloadId"

    .prologue
    .line 842
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 844
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mIdColumnId:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    .line 845
    const/4 v0, 0x1

    .line 848
    :goto_1
    return v0

    .line 843
    :cond_0
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 848
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private openCurrentDownload(Landroid/database/Cursor;)V
    .locals 8
    .parameter "cursor"

    .prologue
    const/4 v6, 0x0

    .line 627
    iget v4, p0, Lcom/android/providers/downloads/ui/DownloadList;->mLocalUriColumnId:I

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 629
    .local v3, localUri:Landroid/net/Uri;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/DownloadList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "r"

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 639
    :goto_0
    const-string v4, "_id"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 640
    .local v1, id:J
    invoke-static {p0, v1, v2, v6}, Lcom/android/providers/downloads/OpenHelper;->startViewIntent(Landroid/content/Context;JI)Z

    move-result v4

    if-nez v4, :cond_0

    .line 641
    const v4, 0x7f070015

    invoke-static {p0, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 643
    .end local v1           #id:J
    :cond_0
    :goto_1
    return-void

    .line 630
    :catch_0
    move-exception v0

    .line 631
    .local v0, exc:Ljava/io/FileNotFoundException;
    const-string v4, "DownloadList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to open download "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/providers/downloads/ui/DownloadList;->mIdColumnId:I

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 632
    iget v4, p0, Lcom/android/providers/downloads/ui/DownloadList;->mIdColumnId:I

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const v6, 0x7f07000f

    invoke-virtual {p0, v6}, Lcom/android/providers/downloads/ui/DownloadList;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v6}, Lcom/android/providers/downloads/ui/DownloadList;->showFailedDialog(JLjava/lang/String;)V

    goto :goto_1

    .line 635
    .end local v0           #exc:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method private refresh()V
    .locals 1

    .prologue
    .line 780
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    .line 781
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSizeSortedCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    .line 783
    return-void
.end method

.method private sendRunningDownloadClickedBroadcast(J)V
    .locals 4
    .parameter "id"

    .prologue
    .line 759
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DOWNLOAD_LIST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 760
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.providers.downloads"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 761
    const-string v1, "extra_click_download_ids"

    const/4 v2, 0x1

    new-array v2, v2, [J

    const/4 v3, 0x0

    aput-wide p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 763
    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/DownloadList;->sendBroadcast(Landroid/content/Intent;)V

    .line 764
    return-void
.end method

.method private setupViews()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 260
    const/high16 v1, 0x7f04

    invoke-virtual {p0, v1}, Lcom/android/providers/downloads/ui/DownloadList;->setContentView(I)V

    .line 261
    new-instance v0, Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;

    invoke-direct {v0, p0}, Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;-><init>(Lcom/android/providers/downloads/ui/DownloadList;)V

    .line 264
    .local v0, modeCallback:Lcom/android/providers/downloads/ui/DownloadList$ModeCallback;
    const/high16 v1, 0x7f09

    invoke-virtual {p0, v1}, Lcom/android/providers/downloads/ui/DownloadList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ExpandableListView;

    iput-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateOrderedListView:Landroid/widget/ExpandableListView;

    .line 265
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateOrderedListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v1, v3}, Landroid/widget/ExpandableListView;->setChoiceMode(I)V

    .line 266
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateOrderedListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    .line 267
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateOrderedListView:Landroid/widget/ExpandableListView;

    new-instance v2, Lcom/android/providers/downloads/ui/DownloadList$3;

    invoke-direct {v2, p0}, Lcom/android/providers/downloads/ui/DownloadList$3;-><init>(Lcom/android/providers/downloads/ui/DownloadList;)V

    invoke-virtual {v1, v2}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 285
    const v1, 0x7f090001

    invoke-virtual {p0, v1}, Lcom/android/providers/downloads/ui/DownloadList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSizeOrderedListView:Landroid/widget/ListView;

    .line 286
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSizeOrderedListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 287
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSizeOrderedListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    .line 288
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSizeOrderedListView:Landroid/widget/ListView;

    new-instance v2, Lcom/android/providers/downloads/ui/DownloadList$4;

    invoke-direct {v2, p0}, Lcom/android/providers/downloads/ui/DownloadList$4;-><init>(Lcom/android/providers/downloads/ui/DownloadList;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 296
    const v1, 0x7f090002

    invoke-virtual {p0, v1}, Lcom/android/providers/downloads/ui/DownloadList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mEmptyView:Landroid/view/View;

    .line 297
    return-void
.end method

.method private showFailedDialog(JLjava/lang/String;)V
    .locals 3
    .parameter "downloadId"
    .parameter "dialogBody"

    .prologue
    .line 743
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f07000b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070017

    invoke-direct {p0, p1, p2}, Lcom/android/providers/downloads/ui/DownloadList;->getDeleteClickHandler(J)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07001a

    invoke-direct {p0, p1, p2}, Lcom/android/providers/downloads/ui/DownloadList;->getRestartClickHandler(J)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/providers/downloads/ui/DownloadList$8;

    invoke-direct {v1, p0}, Lcom/android/providers/downloads/ui/DownloadList$8;-><init>(Lcom/android/providers/downloads/ui/DownloadList;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mFailedDialog:Landroid/app/AlertDialog;

    .line 755
    return-void
.end method


# virtual methods
.method getCurrentView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 568
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mCurrentView:Landroid/widget/ListView;

    return-object v0
.end method

.method getExpandableListView()Landroid/widget/ExpandableListView;
    .locals 1

    .prologue
    .line 572
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateOrderedListView:Landroid/widget/ExpandableListView;

    return-object v0
.end method

.method handleDownloadsChanged()V
    .locals 2

    .prologue
    .line 803
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadList;->checkSelectionForDeletedEntries()V

    .line 805
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mQueuedDownloadId:Ljava/lang/Long;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mQueuedDownloadId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/providers/downloads/ui/DownloadList;->moveToDownload(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 806
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mStatusColumnId:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-direct {p0, v0}, Lcom/android/providers/downloads/ui/DownloadList;->isPausedForWifi(Landroid/database/Cursor;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 808
    :cond_0
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mQueuedDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 811
    :cond_1
    return-void
.end method

.method isCurrentViewExpandableListView()Z
    .locals 1

    .prologue
    .line 576
    iget-boolean v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mCurrentViewIsExpandableListView:Z

    return v0
.end method

.method public isDownloadSelected(J)Z
    .locals 2
    .parameter "id"

    .prologue
    .line 796
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSelectedIds:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    .line 152
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 155
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.provider.action.MANAGE_ROOT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 156
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.android.providers.downloads.documents"

    const-string v3, "downloads"

    invoke-static {v2, v3}, Landroid/provider/DocumentsContract;->buildRootUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 166
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/providers/downloads/ui/DownloadList;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/DownloadList;->finish()V

    .line 175
    :goto_0
    return-void

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, ex:Landroid/content/ActivityNotFoundException;
    const-string v2, "DownloadList"

    const-string v3, "Failed to run in DocumentsUI activity"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 169
    invoke-virtual {p0, p1}, Lcom/android/providers/downloads/ui/DownloadList;->onCreateLegacy(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onCreateLegacy(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    const/4 v5, 0x1

    .line 178
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 179
    const v2, 0x1030077

    invoke-virtual {p0, v2}, Lcom/android/providers/downloads/ui/DownloadList;->setTheme(I)V

    .line 180
    invoke-virtual {p0, v5}, Lcom/android/providers/downloads/ui/DownloadList;->setFinishOnTouchOutside(Z)V

    .line 181
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadList;->setupViews()V

    .line 183
    const-string v2, "download"

    invoke-virtual {p0, v2}, Lcom/android/providers/downloads/ui/DownloadList;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/DownloadManager;

    iput-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDownloadManager:Landroid/app/DownloadManager;

    .line 184
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDownloadManager:Landroid/app/DownloadManager;

    invoke-virtual {v2, v5}, Landroid/app/DownloadManager;->setAccessAllDownloads(Z)V

    .line 185
    new-instance v2, Landroid/app/DownloadManager$Query;

    invoke-direct {v2}, Landroid/app/DownloadManager$Query;-><init>()V

    invoke-virtual {v2, v5}, Landroid/app/DownloadManager$Query;->setOnlyIncludeVisibleInDownloadsUi(Z)Landroid/app/DownloadManager$Query;

    move-result-object v0

    .line 188
    .local v0, baseQuery:Landroid/app/DownloadManager$Query;
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDownloadManager:Landroid/app/DownloadManager;

    invoke-virtual {v2, v0}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    .line 189
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDownloadManager:Landroid/app/DownloadManager;

    const-string v3, "total_size"

    const/4 v4, 0x2

    invoke-virtual {v0, v3, v4}, Landroid/app/DownloadManager$Query;->orderBy(Ljava/lang/String;I)Landroid/app/DownloadManager$Query;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSizeSortedCursor:Landroid/database/Cursor;

    .line 195
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadList;->haveCursors()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 196
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v2}, Lcom/android/providers/downloads/ui/DownloadList;->startManagingCursor(Landroid/database/Cursor;)V

    .line 197
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSizeSortedCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v2}, Lcom/android/providers/downloads/ui/DownloadList;->startManagingCursor(Landroid/database/Cursor;)V

    .line 199
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    const-string v3, "status"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mStatusColumnId:I

    .line 201
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    const-string v3, "_id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mIdColumnId:I

    .line 203
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    const-string v3, "local_uri"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mLocalUriColumnId:I

    .line 205
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    const-string v3, "media_type"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mMediaTypeColumnId:I

    .line 207
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    const-string v3, "reason"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mReasonColumndId:I

    .line 210
    new-instance v2, Lcom/android/providers/downloads/ui/DateSortedDownloadAdapter;

    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-direct {v2, p0, v3}, Lcom/android/providers/downloads/ui/DateSortedDownloadAdapter;-><init>(Lcom/android/providers/downloads/ui/DownloadList;Landroid/database/Cursor;)V

    iput-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedAdapter:Lcom/android/providers/downloads/ui/DateSortedDownloadAdapter;

    .line 211
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateOrderedListView:Landroid/widget/ExpandableListView;

    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedAdapter:Lcom/android/providers/downloads/ui/DateSortedDownloadAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 212
    new-instance v2, Lcom/android/providers/downloads/ui/DownloadAdapter;

    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSizeSortedCursor:Landroid/database/Cursor;

    invoke-direct {v2, p0, v3}, Lcom/android/providers/downloads/ui/DownloadAdapter;-><init>(Lcom/android/providers/downloads/ui/DownloadList;Landroid/database/Cursor;)V

    iput-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSizeSortedAdapter:Lcom/android/providers/downloads/ui/DownloadAdapter;

    .line 213
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSizeOrderedListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSizeSortedAdapter:Lcom/android/providers/downloads/ui/DownloadAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 215
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadList;->ensureSomeGroupIsExpanded()V

    .line 219
    :cond_0
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/DownloadList;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 220
    .local v1, extras:Landroid/os/Bundle;
    if-eqz v1, :cond_1

    const-string v2, "android.app.DownloadManager.extra_sortBySize"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 222
    iput-boolean v5, p0, Lcom/android/providers/downloads/ui/DownloadList;->mIsSortedBySize:Z

    .line 224
    :cond_1
    const v2, 0x7f090004

    invoke-virtual {p0, v2}, Lcom/android/providers/downloads/ui/DownloadList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSortOption:Landroid/widget/Button;

    .line 225
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSortOption:Landroid/widget/Button;

    new-instance v3, Lcom/android/providers/downloads/ui/DownloadList$1;

    invoke-direct {v3, p0}, Lcom/android/providers/downloads/ui/DownloadList$1;-><init>(Lcom/android/providers/downloads/ui/DownloadList;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadList;->chooseListToShow()V

    .line 237
    const v2, 0x7f07001d

    invoke-virtual {p0, v2}, Lcom/android/providers/downloads/ui/DownloadList;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSelectedCountFormat:Ljava/lang/String;

    .line 238
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 449
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mFailedDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mFailedDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mFailedDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 451
    iput-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mFailedDialog:Landroid/app/AlertDialog;

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mQueuedDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mQueuedDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 454
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mQueuedDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 455
    iput-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mQueuedDialog:Landroid/app/AlertDialog;

    .line 458
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 459
    return-void
.end method

.method public onDownloadSelectionChanged(JZLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "downloadId"
    .parameter "isSelected"
    .parameter "fileName"
    .parameter "mimeType"

    .prologue
    .line 769
    if-eqz p3, :cond_0

    .line 770
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSelectedIds:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;

    invoke-direct {v2, p4, p5}, Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    :goto_0
    return-void

    .line 772
    :cond_0
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSelectedIds:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 486
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 487
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadList;->haveCursors()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mContentObserver:Lcom/android/providers/downloads/ui/DownloadList$MyContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 489
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDataSetObserver:Lcom/android/providers/downloads/ui/DownloadList$MyDataSetObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 491
    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    .line 522
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 523
    const-string v4, "isSortedBySize"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/providers/downloads/ui/DownloadList;->mIsSortedBySize:Z

    .line 524
    iget-object v4, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSelectedIds:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 525
    const-string v4, "download_ids"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v3

    .line 526
    .local v3, selectedIds:[J
    const-string v4, "filenames"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 527
    .local v0, fileNames:[Ljava/lang/String;
    const-string v4, "mimetypes"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 528
    .local v2, mimeTypes:[Ljava/lang/String;
    if-eqz v3, :cond_0

    array-length v4, v3

    if-lez v4, :cond_0

    .line 529
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 530
    iget-object v4, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSelectedIds:Ljava/util/Map;

    aget-wide v5, v3, v1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    new-instance v6, Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;

    aget-object v7, v0, v1

    aget-object v8, v2, v1

    invoke-direct {v6, v7, v8}, Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 533
    .end local v1           #i:I
    :cond_0
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadList;->chooseListToShow()V

    .line 534
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 464
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 465
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadList;->haveCursors()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 471
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedAdapter:Lcom/android/providers/downloads/ui/DateSortedDownloadAdapter;

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedAdapter:Lcom/android/providers/downloads/ui/DateSortedDownloadAdapter;

    invoke-virtual {v0}, Lcom/android/providers/downloads/ui/DateSortedDownloadAdapter;->onResume()V

    .line 474
    :cond_0
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSizeSortedAdapter:Lcom/android/providers/downloads/ui/DownloadAdapter;

    if-eqz v0, :cond_1

    .line 475
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSizeSortedAdapter:Lcom/android/providers/downloads/ui/DownloadAdapter;

    invoke-virtual {v0}, Lcom/android/providers/downloads/ui/DownloadAdapter;->onResume()V

    .line 478
    :cond_1
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mContentObserver:Lcom/android/providers/downloads/ui/DownloadList$MyContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 479
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mDataSetObserver:Lcom/android/providers/downloads/ui/DownloadList$MyDataSetObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 480
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadList;->refresh()V

    .line 482
    :cond_2
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 11
    .parameter "outState"

    .prologue
    .line 498
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 499
    const-string v9, "isSortedBySize"

    iget-boolean v10, p0, Lcom/android/providers/downloads/ui/DownloadList;->mIsSortedBySize:Z

    invoke-virtual {p1, v9, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 500
    iget-object v9, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSelectedIds:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v5

    .line 501
    .local v5, len:I
    if-nez v5, :cond_0

    .line 518
    :goto_0
    return-void

    .line 504
    :cond_0
    new-array v8, v5, [J

    .line 505
    .local v8, selectedIds:[J
    new-array v0, v5, [Ljava/lang/String;

    .line 506
    .local v0, fileNames:[Ljava/lang/String;
    new-array v6, v5, [Ljava/lang/String;

    .line 507
    .local v6, mimeTypes:[Ljava/lang/String;
    const/4 v1, 0x0

    .line 508
    .local v1, i:I
    iget-object v9, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSelectedIds:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 509
    .local v3, id:J
    aput-wide v3, v8, v1

    .line 510
    iget-object v9, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSelectedIds:Ljava/util/Map;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;

    .line 511
    .local v7, obj:Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;
    invoke-virtual {v7}, Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;->getFileName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v0, v1

    .line 512
    invoke-virtual {v7}, Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;->getMimeType()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v1

    .line 513
    add-int/lit8 v1, v1, 0x1

    .line 514
    goto :goto_1

    .line 515
    .end local v3           #id:J
    .end local v7           #obj:Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;
    :cond_1
    const-string v9, "download_ids"

    invoke-virtual {p1, v9, v8}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 516
    const-string v9, "filenames"

    invoke-virtual {p1, v9, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 517
    const-string v9, "mimetypes"

    invoke-virtual {p1, v9, v6}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method setActionModeTitle(Landroid/view/ActionMode;)V
    .locals 5
    .parameter "mode"

    .prologue
    .line 429
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSelectedIds:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v0

    .line 430
    .local v0, numSelected:I
    if-lez v0, :cond_0

    .line 431
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSelectedCountFormat:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/providers/downloads/ui/DownloadList;->mCurrentCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 436
    :goto_0
    return-void

    .line 434
    :cond_0
    const-string v1, ""

    invoke-virtual {p1, v1}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public shareDownloadedFiles()Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 855
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 856
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSelectedIds:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-le v0, v9, :cond_3

    .line 857
    const-string v0, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 858
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 859
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 860
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSelectedIds:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 861
    sget-object v6, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v6, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 863
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;

    invoke-virtual {v0}, Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;->getMimeType()Ljava/lang/String;

    move-result-object v0

    .line 864
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 865
    if-eqz v0, :cond_0

    .line 866
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 869
    :cond_1
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 870
    invoke-direct {p0, v4}, Lcom/android/providers/downloads/ui/DownloadList;->findCommonMimeType(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 883
    :cond_2
    const v0, 0x7f07001e

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/DownloadList;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 884
    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/DownloadList;->startActivity(Landroid/content/Intent;)V

    .line 885
    return v9

    .line 874
    :cond_3
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mSelectedIds:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 875
    sget-object v4, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 877
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;

    invoke-virtual {v0}, Lcom/android/providers/downloads/ui/DownloadList$SelectionObjAttrs;->getMimeType()Ljava/lang/String;

    move-result-object v0

    .line 878
    const-string v4, "android.intent.action.SEND"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 879
    const-string v4, "android.intent.extra.STREAM"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 880
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method
