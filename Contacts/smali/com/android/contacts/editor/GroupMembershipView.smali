.class public Lcom/android/contacts/editor/GroupMembershipView;
.super Landroid/widget/LinearLayout;
.source "GroupMembershipView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;,
        Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;
    }
.end annotation


# instance fields
.field private mAccountName:Ljava/lang/String;

.field private mAccountType:Ljava/lang/String;

.field private mAdapter:Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter",
            "<",
            "Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;",
            ">;"
        }
    .end annotation
.end field

.field private mCreatedNewGroup:Z

.field private mDataSet:Ljava/lang/String;

.field private mDefaultGroupId:J

.field private mDefaultGroupVisibilityKnown:Z

.field private mDefaultGroupVisible:Z

.field private mFavoritesGroupId:J

.field private mGroupList:Landroid/widget/TextView;

.field private mGroupMetaData:Landroid/database/Cursor;

.field private mKind:Lcom/android/contacts/model/dataitem/DataKind;

.field private mNoGroupString:Ljava/lang/String;

.field private mPopup:Landroid/widget/ListPopupWindow;

.field private mPrimaryTextColor:I

.field private mSecondaryTextColor:I

.field private mState:Lcom/android/contacts/model/RawContactDelta;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 151
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 152
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 155
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 156
    return-void
.end method

.method static synthetic access$002(Lcom/android/contacts/editor/GroupMembershipView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/editor/GroupMembershipView;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mCreatedNewGroup:Z

    return p1
.end method

.method private createNewGroup()V
    .locals 5

    .prologue
    .line 420
    iget-object v0, p0, Lcom/android/contacts/editor/GroupMembershipView;->mPopup:Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/android/contacts/editor/GroupMembershipView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 422
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/editor/GroupMembershipView;->mPopup:Landroid/widget/ListPopupWindow;

    .line 425
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/editor/GroupMembershipView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAccountType:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAccountName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/contacts/editor/GroupMembershipView;->mDataSet:Ljava/lang/String;

    new-instance v4, Lcom/android/contacts/editor/GroupMembershipView$1;

    invoke-direct {v4, p0}, Lcom/android/contacts/editor/GroupMembershipView$1;-><init>(Lcom/android/contacts/editor/GroupMembershipView;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/contacts/interactions/GroupCreationDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/contacts/interactions/GroupCreationDialogFragment$OnGroupCreatedListener;)V

    .line 436
    return-void
.end method

.method private hasMembership(J)Z
    .locals 7
    .param p1, "groupId"    # J

    .prologue
    const/4 v4, 0x1

    .line 401
    iget-wide v5, p0, Lcom/android/contacts/editor/GroupMembershipView;->mDefaultGroupId:J

    cmp-long v5, p1, v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/contacts/editor/GroupMembershipView;->mState:Lcom/android/contacts/model/RawContactDelta;

    invoke-virtual {v5}, Lcom/android/contacts/model/RawContactDelta;->isContactInsert()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 416
    :goto_0
    return v4

    .line 405
    :cond_0
    iget-object v5, p0, Lcom/android/contacts/editor/GroupMembershipView;->mState:Lcom/android/contacts/model/RawContactDelta;

    const-string v6, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v5, v6}, Lcom/android/contacts/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 406
    .local v0, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/RawContactDelta$ValuesDelta;>;"
    if-eqz v0, :cond_2

    .line 407
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    .line 408
    .local v3, "values":Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    invoke-virtual {v3}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->isDelete()Z

    move-result v5

    if-nez v5, :cond_1

    .line 409
    invoke-virtual {v3}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->getGroupRowId()Ljava/lang/Long;

    move-result-object v2

    .line 410
    .local v2, "id":Ljava/lang/Long;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v5, v5, p1

    if-nez v5, :cond_1

    goto :goto_0

    .line 416
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "id":Ljava/lang/Long;
    .end local v3    # "values":Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private isGroupChecked(J)Z
    .locals 5
    .param p1, "groupId"    # J

    .prologue
    .line 390
    iget-object v3, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAdapter:Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;

    invoke-virtual {v3}, Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;->getCount()I

    move-result v0

    .line 391
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 392
    iget-object v3, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAdapter:Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;

    invoke-virtual {v3, v1}, Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;

    .line 393
    .local v2, "item":Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;
    invoke-virtual {v2}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->getGroupId()J

    move-result-wide v3

    cmp-long v3, p1, v3

    if-nez v3, :cond_0

    .line 394
    invoke-virtual {v2}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->isChecked()Z

    move-result v3

    .line 397
    .end local v2    # "item":Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;
    :goto_1
    return v3

    .line 391
    .restart local v2    # "item":Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 397
    .end local v2    # "item":Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private updateView()V
    .locals 12

    .prologue
    .line 218
    iget-object v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAccountType:Ljava/lang/String;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAccountName:Ljava/lang/String;

    if-nez v8, :cond_2

    .line 220
    :cond_0
    const/16 v8, 0x8

    invoke-virtual {p0, v8}, Lcom/android/contacts/editor/GroupMembershipView;->setVisibility(I)V

    .line 287
    :cond_1
    :goto_0
    return-void

    .line 224
    :cond_2
    const/4 v0, 0x0

    .line 225
    .local v0, "accountHasGroups":Z
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mFavoritesGroupId:J

    .line 226
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mDefaultGroupId:J

    .line 228
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 229
    .local v6, "sb":Ljava/lang/StringBuilder;
    iget-object v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v9, -0x1

    invoke-interface {v8, v9}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 230
    :cond_3
    :goto_1
    iget-object v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 231
    iget-object v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 232
    .local v1, "accountName":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 233
    .local v2, "accountType":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v9, 0x2

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 234
    .local v3, "dataSet":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAccountName:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAccountType:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mDataSet:Ljava/lang/String;

    invoke-static {v3, v8}, Lcom/android/internal/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 236
    iget-object v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v9, 0x3

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 237
    .local v4, "groupId":J
    iget-object v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v9, 0x6

    invoke-interface {v8, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-nez v8, :cond_5

    iget-object v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v9, 0x6

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-eqz v8, :cond_5

    .line 239
    iput-wide v4, p0, Lcom/android/contacts/editor/GroupMembershipView;->mFavoritesGroupId:J

    .line 249
    :goto_2
    iget-wide v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mFavoritesGroupId:J

    cmp-long v8, v4, v8

    if-eqz v8, :cond_3

    iget-wide v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mDefaultGroupId:J

    cmp-long v8, v4, v8

    if-eqz v8, :cond_3

    invoke-direct {p0, v4, v5}, Lcom/android/contacts/editor/GroupMembershipView;->hasMembership(J)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 251
    iget-object v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v9, 0x4

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 252
    .local v7, "title":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 253
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-eqz v8, :cond_4

    .line 254
    const-string v8, ", "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    :cond_4
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 240
    .end local v7    # "title":Ljava/lang/String;
    :cond_5
    iget-object v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v9, 0x5

    invoke-interface {v8, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-nez v8, :cond_6

    iget-object v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v9, 0x5

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-eqz v8, :cond_6

    .line 242
    iput-wide v4, p0, Lcom/android/contacts/editor/GroupMembershipView;->mDefaultGroupId:J

    goto :goto_2

    .line 244
    :cond_6
    const/4 v0, 0x1

    goto :goto_2

    .line 262
    .end local v1    # "accountName":Ljava/lang/String;
    .end local v2    # "accountType":Ljava/lang/String;
    .end local v3    # "dataSet":Ljava/lang/String;
    .end local v4    # "groupId":J
    :cond_7
    if-nez v0, :cond_8

    .line 263
    const/16 v8, 0x8

    invoke-virtual {p0, v8}, Lcom/android/contacts/editor/GroupMembershipView;->setVisibility(I)V

    goto/16 :goto_0

    .line 267
    :cond_8
    iget-object v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupList:Landroid/widget/TextView;

    if-nez v8, :cond_9

    .line 268
    const v8, 0x7f0600f8

    invoke-virtual {p0, v8}, Lcom/android/contacts/editor/GroupMembershipView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupList:Landroid/widget/TextView;

    .line 269
    iget-object v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupList:Landroid/widget/TextView;

    invoke-virtual {v8, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    :cond_9
    iget-object v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupList:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/editor/GroupMembershipView;->isEnabled()Z

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 273
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-nez v8, :cond_a

    .line 274
    iget-object v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupList:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/contacts/editor/GroupMembershipView;->mNoGroupString:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    iget-object v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupList:Landroid/widget/TextView;

    iget v9, p0, Lcom/android/contacts/editor/GroupMembershipView;->mSecondaryTextColor:I

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 280
    :goto_3
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/android/contacts/editor/GroupMembershipView;->setVisibility(I)V

    .line 282
    iget-boolean v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mDefaultGroupVisibilityKnown:Z

    if-nez v8, :cond_1

    .line 284
    iget-wide v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mDefaultGroupId:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_b

    iget-wide v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mDefaultGroupId:J

    invoke-direct {p0, v8, v9}, Lcom/android/contacts/editor/GroupMembershipView;->hasMembership(J)Z

    move-result v8

    if-nez v8, :cond_b

    const/4 v8, 0x1

    :goto_4
    iput-boolean v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mDefaultGroupVisible:Z

    .line 285
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mDefaultGroupVisibilityKnown:Z

    goto/16 :goto_0

    .line 277
    :cond_a
    iget-object v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupList:Landroid/widget/TextView;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    iget-object v8, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupList:Landroid/widget/TextView;

    iget v9, p0, Lcom/android/contacts/editor/GroupMembershipView;->mPrimaryTextColor:I

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    .line 284
    :cond_b
    const/4 v8, 0x0

    goto :goto_4
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 17
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 291
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/editor/GroupMembershipView;->mPopup:Landroid/widget/ListPopupWindow;

    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/editor/GroupMembershipView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v11}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 292
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/editor/GroupMembershipView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v11}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 335
    :goto_0
    return-void

    .line 296
    :cond_0
    new-instance v11, Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/GroupMembershipView;->getContext()Landroid/content/Context;

    move-result-object v12

    const v13, 0x7f040063

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v12, v13}, Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;-><init>(Lcom/android/contacts/editor/GroupMembershipView;Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/contacts/editor/GroupMembershipView;->mAdapter:Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;

    .line 299
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v12, -0x1

    invoke-interface {v11, v12}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 300
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 301
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 302
    .local v1, "accountName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v12, 0x1

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 303
    .local v2, "accountType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v12, 0x2

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 304
    .local v5, "dataSet":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/editor/GroupMembershipView;->mAccountName:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/editor/GroupMembershipView;->mAccountType:Ljava/lang/String;

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/editor/GroupMembershipView;->mDataSet:Ljava/lang/String;

    invoke-static {v5, v11}, Lcom/android/internal/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 306
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v12, 0x3

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 307
    .local v6, "groupId":J
    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/android/contacts/editor/GroupMembershipView;->mFavoritesGroupId:J

    cmp-long v11, v6, v11

    if-eqz v11, :cond_1

    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/android/contacts/editor/GroupMembershipView;->mDefaultGroupId:J

    cmp-long v11, v6, v11

    if-nez v11, :cond_2

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/contacts/editor/GroupMembershipView;->mDefaultGroupVisible:Z

    if-eqz v11, :cond_1

    .line 309
    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v12, 0x4

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 310
    .local v10, "title":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/android/contacts/editor/GroupMembershipView;->hasMembership(J)Z

    move-result v3

    .line 311
    .local v3, "checked":Z
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/editor/GroupMembershipView;->mAdapter:Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;

    new-instance v12, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;

    invoke-direct {v12, v6, v7, v10, v3}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;-><init>(JLjava/lang/String;Z)V

    invoke-virtual {v11, v12}, Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;->add(Ljava/lang/Object;)V

    goto :goto_1

    .line 316
    .end local v1    # "accountName":Ljava/lang/String;
    .end local v2    # "accountType":Ljava/lang/String;
    .end local v3    # "checked":Z
    .end local v5    # "dataSet":Ljava/lang/String;
    .end local v6    # "groupId":J
    .end local v10    # "title":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/editor/GroupMembershipView;->mAdapter:Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;

    new-instance v12, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;

    const-wide/16 v13, 0x85

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/GroupMembershipView;->getContext()Landroid/content/Context;

    move-result-object v15

    const v16, 0x7f0b01b4

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    invoke-direct/range {v12 .. v16}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;-><init>(JLjava/lang/String;Z)V

    invoke-virtual {v11, v12}, Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;->add(Ljava/lang/Object;)V

    .line 319
    new-instance v11, Landroid/widget/ListPopupWindow;

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/GroupMembershipView;->getContext()Landroid/content/Context;

    move-result-object v12

    const/4 v13, 0x0

    invoke-direct {v11, v12, v13}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/contacts/editor/GroupMembershipView;->mPopup:Landroid/widget/ListPopupWindow;

    .line 320
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/editor/GroupMembershipView;->mPopup:Landroid/widget/ListPopupWindow;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupList:Landroid/widget/TextView;

    invoke-virtual {v11, v12}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 321
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/editor/GroupMembershipView;->mPopup:Landroid/widget/ListPopupWindow;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/editor/GroupMembershipView;->mAdapter:Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;

    invoke-virtual {v11, v12}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 322
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/editor/GroupMembershipView;->mPopup:Landroid/widget/ListPopupWindow;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 323
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/editor/GroupMembershipView;->mPopup:Landroid/widget/ListPopupWindow;

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Landroid/widget/ListPopupWindow;->setInputMethodMode(I)V

    .line 324
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/editor/GroupMembershipView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v11}, Landroid/widget/ListPopupWindow;->show()V

    .line 326
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/editor/GroupMembershipView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v11}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v9

    .line 327
    .local v9, "listView":Landroid/widget/ListView;
    const/4 v11, 0x2

    invoke-virtual {v9, v11}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 328
    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Landroid/widget/ListView;->setOverScrollMode(I)V

    .line 329
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/editor/GroupMembershipView;->mAdapter:Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;

    invoke-virtual {v11}, Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;->getCount()I

    move-result v4

    .line 330
    .local v4, "count":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    if-ge v8, v4, :cond_4

    .line 331
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/editor/GroupMembershipView;->mAdapter:Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;

    invoke-virtual {v11, v8}, Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;

    invoke-virtual {v11}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->isChecked()Z

    move-result v11

    invoke-virtual {v9, v8, v11}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 330
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 334
    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto/16 :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 339
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 340
    iget-object v0, p0, Lcom/android/contacts/editor/GroupMembershipView;->mPopup:Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/android/contacts/editor/GroupMembershipView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 342
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/editor/GroupMembershipView;->mPopup:Landroid/widget/ListPopupWindow;

    .line 344
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 160
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 161
    iget-object v1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 162
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x7f07001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mPrimaryTextColor:I

    .line 163
    const v1, 0x7f07001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mSecondaryTextColor:I

    .line 164
    iget-object v1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mContext:Landroid/content/Context;

    const v2, 0x7f0b018b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mNoGroupString:Ljava/lang/String;

    .line 165
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 13
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 348
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    move-object v8, p1

    check-cast v8, Landroid/widget/ListView;

    .line 349
    .local v8, "list":Landroid/widget/ListView;
    iget-object v9, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAdapter:Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;

    invoke-virtual {v9}, Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;->getCount()I

    move-result v0

    .line 351
    .local v0, "count":I
    add-int/lit8 v9, v0, -0x1

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 352
    add-int/lit8 v9, v0, -0x1

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 353
    invoke-direct {p0}, Lcom/android/contacts/editor/GroupMembershipView;->createNewGroup()V

    .line 387
    :goto_0
    return-void

    .line 357
    :cond_0
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v0, :cond_1

    .line 358
    iget-object v9, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAdapter:Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;

    invoke-virtual {v9, v5}, Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;

    invoke-virtual {v8, v5}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->setChecked(Z)V

    .line 357
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 362
    :cond_1
    iget-object v9, p0, Lcom/android/contacts/editor/GroupMembershipView;->mState:Lcom/android/contacts/model/RawContactDelta;

    const-string v10, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v9, v10}, Lcom/android/contacts/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 363
    .local v1, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/RawContactDelta$ValuesDelta;>;"
    if-eqz v1, :cond_4

    .line 364
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    .line 365
    .local v2, "entry":Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    invoke-virtual {v2}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->isDelete()Z

    move-result v9

    if-nez v9, :cond_2

    .line 366
    invoke-virtual {v2}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->getGroupRowId()Ljava/lang/Long;

    move-result-object v3

    .line 367
    .local v3, "groupId":Ljava/lang/Long;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iget-wide v11, p0, Lcom/android/contacts/editor/GroupMembershipView;->mFavoritesGroupId:J

    cmp-long v9, v9, v11

    if-eqz v9, :cond_2

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iget-wide v11, p0, Lcom/android/contacts/editor/GroupMembershipView;->mDefaultGroupId:J

    cmp-long v9, v9, v11

    if-nez v9, :cond_3

    iget-boolean v9, p0, Lcom/android/contacts/editor/GroupMembershipView;->mDefaultGroupVisible:Z

    if-eqz v9, :cond_2

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-direct {p0, v9, v10}, Lcom/android/contacts/editor/GroupMembershipView;->isGroupChecked(J)Z

    move-result v9

    if-nez v9, :cond_2

    .line 370
    invoke-virtual {v2}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->markDeleted()V

    goto :goto_2

    .line 377
    .end local v2    # "entry":Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    .end local v3    # "groupId":Ljava/lang/Long;
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_4
    const/4 v5, 0x0

    :goto_3
    if-ge v5, v0, :cond_6

    .line 378
    iget-object v9, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAdapter:Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;

    invoke-virtual {v9, v5}, Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;

    .line 379
    .local v7, "item":Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;
    invoke-virtual {v7}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->getGroupId()J

    move-result-wide v3

    .line 380
    .local v3, "groupId":J
    invoke-virtual {v7}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-direct {p0, v3, v4}, Lcom/android/contacts/editor/GroupMembershipView;->hasMembership(J)Z

    move-result v9

    if-nez v9, :cond_5

    .line 381
    iget-object v9, p0, Lcom/android/contacts/editor/GroupMembershipView;->mState:Lcom/android/contacts/model/RawContactDelta;

    iget-object v10, p0, Lcom/android/contacts/editor/GroupMembershipView;->mKind:Lcom/android/contacts/model/dataitem/DataKind;

    invoke-static {v9, v10}, Lcom/android/contacts/model/RawContactModifier;->insertChild(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;)Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    move-result-object v2

    .line 382
    .restart local v2    # "entry":Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    invoke-virtual {v2, v3, v4}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->setGroupRowId(J)V

    .line 377
    .end local v2    # "entry":Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 386
    .end local v3    # "groupId":J
    .end local v7    # "item":Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;
    :cond_6
    invoke-direct {p0}, Lcom/android/contacts/editor/GroupMembershipView;->updateView()V

    goto/16 :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 169
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 170
    iget-object v0, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupList:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupList:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 173
    :cond_0
    return-void
.end method

.method public setGroupMetaData(Landroid/database/Cursor;)V
    .locals 6
    .param p1, "groupMetaData"    # Landroid/database/Cursor;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mGroupMetaData:Landroid/database/Cursor;

    .line 189
    invoke-direct {p0}, Lcom/android/contacts/editor/GroupMembershipView;->updateView()V

    .line 191
    iget-boolean v0, p0, Lcom/android/contacts/editor/GroupMembershipView;->mCreatedNewGroup:Z

    if-eqz v0, :cond_0

    .line 192
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/editor/GroupMembershipView;->mCreatedNewGroup:Z

    .line 193
    invoke-virtual {p0, p0}, Lcom/android/contacts/editor/GroupMembershipView;->onClick(Landroid/view/View;)V

    .line 194
    iget-object v0, p0, Lcom/android/contacts/editor/GroupMembershipView;->mPopup:Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAdapter:Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;->getCount()I

    move-result v0

    add-int/lit8 v3, v0, -0x2

    .line 197
    .local v3, "position":I
    iget-object v0, p0, Lcom/android/contacts/editor/GroupMembershipView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 198
    .local v1, "listView":Landroid/widget/ListView;
    invoke-virtual {v1, v3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    const/4 v0, 0x1

    invoke-virtual {v1, v3, v0}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 201
    const/4 v2, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/editor/GroupMembershipView;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 205
    .end local v1    # "listView":Landroid/widget/ListView;
    .end local v3    # "position":I
    :cond_0
    return-void
.end method

.method public setKind(Lcom/android/contacts/model/dataitem/DataKind;)V
    .locals 3
    .param p1, "kind"    # Lcom/android/contacts/model/dataitem/DataKind;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mKind:Lcom/android/contacts/model/dataitem/DataKind;

    .line 177
    const v1, 0x7f0600d4

    invoke-virtual {p0, v1}, Lcom/android/contacts/editor/GroupMembershipView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 179
    .local v0, "kindTitle":Landroid/widget/TextView;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "el"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 180
    invoke-virtual {p0}, Lcom/android/contacts/editor/GroupMembershipView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p1, Lcom/android/contacts/model/dataitem/DataKind;->titleRes:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    :goto_0
    return-void

    .line 182
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/editor/GroupMembershipView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p1, Lcom/android/contacts/model/dataitem/DataKind;->titleRes:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setState(Lcom/android/contacts/model/RawContactDelta;)V
    .locals 2
    .param p1, "state"    # Lcom/android/contacts/model/RawContactDelta;

    .prologue
    const/4 v1, 0x0

    .line 208
    iput-object p1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mState:Lcom/android/contacts/model/RawContactDelta;

    .line 209
    iget-object v0, p0, Lcom/android/contacts/editor/GroupMembershipView;->mState:Lcom/android/contacts/model/RawContactDelta;

    invoke-virtual {v0}, Lcom/android/contacts/model/RawContactDelta;->getAccountType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAccountType:Ljava/lang/String;

    .line 210
    iget-object v0, p0, Lcom/android/contacts/editor/GroupMembershipView;->mState:Lcom/android/contacts/model/RawContactDelta;

    invoke-virtual {v0}, Lcom/android/contacts/model/RawContactDelta;->getAccountName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/GroupMembershipView;->mAccountName:Ljava/lang/String;

    .line 211
    iget-object v0, p0, Lcom/android/contacts/editor/GroupMembershipView;->mState:Lcom/android/contacts/model/RawContactDelta;

    invoke-virtual {v0}, Lcom/android/contacts/model/RawContactDelta;->getDataSet()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/GroupMembershipView;->mDataSet:Ljava/lang/String;

    .line 212
    iput-boolean v1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mDefaultGroupVisibilityKnown:Z

    .line 213
    iput-boolean v1, p0, Lcom/android/contacts/editor/GroupMembershipView;->mCreatedNewGroup:Z

    .line 214
    invoke-direct {p0}, Lcom/android/contacts/editor/GroupMembershipView;->updateView()V

    .line 215
    return-void
.end method
