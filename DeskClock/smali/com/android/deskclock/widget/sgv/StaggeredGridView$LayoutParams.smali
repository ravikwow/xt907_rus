.class public Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "StaggeredGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/widget/sgv/StaggeredGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field private static final LAYOUT_ATTRS:[I


# instance fields
.field column:I

.field id:J

.field public position:I

.field public reorderingArea:I

.field public span:I

.field viewType:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 3672
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101014d

    aput v2, v0, v1

    sput-object v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;->LAYOUT_ATTRS:[I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "height"    # I

    .prologue
    const/4 v2, -0x1

    .line 3709
    invoke-direct {p0, v2, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 3681
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;->span:I

    .line 3686
    iput v2, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;->position:I

    .line 3701
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;->id:J

    .line 3706
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;->reorderingArea:I

    .line 3711
    iget v0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v0, v2, :cond_0

    .line 3712
    # getter for: Lcom/android/deskclock/widget/sgv/StaggeredGridView;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->access$1400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Constructing LayoutParams with height FILL_PARENT - impossible! Falling back to WRAP_CONTENT"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3714
    const/4 v0, -0x2

    iput v0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3716
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 3719
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3681
    iput v6, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;->span:I

    .line 3686
    iput v4, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;->position:I

    .line 3701
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;->id:J

    .line 3706
    iput v5, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;->reorderingArea:I

    .line 3721
    iget v1, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v1, v4, :cond_0

    .line 3722
    # getter for: Lcom/android/deskclock/widget/sgv/StaggeredGridView;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->access$1400()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Inflation setting LayoutParams width to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - must be MATCH_PARENT"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3724
    iput v4, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 3726
    :cond_0
    iget v1, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v1, v4, :cond_1

    .line 3727
    # getter for: Lcom/android/deskclock/widget/sgv/StaggeredGridView;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->access$1400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Inflation setting LayoutParams height to MATCH_PARENT - impossible! Falling back to WRAP_CONTENT"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3729
    const/4 v1, -0x2

    iput v1, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3732
    :cond_1
    sget-object v1, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;->LAYOUT_ATTRS:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 3733
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;->span:I

    .line 3734
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 3735
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 4
    .param p1, "other"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    const/4 v3, -0x1

    .line 3738
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3681
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;->span:I

    .line 3686
    iput v3, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;->position:I

    .line 3701
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;->id:J

    .line 3706
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;->reorderingArea:I

    .line 3740
    iget v0, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v0, v3, :cond_0

    .line 3741
    # getter for: Lcom/android/deskclock/widget/sgv/StaggeredGridView;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->access$1400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Constructing LayoutParams with width "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - must be MATCH_PARENT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3743
    iput v3, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 3745
    :cond_0
    iget v0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v0, v3, :cond_1

    .line 3746
    # getter for: Lcom/android/deskclock/widget/sgv/StaggeredGridView;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->access$1400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Constructing LayoutParams with height MATCH_PARENT - impossible! Falling back to WRAP_CONTENT"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3748
    const/4 v0, -0x2

    iput v0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3750
    :cond_1
    return-void
.end method
