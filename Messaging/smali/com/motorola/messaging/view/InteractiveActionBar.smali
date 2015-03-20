.class public Lcom/motorola/messaging/view/InteractiveActionBar;
.super Landroid/widget/LinearLayout;
.source "InteractiveActionBar.java"


# instance fields
.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mInteractionEnabled:Z

.field private mSubtitle:Ljava/lang/String;

.field private mSubtitleView:Landroid/widget/TextView;

.field private mTitle:Ljava/lang/String;

.field private mTitleLayout:Landroid/widget/LinearLayout;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/messaging/view/InteractiveActionBar;->mInteractionEnabled:Z

    .line 32
    invoke-direct {p0}, Lcom/motorola/messaging/view/InteractiveActionBar;->initTitle()V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/motorola/messaging/view/InteractiveActionBar;-><init>(Landroid/content/Context;)V

    .line 27
    iput-object p2, p0, Lcom/motorola/messaging/view/InteractiveActionBar;->mClickListener:Landroid/view/View$OnClickListener;

    .line 28
    return-void
.end method

.method private initTitle()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 80
    iget-object v1, p0, Lcom/motorola/messaging/view/InteractiveActionBar;->mTitleLayout:Landroid/widget/LinearLayout;

    if-nez v1, :cond_1

    .line 81
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 83
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const/high16 v1, 0x7f030000

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/motorola/messaging/view/InteractiveActionBar;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 84
    iget-object v1, p0, Lcom/motorola/messaging/view/InteractiveActionBar;->mTitleLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f090002

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/motorola/messaging/view/InteractiveActionBar;->mTitleView:Landroid/widget/TextView;

    .line 85
    iget-object v1, p0, Lcom/motorola/messaging/view/InteractiveActionBar;->mTitleLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f090003

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/motorola/messaging/view/InteractiveActionBar;->mSubtitleView:Landroid/widget/TextView;

    .line 87
    iget-boolean v1, p0, Lcom/motorola/messaging/view/InteractiveActionBar;->mInteractionEnabled:Z

    invoke-virtual {p0, v1}, Lcom/motorola/messaging/view/InteractiveActionBar;->setClickable(Z)V

    .line 89
    iget-object v1, p0, Lcom/motorola/messaging/view/InteractiveActionBar;->mTitle:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/motorola/messaging/view/InteractiveActionBar;->mTitleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/motorola/messaging/view/InteractiveActionBar;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    :cond_0
    iget-object v1, p0, Lcom/motorola/messaging/view/InteractiveActionBar;->mSubtitle:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 94
    iget-object v1, p0, Lcom/motorola/messaging/view/InteractiveActionBar;->mSubtitleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/motorola/messaging/view/InteractiveActionBar;->mSubtitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v1, p0, Lcom/motorola/messaging/view/InteractiveActionBar;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 98
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_1
    iget-object v1, p0, Lcom/motorola/messaging/view/InteractiveActionBar;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 99
    return-void
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 68
    iget-object v0, p0, Lcom/motorola/messaging/view/InteractiveActionBar;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/messaging/view/InteractiveActionBar;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/motorola/messaging/view/InteractiveActionBar;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 72
    :cond_0
    iput-object v1, p0, Lcom/motorola/messaging/view/InteractiveActionBar;->mTitleView:Landroid/widget/TextView;

    .line 73
    iput-object v1, p0, Lcom/motorola/messaging/view/InteractiveActionBar;->mSubtitleView:Landroid/widget/TextView;

    .line 74
    iput-object v1, p0, Lcom/motorola/messaging/view/InteractiveActionBar;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 76
    invoke-direct {p0}, Lcom/motorola/messaging/view/InteractiveActionBar;->initTitle()V

    .line 77
    return-void
.end method

.method public setClickable(Z)V
    .locals 2
    .param p1, "clickable"    # Z

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/motorola/messaging/view/InteractiveActionBar;->mInteractionEnabled:Z

    .line 105
    if-eqz p1, :cond_0

    .line 106
    iget-object v0, p0, Lcom/motorola/messaging/view/InteractiveActionBar;->mTitleLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/motorola/messaging/view/InteractiveActionBar;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    :goto_0
    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/view/InteractiveActionBar;->mTitleLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object v0, p0, Lcom/motorola/messaging/view/InteractiveActionBar;->mTitleLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0
.end method

.method public setSubtitle(Ljava/lang/String;)V
    .locals 2
    .param p1, "subtitle"    # Ljava/lang/String;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/motorola/messaging/view/InteractiveActionBar;->mSubtitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 44
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 45
    iput-object p1, p0, Lcom/motorola/messaging/view/InteractiveActionBar;->mSubtitle:Ljava/lang/String;

    .line 46
    iget-object v0, p0, Lcom/motorola/messaging/view/InteractiveActionBar;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    iget-object v0, p0, Lcom/motorola/messaging/view/InteractiveActionBar;->mSubtitleView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/motorola/messaging/view/InteractiveActionBar;->mSubtitleView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/motorola/messaging/view/InteractiveActionBar;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 37
    iput-object p1, p0, Lcom/motorola/messaging/view/InteractiveActionBar;->mTitle:Ljava/lang/String;

    .line 38
    iget-object v0, p0, Lcom/motorola/messaging/view/InteractiveActionBar;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    :cond_0
    return-void
.end method
