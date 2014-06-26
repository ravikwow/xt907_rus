.class public Lcom/android/deskclock/CircleButtonsLayout;
.super Landroid/widget/FrameLayout;
.source "CircleButtonsLayout.java"


# instance fields
.field private mCircleTimerViewId:I

.field private mContext:Landroid/content/Context;

.field private mCtv:Lcom/android/deskclock/CircleTimerView;

.field private mDiamOffset:F

.field private mLabel:Landroid/widget/FrameLayout;

.field private mLabelId:I

.field private mLabelText:Landroid/widget/TextView;

.field private mLabelTextId:I

.field private mLeft:Landroid/widget/ImageButton;

.field private mLeftButtonId:I

.field private mLeftButtonPadding:F

.field private mRight:Landroid/widget/ImageButton;

.field private mRightButtonId:I

.field private mRightButtonPadding:F

.field private mStop:Landroid/widget/TextView;

.field private mStopButtonId:I

.field private mStrokeSize:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/deskclock/CircleButtonsLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    iput-object p1, p0, Lcom/android/deskclock/CircleButtonsLayout;->mContext:Landroid/content/Context;

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    iput-object p1, p0, Lcom/android/deskclock/CircleButtonsLayout;->mContext:Landroid/content/Context;

    .line 42
    return-void
.end method


# virtual methods
.method public onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 68
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 69
    invoke-virtual {p0}, Lcom/android/deskclock/CircleButtonsLayout;->remeasureViews()V

    .line 70
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 71
    return-void
.end method

.method protected remeasureViews()V
    .locals 22

    .prologue
    .line 74
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/CircleButtonsLayout;->mCtv:Lcom/android/deskclock/CircleTimerView;

    move-object/from16 v18, v0

    if-nez v18, :cond_1

    .line 75
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/deskclock/CircleButtonsLayout;->mCircleTimerViewId:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/android/deskclock/CircleTimerView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/deskclock/CircleButtonsLayout;->mCtv:Lcom/android/deskclock/CircleTimerView;

    .line 76
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/CircleButtonsLayout;->mCtv:Lcom/android/deskclock/CircleTimerView;

    move-object/from16 v18, v0

    if-nez v18, :cond_0

    .line 176
    :goto_0
    return-void

    .line 79
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/deskclock/CircleButtonsLayout;->mLeftButtonId:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageButton;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/deskclock/CircleButtonsLayout;->mLeft:Landroid/widget/ImageButton;

    .line 80
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/deskclock/CircleButtonsLayout;->mRightButtonId:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageButton;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/deskclock/CircleButtonsLayout;->mRight:Landroid/widget/ImageButton;

    .line 81
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/deskclock/CircleButtonsLayout;->mStopButtonId:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/deskclock/CircleButtonsLayout;->mStop:Landroid/widget/TextView;

    .line 82
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/deskclock/CircleButtonsLayout;->mLabelId:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/FrameLayout;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/deskclock/CircleButtonsLayout;->mLabel:Landroid/widget/FrameLayout;

    .line 83
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/deskclock/CircleButtonsLayout;->mLabelTextId:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/deskclock/CircleButtonsLayout;->mLabelText:Landroid/widget/TextView;

    .line 86
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/CircleButtonsLayout;->mCtv:Lcom/android/deskclock/CircleTimerView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 87
    .local v5, "frameWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/CircleButtonsLayout;->mCtv:Lcom/android/deskclock/CircleTimerView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 88
    .local v4, "frameHeight":I
    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 89
    .local v9, "minBound":I
    int-to-float v0, v9

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/deskclock/CircleButtonsLayout;->mDiamOffset:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v3, v0

    .line 91
    .local v3, "circleDiam":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/CircleButtonsLayout;->mStop:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 92
    .local v14, "stopParams":Landroid/view/ViewGroup$MarginLayoutParams;
    div-int/lit8 v18, v3, 0x6

    move/from16 v0, v18

    iput v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 93
    if-ne v9, v5, :cond_2

    .line 94
    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 v18, v0

    sub-int v19, v4, v5

    div-int/lit8 v19, v19, 0x2

    add-int v18, v18, v19

    move/from16 v0, v18

    iput v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 97
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/CircleButtonsLayout;->mLabel:Landroid/widget/FrameLayout;

    move-object/from16 v18, v0

    if-eqz v18, :cond_4

    .line 99
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/CircleButtonsLayout;->mLabel:Landroid/widget/FrameLayout;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 100
    .local v6, "labelParams":Landroid/view/ViewGroup$MarginLayoutParams;
    div-int/lit8 v18, v3, 0x6

    move/from16 v0, v18

    iput v0, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 101
    if-ne v9, v5, :cond_3

    .line 102
    iget v0, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v18, v0

    sub-int v19, v4, v5

    div-int/lit8 v19, v19, 0x2

    add-int v18, v18, v19

    move/from16 v0, v18

    iput v0, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 156
    :cond_3
    div-int/lit8 v10, v3, 0x2

    .line 158
    .local v10, "r":I
    div-int/lit8 v18, v4, 0x2

    iget v0, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v19, v0

    sub-int v17, v18, v19

    .line 160
    .local v17, "y":I
    const-wide/high16 v18, 0x4000000000000000L

    add-int v20, v10, v17

    sub-int v21, v10, v17

    mul-int v20, v20, v21

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v20

    mul-double v15, v18, v20

    .line 162
    .local v15, "w":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/CircleButtonsLayout;->mLabelText:Landroid/widget/TextView;

    move-object/from16 v18, v0

    double-to-int v0, v15

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 165
    .end local v6    # "labelParams":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v10    # "r":I
    .end local v15    # "w":D
    .end local v17    # "y":I
    :cond_4
    sub-int v18, v5, v3

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/deskclock/CircleButtonsLayout;->mStrokeSize:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    const/high16 v19, 0x40000000

    div-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/CircleButtonsLayout;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f09006b

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    sub-int v13, v18, v19

    .line 167
    .local v13, "sideMarginOffset":I
    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/deskclock/CircleButtonsLayout;->mLeftButtonPadding:F

    move/from16 v19, v0

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    sub-int v19, v13, v19

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 168
    .local v7, "leftMarginOffset":I
    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/deskclock/CircleButtonsLayout;->mRightButtonPadding:F

    move/from16 v19, v0

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    sub-int v19, v13, v19

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 169
    .local v11, "rightMarginOffset":I
    sub-int v18, v4, v9

    div-int/lit8 v2, v18, 0x2

    .line 170
    .local v2, "bottomMarginOffset":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/CircleButtonsLayout;->mLeft:Landroid/widget/ImageButton;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 171
    .local v8, "leftParams":Landroid/view/ViewGroup$MarginLayoutParams;
    iput v7, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 172
    iput v2, v8, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/CircleButtonsLayout;->mRight:Landroid/widget/ImageButton;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 174
    .local v12, "rightParams":Landroid/view/ViewGroup$MarginLayoutParams;
    iput v11, v12, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 175
    iput v2, v12, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto/16 :goto_0
.end method

.method public setCircleTimerViewIds(IIIIIIII)V
    .locals 4
    .param p1, "circleTimerViewId"    # I
    .param p2, "leftButtonId"    # I
    .param p3, "rightButtonId"    # I
    .param p4, "stopButtonId"    # I
    .param p5, "leftButtonPaddingDimenId"    # I
    .param p6, "rightButtonPaddingDimenId"    # I
    .param p7, "labelId"    # I
    .param p8, "labelTextId"    # I

    .prologue
    .line 47
    iput p1, p0, Lcom/android/deskclock/CircleButtonsLayout;->mCircleTimerViewId:I

    .line 48
    iput p2, p0, Lcom/android/deskclock/CircleButtonsLayout;->mLeftButtonId:I

    .line 49
    iput p3, p0, Lcom/android/deskclock/CircleButtonsLayout;->mRightButtonId:I

    .line 50
    iput p4, p0, Lcom/android/deskclock/CircleButtonsLayout;->mStopButtonId:I

    .line 51
    iput p7, p0, Lcom/android/deskclock/CircleButtonsLayout;->mLabelId:I

    .line 52
    iput p8, p0, Lcom/android/deskclock/CircleButtonsLayout;->mLabelTextId:I

    .line 53
    iget-object v2, p0, Lcom/android/deskclock/CircleButtonsLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/android/deskclock/CircleButtonsLayout;->mLeftButtonPadding:F

    .line 54
    iget-object v2, p0, Lcom/android/deskclock/CircleButtonsLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/android/deskclock/CircleButtonsLayout;->mRightButtonPadding:F

    .line 56
    iget-object v2, p0, Lcom/android/deskclock/CircleButtonsLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090034

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 57
    .local v0, "dotStrokeSize":F
    iget-object v2, p0, Lcom/android/deskclock/CircleButtonsLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090036

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 59
    .local v1, "markerStrokeSize":F
    iget-object v2, p0, Lcom/android/deskclock/CircleButtonsLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090035

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/android/deskclock/CircleButtonsLayout;->mStrokeSize:F

    .line 60
    iget v2, p0, Lcom/android/deskclock/CircleButtonsLayout;->mStrokeSize:F

    invoke-static {v2, v0, v1}, Lcom/android/deskclock/Utils;->calculateRadiusOffset(FFF)F

    move-result v2

    const/high16 v3, 0x40000000

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/android/deskclock/CircleButtonsLayout;->mDiamOffset:F

    .line 61
    return-void
.end method
