.class public abstract Lcom/android/deskclock/widget/sgv/GridAdapter;
.super Landroid/widget/BaseAdapter;
.source "GridAdapter.java"


# static fields
.field private static final GRID_ID_TAG:I


# instance fields
.field private mFooterView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string v0, "gridIdTag"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/android/deskclock/widget/sgv/GridAdapter;->GRID_ID_TAG:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 27
    return-void
.end method


# virtual methods
.method public getFirstChangedPosition()I
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x0

    return v0
.end method

.method public abstract getItemColumnSpan(Ljava/lang/Object;I)I
.end method

.method public getItemId(Ljava/lang/Object;I)J
    .locals 2
    .param p1, "item"    # Ljava/lang/Object;
    .param p2, "position"    # I

    .prologue
    .line 121
    invoke-virtual {p0, p2}, Landroid/widget/BaseAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemIdFromView(Landroid/view/View;I)J
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 103
    sget v1, Lcom/android/deskclock/widget/sgv/GridAdapter;->GRID_ID_TAG:I

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 104
    .local v0, "id":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 105
    check-cast v0, Ljava/lang/Long;

    .end local v0    # "id":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 108
    :goto_0
    return-wide v1

    .restart local v0    # "id":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p0, p2}, Landroid/widget/BaseAdapter;->getItemId(I)J

    move-result-wide v1

    goto :goto_0
.end method

.method public getItemViewType(Ljava/lang/Object;I)I
    .locals 1
    .param p1, "item"    # Ljava/lang/Object;
    .param p2, "position"    # I

    .prologue
    .line 136
    invoke-virtual {p0, p2}, Landroid/widget/BaseAdapter;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public getReorderingArea(IZ)I
    .locals 1
    .param p1, "position"    # I
    .param p2, "isLastColumnInGrid"    # Z

    .prologue
    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public getReorderingDirection()I
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x3

    return v0
.end method

.method public getView(Ljava/lang/Object;ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 1
    .param p1, "item"    # Ljava/lang/Object;
    .param p2, "position"    # I
    .param p3, "scrap"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;
    .param p5, "measuredWidth"    # I

    .prologue
    .line 157
    invoke-virtual {p0, p2, p3, p4}, Landroid/widget/BaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 180
    const/4 v0, 0x1

    return v0
.end method

.method public isDraggable(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public setFooterView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/deskclock/widget/sgv/GridAdapter;->mFooterView:Landroid/view/View;

    .line 81
    return-void
.end method
