.class public Lcom/motorola/messaging/view/WarningBar;
.super Landroid/widget/LinearLayout;
.source "WarningBar.java"


# instance fields
.field private mIcon:Landroid/widget/ImageView;

.field private mWarningText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 23
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 25
    const v0, 0x7f09009a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/messaging/view/WarningBar;->mWarningText:Landroid/widget/TextView;

    .line 26
    const v0, 0x7f090099

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/motorola/messaging/view/WarningBar;->mIcon:Landroid/widget/ImageView;

    .line 27
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 34
    iget-object v0, p0, Lcom/motorola/messaging/view/WarningBar;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 35
    return-void
.end method

.method public setText(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 30
    iget-object v0, p0, Lcom/motorola/messaging/view/WarningBar;->mWarningText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 31
    return-void
.end method

.method public setVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 38
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 39
    return-void

    .line 38
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
