.class public Lcom/motorola/contacts/widget/CheckableLinearLayout;
.super Landroid/widget/LinearLayout;
.source "CheckableLinearLayout.java"

# interfaces
.implements Landroid/widget/Checkable;


# instance fields
.field private _checkbox:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/motorola/contacts/widget/CheckableLinearLayout;->_checkbox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/contacts/widget/CheckableLinearLayout;->_checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 22
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 24
    const v1, 0x7f070119

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 25
    .local v0, "v":Landroid/view/View;
    instance-of v1, v0, Landroid/widget/CheckBox;

    if-eqz v1, :cond_0

    .line 26
    check-cast v0, Landroid/widget/CheckBox;

    .end local v0    # "v":Landroid/view/View;
    iput-object v0, p0, Lcom/motorola/contacts/widget/CheckableLinearLayout;->_checkbox:Landroid/widget/CheckBox;

    .line 29
    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 38
    iget-object v0, p0, Lcom/motorola/contacts/widget/CheckableLinearLayout;->_checkbox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/motorola/contacts/widget/CheckableLinearLayout;->_checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 41
    :cond_0
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/motorola/contacts/widget/CheckableLinearLayout;->_checkbox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/motorola/contacts/widget/CheckableLinearLayout;->_checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->toggle()V

    .line 48
    :cond_0
    return-void
.end method
