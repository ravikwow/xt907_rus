.class public Lcom/motorola/blur/setup/ListViewRowLimit;
.super Landroid/widget/ListView;
.source "ListViewRowLimit.java"


# instance fields
.field private mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

.field private mMaxRows:I

.field private mOldCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/blur/setup/ListViewRowLimit;->mOldCount:I

    .line 15
    const/4 v0, 0x5

    iput v0, p0, Lcom/motorola/blur/setup/ListViewRowLimit;->mMaxRows:I

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/blur/setup/ListViewRowLimit;->mOldCount:I

    .line 15
    const/4 v0, 0x5

    iput v0, p0, Lcom/motorola/blur/setup/ListViewRowLimit;->mMaxRows:I

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/blur/setup/ListViewRowLimit;->mOldCount:I

    .line 15
    const/4 v0, 0x5

    iput v0, p0, Lcom/motorola/blur/setup/ListViewRowLimit;->mMaxRows:I

    .line 27
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    move-result v2

    iget v3, p0, Lcom/motorola/blur/setup/ListViewRowLimit;->mOldCount:I

    if-eq v2, v3, :cond_1

    .line 41
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 42
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 43
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    move-result v2

    iput v2, p0, Lcom/motorola/blur/setup/ListViewRowLimit;->mOldCount:I

    .line 44
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/blur/setup/ListViewRowLimit;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 45
    iget v2, p0, Lcom/motorola/blur/setup/ListViewRowLimit;->mOldCount:I

    iget v3, p0, Lcom/motorola/blur/setup/ListViewRowLimit;->mMaxRows:I

    if-ge v2, v3, :cond_2

    .line 46
    iget-object v2, p0, Lcom/motorola/blur/setup/ListViewRowLimit;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v3, p0, Lcom/motorola/blur/setup/ListViewRowLimit;->mOldCount:I

    iget v4, p0, Lcom/motorola/blur/setup/ListViewRowLimit;->mOldCount:I

    if-lez v4, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    :cond_0
    mul-int/2addr v1, v3

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 50
    :goto_0
    iget-object v1, p0, Lcom/motorola/blur/setup/ListViewRowLimit;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 55
    return-void

    .line 48
    .restart local v0    # "child":Landroid/view/View;
    :cond_2
    iget-object v1, p0, Lcom/motorola/blur/setup/ListViewRowLimit;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v2, p0, Lcom/motorola/blur/setup/ListViewRowLimit;->mMaxRows:I

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    mul-int/2addr v2, v3

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0
.end method

.method public setMaxRows(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/motorola/blur/setup/ListViewRowLimit;->mMaxRows:I

    .line 36
    return-void
.end method
