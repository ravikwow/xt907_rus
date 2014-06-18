.class public Lcom/android/contacts/group/GroupBrowseListAdapter;
.super Landroid/widget/BaseAdapter;
.source "GroupBrowseListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;
    }
.end annotation


# instance fields
.field private final mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

.field private final mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mSelectedGroupUri:Landroid/net/Uri;

.field private mSelectionVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mContext:Landroid/content/Context;

    .line 52
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 53
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

    .line 54
    return-void
.end method

.method private bindHeaderView(Lcom/android/contacts/group/GroupListItem;Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;)V
    .locals 4
    .param p1, "entry"    # Lcom/android/contacts/group/GroupListItem;
    .param p2, "viewCache"    # Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;

    .prologue
    .line 202
    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

    invoke-virtual {p1}, Lcom/android/contacts/group/GroupListItem;->getAccountType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/contacts/group/GroupListItem;->getDataSet()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/account/AccountType;

    move-result-object v0

    .line 204
    .local v0, "accountType":Lcom/android/contacts/model/account/AccountType;
    iget-object v1, p2, Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;->accountType:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/account/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    iget-object v1, p2, Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;->accountName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/contacts/group/GroupListItem;->getAccountName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    return-void
.end method

.method private static getGroupUriFromId(J)Landroid/net/Uri;
    .locals 1
    .param p0, "groupId"    # J

    .prologue
    .line 209
    sget-object v0, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private isSelectedGroup(Landroid/net/Uri;)Z
    .locals 1
    .param p1, "groupUri"    # Landroid/net/Uri;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mSelectedGroupUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mSelectedGroupUri:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Lcom/android/contacts/group/GroupListItem;
    .locals 14
    .param p1, "position"    # I

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 121
    :cond_0
    const/4 v0, 0x0

    .line 147
    :goto_0
    return-object v0

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v13, 0x0

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 124
    .local v1, "accountName":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v13, 0x1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 125
    .local v2, "accountType":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v13, 0x2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 126
    .local v3, "dataSet":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v13, 0x3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 127
    .local v4, "groupId":J
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v13, 0x4

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 128
    .local v6, "title":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v13, 0x5

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 133
    .local v8, "memberCount":I
    add-int/lit8 v12, p1, -0x1

    .line 134
    .local v12, "previousIndex":I
    const/4 v7, 0x1

    .line 135
    .local v7, "isFirstGroupInAccount":Z
    if-ltz v12, :cond_2

    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, v12}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 136
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v13, 0x0

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 137
    .local v9, "previousGroupAccountName":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v13, 0x1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 138
    .local v10, "previousGroupAccountType":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v13, 0x2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 140
    .local v11, "previousGroupDataSet":Ljava/lang/String;
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v3, v11}, Lcom/android/internal/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 143
    const/4 v7, 0x0

    .line 147
    .end local v9    # "previousGroupAccountName":Ljava/lang/String;
    .end local v10    # "previousGroupAccountType":Ljava/lang/String;
    .end local v11    # "previousGroupDataSet":Ljava/lang/String;
    :cond_2
    new-instance v0, Lcom/android/contacts/group/GroupListItem;

    invoke-direct/range {v0 .. v8}, Lcom/android/contacts/group/GroupListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ZI)V

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lcom/android/contacts/group/GroupBrowseListAdapter;->getItem(I)Lcom/android/contacts/group/GroupListItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 115
    int-to-long v0, p1

    return-wide v0
.end method

.method public getSelectedGroup()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mSelectedGroupUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getSelectedGroupPosition()I
    .locals 7

    .prologue
    const/4 v4, -0x1

    .line 72
    iget-object v5, p0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mSelectedGroupUri:Landroid/net/Uri;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-nez v5, :cond_2

    :cond_0
    move v2, v4

    .line 87
    :cond_1
    :goto_0
    return v2

    .line 77
    :cond_2
    const/4 v2, 0x0

    .line 78
    .local v2, "index":I
    iget-object v5, p0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 79
    :goto_1
    iget-object v5, p0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 80
    iget-object v5, p0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v6, 0x3

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 81
    .local v0, "groupId":J
    invoke-static {v0, v1}, Lcom/android/contacts/group/GroupBrowseListAdapter;->getGroupUriFromId(J)Landroid/net/Uri;

    move-result-object v3

    .line 82
    .local v3, "uri":Landroid/net/Uri;
    iget-object v5, p0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mSelectedGroupUri:Landroid/net/Uri;

    invoke-virtual {v5, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 85
    add-int/lit8 v2, v2, 0x1

    .line 86
    goto :goto_1

    .end local v0    # "groupId":J
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_3
    move v2, v4

    .line 87
    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v7, 0x8

    const/4 v10, 0x0

    .line 153
    invoke-virtual {p0, p1}, Lcom/android/contacts/group/GroupBrowseListAdapter;->getItem(I)Lcom/android/contacts/group/GroupListItem;

    move-result-object v0

    .line 156
    .local v0, "entry":Lcom/android/contacts/group/GroupListItem;
    if-eqz p2, :cond_1

    .line 157
    move-object v3, p2

    .line 158
    .local v3, "result":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;

    .line 166
    .local v4, "viewCache":Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;
    :goto_0
    invoke-virtual {v0}, Lcom/android/contacts/group/GroupListItem;->isFirstGroupInAccount()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 167
    invoke-direct {p0, v0, v4}, Lcom/android/contacts/group/GroupBrowseListAdapter;->bindHeaderView(Lcom/android/contacts/group/GroupListItem;Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;)V

    .line 168
    iget-object v5, v4, Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;->accountHeader:Landroid/view/View;

    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    .line 169
    iget-object v5, v4, Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;->divider:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 170
    if-nez p1, :cond_2

    .line 176
    iget-object v5, v4, Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;->accountHeaderExtraTopPadding:Landroid/view/View;

    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    .line 187
    :goto_1
    invoke-virtual {v0}, Lcom/android/contacts/group/GroupListItem;->getGroupId()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/android/contacts/group/GroupBrowseListAdapter;->getGroupUriFromId(J)Landroid/net/Uri;

    move-result-object v1

    .line 188
    .local v1, "groupUri":Landroid/net/Uri;
    iget-object v5, p0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e0009

    invoke-virtual {v0}, Lcom/android/contacts/group/GroupListItem;->getMemberCount()I

    move-result v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/android/contacts/group/GroupListItem;->getMemberCount()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 191
    .local v2, "memberCountString":Ljava/lang/String;
    invoke-virtual {v4, v1}, Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;->setUri(Landroid/net/Uri;)V

    .line 192
    iget-object v5, v4, Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;->groupTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/android/contacts/group/GroupListItem;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    iget-object v5, v4, Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;->groupMemberCount:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    iget-boolean v5, p0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mSelectionVisible:Z

    if-eqz v5, :cond_0

    .line 196
    invoke-direct {p0, v1}, Lcom/android/contacts/group/GroupBrowseListAdapter;->isSelectedGroup(Landroid/net/Uri;)Z

    move-result v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setActivated(Z)V

    .line 198
    :cond_0
    return-object v3

    .line 160
    .end local v1    # "groupUri":Landroid/net/Uri;
    .end local v2    # "memberCountString":Ljava/lang/String;
    .end local v3    # "result":Landroid/view/View;
    .end local v4    # "viewCache":Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;
    :cond_1
    iget-object v5, p0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f040057

    invoke-virtual {v5, v6, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 161
    .restart local v3    # "result":Landroid/view/View;
    new-instance v4, Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;

    invoke-direct {v4, v3}, Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;-><init>(Landroid/view/View;)V

    .line 162
    .restart local v4    # "viewCache":Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;
    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 178
    :cond_2
    iget-object v5, v4, Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;->accountHeaderExtraTopPadding:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 181
    :cond_3
    iget-object v5, v4, Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;->accountHeader:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 182
    iget-object v5, v4, Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;->divider:Landroid/view/View;

    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    .line 183
    iget-object v5, v4, Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;->accountHeaderExtraTopPadding:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public setCursor(Landroid/database/Cursor;)V
    .locals 5
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mCursor:Landroid/database/Cursor;

    .line 61
    iget-object v3, p0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mSelectedGroupUri:Landroid/net/Uri;

    if-nez v3, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 62
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/contacts/group/GroupBrowseListAdapter;->getItem(I)Lcom/android/contacts/group/GroupListItem;

    move-result-object v0

    .line 63
    .local v0, "firstItem":Lcom/android/contacts/group/GroupListItem;
    if-nez v0, :cond_1

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 64
    .local v1, "groupId":J
    invoke-static {v1, v2}, Lcom/android/contacts/group/GroupBrowseListAdapter;->getGroupUriFromId(J)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mSelectedGroupUri:Landroid/net/Uri;

    .line 67
    .end local v0    # "firstItem":Lcom/android/contacts/group/GroupListItem;
    .end local v1    # "groupId":J
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/group/GroupBrowseListAdapter;->notifyDataSetChanged()V

    .line 68
    return-void

    .line 63
    .restart local v0    # "firstItem":Lcom/android/contacts/group/GroupListItem;
    :cond_1
    invoke-virtual {v0}, Lcom/android/contacts/group/GroupListItem;->getGroupId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_0
.end method

.method public setSelectedGroup(Landroid/net/Uri;)V
    .locals 0
    .param p1, "groupUri"    # Landroid/net/Uri;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mSelectedGroupUri:Landroid/net/Uri;

    .line 96
    return-void
.end method

.method public setSelectionVisible(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mSelectionVisible:Z

    .line 92
    return-void
.end method
