.class public Lcom/motorola/messaging/view/MessageEditorLayout;
.super Landroid/widget/LinearLayout;
.source "MessageEditorLayout.java"


# instance fields
.field private mAttachmentLayout:Landroid/view/View;

.field private mEditor:Landroid/widget/EditText;

.field private mScroll:Landroid/widget/ScrollView;

.field private mSideEditorInfo:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/messaging/view/MessageEditorLayout;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/view/MessageEditorLayout;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/motorola/messaging/view/MessageEditorLayout;->mEditor:Landroid/widget/EditText;

    return-object v0
.end method

.method private ensureMinimumHeight()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 61
    .local v0, "measureSpec":I
    iget-object v1, p0, Lcom/motorola/messaging/view/MessageEditorLayout;->mSideEditorInfo:Landroid/view/View;

    invoke-virtual {v1, v0, v0}, Landroid/view/View;->measure(II)V

    .line 63
    iget-object v1, p0, Lcom/motorola/messaging/view/MessageEditorLayout;->mSideEditorInfo:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 64
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 56
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const v1, 0x7f090023

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/view/MessageEditorLayout;->mSideEditorInfo:Landroid/view/View;

    .line 57
    return-void
.end method

.method public onAttachmentLoading()V
    .locals 7

    .prologue
    .line 76
    iget-object v2, p0, Lcom/motorola/messaging/view/MessageEditorLayout;->mAttachmentLayout:Landroid/view/View;

    if-nez v2, :cond_0

    .line 77
    const v2, 0x7f090020

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/messaging/view/MessageEditorLayout;->mAttachmentLayout:Landroid/view/View;

    .line 81
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 82
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/motorola/messaging/view/MessageEditorLayout;->mAttachmentLayout:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 83
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/motorola/messaging/view/MessageEditorLayout;->mScroll:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/view/View;->getScrollX()I

    move-result v2

    iget-object v3, p0, Lcom/motorola/messaging/view/MessageEditorLayout;->mScroll:Landroid/widget/ScrollView;

    invoke-virtual {v3}, Landroid/view/View;->getScrollY()I

    move-result v3

    iget-object v4, p0, Lcom/motorola/messaging/view/MessageEditorLayout;->mScroll:Landroid/widget/ScrollView;

    invoke-virtual {v4}, Landroid/view/View;->getScrollX()I

    move-result v4

    iget-object v5, p0, Lcom/motorola/messaging/view/MessageEditorLayout;->mScroll:Landroid/widget/ScrollView;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/motorola/messaging/view/MessageEditorLayout;->mScroll:Landroid/widget/ScrollView;

    invoke-virtual {v5}, Landroid/view/View;->getScrollY()I

    move-result v5

    iget-object v6, p0, Lcom/motorola/messaging/view/MessageEditorLayout;->mScroll:Landroid/widget/ScrollView;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 87
    .local v1, "scrollBounds":Landroid/graphics/Rect;
    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 89
    iget-object v2, p0, Lcom/motorola/messaging/view/MessageEditorLayout;->mAttachmentLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 90
    iget-object v2, p0, Lcom/motorola/messaging/view/MessageEditorLayout;->mAttachmentLayout:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    .line 92
    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 39
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 40
    const v0, 0x7f090021

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/motorola/messaging/view/MessageEditorLayout;->mEditor:Landroid/widget/EditText;

    .line 41
    const v0, 0x7f09001d

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/motorola/messaging/view/MessageEditorLayout;->mScroll:Landroid/widget/ScrollView;

    .line 44
    const v0, 0x7f09001e

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/motorola/messaging/view/MessageEditorLayout$1;

    invoke-direct {v1, p0}, Lcom/motorola/messaging/view/MessageEditorLayout$1;-><init>(Lcom/motorola/messaging/view/MessageEditorLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 52
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/motorola/messaging/view/MessageEditorLayout;->ensureMinimumHeight()V

    .line 72
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 73
    return-void
.end method
