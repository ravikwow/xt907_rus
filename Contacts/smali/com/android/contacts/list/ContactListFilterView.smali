.class public Lcom/android/contacts/list/ContactListFilterView;
.super Landroid/widget/LinearLayout;
.source "ContactListFilterView.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAccountType:Landroid/widget/TextView;

.field private mAccountUserName:Landroid/widget/TextView;

.field private mFilter:Lcom/android/contacts/list/ContactListFilter;

.field private mIcon:Landroid/widget/ImageView;

.field private mRadioButton:Landroid/widget/RadioButton;

.field private mSingleAccount:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/android/contacts/list/ContactListFilterView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/list/ContactListFilterView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    return-void
.end method

.method private bindView(II)V
    .locals 2
    .param p1, "iconResource"    # I
    .param p2, "textResource"    # I

    .prologue
    .line 133
    if-eqz p1, :cond_0

    .line 134
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterView;->mIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 140
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterView;->mAccountType:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 141
    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterView;->mIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public bindView(Lcom/android/contacts/model/AccountTypeManager;)V
    .locals 4
    .param p1, "accountTypes"    # Lcom/android/contacts/model/AccountTypeManager;

    .prologue
    const/4 v3, 0x0

    .line 80
    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilterView;->mAccountType:Landroid/widget/TextView;

    if-nez v1, :cond_0

    .line 81
    const v1, 0x7f06001e

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactListFilterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/contacts/list/ContactListFilterView;->mIcon:Landroid/widget/ImageView;

    .line 82
    const v1, 0x7f060086

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactListFilterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/contacts/list/ContactListFilterView;->mAccountType:Landroid/widget/TextView;

    .line 83
    const v1, 0x7f060087

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactListFilterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/contacts/list/ContactListFilterView;->mAccountUserName:Landroid/widget/TextView;

    .line 84
    const v1, 0x7f060088

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactListFilterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/android/contacts/list/ContactListFilterView;->mRadioButton:Landroid/widget/RadioButton;

    .line 85
    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilterView;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListFilterView;->isActivated()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 88
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilterView;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    if-nez v1, :cond_1

    .line 89
    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilterView;->mAccountType:Landroid/widget/TextView;

    const v2, 0x7f0b000e

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 130
    :goto_0
    return-void

    .line 93
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilterView;->mAccountUserName:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 94
    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilterView;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    iget v1, v1, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 112
    :pswitch_1
    const v1, 0x7f0b019e

    invoke-direct {p0, v3, v1}, Lcom/android/contacts/list/ContactListFilterView;->bindView(II)V

    goto :goto_0

    .line 96
    :pswitch_2
    const v1, 0x7f0b0199

    invoke-direct {p0, v3, v1}, Lcom/android/contacts/list/ContactListFilterView;->bindView(II)V

    goto :goto_0

    .line 100
    :pswitch_3
    const v1, 0x7f020053

    const v2, 0x7f0b019a

    invoke-direct {p0, v1, v2}, Lcom/android/contacts/list/ContactListFilterView;->bindView(II)V

    goto :goto_0

    .line 104
    :pswitch_4
    const v1, 0x7f020052

    const v2, 0x7f0b019c

    invoke-direct {p0, v1, v2}, Lcom/android/contacts/list/ContactListFilterView;->bindView(II)V

    goto :goto_0

    .line 108
    :pswitch_5
    const v1, 0x7f0b019d

    invoke-direct {p0, v3, v1}, Lcom/android/contacts/list/ContactListFilterView;->bindView(II)V

    goto :goto_0

    .line 116
    :pswitch_6
    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilterView;->mAccountUserName:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 117
    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilterView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 118
    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilterView;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    iget-object v1, v1, Lcom/android/contacts/list/ContactListFilter;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 119
    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilterView;->mIcon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/contacts/list/ContactListFilterView;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    iget-object v2, v2, Lcom/android/contacts/list/ContactListFilter;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 123
    :goto_1
    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilterView;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    iget-object v1, v1, Lcom/android/contacts/list/ContactListFilter;->accountType:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/contacts/list/ContactListFilterView;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    iget-object v2, v2, Lcom/android/contacts/list/ContactListFilter;->dataSet:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/account/AccountType;

    move-result-object v0

    .line 125
    .local v0, "accountType":Lcom/android/contacts/model/account/AccountType;
    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilterView;->mAccountUserName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/contacts/list/ContactListFilterView;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    iget-object v2, v2, Lcom/android/contacts/list/ContactListFilter;->accountName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilterView;->mAccountType:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListFilterView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/account/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 121
    .end local v0    # "accountType":Lcom/android/contacts/model/account/AccountType;
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilterView;->mIcon:Landroid/widget/ImageView;

    const v2, 0x7f020088

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 94
    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public setActivated(Z)V
    .locals 2
    .param p1, "activated"    # Z

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setActivated(Z)V

    .line 69
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterView;->mRadioButton:Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterView;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 77
    :goto_0
    return-void

    .line 75
    :cond_0
    sget-object v0, Lcom/android/contacts/list/ContactListFilterView;->TAG:Ljava/lang/String;

    const-string v1, "radio-button cannot be activated because it is null"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setContactListFilter(Lcom/android/contacts/list/ContactListFilter;)V
    .locals 0
    .param p1, "filter"    # Lcom/android/contacts/list/ContactListFilter;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/contacts/list/ContactListFilterView;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    .line 56
    return-void
.end method

.method public setSingleAccount(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactListFilterView;->mSingleAccount:Z

    .line 64
    return-void
.end method
