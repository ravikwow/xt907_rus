.class Lcom/android/deskclock/widget/sgv/StaggeredGridView$AdapterDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "StaggeredGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/widget/sgv/StaggeredGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdapterDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/widget/sgv/StaggeredGridView;


# direct methods
.method private constructor <init>(Lcom/android/deskclock/widget/sgv/StaggeredGridView;)V
    .locals 0

    .prologue
    .line 3879
    iput-object p1, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/android/deskclock/widget/sgv/StaggeredGridView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/deskclock/widget/sgv/StaggeredGridView;Lcom/android/deskclock/widget/sgv/StaggeredGridView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/deskclock/widget/sgv/StaggeredGridView;
    .param p2, "x1"    # Lcom/android/deskclock/widget/sgv/StaggeredGridView$1;

    .prologue
    .line 3879
    invoke-direct {p0, p1}, Lcom/android/deskclock/widget/sgv/StaggeredGridView$AdapterDataSetObserver;-><init>(Lcom/android/deskclock/widget/sgv/StaggeredGridView;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 4

    .prologue
    .line 3882
    iget-object v2, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/android/deskclock/widget/sgv/StaggeredGridView;

    const/4 v3, 0x1

    # setter for: Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mDataChanged:Z
    invoke-static {v2, v3}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->access$1502(Lcom/android/deskclock/widget/sgv/StaggeredGridView;Z)Z

    .line 3884
    iget-object v2, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/android/deskclock/widget/sgv/StaggeredGridView;

    iget-object v3, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/android/deskclock/widget/sgv/StaggeredGridView;

    # getter for: Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mAdapter:Lcom/android/deskclock/widget/sgv/GridAdapter;
    invoke-static {v3}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->access$1700(Lcom/android/deskclock/widget/sgv/StaggeredGridView;)Lcom/android/deskclock/widget/sgv/GridAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v3

    # setter for: Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mItemCount:I
    invoke-static {v2, v3}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->access$1602(Lcom/android/deskclock/widget/sgv/StaggeredGridView;I)I

    .line 3885
    iget-object v2, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/android/deskclock/widget/sgv/StaggeredGridView;

    iget-object v3, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/android/deskclock/widget/sgv/StaggeredGridView;

    # getter for: Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mAdapter:Lcom/android/deskclock/widget/sgv/GridAdapter;
    invoke-static {v3}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->access$1700(Lcom/android/deskclock/widget/sgv/StaggeredGridView;)Lcom/android/deskclock/widget/sgv/GridAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/deskclock/widget/sgv/GridAdapter;->getFirstChangedPosition()I

    move-result v3

    # setter for: Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mFirstChangedPosition:I
    invoke-static {v2, v3}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->access$1802(Lcom/android/deskclock/widget/sgv/StaggeredGridView;I)I

    .line 3886
    iget-object v2, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/android/deskclock/widget/sgv/StaggeredGridView;

    # getter for: Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mFirstPosition:I
    invoke-static {v2}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->access$1900(Lcom/android/deskclock/widget/sgv/StaggeredGridView;)I

    move-result v2

    iget-object v3, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/android/deskclock/widget/sgv/StaggeredGridView;

    # getter for: Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mItemCount:I
    invoke-static {v3}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->access$1600(Lcom/android/deskclock/widget/sgv/StaggeredGridView;)I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 3889
    iget-object v2, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/android/deskclock/widget/sgv/StaggeredGridView;

    const/4 v3, 0x0

    # setter for: Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mFirstPosition:I
    invoke-static {v2, v3}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->access$1902(Lcom/android/deskclock/widget/sgv/StaggeredGridView;I)I

    .line 3890
    iget-object v2, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/android/deskclock/widget/sgv/StaggeredGridView;

    const/4 v3, 0x0

    # setter for: Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mCurrentScrollState:Lcom/android/deskclock/widget/sgv/StaggeredGridView$ScrollState;
    invoke-static {v2, v3}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->access$2002(Lcom/android/deskclock/widget/sgv/StaggeredGridView;Lcom/android/deskclock/widget/sgv/StaggeredGridView$ScrollState;)Lcom/android/deskclock/widget/sgv/StaggeredGridView$ScrollState;

    .line 3894
    :cond_0
    iget-object v2, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/android/deskclock/widget/sgv/StaggeredGridView;

    # getter for: Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mRecycler:Lcom/android/deskclock/widget/sgv/StaggeredGridView$RecycleBin;
    invoke-static {v2}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->access$2100(Lcom/android/deskclock/widget/sgv/StaggeredGridView;)Lcom/android/deskclock/widget/sgv/StaggeredGridView$RecycleBin;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/deskclock/widget/sgv/StaggeredGridView$RecycleBin;->clearTransientViews()V

    .line 3896
    iget-object v2, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/android/deskclock/widget/sgv/StaggeredGridView;

    # getter for: Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mHasStableIds:Z
    invoke-static {v2}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->access$2200(Lcom/android/deskclock/widget/sgv/StaggeredGridView;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3899
    iget-object v2, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/android/deskclock/widget/sgv/StaggeredGridView;

    # invokes: Lcom/android/deskclock/widget/sgv/StaggeredGridView;->cacheChildRects()V
    invoke-static {v2}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->access$2300(Lcom/android/deskclock/widget/sgv/StaggeredGridView;)V

    .line 3911
    :cond_1
    iget-object v2, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/android/deskclock/widget/sgv/StaggeredGridView;

    # invokes: Lcom/android/deskclock/widget/sgv/StaggeredGridView;->updateEmptyStatus()V
    invoke-static {v2}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->access$2800(Lcom/android/deskclock/widget/sgv/StaggeredGridView;)V

    .line 3915
    iget-object v2, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/android/deskclock/widget/sgv/StaggeredGridView;

    invoke-virtual {v2}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->requestLayout()V

    .line 3916
    return-void

    .line 3902
    :cond_2
    iget-object v2, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/android/deskclock/widget/sgv/StaggeredGridView;

    # getter for: Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mLayoutRecords:Landroid/support/v4/util/SparseArrayCompat;
    invoke-static {v2}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->access$2400(Lcom/android/deskclock/widget/sgv/StaggeredGridView;)Landroid/support/v4/util/SparseArrayCompat;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/util/SparseArrayCompat;->clear()V

    .line 3905
    iget-object v2, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/android/deskclock/widget/sgv/StaggeredGridView;

    # getter for: Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mColCount:I
    invoke-static {v2}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->access$2500(Lcom/android/deskclock/widget/sgv/StaggeredGridView;)I

    move-result v0

    .line 3906
    .local v0, "colCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 3907
    iget-object v2, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/android/deskclock/widget/sgv/StaggeredGridView;

    # getter for: Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mItemBottoms:[I
    invoke-static {v2}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->access$2600(Lcom/android/deskclock/widget/sgv/StaggeredGridView;)[I

    move-result-object v2

    iget-object v3, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$AdapterDataSetObserver;->this$0:Lcom/android/deskclock/widget/sgv/StaggeredGridView;

    # getter for: Lcom/android/deskclock/widget/sgv/StaggeredGridView;->mItemTops:[I
    invoke-static {v3}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->access$2700(Lcom/android/deskclock/widget/sgv/StaggeredGridView;)[I

    move-result-object v3

    aget v3, v3, v1

    aput v3, v2, v1

    .line 3906
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onInvalidated()V
    .locals 0

    .prologue
    .line 3920
    return-void
.end method
