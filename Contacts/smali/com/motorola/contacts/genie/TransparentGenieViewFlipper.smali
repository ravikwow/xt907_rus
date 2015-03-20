.class public Lcom/motorola/contacts/genie/TransparentGenieViewFlipper;
.super Landroid/widget/ViewFlipper;
.source "TransparentGenieViewFlipper.java"


# instance fields
.field private mOnTouchListener:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewFlipper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    new-instance v0, Lcom/motorola/contacts/genie/TransparentGenieViewFlipper$1;

    invoke-direct {v0, p0}, Lcom/motorola/contacts/genie/TransparentGenieViewFlipper$1;-><init>(Lcom/motorola/contacts/genie/TransparentGenieViewFlipper;)V

    iput-object v0, p0, Lcom/motorola/contacts/genie/TransparentGenieViewFlipper;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 18
    iget-object v0, p0, Lcom/motorola/contacts/genie/TransparentGenieViewFlipper;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 19
    return-void
.end method
