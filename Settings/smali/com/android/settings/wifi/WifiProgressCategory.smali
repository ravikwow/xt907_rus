.class public Lcom/android/settings/wifi/WifiProgressCategory;
.super Lcom/android/settings/ProgressCategoryBase;
.source "WifiProgressCategory.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field mLastProgressBar:Landroid/widget/ProgressBar;

.field private mNoDeviceFoundAdded:Z

.field private mNoDeviceFoundPreference:Landroid/preference/Preference;

.field private mProgress:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/settings/ProgressCategoryBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiProgressCategory;->mProgress:Z

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiProgressCategory;->mLastProgressBar:Landroid/widget/ProgressBar;

    .line 43
    iput-object p1, p0, Lcom/android/settings/wifi/WifiProgressCategory;->mContext:Landroid/content/Context;

    .line 45
    const v0, 0x7f040061

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 46
    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 50
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 51
    const v5, 0x7f0800e1

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 52
    .local v1, "progressBar":Landroid/view/View;
    iget-boolean v5, p0, Lcom/android/settings/wifi/WifiProgressCategory;->mProgress:Z

    if-eqz v5, :cond_5

    move v2, v3

    .line 54
    .local v2, "visibility":I
    :goto_0
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v5

    if-ne v5, v4, :cond_6

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/wifi/WifiProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    if-ne v5, v6, :cond_6

    :cond_0
    move v0, v4

    .line 56
    .local v0, "noDeviceFound":Z
    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 59
    iget-object v5, p0, Lcom/android/settings/wifi/WifiProgressCategory;->mLastProgressBar:Landroid/widget/ProgressBar;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/settings/wifi/WifiProgressCategory;->mLastProgressBar:Landroid/widget/ProgressBar;

    if-eq v5, v1, :cond_1

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiProgressCategory;->unbindLastProgressBar()V

    .line 63
    :cond_1
    check-cast v1, Landroid/widget/ProgressBar;

    .end local v1    # "progressBar":Landroid/view/View;
    iput-object v1, p0, Lcom/android/settings/wifi/WifiProgressCategory;->mLastProgressBar:Landroid/widget/ProgressBar;

    .line 65
    if-eqz v2, :cond_2

    .line 66
    iget-object v5, p0, Lcom/android/settings/wifi/WifiProgressCategory;->mLastProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v5}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 67
    iput-object v7, p0, Lcom/android/settings/wifi/WifiProgressCategory;->mLastProgressBar:Landroid/widget/ProgressBar;

    .line 70
    :cond_2
    iget-boolean v5, p0, Lcom/android/settings/wifi/WifiProgressCategory;->mProgress:Z

    if-nez v5, :cond_3

    if-nez v0, :cond_7

    .line 71
    :cond_3
    iget-boolean v4, p0, Lcom/android/settings/wifi/WifiProgressCategory;->mNoDeviceFoundAdded:Z

    if-eqz v4, :cond_4

    .line 72
    iget-object v4, p0, Lcom/android/settings/wifi/WifiProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 73
    iput-boolean v3, p0, Lcom/android/settings/wifi/WifiProgressCategory;->mNoDeviceFoundAdded:Z

    .line 87
    :cond_4
    :goto_2
    return-void

    .line 52
    .end local v0    # "noDeviceFound":Z
    .end local v2    # "visibility":I
    .restart local v1    # "progressBar":Landroid/view/View;
    :cond_5
    const/4 v2, 0x4

    goto :goto_0

    .restart local v2    # "visibility":I
    :cond_6
    move v0, v3

    .line 54
    goto :goto_1

    .line 76
    .end local v1    # "progressBar":Landroid/view/View;
    .restart local v0    # "noDeviceFound":Z
    :cond_7
    iget-boolean v5, p0, Lcom/android/settings/wifi/WifiProgressCategory;->mNoDeviceFoundAdded:Z

    if-nez v5, :cond_4

    .line 77
    iget-object v5, p0, Lcom/android/settings/wifi/WifiProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    if-nez v5, :cond_8

    .line 78
    new-instance v5, Landroid/preference/Preference;

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settings/wifi/WifiProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    .line 79
    iget-object v5, p0, Lcom/android/settings/wifi/WifiProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    const v6, 0x7f040058

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 80
    iget-object v5, p0, Lcom/android/settings/wifi/WifiProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    const v6, 0x7f0b0056

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setTitle(I)V

    .line 81
    iget-object v5, p0, Lcom/android/settings/wifi/WifiProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    invoke-virtual {v5, v3}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 83
    :cond_8
    iget-object v3, p0, Lcom/android/settings/wifi/WifiProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 84
    iput-boolean v4, p0, Lcom/android/settings/wifi/WifiProgressCategory;->mNoDeviceFoundAdded:Z

    goto :goto_2
.end method

.method public setProgress(Z)V
    .locals 0
    .param p1, "progressOn"    # Z

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiProgressCategory;->mProgress:Z

    .line 92
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 93
    return-void
.end method

.method public unbindLastProgressBar()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 99
    iget-object v0, p0, Lcom/android/settings/wifi/WifiProgressCategory;->mLastProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/android/settings/wifi/WifiProgressCategory;->mLastProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 101
    iget-object v0, p0, Lcom/android/settings/wifi/WifiProgressCategory;->mLastProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 102
    iput-object v2, p0, Lcom/android/settings/wifi/WifiProgressCategory;->mLastProgressBar:Landroid/widget/ProgressBar;

    .line 104
    :cond_0
    return-void
.end method
