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
.field private mOnPressedListener:Lcom/android/contacts/dialpad/DialpadImageButton$OnPressedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    return-void
.end method


# virtual methods
.method public setPressed(Z)V
    .locals 1
    .param p1, "pressed"    # Z

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 54
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadImageButton;->mOnPressedListener:Lcom/android/contacts/dialpad/DialpadImageButton$OnPressedListener;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadImageButton;->mOnPressedListener:Lcom/android/contacts/dialpad/DialpadImageButton$OnPressedListener;

    invoke-interface {v0, p0, p1}, Lcom/android/contacts/dialpad/DialpadImageButton$OnPressedListener;->onPressed(Landroid/view/View;Z)V

    .line 57
    :cond_0
    return-void
.end method
