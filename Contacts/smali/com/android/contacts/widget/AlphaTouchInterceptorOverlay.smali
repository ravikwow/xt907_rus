.class public Lcom/android/contacts/widget/AlphaTouchInterceptorOverlay;
.super Landroid/widget/FrameLayout;
.source "AlphaTouchInterceptorOverlay.java"


# instance fields
.field private mAlpha:F

.field private mAlphaLayer:Landroid/view/View;

.field private mInterceptorLayer:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 46
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/contacts/widget/AlphaTouchInterceptorOverlay;->mAlpha:F

    .line 51
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/contacts/widget/AlphaTouchInterceptorOverlay;->mInterceptorLayer:Landroid/view/View;

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/util/ThemeUtils;->getSelectableItemBackground(Landroid/content/res/Resources$Theme;)I

    move-result v0

    .line 53
    .local v0, "resId":I
    iget-object v1, p0, Lcom/android/contacts/widget/AlphaTouchInterceptorOverlay;->mInterceptorLayer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 54
    iget-object v1, p0, Lcom/android/contacts/widget/AlphaTouchInterceptorOverlay;->mInterceptorLayer:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 56
    iput-object p0, p0, Lcom/android/contacts/widget/AlphaTouchInterceptorOverlay;->mAlphaLayer:Landroid/view/View;

    .line 57
    return-void
.end method


# virtual methods
.method public setAlphaLayer(Landroid/view/View;)V
    .locals 1
    .param p1, "alphaLayer"    # Landroid/view/View;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/contacts/widget/AlphaTouchInterceptorOverlay;->mAlphaLayer:Landroid/view/View;

    if-ne v0, p1, :cond_0

    .line 73
    .end local p1    # "alphaLayer":Landroid/view/View;
    :goto_0
    return-void

    .line 69
    .restart local p1    # "alphaLayer":Landroid/view/View;
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/widget/AlphaTouchInterceptorOverlay;->mAlphaLayer:Landroid/view/View;

    if-ne v0, p0, :cond_1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->setAlphaOnViewBackground(Landroid/view/View;F)V

    .line 71
    :cond_1
    if-nez p1, :cond_2

    move-object p1, p0

    .end local p1    # "alphaLayer":Landroid/view/View;
    :cond_2
    iput-object p1, p0, Lcom/android/contacts/widget/AlphaTouchInterceptorOverlay;->mAlphaLayer:Landroid/view/View;

    .line 72
    iget v0, p0, Lcom/android/contacts/widget/AlphaTouchInterceptorOverlay;->mAlpha:F

    invoke-virtual {p0, v0}, Lcom/android/contacts/widget/AlphaTouchInterceptorOverlay;->setAlphaLayerValue(F)V

    goto :goto_0
.end method

.method public setAlphaLayerValue(F)V
    .locals 2
    .param p1, "alpha"    # F

    .prologue
    .line 77
    iput p1, p0, Lcom/android/contacts/widget/AlphaTouchInterceptorOverlay;->mAlpha:F

    .line 78
    iget-object v0, p0, Lcom/android/contacts/widget/AlphaTouchInterceptorOverlay;->mAlphaLayer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/android/contacts/widget/AlphaTouchInterceptorOverlay;->mAlphaLayer:Landroid/view/View;

    iget v1, p0, Lcom/android/contacts/widget/AlphaTouchInterceptorOverlay;->mAlpha:F

    invoke-static {v0, v1}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->setAlphaOnViewBackground(Landroid/view/View;F)V

    .line 81
    :cond_0
    return-void
.end method

.method public setOverlayClickable(Z)V
    .locals 1
    .param p1, "clickable"    # Z

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/contacts/widget/AlphaTouchInterceptorOverlay;->mInterceptorLayer:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 91
    return-void
.end method

.method public setOverlayOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/contacts/widget/AlphaTouchInterceptorOverlay;->mInterceptorLayer:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    return-void
.end method
