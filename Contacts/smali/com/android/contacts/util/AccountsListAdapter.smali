.class public final Lcom/android/contacts/util/AccountsListAdapter;
.super Landroid/widget/BaseAdapter;
.source "AccountsListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;
    }
.end annotation


# instance fields
.field private final mAccountTypes:Lcom/android/contacts/model/AccountTypeManager;

.field private final mAccounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/account/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "accountListFilter"    # Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/contacts/util/AccountsListAdapter;-><init>(Landroid/content/Context;Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;Lcom/android/contacts/model/account/AccountWithDataSet;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;Lcom/android/contacts/model/account/AccountWithDataSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "accountListFilter"    # Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;
    .param p3, "currentAccount"    # Lcom/android/contacts/model/account/AccountWithDataSet;

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/android/contacts/util/AccountsListAdapter;->mContext:Landroid/content/Context;

    .line 73
    invoke-static {p1}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/util/AccountsListAdapter;->mAccountTypes:Lcom/android/contacts/model/AccountTypeManager;

    .line 74
    invoke-direct {p0, p2}, Lcom/android/contacts/util/AccountsListAdapter;->getAccounts(Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/util/AccountsListAdapter;->mAccounts:Ljava/util/List;

    .line 75
    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/android/contacts/util/AccountsListAdapter;->mAccounts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/util/AccountsListAdapter;->mAccounts:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/account/AccountWithDataSet;

    invoke-virtual {v0, p3}, Lcom/android/contacts/model/account/AccountWithDataSet;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/util/AccountsListAdapter;->mAccounts:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/android/contacts/util/AccountsListAdapter;->mAccounts:Ljava/util/List;

    invoke-interface {v0, v1, p3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 81
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/util/AccountsListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 82
    return-void
.end method

.method private getAccounts(Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;)Ljava/util/List;
    .locals 4
    .param p1, "accountListFilter"    # Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/account/AccountWithDataSet;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 85
    sget-object v1, Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_GROUP_WRITABLE:Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;

    if-ne p1, v1, :cond_0

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/contacts/util/AccountsListAdapter;->mAccountTypes:Lcom/android/contacts/model/AccountTypeManager;

    invoke-virtual {v1}, Lcom/android/contacts/model/AccountTypeManager;->getGroupWritableAccounts()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 93
    :goto_0
    return-object v0

    .line 89
    :cond_0
    sget-object v1, Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_CONTACT_WRITABLE_WITHOUT_CARD:Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;

    if-ne p1, v1, :cond_1

    .line 90
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/contacts/util/AccountsListAdapter;->mAccountTypes:Lcom/android/contacts/model/AccountTypeManager;

    invoke-virtual {v2, v0}, Lcom/android/contacts/model/AccountTypeManager;->getAccountsWithoutCard(Z)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v1

    goto :goto_0

    .line 93
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/contacts/util/AccountsListAdapter;->mAccountTypes:Lcom/android/contacts/model/AccountTypeManager;

    sget-object v3, Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_CONTACT_WRITABLE:Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;

    if-ne p1, v3, :cond_2

    :goto_1
    invoke-virtual {v2, v0}, Lcom/android/contacts/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/contacts/util/AccountsListAdapter;->mAccounts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/android/contacts/model/account/AccountWithDataSet;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 143
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/contacts/util/AccountsListAdapter;->mAccounts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 144
    :cond_0
    const/4 v0, 0x0

    .line 146
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/util/AccountsListAdapter;->mAccounts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/account/AccountWithDataSet;

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lcom/android/contacts/util/AccountsListAdapter;->getItem(I)Lcom/android/contacts/model/account/AccountWithDataSet;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 151
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 15
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 99
    if-eqz p2, :cond_1

    move-object/from16 v6, p2

    .line 102
    .local v6, "resultView":Landroid/view/View;
    :goto_0
    const v10, 0x1020014

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 103
    .local v7, "text1":Landroid/widget/TextView;
    const v10, 0x1020015

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 104
    .local v8, "text2":Landroid/widget/TextView;
    const v10, 0x1020006

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 106
    .local v5, "icon":Landroid/widget/ImageView;
    iget-object v10, p0, Lcom/android/contacts/util/AccountsListAdapter;->mAccounts:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/account/AccountWithDataSet;

    .line 107
    .local v1, "account":Lcom/android/contacts/model/account/AccountWithDataSet;
    iget-object v10, p0, Lcom/android/contacts/util/AccountsListAdapter;->mAccountTypes:Lcom/android/contacts/model/AccountTypeManager;

    iget-object v11, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v12, v1, Lcom/android/contacts/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/account/AccountType;

    move-result-object v2

    .line 110
    .local v2, "accountType":Lcom/android/contacts/model/account/AccountType;
    const-string v10, "com.card.contacts"

    iget-object v11, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 111
    iget-object v10, p0, Lcom/android/contacts/util/AccountsListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v10}, Lcom/android/contacts/model/account/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v10, p0, Lcom/android/contacts/util/AccountsListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-static {v10}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->getFreeSpace(Landroid/content/ContentResolver;)I

    move-result v4

    .line 113
    .local v4, "free":I
    iget-object v10, p0, Lcom/android/contacts/util/AccountsListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-static {v10}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->getCapacity(Landroid/content/ContentResolver;)I

    move-result v3

    .line 114
    .local v3, "capacity":I
    sub-int v9, v3, v4

    .line 115
    .local v9, "used":I
    if-lez v3, :cond_0

    if-gez v9, :cond_2

    .line 116
    :cond_0
    const v10, 0x7f0b0226

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(I)V

    .line 130
    .end local v3    # "capacity":I
    .end local v4    # "free":I
    .end local v9    # "used":I
    :goto_1
    iget-object v10, p0, Lcom/android/contacts/util/AccountsListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v10}, Lcom/android/contacts/model/account/AccountType;->getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 132
    return-object v6

    .line 99
    .end local v1    # "account":Lcom/android/contacts/model/account/AccountWithDataSet;
    .end local v2    # "accountType":Lcom/android/contacts/model/account/AccountType;
    .end local v5    # "icon":Landroid/widget/ImageView;
    .end local v6    # "resultView":Landroid/view/View;
    .end local v7    # "text1":Landroid/widget/TextView;
    .end local v8    # "text2":Landroid/widget/TextView;
    :cond_1
    iget-object v10, p0, Lcom/android/contacts/util/AccountsListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v11, 0x7f040002

    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v10, v11, v0, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    goto :goto_0

    .line 118
    .restart local v1    # "account":Lcom/android/contacts/model/account/AccountWithDataSet;
    .restart local v2    # "accountType":Lcom/android/contacts/model/account/AccountType;
    .restart local v3    # "capacity":I
    .restart local v4    # "free":I
    .restart local v5    # "icon":Landroid/widget/ImageView;
    .restart local v6    # "resultView":Landroid/view/View;
    .restart local v7    # "text1":Landroid/widget/TextView;
    .restart local v8    # "text2":Landroid/widget/TextView;
    .restart local v9    # "used":I
    :cond_2
    iget-object v10, p0, Lcom/android/contacts/util/AccountsListAdapter;->mContext:Landroid/content/Context;

    const v11, 0x7f0b0227

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 121
    .end local v3    # "capacity":I
    .end local v4    # "free":I
    .end local v9    # "used":I
    :cond_3
    iget-object v10, p0, Lcom/android/contacts/util/AccountsListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v10}, Lcom/android/contacts/model/account/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v10, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    sget-object v10, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_1
.end method
