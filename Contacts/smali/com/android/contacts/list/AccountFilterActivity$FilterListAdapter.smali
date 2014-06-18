.class Lcom/android/contacts/list/AccountFilterActivity$FilterListAdapter;
.super Landroid/widget/BaseAdapter;
.source "AccountFilterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/AccountFilterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FilterListAdapter"
.end annotation


# instance fields
.field private final mAccountTypes:Lcom/android/contacts/model/AccountTypeManager;

.field private final mCurrentFilter:Lcom/android/contacts/list/ContactListFilter;

.field private final mFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/list/ContactListFilter;",
            ">;"
        }
    .end annotation
.end field

.field private final mLayoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/android/contacts/list/ContactListFilter;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "current"    # Lcom/android/contacts/list/ContactListFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/list/ContactListFilter;",
            ">;",
            "Lcom/android/contacts/list/ContactListFilter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 210
    .local p2, "filters":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/list/ContactListFilter;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 211
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/contacts/list/AccountFilterActivity$FilterListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 213
    iput-object p2, p0, Lcom/android/contacts/list/AccountFilterActivity$FilterListAdapter;->mFilters:Ljava/util/List;

    .line 214
    iput-object p3, p0, Lcom/android/contacts/list/AccountFilterActivity$FilterListAdapter;->mCurrentFilter:Lcom/android/contacts/list/ContactListFilter;

    .line 215
    invoke-static {p1}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/AccountFilterActivity$FilterListAdapter;->mAccountTypes:Lcom/android/contacts/model/AccountTypeManager;

    .line 216
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/contacts/list/AccountFilterActivity$FilterListAdapter;->mFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/android/contacts/list/ContactListFilter;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/contacts/list/AccountFilterActivity$FilterListAdapter;->mFilters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListFilter;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 203
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/AccountFilterActivity$FilterListAdapter;->getItem(I)Lcom/android/contacts/list/ContactListFilter;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 225
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 235
    if-eqz p2, :cond_0

    move-object v1, p2

    .line 236
    check-cast v1, Lcom/android/contacts/list/ContactListFilterView;

    .line 241
    .local v1, "view":Lcom/android/contacts/list/ContactListFilterView;
    :goto_0
    iget-object v4, p0, Lcom/android/contacts/list/AccountFilterActivity$FilterListAdapter;->mFilters:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v2, :cond_1

    :goto_1
    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactListFilterView;->setSingleAccount(Z)V

    .line 242
    iget-object v2, p0, Lcom/android/contacts/list/AccountFilterActivity$FilterListAdapter;->mFilters:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListFilter;

    .line 243
    .local v0, "filter":Lcom/android/contacts/list/ContactListFilter;
    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactListFilterView;->setContactListFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 244
    iget-object v2, p0, Lcom/android/contacts/list/AccountFilterActivity$FilterListAdapter;->mAccountTypes:Lcom/android/contacts/model/AccountTypeManager;

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactListFilterView;->bindView(Lcom/android/contacts/model/AccountTypeManager;)V

    .line 245
    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactListFilterView;->setTag(Ljava/lang/Object;)V

    .line 246
    iget-object v2, p0, Lcom/android/contacts/list/AccountFilterActivity$FilterListAdapter;->mCurrentFilter:Lcom/android/contacts/list/ContactListFilter;

    invoke-virtual {v0, v2}, Lcom/android/contacts/list/ContactListFilter;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactListFilterView;->setActivated(Z)V

    .line 247
    return-object v1

    .line 238
    .end local v0    # "filter":Lcom/android/contacts/list/ContactListFilter;
    .end local v1    # "view":Lcom/android/contacts/list/ContactListFilterView;
    :cond_0
    iget-object v4, p0, Lcom/android/contacts/list/AccountFilterActivity$FilterListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f040026

    invoke-virtual {v4, v5, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/list/ContactListFilterView;

    .restart local v1    # "view":Lcom/android/contacts/list/ContactListFilterView;
    goto :goto_0

    :cond_1
    move v2, v3

    .line 241
    goto :goto_1
.end method
