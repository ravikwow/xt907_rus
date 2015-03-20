.class public Lcom/motorola/contacts/genie/TransparentGenieCling;
.super Landroid/widget/FrameLayout;
.source "TransparentGenieCling.java"


# instance fields
.field private mOnTouchListener:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    new-instance v0, Lcom/motorola/contacts/genie/TransparentGenieCling$1;

    invoke-direct {v0, p0}, Lcom/motorola/contacts/genie/TransparentGenieCling$1;-><init>(Lcom/motorola/contacts/genie/TransparentGenieCling;)V

    iput-object v0, p0, Lcom/motorola/contacts/genie/TransparentGenieCling;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 19
    iget-object v0, p0, Lcom/motorola/contacts/genie/TransparentGenieCling;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 20
    return-void
.end method
