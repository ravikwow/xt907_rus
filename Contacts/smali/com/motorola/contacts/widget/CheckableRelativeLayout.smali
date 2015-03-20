.class public Lcom/motorola/contacts/widget/CheckableRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "CheckableRelativeLayout.java"

# interfaces
.implements Landroid/widget/Checkable;


# instance fields
.field private _checkbox:Landroid/widget/RadioButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/motorola/contacts/widget/CheckableRelativeLayout;->_checkbox:Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/contacts/widget/CheckableRelativeLayout;->_checkbox:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    .line 20
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 22
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 23
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 24
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 25
    .local v2, "v":Landroid/view/View;
    instance-of v3, v2, Landroid/widget/RadioButton;

    if-eqz v3, :cond_0

    .line 26
    check-cast v2, Landroid/widget/RadioButton;

    .end local v2    # "v":Landroid/view/View;
    iput-object v2, p0, Lcom/motorola/contacts/widget/CheckableRelativeLayout;->_checkbox:Landroid/widget/RadioButton;

    .line 23
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 29
    :cond_1
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 38
    iget-object v0, p0, Lcom/motorola/contacts/widget/CheckableRelativeLayout;->_checkbox:Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/motorola/contacts/widget/CheckableRelativeLayout;->_checkbox:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 41
    :cond_0
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/motorola/contacts/widget/CheckableRelativeLayout;->_checkbox:Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/motorola/contacts/widget/CheckableRelativeLayout;->_checkbox:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->toggle()V

    .line 48
    :cond_0
    return-void
.end method
