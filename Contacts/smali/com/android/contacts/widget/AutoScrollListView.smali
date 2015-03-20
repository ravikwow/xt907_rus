.class public Lcom/android/contacts/widget/AutoScrollListView;
.super Landroid/widget/ListView;
.source "AutoScrollListView.java"


# instance fields
.field private mRequestedScrollPosition:I

.field private mSmoothScrollRequested:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/widget/AutoScrollListView;->mRequestedScrollPosition:I

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/widget/AutoScrollListView;->mRequestedScrollPosition:I

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/widget/AutoScrollListView;->mRequestedScrollPosition:I

    .line 48
    return-void
.end method


# virtual methods
.method protected layoutChildren()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    .line 67
    :try_start_0
    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_0
    iget v6, p0, Lcom/android/contacts/widget/AutoScrollListView;->mRequestedScrollPosition:I

    if-ne v6, v7, :cond_1

    .line 123
    :cond_0
    :goto_1
    return-void

    .line 77
    :cond_1
    iget v3, p0, Lcom/android/contacts/widget/AutoScrollListView;->mRequestedScrollPosition:I

    .line 78
    .local v3, "position":I
    iput v7, p0, Lcom/android/contacts/widget/AutoScrollListView;->mRequestedScrollPosition:I

    .line 80
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v6

    add-int/lit8 v0, v6, 0x1

    .line 81
    .local v0, "firstPosition":I
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v1

    .line 82
    .local v1, "lastPosition":I
    if-lt v3, v0, :cond_2

    if-le v3, v1, :cond_0

    .line 86
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    const v7, 0x3ea8f5c3

    mul-float/2addr v6, v7

    float-to-int v2, v6

    .line 87
    .local v2, "offset":I
    iget-boolean v6, p0, Lcom/android/contacts/widget/AutoScrollListView;->mSmoothScrollRequested:Z

    if-nez v6, :cond_3

    .line 88
    invoke-virtual {p0, v3, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 93
    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V

    goto :goto_1

    .line 98
    :cond_3
    sub-int v6, v1, v0

    mul-int/lit8 v5, v6, 0x2

    .line 100
    .local v5, "twoScreens":I
    if-ge v3, v0, :cond_6

    .line 101
    add-int v4, v3, v5

    .line 102
    .local v4, "preliminaryPosition":I
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    move-result v6

    if-lt v4, v6, :cond_4

    .line 103
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    .line 105
    :cond_4
    if-ge v4, v0, :cond_5

    .line 106
    invoke-virtual {p0, v4}, Landroid/widget/ListView;->setSelection(I)V

    .line 107
    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 121
    :cond_5
    :goto_2
    invoke-virtual {p0, v3, v2}, Landroid/widget/AbsListView;->smoothScrollToPositionFromTop(II)V

    goto :goto_1

    .line 110
    .end local v4    # "preliminaryPosition":I
    :cond_6
    sub-int v4, v3, v5

    .line 111
    .restart local v4    # "preliminaryPosition":I
    if-gez v4, :cond_7

    .line 112
    const/4 v4, 0x0

    .line 114
    :cond_7
    if-le v4, v1, :cond_5

    .line 115
    invoke-virtual {p0, v4}, Landroid/widget/ListView;->setSelection(I)V

    .line 116
    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V

    goto :goto_2

    .line 68
    .end local v0    # "firstPosition":I
    .end local v1    # "lastPosition":I
    .end local v2    # "offset":I
    .end local v3    # "position":I
    .end local v4    # "preliminaryPosition":I
    .end local v5    # "twoScreens":I
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method public requestPositionToScreen(IZ)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "smoothScroll"    # Z

    .prologue
    .line 58
    iput p1, p0, Lcom/android/contacts/widget/AutoScrollListView;->mRequestedScrollPosition:I

    .line 59
    iput-boolean p2, p0, Lcom/android/contacts/widget/AutoScrollListView;->mSmoothScrollRequested:Z

    .line 60
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 61
    return-void
.end method
