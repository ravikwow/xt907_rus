.class public Lcom/android/deskclock/widget/EllipsizeLayout;
.super Landroid/widget/LinearLayout;
.source "EllipsizeLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/deskclock/widget/EllipsizeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 17
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 63
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v1

    if-nez v1, :cond_8

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v4, 0x40000000

    if-ne v1, v4, :cond_8

    .line 65
    const/4 v15, 0x0

    .line 68
    .local v15, "totalLength":I
    const/4 v13, 0x0

    .line 69
    .local v13, "outOfSpec":Z
    const/4 v8, 0x0

    .line 70
    .local v8, "ellipsizeView":Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    .line 71
    .local v7, "count":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v14

    .line 72
    .local v14, "parentWidth":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    const/4 v4, 0x0

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 75
    .local v3, "queryWidthMeasureSpec":I
    const/4 v9, 0x0

    .local v9, "ii":I
    :goto_0
    if-ge v9, v7, :cond_5

    if-nez v13, :cond_5

    .line 76
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 77
    .local v2, "child":Landroid/view/View;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v4, 0x8

    if-eq v1, v4, :cond_1

    .line 79
    instance-of v1, v2, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    move-object/from16 v16, v2

    .line 80
    check-cast v16, Landroid/widget/TextView;

    .line 81
    .local v16, "tv":Landroid/widget/TextView;
    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 82
    if-nez v8, :cond_2

    .line 83
    move-object/from16 v8, v16

    .line 85
    const v1, 0x7fffffff

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 93
    .end local v16    # "tv":Landroid/widget/TextView;
    :cond_0
    :goto_1
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move/from16 v5, p2

    invoke-virtual/range {v1 .. v6}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 97
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout$LayoutParams;

    .line 99
    .local v10, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v10, :cond_4

    .line 100
    iget v1, v10, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v4, 0x0

    cmpl-float v1, v1, v4

    if-lez v1, :cond_3

    const/4 v1, 0x1

    :goto_2
    or-int/2addr v13, v1

    .line 101
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v4, v10, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v4

    iget v4, v10, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v4

    add-int/2addr v15, v1

    .line 75
    .end local v10    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 88
    .restart local v16    # "tv":Landroid/widget/TextView;
    :cond_2
    const/4 v13, 0x1

    goto :goto_1

    .line 100
    .end local v16    # "tv":Landroid/widget/TextView;
    .restart local v10    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    .line 104
    :cond_4
    const/4 v13, 0x1

    goto :goto_3

    .line 109
    .end local v2    # "child":Landroid/view/View;
    .end local v10    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_5
    if-eqz v8, :cond_6

    if-nez v15, :cond_9

    :cond_6
    const/4 v1, 0x1

    :goto_4
    or-int/2addr v13, v1

    .line 111
    if-nez v13, :cond_8

    if-le v15, v14, :cond_8

    .line 112
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int v4, v15, v14

    sub-int v11, v1, v4

    .line 114
    .local v11, "maxWidth":I
    const/4 v12, 0x0

    .line 115
    .local v12, "minWidth":I
    if-gez v11, :cond_7

    .line 116
    const/4 v11, 0x0

    .line 118
    :cond_7
    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 122
    .end local v3    # "queryWidthMeasureSpec":I
    .end local v7    # "count":I
    .end local v8    # "ellipsizeView":Landroid/widget/TextView;
    .end local v9    # "ii":I
    .end local v11    # "maxWidth":I
    .end local v12    # "minWidth":I
    .end local v13    # "outOfSpec":Z
    .end local v14    # "parentWidth":I
    .end local v15    # "totalLength":I
    :cond_8
    invoke-super/range {p0 .. p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 123
    return-void

    .line 109
    .restart local v3    # "queryWidthMeasureSpec":I
    .restart local v7    # "count":I
    .restart local v8    # "ellipsizeView":Landroid/widget/TextView;
    .restart local v9    # "ii":I
    .restart local v13    # "outOfSpec":Z
    .restart local v14    # "parentWidth":I
    .restart local v15    # "totalLength":I
    :cond_9
    const/4 v1, 0x0

    goto :goto_4
.end method
