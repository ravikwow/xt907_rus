.class public Lcom/android/contacts/util/AccountFilterUtil;
.super Ljava/lang/Object;
.source "AccountFilterUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/android/contacts/util/AccountFilterUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/util/AccountFilterUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static handleAccountFilterResult(Lcom/android/contacts/list/ContactListFilterController;ILandroid/content/Intent;)V
    .locals 3
    .param p0, "filterController"    # Lcom/android/contacts/list/ContactListFilterController;
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 153
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 154
    const-string v1, "contactListFilter"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListFilter;

    .line 156
    .local v0, "filter":Lcom/android/contacts/list/ContactListFilter;
    if-nez v0, :cond_1

    .line 165
    .end local v0    # "filter":Lcom/android/contacts/list/ContactListFilter;
    :cond_0
    :goto_0
    return-void

    .line 159
    .restart local v0    # "filter":Lcom/android/contacts/list/ContactListFilter;
    :cond_1
    iget v1, v0, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    const/4 v2, -0x3

    if-ne v1, v2, :cond_2

    .line 160
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListFilterController;->selectCustomFilter()V

    goto :goto_0

    .line 162
    :cond_2
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/list/ContactListFilterController;->setContactListFilter(Lcom/android/contacts/list/ContactListFilter;Z)V

    goto :goto_0
.end method

.method public static startAccountFilterActivityForResult(Landroid/app/Activity;ILcom/android/contacts/list/ContactListFilter;)V
    .locals 2

    .prologue
    .line 122
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/list/AccountFilterActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 123
    const-string v1, "currentFilter"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 124
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 125
    return-void
.end method

.method public static startAccountFilterActivityForResult(Landroid/app/Fragment;ILcom/android/contacts/list/ContactListFilter;)V
    .locals 3

    .prologue
    .line 134
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 135
    if-eqz v0, :cond_0

    .line 136
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/contacts/list/AccountFilterActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 137
    const-string v0, "currentFilter"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 138
    invoke-virtual {p0, v1, p1}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 142
    :goto_0
    return-void

    .line 140
    :cond_0
    sget-object v0, Lcom/android/contacts/util/AccountFilterUtil;->TAG:Ljava/lang/String;

    const-string v1, "getActivity() returned null. Ignored"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static updateAccountFilterTitle(Landroid/view/View;Lcom/android/contacts/list/ContactListFilter;ZZ)Z
    .locals 9
    .param p0, "filterContainer"    # Landroid/view/View;
    .param p1, "filter"    # Lcom/android/contacts/list/ContactListFilter;
    .param p2, "showTitleForAllAccounts"    # Z
    .param p3, "forPhone"    # Z

    .prologue
    const v8, 0x7f0b0069

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x2

    const/4 v4, -0x3

    .line 64
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 65
    .local v0, "context":Landroid/content/Context;
    const v3, 0x7f06001d

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 68
    .local v1, "headerTextView":Landroid/widget/TextView;
    const/4 v2, 0x0

    .line 69
    .local v2, "textWasSet":Z
    if-eqz p1, :cond_9

    .line 70
    if-eqz p3, :cond_4

    .line 71
    iget v3, p1, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    if-ne v3, v5, :cond_1

    .line 72
    if-eqz p2, :cond_0

    .line 73
    const v3, 0x7f0b019d

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 74
    const/4 v2, 0x1

    .line 109
    :cond_0
    :goto_0
    return v2

    .line 76
    :cond_1
    iget v3, p1, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    if-nez v3, :cond_2

    .line 77
    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/android/contacts/list/ContactListFilter;->accountName:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-virtual {v0, v8, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    const/4 v2, 0x1

    goto :goto_0

    .line 80
    :cond_2
    iget v3, p1, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    if-ne v3, v4, :cond_3

    .line 81
    const v3, 0x7f0b006b

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 82
    const/4 v2, 0x1

    goto :goto_0

    .line 84
    :cond_3
    sget-object v3, Lcom/android/contacts/util/AccountFilterUtil;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Filter type \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" isn\'t expected."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 87
    :cond_4
    iget v3, p1, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    if-ne v3, v5, :cond_5

    .line 88
    if-eqz p2, :cond_0

    .line 89
    const v3, 0x7f0b0199

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 90
    const/4 v2, 0x1

    goto :goto_0

    .line 92
    :cond_5
    iget v3, p1, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    if-nez v3, :cond_6

    .line 93
    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/android/contacts/list/ContactListFilter;->accountName:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-virtual {v0, v8, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    const/4 v2, 0x1

    goto :goto_0

    .line 96
    :cond_6
    iget v3, p1, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    if-ne v3, v4, :cond_7

    .line 97
    const v3, 0x7f0b006b

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 98
    const/4 v2, 0x1

    goto :goto_0

    .line 99
    :cond_7
    iget v3, p1, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    const/4 v4, -0x6

    if-ne v3, v4, :cond_8

    .line 100
    const v3, 0x7f0b006a

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 101
    const/4 v2, 0x1

    goto :goto_0

    .line 103
    :cond_8
    sget-object v3, Lcom/android/contacts/util/AccountFilterUtil;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Filter type \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" isn\'t expected."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 107
    :cond_9
    sget-object v3, Lcom/android/contacts/util/AccountFilterUtil;->TAG:Ljava/lang/String;

    const-string v4, "Filter is null."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static updateAccountFilterTitleForPeople(Landroid/view/View;Lcom/android/contacts/list/ContactListFilter;Z)Z
    .locals 1
    .param p0, "filterContainer"    # Landroid/view/View;
    .param p1, "filter"    # Lcom/android/contacts/list/ContactListFilter;
    .param p2, "showTitleForAllAccounts"    # Z

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/contacts/util/AccountFilterUtil;->updateAccountFilterTitle(Landroid/view/View;Lcom/android/contacts/list/ContactListFilter;ZZ)Z

    move-result v0

    return v0
.end method

.method public static updateAccountFilterTitleForPhone(Landroid/view/View;Lcom/android/contacts/list/ContactListFilter;Z)Z
    .locals 1
    .param p0, "filterContainer"    # Landroid/view/View;
    .param p1, "filter"    # Lcom/android/contacts/list/ContactListFilter;
    .param p2, "showTitleForAllAccounts"    # Z

    .prologue
    .line 57
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/android/contacts/util/AccountFilterUtil;->updateAccountFilterTitle(Landroid/view/View;Lcom/android/contacts/list/ContactListFilter;ZZ)Z

    move-result v0

    return v0
.end method
