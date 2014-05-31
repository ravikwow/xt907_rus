.class public Lcom/android/settings/CustomTitleListPreference;
.super Landroid/preference/ListPreference;
.source "CustomTitleListPreference.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCustomTitleSummary:Ljava/lang/String;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0, p1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 28
    iput-object v1, p0, Lcom/android/settings/CustomTitleListPreference;->mContext:Landroid/content/Context;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/CustomTitleListPreference;->mCustomTitleSummary:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/CustomTitleListPreference;->mTitle:Ljava/lang/String;

    .line 31
    iput-object v1, p0, Lcom/android/settings/CustomTitleListPreference;->mInflater:Landroid/view/LayoutInflater;

    .line 35
    iput-object p1, p0, Lcom/android/settings/CustomTitleListPreference;->mContext:Landroid/content/Context;

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    iput-object v2, p0, Lcom/android/settings/CustomTitleListPreference;->mContext:Landroid/content/Context;

    .line 29
    const-string v1, ""

    iput-object v1, p0, Lcom/android/settings/CustomTitleListPreference;->mCustomTitleSummary:Ljava/lang/String;

    .line 30
    const-string v1, ""

    iput-object v1, p0, Lcom/android/settings/CustomTitleListPreference;->mTitle:Ljava/lang/String;

    .line 31
    iput-object v2, p0, Lcom/android/settings/CustomTitleListPreference;->mInflater:Landroid/view/LayoutInflater;

    .line 40
    iput-object p1, p0, Lcom/android/settings/CustomTitleListPreference;->mContext:Landroid/content/Context;

    .line 42
    iget-object v1, p0, Lcom/android/settings/CustomTitleListPreference;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/internal/R$styleable;->Preference:[I

    invoke-virtual {v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 43
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/CustomTitleListPreference;->mTitle:Ljava/lang/String;

    .line 44
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 45
    return-void
.end method


# virtual methods
.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 6
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 51
    iget-object v3, p0, Lcom/android/settings/CustomTitleListPreference;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    iput-object v3, p0, Lcom/android/settings/CustomTitleListPreference;->mInflater:Landroid/view/LayoutInflater;

    .line 52
    iget-object v3, p0, Lcom/android/settings/CustomTitleListPreference;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f040026

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 54
    .local v2, "v":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 55
    const v3, 0x7f08004c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 56
    .local v1, "tvTitle":Landroid/widget/TextView;
    const v3, 0x7f08004d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 57
    .local v0, "tvSummary":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/settings/CustomTitleListPreference;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v3, p0, Lcom/android/settings/CustomTitleListPreference;->mCustomTitleSummary:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/CustomTitleListPreference;->mCustomTitleSummary:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 59
    :cond_0
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 66
    :goto_0
    invoke-virtual {p1, v2}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 69
    .end local v0    # "tvSummary":Landroid/widget/TextView;
    .end local v1    # "tvTitle":Landroid/widget/TextView;
    :cond_1
    return-void

    .line 62
    .restart local v0    # "tvSummary":Landroid/widget/TextView;
    .restart local v1    # "tvTitle":Landroid/widget/TextView;
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 63
    iget-object v3, p0, Lcom/android/settings/CustomTitleListPreference;->mCustomTitleSummary:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setCustomTitleSummary(Ljava/lang/String;)V
    .locals 0
    .param p1, "title_summary"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/settings/CustomTitleListPreference;->mCustomTitleSummary:Ljava/lang/String;

    .line 73
    return-void
.end method
