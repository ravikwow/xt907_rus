.class Lcom/android/deskclock/widget/sgv/StaggeredGridView$RecycleBin;
.super Ljava/lang/Object;
.source "StaggeredGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/widget/sgv/StaggeredGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecycleBin"
.end annotation


# instance fields
.field private mMaxScrap:I

.field private mScrapViews:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTransientStateViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mViewTypeCount:I

.field final synthetic this$0:Lcom/android/deskclock/widget/sgv/StaggeredGridView;


# direct methods
.method private constructor <init>(Lcom/android/deskclock/widget/sgv/StaggeredGridView;)V
    .locals 0

    .prologue
    .line 3753
    iput-object p1, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$RecycleBin;->this$0:Lcom/android/deskclock/widget/sgv/StaggeredGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/deskclock/widget/sgv/StaggeredGridView;Lcom/android/deskclock/widget/sgv/StaggeredGridView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/deskclock/widget/sgv/StaggeredGridView;
    .param p2, "x1"    # Lcom/android/deskclock/widget/sgv/StaggeredGridView$1;

    .prologue
    .line 3753
    invoke-direct {p0, p1}, Lcom/android/deskclock/widget/sgv/StaggeredGridView$RecycleBin;-><init>(Lcom/android/deskclock/widget/sgv/StaggeredGridView;)V

    return-void
.end method


# virtual methods
.method public addScrap(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/high16 v5, 0x3f800000

    const/4 v4, 0x0

    .line 3794
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    instance-of v3, v3, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;

    if-nez v3, :cond_1

    .line 3830
    :cond_0
    :goto_0
    return-void

    .line 3798
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;

    .line 3799
    .local v1, "lp":Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->hasTransientState(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3800
    iget-object v3, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    if-nez v3, :cond_2

    .line 3801
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    .line 3803
    :cond_2
    iget-object v3, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    iget v4, v1, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;->position:I

    invoke-virtual {v3, v4, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 3807
    :cond_3
    iget-object v3, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$RecycleBin;->this$0:Lcom/android/deskclock/widget/sgv/StaggeredGridView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 3808
    .local v0, "childCount":I
    iget v3, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$RecycleBin;->mMaxScrap:I

    if-le v0, v3, :cond_4

    .line 3809
    iput v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$RecycleBin;->mMaxScrap:I

    .line 3815
    :cond_4
    invoke-virtual {p1, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 3816
    invoke-virtual {p1, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 3817
    invoke-virtual {p1, v4}, Landroid/view/View;->setRotation(F)V

    .line 3818
    invoke-virtual {p1, v5}, Landroid/view/View;->setAlpha(F)V

    .line 3819
    invoke-virtual {p1, v5}, Landroid/view/View;->setScaleY(F)V

    .line 3821
    iget-object v3, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    iget v4, v1, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;->viewType:I

    aget-object v2, v3, v4

    .line 3822
    .local v2, "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget v4, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$RecycleBin;->mMaxScrap:I

    if-ge v3, v4, :cond_0

    .line 3826
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3827
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 3778
    iget v1, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$RecycleBin;->mViewTypeCount:I

    .line 3779
    .local v1, "typeCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 3780
    iget-object v2, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 3779
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3782
    :cond_0
    iget-object v2, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    if-eqz v2, :cond_1

    .line 3783
    iget-object v2, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 3785
    :cond_1
    return-void
.end method

.method public clearTransientViews()V
    .locals 1

    .prologue
    .line 3788
    iget-object v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 3789
    iget-object v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 3791
    :cond_0
    return-void
.end method

.method public getScrapView(I)Landroid/view/View;
    .locals 4
    .param p1, "type"    # I

    .prologue
    .line 3845
    iget-object v3, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v2, v3, p1

    .line 3846
    .local v2, "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3847
    const/4 v1, 0x0

    .line 3853
    :goto_0
    return-object v1

    .line 3850
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .line 3851
    .local v0, "index":I
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 3853
    .local v1, "result":Landroid/view/View;
    goto :goto_0
.end method

.method public getTransientStateView(I)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 3833
    iget-object v1, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    if-nez v1, :cond_1

    .line 3834
    const/4 v0, 0x0

    .line 3841
    :cond_0
    :goto_0
    return-object v0

    .line 3837
    :cond_1
    iget-object v1, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 3838
    .local v0, "result":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 3839
    iget-object v1, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0
.end method

.method public setViewTypeCount(I)V
    .locals 5
    .param p1, "viewTypeCount"    # I

    .prologue
    .line 3761
    const/4 v2, 0x1

    if-ge p1, v2, :cond_0

    .line 3762
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Must have at least one view type ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " types reported)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3765
    :cond_0
    iget v2, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$RecycleBin;->mViewTypeCount:I

    if-ne p1, v2, :cond_1

    .line 3775
    :goto_0
    return-void

    .line 3769
    :cond_1
    new-array v1, p1, [Ljava/util/ArrayList;

    .line 3770
    .local v1, "scrapViews":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p1, :cond_2

    .line 3771
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aput-object v2, v1, v0

    .line 3770
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3773
    :cond_2
    iput p1, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$RecycleBin;->mViewTypeCount:I

    .line 3774
    iput-object v1, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    goto :goto_0
.end method
