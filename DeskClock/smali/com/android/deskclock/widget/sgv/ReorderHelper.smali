.class public final Lcom/android/deskclock/widget/sgv/ReorderHelper;
.super Ljava/lang/Object;
.source "ReorderHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/deskclock/widget/sgv/ReorderHelper$ReorderView;
    }
.end annotation


# instance fields
.field private mCurrentDraggedOverChild:Lcom/android/deskclock/widget/sgv/ReorderHelper$ReorderView;

.field private mDraggedChild:Lcom/android/deskclock/widget/sgv/ReorderHelper$ReorderView;

.field private mDraggedChildId:J

.field private mEnableUpdatesOnDrag:Z

.field private final mParentView:Lcom/android/deskclock/widget/sgv/StaggeredGridView;

.field private final mReorderListener:Lcom/android/deskclock/widget/sgv/StaggeredGridView$ReorderListener;


# direct methods
.method private updateDraggedOverChild(Landroid/view/View;)V
    .locals 7
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 231
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;

    .line 232
    .local v6, "childLayoutParam":Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;
    new-instance v0, Lcom/android/deskclock/widget/sgv/ReorderHelper$ReorderView;

    iget v3, v6, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;->position:I

    iget-wide v4, v6, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;->id:J

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/deskclock/widget/sgv/ReorderHelper$ReorderView;-><init>(Lcom/android/deskclock/widget/sgv/ReorderHelper;Landroid/view/View;IJ)V

    iput-object v0, p0, Lcom/android/deskclock/widget/sgv/ReorderHelper;->mCurrentDraggedOverChild:Lcom/android/deskclock/widget/sgv/ReorderHelper$ReorderView;

    .line 234
    return-void
.end method


# virtual methods
.method public clearDraggedChild()V
    .locals 1

    .prologue
    .line 197
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/deskclock/widget/sgv/ReorderHelper;->mDraggedChild:Lcom/android/deskclock/widget/sgv/ReorderHelper$ReorderView;

    .line 198
    return-void
.end method

.method public clearDraggedChildId()V
    .locals 2

    .prologue
    .line 202
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/deskclock/widget/sgv/ReorderHelper;->mDraggedChildId:J

    .line 203
    return-void
.end method

.method public clearDraggedOverChild()V
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/deskclock/widget/sgv/ReorderHelper;->mCurrentDraggedOverChild:Lcom/android/deskclock/widget/sgv/ReorderHelper$ReorderView;

    .line 157
    return-void
.end method

.method public enableUpdatesOnDrag(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 149
    iput-boolean p1, p0, Lcom/android/deskclock/widget/sgv/ReorderHelper;->mEnableUpdatesOnDrag:Z

    .line 150
    return-void
.end method

.method public getDraggedChild()Landroid/view/View;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/deskclock/widget/sgv/ReorderHelper;->mDraggedChild:Lcom/android/deskclock/widget/sgv/ReorderHelper$ReorderView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/deskclock/widget/sgv/ReorderHelper;->mDraggedChild:Lcom/android/deskclock/widget/sgv/ReorderHelper$ReorderView;

    iget-object v0, v0, Lcom/android/deskclock/widget/sgv/ReorderHelper$ReorderView;->target:Landroid/view/View;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDraggedChildId()J
    .locals 2

    .prologue
    .line 182
    iget-wide v0, p0, Lcom/android/deskclock/widget/sgv/ReorderHelper;->mDraggedChildId:J

    return-wide v0
.end method

.method public getDraggedChildPosition()I
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/deskclock/widget/sgv/ReorderHelper;->mDraggedChild:Lcom/android/deskclock/widget/sgv/ReorderHelper$ReorderView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/deskclock/widget/sgv/ReorderHelper;->mDraggedChild:Lcom/android/deskclock/widget/sgv/ReorderHelper$ReorderView;

    iget v0, v0, Lcom/android/deskclock/widget/sgv/ReorderHelper$ReorderView;->position:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public getReorderableChildAtCoordinate(Landroid/graphics/Point;)Landroid/view/View;
    .locals 6
    .param p1, "p"    # Landroid/graphics/Point;

    .prologue
    const/4 v3, 0x0

    .line 243
    if-eqz p1, :cond_0

    iget v4, p1, Landroid/graphics/Point;->y:I

    if-gez v4, :cond_1

    :cond_0
    move-object v0, v3

    .line 261
    :goto_0
    return-object v0

    .line 249
    :cond_1
    iget-object v4, p0, Lcom/android/deskclock/widget/sgv/ReorderHelper;->mParentView:Lcom/android/deskclock/widget/sgv/StaggeredGridView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 250
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_4

    .line 251
    iget-object v4, p0, Lcom/android/deskclock/widget/sgv/ReorderHelper;->mParentView:Lcom/android/deskclock/widget/sgv/StaggeredGridView;

    invoke-virtual {v4, v2}, Lcom/android/deskclock/widget/sgv/StaggeredGridView;->isChildReorderable(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 250
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 254
    :cond_3
    iget-object v4, p0, Lcom/android/deskclock/widget/sgv/ReorderHelper;->mParentView:Lcom/android/deskclock/widget/sgv/StaggeredGridView;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 255
    .local v0, "childView":Landroid/view/View;
    iget v4, p1, Landroid/graphics/Point;->x:I

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v5

    if-lt v4, v5, :cond_2

    iget v4, p1, Landroid/graphics/Point;->x:I

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v5

    if-ge v4, v5, :cond_2

    iget v4, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    if-lt v4, v5, :cond_2

    iget v4, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v5

    if-ge v4, v5, :cond_2

    goto :goto_0

    .end local v0    # "childView":Landroid/view/View;
    :cond_4
    move-object v0, v3

    .line 261
    goto :goto_0
.end method

.method public handleDrag(Landroid/graphics/Point;)V
    .locals 4
    .param p1, "p"    # Landroid/graphics/Point;

    .prologue
    .line 113
    if-eqz p1, :cond_0

    iget v2, p1, Landroid/graphics/Point;->y:I

    if-gez v2, :cond_2

    iget v2, p1, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/android/deskclock/widget/sgv/ReorderHelper;->mParentView:Lcom/android/deskclock/widget/sgv/StaggeredGridView;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    if-le v2, v3, :cond_2

    .line 116
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/deskclock/widget/sgv/ReorderHelper;->handleDrop(Landroid/graphics/Point;)Z

    .line 143
    :cond_1
    :goto_0
    return-void

    .line 120
    :cond_2
    iget-boolean v2, p0, Lcom/android/deskclock/widget/sgv/ReorderHelper;->mEnableUpdatesOnDrag:Z

    if-eqz v2, :cond_1

    .line 124
    const/4 v1, 0x0

    .line 125
    .local v1, "reorderTarget":Landroid/view/View;
    iget-object v2, p0, Lcom/android/deskclock/widget/sgv/ReorderHelper;->mCurrentDraggedOverChild:Lcom/android/deskclock/widget/sgv/ReorderHelper$ReorderView;

    if-eqz v2, :cond_3

    .line 126
    invoke-virtual {p0, p1}, Lcom/android/deskclock/widget/sgv/ReorderHelper;->getReorderableChildAtCoordinate(Landroid/graphics/Point;)Landroid/view/View;

    move-result-object v1

    .line 134
    :goto_1
    if-eqz v1, :cond_1

    .line 135
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;

    .line 136
    .local v0, "lp":Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;
    iget v2, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;->position:I

    iget-object v3, p0, Lcom/android/deskclock/widget/sgv/ReorderHelper;->mCurrentDraggedOverChild:Lcom/android/deskclock/widget/sgv/ReorderHelper$ReorderView;

    iget v3, v3, Lcom/android/deskclock/widget/sgv/ReorderHelper$ReorderView;->position:I

    if-eq v2, v3, :cond_1

    .line 137
    invoke-direct {p0, v1}, Lcom/android/deskclock/widget/sgv/ReorderHelper;->updateDraggedOverChild(Landroid/view/View;)V

    .line 140
    iget-object v2, p0, Lcom/android/deskclock/widget/sgv/ReorderHelper;->mReorderListener:Lcom/android/deskclock/widget/sgv/StaggeredGridView$ReorderListener;

    iget v3, v0, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;->position:I

    invoke-interface {v2, v1, v3}, Lcom/android/deskclock/widget/sgv/StaggeredGridView$ReorderListener;->onEnterReorderArea(Landroid/view/View;I)V

    goto :goto_0

    .line 128
    .end local v0    # "lp":Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;
    :cond_3
    const-string v2, "DeskClock"

    const-string v3, "Current dragged over child does not exist"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public handleDragCancelled(Landroid/view/View;)V
    .locals 1
    .param p1, "draggedView"    # Landroid/view/View;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/deskclock/widget/sgv/ReorderHelper;->mReorderListener:Lcom/android/deskclock/widget/sgv/StaggeredGridView$ReorderListener;

    invoke-interface {v0, p1}, Lcom/android/deskclock/widget/sgv/StaggeredGridView$ReorderListener;->onCancelDrag(Landroid/view/View;)V

    .line 98
    return-void
.end method

.method public handleDragStart(Landroid/view/View;IJLandroid/graphics/Point;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "pos"    # I
    .param p3, "id"    # J
    .param p5, "p"    # Landroid/graphics/Point;

    .prologue
    .line 101
    new-instance v0, Lcom/android/deskclock/widget/sgv/ReorderHelper$ReorderView;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/deskclock/widget/sgv/ReorderHelper$ReorderView;-><init>(Lcom/android/deskclock/widget/sgv/ReorderHelper;Landroid/view/View;IJ)V

    iput-object v0, p0, Lcom/android/deskclock/widget/sgv/ReorderHelper;->mDraggedChild:Lcom/android/deskclock/widget/sgv/ReorderHelper$ReorderView;

    .line 102
    iput-wide p3, p0, Lcom/android/deskclock/widget/sgv/ReorderHelper;->mDraggedChildId:J

    .line 103
    new-instance v0, Lcom/android/deskclock/widget/sgv/ReorderHelper$ReorderView;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/deskclock/widget/sgv/ReorderHelper$ReorderView;-><init>(Lcom/android/deskclock/widget/sgv/ReorderHelper;Landroid/view/View;IJ)V

    iput-object v0, p0, Lcom/android/deskclock/widget/sgv/ReorderHelper;->mCurrentDraggedOverChild:Lcom/android/deskclock/widget/sgv/ReorderHelper$ReorderView;

    .line 104
    iget-object v0, p0, Lcom/android/deskclock/widget/sgv/ReorderHelper;->mReorderListener:Lcom/android/deskclock/widget/sgv/StaggeredGridView$ReorderListener;

    iget-object v1, p0, Lcom/android/deskclock/widget/sgv/ReorderHelper;->mDraggedChild:Lcom/android/deskclock/widget/sgv/ReorderHelper$ReorderView;

    iget-object v1, v1, Lcom/android/deskclock/widget/sgv/ReorderHelper$ReorderView;->target:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/android/deskclock/widget/sgv/StaggeredGridView$ReorderListener;->onPickedUp(Landroid/view/View;)V

    .line 105
    return-void
.end method

.method public handleDrop(Landroid/graphics/Point;)Z
    .locals 8
    .param p1, "p"    # Landroid/graphics/Point;

    .prologue
    .line 63
    const/4 v7, 0x0

    .line 64
    .local v7, "reorderTarget":Landroid/view/View;
    iget-object v0, p0, Lcom/android/deskclock/widget/sgv/ReorderHelper;->mCurrentDraggedOverChild:Lcom/android/deskclock/widget/sgv/ReorderHelper$ReorderView;

    if-eqz v0, :cond_1

    .line 65
    invoke-virtual {p0, p1}, Lcom/android/deskclock/widget/sgv/ReorderHelper;->getReorderableChildAtCoordinate(Landroid/graphics/Point;)Landroid/view/View;

    move-result-object v7

    .line 73
    :goto_0
    if-eqz v7, :cond_0

    .line 74
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;

    .line 77
    .local v6, "lp":Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;
    iget v0, v6, Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;->position:I

    iget-object v1, p0, Lcom/android/deskclock/widget/sgv/ReorderHelper;->mCurrentDraggedOverChild:Lcom/android/deskclock/widget/sgv/ReorderHelper$ReorderView;

    iget v1, v1, Lcom/android/deskclock/widget/sgv/ReorderHelper$ReorderView;->position:I

    if-eq v0, v1, :cond_0

    .line 78
    invoke-direct {p0, v7}, Lcom/android/deskclock/widget/sgv/ReorderHelper;->updateDraggedOverChild(Landroid/view/View;)V

    .line 82
    .end local v6    # "lp":Lcom/android/deskclock/widget/sgv/StaggeredGridView$LayoutParams;
    :cond_0
    iget-object v0, p0, Lcom/android/deskclock/widget/sgv/ReorderHelper;->mCurrentDraggedOverChild:Lcom/android/deskclock/widget/sgv/ReorderHelper$ReorderView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/deskclock/widget/sgv/ReorderHelper;->mDraggedChild:Lcom/android/deskclock/widget/sgv/ReorderHelper$ReorderView;

    iget v0, v0, Lcom/android/deskclock/widget/sgv/ReorderHelper$ReorderView;->position:I

    iget-object v1, p0, Lcom/android/deskclock/widget/sgv/ReorderHelper;->mCurrentDraggedOverChild:Lcom/android/deskclock/widget/sgv/ReorderHelper$ReorderView;

    iget v1, v1, Lcom/android/deskclock/widget/sgv/ReorderHelper$ReorderView;->position:I

    if-eq v0, v1, :cond_2

    .line 84
    iget-object v0, p0, Lcom/android/deskclock/widget/sgv/ReorderHelper;->mReorderListener:Lcom/android/deskclock/widget/sgv/StaggeredGridView$ReorderListener;

    iget-object v1, p0, Lcom/android/deskclock/widget/sgv/ReorderHelper;->mDraggedChild:Lcom/android/deskclock/widget/sgv/ReorderHelper$ReorderView;

    iget-object v1, v1, Lcom/android/deskclock/widget/sgv/ReorderHelper$ReorderView;->target:Landroid/view/View;

    iget-object v2, p0, Lcom/android/deskclock/widget/sgv/ReorderHelper;->mDraggedChild:Lcom/android/deskclock/widget/sgv/ReorderHelper$ReorderView;

    iget-wide v2, v2, Lcom/android/deskclock/widget/sgv/ReorderHelper$ReorderView;->id:J

    iget-object v4, p0, Lcom/android/deskclock/widget/sgv/ReorderHelper;->mDraggedChild:Lcom/android/deskclock/widget/sgv/ReorderHelper$ReorderView;

    iget v4, v4, Lcom/android/deskclock/widget/sgv/ReorderHelper$ReorderView;->position:I

    iget-object v5, p0, Lcom/android/deskclock/widget/sgv/ReorderHelper;->mCurrentDraggedOverChild:Lcom/android/deskclock/widget/sgv/ReorderHelper$ReorderView;

    iget v5, v5, Lcom/android/deskclock/widget/sgv/ReorderHelper$ReorderView;->position:I

    invoke-interface/range {v0 .. v5}, Lcom/android/deskclock/widget/sgv/StaggeredGridView$ReorderListener;->onReorder(Landroid/view/View;JII)Z

    move-result v0

    .line 92
    :goto_1
    return v0

    .line 67
    :cond_1
    const-string v0, "DeskClock"

    const-string v1, "Current dragged over child does not exist"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 90
    :cond_2
    iget-object v0, p0, Lcom/android/deskclock/widget/sgv/ReorderHelper;->mReorderListener:Lcom/android/deskclock/widget/sgv/StaggeredGridView$ReorderListener;

    iget-object v1, p0, Lcom/android/deskclock/widget/sgv/ReorderHelper;->mDraggedChild:Lcom/android/deskclock/widget/sgv/ReorderHelper$ReorderView;

    iget-object v1, v1, Lcom/android/deskclock/widget/sgv/ReorderHelper$ReorderView;->target:Landroid/view/View;

    iget-object v2, p0, Lcom/android/deskclock/widget/sgv/ReorderHelper;->mDraggedChild:Lcom/android/deskclock/widget/sgv/ReorderHelper$ReorderView;

    iget v2, v2, Lcom/android/deskclock/widget/sgv/ReorderHelper$ReorderView;->position:I

    iget-object v3, p0, Lcom/android/deskclock/widget/sgv/ReorderHelper;->mCurrentDraggedOverChild:Lcom/android/deskclock/widget/sgv/ReorderHelper$ReorderView;

    iget v3, v3, Lcom/android/deskclock/widget/sgv/ReorderHelper$ReorderView;->position:I

    invoke-interface {v0, v1, v2, v3}, Lcom/android/deskclock/widget/sgv/StaggeredGridView$ReorderListener;->onDrop(Landroid/view/View;II)V

    .line 92
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public hasReorderListener()Z
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/deskclock/widget/sgv/ReorderHelper;->mReorderListener:Lcom/android/deskclock/widget/sgv/StaggeredGridView$ReorderListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverReorderingArea()Z
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/deskclock/widget/sgv/ReorderHelper;->mCurrentDraggedOverChild:Lcom/android/deskclock/widget/sgv/ReorderHelper$ReorderView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateDraggedChildView(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/deskclock/widget/sgv/ReorderHelper;->mDraggedChild:Lcom/android/deskclock/widget/sgv/ReorderHelper$ReorderView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/deskclock/widget/sgv/ReorderHelper;->mDraggedChild:Lcom/android/deskclock/widget/sgv/ReorderHelper$ReorderView;

    iget-object v0, v0, Lcom/android/deskclock/widget/sgv/ReorderHelper$ReorderView;->target:Landroid/view/View;

    if-eq p1, v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/android/deskclock/widget/sgv/ReorderHelper;->mDraggedChild:Lcom/android/deskclock/widget/sgv/ReorderHelper$ReorderView;

    iput-object p1, v0, Lcom/android/deskclock/widget/sgv/ReorderHelper$ReorderView;->target:Landroid/view/View;

    .line 217
    :cond_0
    return-void
.end method

.method public updateDraggedOverChildView(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/deskclock/widget/sgv/ReorderHelper;->mCurrentDraggedOverChild:Lcom/android/deskclock/widget/sgv/ReorderHelper$ReorderView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/deskclock/widget/sgv/ReorderHelper;->mCurrentDraggedOverChild:Lcom/android/deskclock/widget/sgv/ReorderHelper$ReorderView;

    iget-object v0, v0, Lcom/android/deskclock/widget/sgv/ReorderHelper$ReorderView;->target:Landroid/view/View;

    if-eq p1, v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/android/deskclock/widget/sgv/ReorderHelper;->mCurrentDraggedOverChild:Lcom/android/deskclock/widget/sgv/ReorderHelper$ReorderView;

    iput-object p1, v0, Lcom/android/deskclock/widget/sgv/ReorderHelper$ReorderView;->target:Landroid/view/View;

    .line 223
    :cond_0
    return-void
.end method
