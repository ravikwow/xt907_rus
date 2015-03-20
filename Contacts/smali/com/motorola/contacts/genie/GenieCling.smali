.class public Lcom/motorola/contacts/genie/GenieCling;
.super Landroid/widget/FrameLayout;
.source "GenieCling.java"


# instance fields
.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnTouchListener:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    new-instance v0, Lcom/motorola/contacts/genie/GenieCling$1;

    invoke-direct {v0, p0}, Lcom/motorola/contacts/genie/GenieCling$1;-><init>(Lcom/motorola/contacts/genie/GenieCling;)V

    iput-object v0, p0, Lcom/motorola/contacts/genie/GenieCling;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 31
    new-instance v0, Lcom/motorola/contacts/genie/GenieCling$2;

    invoke-direct {v0, p0}, Lcom/motorola/contacts/genie/GenieCling$2;-><init>(Lcom/motorola/contacts/genie/GenieCling;)V

    iput-object v0, p0, Lcom/motorola/contacts/genie/GenieCling;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 18
    iget-object v0, p0, Lcom/motorola/contacts/genie/GenieCling;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 19
    iget-object v0, p0, Lcom/motorola/contacts/genie/GenieCling;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    return-void
.end method
