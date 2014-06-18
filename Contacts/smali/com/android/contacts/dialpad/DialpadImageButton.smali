.class public Lcom/android/contacts/dialpad/DialpadImageButton;
.super Landroid/widget/ImageButton;
.source "DialpadImageButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/dialpad/DialpadImageButton$OnPressedListener;
    }
.end annotation


# instance fields
.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mHoverBounds:Landroid/graphics/Rect;

.field private mOnPressedListener:Lcom/android/contacts/dialpad/DialpadImageButton$OnPressedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/dialpad/DialpadImageButton;->mHoverBounds:Landroid/graphics/Rect;

    .line 52
    invoke-direct {p0, p1}, Lcom/android/contacts/dialpad/DialpadImageButton;->initForAccessibility(Landroid/content/Context;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/dialpad/DialpadImageButton;->mHoverBounds:Landroid/graphics/Rect;

    .line 57
    invoke-direct {p0, p1}, Lcom/android/contacts/dialpad/DialpadImageButton;->initForAccessibility(Landroid/content/Context;)V

    .line 58
    return-void
.end method

.method private initForAccessibility(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    const-string v0, "accessibility"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/android/contacts/dialpad/DialpadImageButton;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 63
    return-void
.end method


# virtual methods
.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadImageButton;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadImageButton;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 120
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 109
    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/contacts/dialpad/DialpadImageButton;->setClickable(Z)V

    goto :goto_0

    .line 112
    :pswitch_1
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadImageButton;->mHoverBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadImageButton;->performClick()Z

    .line 115
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/contacts/dialpad/DialpadImageButton;->setClickable(Z)V

    goto :goto_0

    .line 106
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 75
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageButton;->onSizeChanged(IIII)V

    .line 77
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadImageButton;->mHoverBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadImageButton;->getPaddingLeft()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 78
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadImageButton;->mHoverBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadImageButton;->getPaddingRight()I

    move-result v1

    sub-int v1, p1, v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 79
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadImageButton;->mHoverBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadImageButton;->getPaddingTop()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 80
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadImageButton;->mHoverBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadImageButton;->getPaddingBottom()I

    move-result v1

    sub-int v1, p2, v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 81
    return-void
.end method

.method public performClick()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 87
    iget-object v1, p0, Lcom/android/contacts/dialpad/DialpadImageButton;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 89
    invoke-virtual {p0}, Lcom/android/contacts/dialpad/DialpadImageButton;->isPressed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 90
    invoke-virtual {p0, v0}, Lcom/android/contacts/dialpad/DialpadImageButton;->setPressed(Z)V

    .line 91
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/contacts/dialpad/DialpadImageButton;->setPressed(Z)V

    .line 97
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-super {p0}, Landroid/widget/ImageButton;->performClick()Z

    move-result v0

    goto :goto_0
.end method

.method public setOnPressedListener(Lcom/android/contacts/dialpad/DialpadImageButton$OnPressedListener;)V
    .locals 0
    .param p1, "onPressedListener"    # Lcom/android/contacts/dialpad/DialpadImageButton$OnPressedListener;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/contacts/dialpad/DialpadImageButton;->mOnPressedListener:Lcom/android/contacts/dialpad/DialpadImageButton$OnPressedListener;

    .line 48
    return-void
.end method

.method public setPressed(Z)V
    .locals 1
    .param p1, "pressed"    # Z

    .prologue
    .line 67
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setPressed(Z)V

    .line 68
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadImageButton;->mOnPressedListener:Lcom/android/contacts/dialpad/DialpadImageButton$OnPressedListener;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadImageButton;->mOnPressedListener:Lcom/android/contacts/dialpad/DialpadImageButton$OnPressedListener;

    invoke-interface {v0, p0, p1}, Lcom/android/contacts/dialpad/DialpadImageButton$OnPressedListener;->onPressed(Landroid/view/View;Z)V

    .line 71
    :cond_0
    return-void
.end method
