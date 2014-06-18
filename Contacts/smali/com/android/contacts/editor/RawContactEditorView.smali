.class public Lcom/android/contacts/editor/RawContactEditorView;
.super Lcom/android/contacts/editor/BaseRawContactEditorView;
.source "RawContactEditorView.java"


# instance fields
.field private mAccountIcon:Landroid/widget/ImageView;

.field private mAccountNameTextView:Landroid/widget/TextView;

.field private mAccountTypeTextView:Landroid/widget/TextView;

.field private mAddFieldButton:Landroid/widget/Button;

.field private mAddFieldPopupMenu:Landroid/widget/PopupMenu;

.field private mAutoAddToDefaultGroup:Z

.field private mFields:Landroid/view/ViewGroup;

.field private mGroupMembershipKind:Lcom/android/contacts/model/dataitem/DataKind;

.field private mGroupMembershipView:Lcom/android/contacts/editor/GroupMembershipView;

.field private mGroupMetaData:Landroid/database/Cursor;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mName:Lcom/android/contacts/editor/StructuredNameEditorView;

.field private mPhoneticName:Lcom/android/contacts/editor/PhoneticNameEditorView;

.field private mPhoneticNameAdded:Z

.field private mRawContactId:J

.field private mState:Lcom/android/contacts/model/RawContactDelta;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/BaseRawContactEditorView;-><init>(Landroid/content/Context;)V

    .line 91
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mRawContactId:J

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAutoAddToDefaultGroup:Z

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 104
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/editor/BaseRawContactEditorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 91
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mRawContactId:J

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAutoAddToDefaultGroup:Z

    .line 105
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/editor/RawContactEditorView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/editor/RawContactEditorView;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/contacts/editor/RawContactEditorView;->showAddInformationPopupWindow()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/contacts/editor/RawContactEditorView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/editor/RawContactEditorView;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticNameAdded:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/contacts/editor/RawContactEditorView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/editor/RawContactEditorView;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/contacts/editor/RawContactEditorView;->updatePhoneticNameVisibility()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/contacts/editor/RawContactEditorView;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/editor/RawContactEditorView;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAddFieldButton:Landroid/widget/Button;

    return-object v0
.end method

.method private addToDefaultGroupIfNeeded()V
    .locals 12

    .prologue
    .line 375
    iget-boolean v8, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAutoAddToDefaultGroup:Z

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMetaData:Landroid/database/Cursor;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMetaData:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/android/contacts/editor/RawContactEditorView;->mState:Lcom/android/contacts/model/RawContactDelta;

    if-nez v8, :cond_1

    .line 399
    :cond_0
    :goto_0
    return-void

    .line 380
    :cond_1
    const/4 v4, 0x0

    .line 381
    .local v4, "hasGroupMembership":Z
    iget-object v8, p0, Lcom/android/contacts/editor/RawContactEditorView;->mState:Lcom/android/contacts/model/RawContactDelta;

    const-string v9, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v8, v9}, Lcom/android/contacts/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 382
    .local v2, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/RawContactDelta$ValuesDelta;>;"
    if-eqz v2, :cond_3

    .line 383
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    .line 384
    .local v7, "values":Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    invoke-virtual {v7}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->getGroupRowId()Ljava/lang/Long;

    move-result-object v6

    .line 385
    .local v6, "id":Ljava/lang/Long;
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_2

    .line 386
    const/4 v4, 0x1

    .line 392
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "id":Ljava/lang/Long;
    .end local v7    # "values":Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    :cond_3
    if-nez v4, :cond_0

    .line 393
    invoke-direct {p0}, Lcom/android/contacts/editor/RawContactEditorView;->getDefaultGroupId()J

    move-result-wide v0

    .line 394
    .local v0, "defaultGroupId":J
    const-wide/16 v8, -0x1

    cmp-long v8, v0, v8

    if-eqz v8, :cond_0

    .line 395
    iget-object v8, p0, Lcom/android/contacts/editor/RawContactEditorView;->mState:Lcom/android/contacts/model/RawContactDelta;

    iget-object v9, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipKind:Lcom/android/contacts/model/dataitem/DataKind;

    invoke-static {v8, v9}, Lcom/android/contacts/model/RawContactModifier;->insertChild(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;)Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    move-result-object v3

    .line 396
    .local v3, "entry":Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    invoke-virtual {v3, v0, v1}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->setGroupRowId(J)V

    goto :goto_0
.end method

.method private getDefaultGroupId()J
    .locals 11

    .prologue
    const/4 v10, 0x5

    .line 406
    iget-object v8, p0, Lcom/android/contacts/editor/RawContactEditorView;->mState:Lcom/android/contacts/model/RawContactDelta;

    invoke-virtual {v8}, Lcom/android/contacts/model/RawContactDelta;->getAccountType()Ljava/lang/String;

    move-result-object v2

    .line 407
    .local v2, "accountType":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/contacts/editor/RawContactEditorView;->mState:Lcom/android/contacts/model/RawContactDelta;

    invoke-virtual {v8}, Lcom/android/contacts/model/RawContactDelta;->getAccountName()Ljava/lang/String;

    move-result-object v1

    .line 408
    .local v1, "accountName":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/contacts/editor/RawContactEditorView;->mState:Lcom/android/contacts/model/RawContactDelta;

    invoke-virtual {v8}, Lcom/android/contacts/model/RawContactDelta;->getDataSet()Ljava/lang/String;

    move-result-object v0

    .line 409
    .local v0, "accountDataSet":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v9, -0x1

    invoke-interface {v8, v9}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 410
    :cond_0
    iget-object v8, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMetaData:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 411
    iget-object v8, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 412
    .local v6, "name":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 413
    .local v7, "type":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v9, 0x2

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 414
    .local v3, "dataSet":Ljava/lang/String;
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-static {v3, v0}, Lcom/android/internal/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 416
    iget-object v8, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMetaData:Landroid/database/Cursor;

    const/4 v9, 0x3

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 417
    .local v4, "groupId":J
    iget-object v8, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMetaData:Landroid/database/Cursor;

    invoke-interface {v8, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMetaData:Landroid/database/Cursor;

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-eqz v8, :cond_0

    .line 423
    .end local v3    # "dataSet":Ljava/lang/String;
    .end local v4    # "groupId":J
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "type":Ljava/lang/String;
    :goto_0
    return-wide v4

    :cond_1
    const-wide/16 v4, -0x1

    goto :goto_0
.end method

.method private getSectionViewsWithoutFields()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/editor/KindSectionView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 456
    new-instance v1, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 458
    .local v1, "fields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/editor/KindSectionView;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 459
    iget-object v5, p0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 460
    .local v0, "child":Landroid/view/View;
    instance-of v5, v0, Lcom/android/contacts/editor/KindSectionView;

    if-eqz v5, :cond_0

    move-object v4, v0

    .line 461
    check-cast v4, Lcom/android/contacts/editor/KindSectionView;

    .line 464
    .local v4, "sectionView":Lcom/android/contacts/editor/KindSectionView;
    invoke-virtual {v4}, Lcom/android/contacts/editor/KindSectionView;->getEditorCount()I

    move-result v5

    if-lez v5, :cond_1

    .line 458
    .end local v4    # "sectionView":Lcom/android/contacts/editor/KindSectionView;
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 467
    .restart local v4    # "sectionView":Lcom/android/contacts/editor/KindSectionView;
    :cond_1
    invoke-virtual {v4}, Lcom/android/contacts/editor/KindSectionView;->getKind()Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v3

    .line 469
    .local v3, "kind":Lcom/android/contacts/model/dataitem/DataKind;
    iget v5, v3, Lcom/android/contacts/model/dataitem/DataKind;->typeOverallMax:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    invoke-virtual {v4}, Lcom/android/contacts/editor/KindSectionView;->getEditorCount()I

    move-result v5

    if-nez v5, :cond_0

    .line 472
    :cond_2
    const-string v5, "#displayName"

    iget-object v6, v3, Lcom/android/contacts/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 476
    const-string v5, "#phoneticName"

    iget-object v6, v3, Lcom/android/contacts/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticName:Lcom/android/contacts/editor/PhoneticNameEditorView;

    invoke-virtual {v5}, Lcom/android/contacts/editor/PhoneticNameEditorView;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_0

    .line 481
    :cond_3
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 484
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "kind":Lcom/android/contacts/model/dataitem/DataKind;
    .end local v4    # "sectionView":Lcom/android/contacts/editor/KindSectionView;
    :cond_4
    return-object v1
.end method

.method private showAddInformationPopupWindow()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 488
    invoke-direct {p0}, Lcom/android/contacts/editor/RawContactEditorView;->getSectionViewsWithoutFields()Ljava/util/ArrayList;

    move-result-object v0

    .line 490
    .local v0, "fields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/editor/KindSectionView;>;"
    new-instance v4, Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Lcom/android/contacts/editor/RawContactEditorView;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAddFieldButton:Landroid/widget/Button;

    invoke-direct {v4, v5, v6}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v4, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAddFieldPopupMenu:Landroid/widget/PopupMenu;

    .line 491
    iget-object v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAddFieldPopupMenu:Landroid/widget/PopupMenu;

    .line 493
    .local v3, "popupMenu":Landroid/widget/PopupMenu;
    invoke-virtual {v3}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    .line 494
    .local v2, "menu":Landroid/view/Menu;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 495
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/editor/KindSectionView;

    invoke-virtual {v4}, Lcom/android/contacts/editor/KindSectionView;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v7, v1, v7, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 494
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 498
    :cond_0
    new-instance v4, Lcom/android/contacts/editor/RawContactEditorView$3;

    invoke-direct {v4, p0, v0}, Lcom/android/contacts/editor/RawContactEditorView$3;-><init>(Lcom/android/contacts/editor/RawContactEditorView;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 519
    invoke-virtual {v3}, Landroid/widget/PopupMenu;->show()V

    .line 520
    return-void
.end method

.method private updatePhoneticNameVisibility()V
    .locals 3

    .prologue
    .line 435
    invoke-virtual {p0}, Lcom/android/contacts/editor/RawContactEditorView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 438
    .local v0, "showByDefault":Z
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticName:Lcom/android/contacts/editor/PhoneticNameEditorView;

    invoke-virtual {v1}, Lcom/android/contacts/editor/PhoneticNameEditorView;->hasData()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticNameAdded:Z

    if-eqz v1, :cond_1

    .line 439
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticName:Lcom/android/contacts/editor/PhoneticNameEditorView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/contacts/editor/PhoneticNameEditorView;->setVisibility(I)V

    .line 443
    :goto_0
    return-void

    .line 441
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticName:Lcom/android/contacts/editor/PhoneticNameEditorView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/contacts/editor/PhoneticNameEditorView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public dismissAddInformationPopupWindow()V
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAddFieldPopupMenu:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAddFieldPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 526
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAddFieldPopupMenu:Landroid/widget/PopupMenu;

    .line 528
    :cond_0
    return-void
.end method

.method public getNameEditor()Lcom/android/contacts/editor/TextFieldsEditorView;
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mName:Lcom/android/contacts/editor/StructuredNameEditorView;

    return-object v0
.end method

.method public getPhoneticNameEditor()Lcom/android/contacts/editor/TextFieldsEditorView;
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticName:Lcom/android/contacts/editor/PhoneticNameEditorView;

    return-object v0
.end method

.method public getRawContactId()J
    .locals 2

    .prologue
    .line 447
    iget-wide v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mRawContactId:J

    return-wide v0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 140
    invoke-super {p0}, Lcom/android/contacts/editor/BaseRawContactEditorView;->onFinishInflate()V

    .line 142
    invoke-virtual {p0}, Lcom/android/contacts/editor/RawContactEditorView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mInflater:Landroid/view/LayoutInflater;

    .line 144
    const v0, 0x7f060127

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/RawContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/editor/StructuredNameEditorView;

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mName:Lcom/android/contacts/editor/StructuredNameEditorView;

    .line 145
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mName:Lcom/android/contacts/editor/StructuredNameEditorView;

    invoke-virtual {v0, v2}, Lcom/android/contacts/editor/StructuredNameEditorView;->setDeletable(Z)V

    .line 147
    const v0, 0x7f060128

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/RawContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/editor/PhoneticNameEditorView;

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticName:Lcom/android/contacts/editor/PhoneticNameEditorView;

    .line 148
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticName:Lcom/android/contacts/editor/PhoneticNameEditorView;

    invoke-virtual {v0, v2}, Lcom/android/contacts/editor/PhoneticNameEditorView;->setDeletable(Z)V

    .line 150
    const v0, 0x7f06012a

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/RawContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    .line 152
    const v0, 0x7f0600da

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/RawContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountIcon:Landroid/widget/ImageView;

    .line 153
    const v0, 0x7f0600d8

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/RawContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountTypeTextView:Landroid/widget/TextView;

    .line 154
    const v0, 0x7f0600d9

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/RawContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    .line 156
    const v0, 0x7f06012b

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/RawContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAddFieldButton:Landroid/widget/Button;

    .line 157
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAddFieldButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/contacts/editor/RawContactEditorView$1;

    invoke-direct {v1, p0}, Lcom/android/contacts/editor/RawContactEditorView$1;-><init>(Lcom/android/contacts/editor/RawContactEditorView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    return-void
.end method

.method public setAutoAddToDefaultGroup(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 365
    iput-boolean p1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAutoAddToDefaultGroup:Z

    .line 366
    return-void
.end method

.method public setEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 109
    invoke-super {p0, p1}, Lcom/android/contacts/editor/BaseRawContactEditorView;->setEnabled(Z)V

    .line 111
    invoke-virtual {p0}, Lcom/android/contacts/editor/RawContactEditorView;->getPhotoEditor()Lcom/android/contacts/editor/PhotoEditorView;

    move-result-object v2

    .line 112
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 113
    invoke-virtual {v2, p1}, Lcom/android/contacts/editor/PhotoEditorView;->setEnabled(Z)V

    .line 116
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mName:Lcom/android/contacts/editor/StructuredNameEditorView;

    if-eqz v3, :cond_1

    .line 117
    iget-object v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mName:Lcom/android/contacts/editor/StructuredNameEditorView;

    invoke-virtual {v3, p1}, Lcom/android/contacts/editor/StructuredNameEditorView;->setEnabled(Z)V

    .line 120
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticName:Lcom/android/contacts/editor/PhoneticNameEditorView;

    if-eqz v3, :cond_2

    .line 121
    iget-object v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticName:Lcom/android/contacts/editor/PhoneticNameEditorView;

    invoke-virtual {v3, p1}, Lcom/android/contacts/editor/PhoneticNameEditorView;->setEnabled(Z)V

    .line 124
    :cond_2
    iget-object v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    if-eqz v3, :cond_3

    .line 125
    iget-object v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 126
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 127
    iget-object v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 126
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 131
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_3
    iget-object v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipView:Lcom/android/contacts/editor/GroupMembershipView;

    if-eqz v3, :cond_4

    .line 132
    iget-object v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipView:Lcom/android/contacts/editor/GroupMembershipView;

    invoke-virtual {v3, p1}, Lcom/android/contacts/editor/GroupMembershipView;->setEnabled(Z)V

    .line 135
    :cond_4
    iget-object v3, p0, Lcom/android/contacts/editor/RawContactEditorView;->mAddFieldButton:Landroid/widget/Button;

    invoke-virtual {v3, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 136
    return-void
.end method

.method public setGroupMetaData(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "groupMetaData"    # Landroid/database/Cursor;

    .prologue
    .line 357
    iput-object p1, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMetaData:Landroid/database/Cursor;

    .line 358
    invoke-direct {p0}, Lcom/android/contacts/editor/RawContactEditorView;->addToDefaultGroupIfNeeded()V

    .line 359
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipView:Lcom/android/contacts/editor/GroupMembershipView;

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipView:Lcom/android/contacts/editor/GroupMembershipView;

    invoke-virtual {v0, p1}, Lcom/android/contacts/editor/GroupMembershipView;->setGroupMetaData(Landroid/database/Cursor;)V

    .line 362
    :cond_0
    return-void
.end method

.method public setState(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/account/AccountType;Lcom/android/contacts/editor/ViewIdGenerator;Z)V
    .locals 24
    .param p1, "state"    # Lcom/android/contacts/model/RawContactDelta;
    .param p2, "type"    # Lcom/android/contacts/model/account/AccountType;
    .param p3, "vig"    # Lcom/android/contacts/editor/ViewIdGenerator;
    .param p4, "isProfile"    # Z

    .prologue
    .line 174
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/editor/RawContactEditorView;->mState:Lcom/android/contacts/model/RawContactDelta;

    .line 177
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 180
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 353
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3, v6, v7}, Lcom/android/contacts/editor/ViewIdGenerator;->getId(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;Lcom/android/contacts/model/RawContactDelta$ValuesDelta;I)I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/contacts/editor/RawContactEditorView;->setId(I)V

    .line 185
    const-string v3, "vnd.android.cursor.item/name"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v3}, Lcom/android/contacts/model/RawContactModifier;->ensureKindExists(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/account/AccountType;Ljava/lang/String;)Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    .line 186
    const-string v3, "vnd.android.cursor.item/organization"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v3}, Lcom/android/contacts/model/RawContactModifier;->ensureKindExists(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/account/AccountType;Ljava/lang/String;)Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    .line 188
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/model/RawContactDelta;->getRawContactId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/contacts/editor/RawContactEditorView;->mRawContactId:J

    .line 191
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/model/RawContactDelta;->getAccountType()Ljava/lang/String;

    move-result-object v11

    .line 195
    .local v11, "accountTypeAsc":Ljava/lang/String;
    if-eqz p4, :cond_5

    .line 196
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/model/RawContactDelta;->getAccountName()Ljava/lang/String;

    move-result-object v9

    .line 197
    .local v9, "accountName":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 198
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 199
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountTypeTextView:Landroid/widget/TextView;

    const v6, 0x7f0b01f2

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    .line 237
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountIcon:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/editor/RawContactEditorView;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lcom/android/contacts/model/account/AccountType;->getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 240
    const-string v3, "vnd.android.cursor.item/photo"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v3}, Lcom/android/contacts/model/RawContactModifier;->ensureKindExists(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/account/AccountType;Ljava/lang/String;)Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    .line 241
    const-string v3, "vnd.android.cursor.item/photo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/account/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v3

    if-eqz v3, :cond_b

    const/4 v3, 0x1

    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/contacts/editor/RawContactEditorView;->setHasPhotoEditor(Z)V

    .line 242
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/RawContactEditorView;->getPhotoEditor()Lcom/android/contacts/editor/PhotoEditorView;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/RawContactEditorView;->isEnabled()Z

    move-result v6

    invoke-virtual {v3, v6}, Lcom/android/contacts/editor/PhotoEditorView;->setEnabled(Z)V

    .line 243
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mName:Lcom/android/contacts/editor/StructuredNameEditorView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/RawContactEditorView;->isEnabled()Z

    move-result v6

    invoke-virtual {v3, v6}, Lcom/android/contacts/editor/StructuredNameEditorView;->setEnabled(Z)V

    .line 245
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticName:Lcom/android/contacts/editor/PhoneticNameEditorView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/RawContactEditorView;->isEnabled()Z

    move-result v6

    invoke-virtual {v3, v6}, Lcom/android/contacts/editor/PhoneticNameEditorView;->setEnabled(Z)V

    .line 248
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 249
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mName:Lcom/android/contacts/editor/StructuredNameEditorView;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/android/contacts/editor/StructuredNameEditorView;->setVisibility(I)V

    .line 250
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticName:Lcom/android/contacts/editor/PhoneticNameEditorView;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/android/contacts/editor/PhoneticNameEditorView;->setVisibility(I)V

    .line 252
    const-string v3, "vnd.android.cursor.item/group_membership"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/account/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipKind:Lcom/android/contacts/model/dataitem/DataKind;

    .line 253
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipKind:Lcom/android/contacts/model/dataitem/DataKind;

    if-eqz v3, :cond_2

    .line 254
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f040066

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v3, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/editor/GroupMembershipView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipView:Lcom/android/contacts/editor/GroupMembershipView;

    .line 256
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipView:Lcom/android/contacts/editor/GroupMembershipView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipKind:Lcom/android/contacts/model/dataitem/DataKind;

    invoke-virtual {v3, v6}, Lcom/android/contacts/editor/GroupMembershipView;->setKind(Lcom/android/contacts/model/dataitem/DataKind;)V

    .line 257
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipView:Lcom/android/contacts/editor/GroupMembershipView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/RawContactEditorView;->isEnabled()Z

    move-result v6

    invoke-virtual {v3, v6}, Lcom/android/contacts/editor/GroupMembershipView;->setEnabled(Z)V

    .line 261
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/model/account/AccountType;->getSortedDataKinds()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/model/dataitem/DataKind;

    .line 263
    .local v4, "kind":Lcom/android/contacts/model/dataitem/DataKind;
    iget-boolean v3, v4, Lcom/android/contacts/model/dataitem/DataKind;->editable:Z

    if-eqz v3, :cond_3

    .line 265
    iget-object v0, v4, Lcom/android/contacts/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 266
    .local v16, "mimeType":Ljava/lang/String;
    const-string v3, "vnd.android.cursor.item/name"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 268
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/RawContactDelta;->getPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    move-result-object v5

    .line 269
    .local v5, "primary":Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mName:Lcom/android/contacts/editor/StructuredNameEditorView;

    const-string v6, "#displayName"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lcom/android/contacts/model/account/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v4

    .end local v4    # "kind":Lcom/android/contacts/model/dataitem/DataKind;
    const/4 v7, 0x0

    move-object/from16 v6, p1

    move-object/from16 v8, p3

    invoke-virtual/range {v3 .. v8}, Lcom/android/contacts/editor/StructuredNameEditorView;->setValues(Lcom/android/contacts/model/dataitem/DataKind;Lcom/android/contacts/model/RawContactDelta$ValuesDelta;Lcom/android/contacts/model/RawContactDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    .line 272
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mPhoneticName:Lcom/android/contacts/editor/PhoneticNameEditorView;

    const-string v6, "#phoneticName"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lcom/android/contacts/model/account/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v4

    const/4 v7, 0x0

    move-object/from16 v6, p1

    move-object/from16 v8, p3

    invoke-virtual/range {v3 .. v8}, Lcom/android/contacts/editor/PhoneticNameEditorView;->setValues(Lcom/android/contacts/model/dataitem/DataKind;Lcom/android/contacts/model/RawContactDelta$ValuesDelta;Lcom/android/contacts/model/RawContactDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    goto :goto_3

    .line 201
    .end local v5    # "primary":Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v16    # "mimeType":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/account/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v10

    .line 202
    .local v10, "accountType":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountTypeTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/editor/RawContactEditorView;->mContext:Landroid/content/Context;

    const v7, 0x7f0b01f3

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/16 v22, 0x0

    aput-object v10, v8, v22

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 207
    .end local v9    # "accountName":Ljava/lang/String;
    .end local v10    # "accountType":Ljava/lang/CharSequence;
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/model/RawContactDelta;->getAccountName()Ljava/lang/String;

    move-result-object v9

    .line 208
    .restart local v9    # "accountName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/account/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v10

    .line 209
    .restart local v10    # "accountType":Ljava/lang/CharSequence;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 210
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mContext:Landroid/content/Context;

    const v6, 0x7f0b0115

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 213
    :cond_6
    const-string v3, "com.card.contacts"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 214
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 215
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->getFreeSpace(Landroid/content/ContentResolver;)I

    move-result v14

    .line 216
    .local v14, "free":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->getCapacity(Landroid/content/ContentResolver;)I

    move-result v13

    .line 217
    .local v13, "capacity":I
    sub-int v21, v13, v14

    .line 218
    .local v21, "used":I
    if-lez v13, :cond_7

    if-gez v21, :cond_8

    .line 219
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/editor/RawContactEditorView;->mContext:Landroid/content/Context;

    const v7, 0x7f0b0226

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountTypeTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 221
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/editor/RawContactEditorView;->mContext:Landroid/content/Context;

    const v7, 0x7f0b0227

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/16 v22, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v8, v22

    const/16 v22, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v8, v22

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 225
    .end local v13    # "capacity":I
    .end local v14    # "free":I
    .end local v21    # "used":I
    :cond_9
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 226
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 227
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/editor/RawContactEditorView;->mContext:Landroid/content/Context;

    const v7, 0x7f0b016d

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/16 v22, 0x0

    aput-object v9, v8, v22

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountTypeTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/editor/RawContactEditorView;->mContext:Landroid/content/Context;

    const v7, 0x7f0b016c

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/16 v22, 0x0

    aput-object v10, v8, v22

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 230
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    .line 241
    .end local v10    # "accountType":Ljava/lang/CharSequence;
    :cond_b
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 275
    .restart local v4    # "kind":Lcom/android/contacts/model/dataitem/DataKind;
    .restart local v15    # "i$":Ljava/util/Iterator;
    .restart local v16    # "mimeType":Ljava/lang/String;
    :cond_c
    const-string v3, "vnd.android.cursor.item/photo"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 277
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/RawContactDelta;->getPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    move-result-object v5

    .line 278
    .restart local v5    # "primary":Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/RawContactEditorView;->getPhotoEditor()Lcom/android/contacts/editor/PhotoEditorView;

    move-result-object v3

    const/4 v7, 0x0

    move-object/from16 v6, p1

    move-object/from16 v8, p3

    invoke-virtual/range {v3 .. v8}, Lcom/android/contacts/editor/PhotoEditorView;->setValues(Lcom/android/contacts/model/dataitem/DataKind;Lcom/android/contacts/model/RawContactDelta$ValuesDelta;Lcom/android/contacts/model/RawContactDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    goto/16 :goto_3

    .line 279
    .end local v5    # "primary":Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    :cond_d
    const-string v3, "vnd.android.cursor.item/group_membership"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 280
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipView:Lcom/android/contacts/editor/GroupMembershipView;

    if-eqz v3, :cond_3

    .line 281
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipView:Lcom/android/contacts/editor/GroupMembershipView;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/android/contacts/editor/GroupMembershipView;->setState(Lcom/android/contacts/model/RawContactDelta;)V

    goto/16 :goto_3

    .line 283
    :cond_e
    const-string v3, "vnd.android.cursor.item/organization"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 285
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f040067

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v3, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v19

    check-cast v19, Lcom/android/contacts/editor/KindSectionView;

    .line 287
    .local v19, "section":Lcom/android/contacts/editor/KindSectionView;
    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/android/contacts/editor/KindSectionView;->setTitleVisible(Z)V

    .line 288
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/RawContactEditorView;->isEnabled()Z

    move-result v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/android/contacts/editor/KindSectionView;->setEnabled(Z)V

    .line 289
    const/4 v3, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v4, v1, v3, v2}, Lcom/android/contacts/editor/KindSectionView;->setState(Lcom/android/contacts/model/dataitem/DataKind;Lcom/android/contacts/model/RawContactDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    .line 292
    invoke-virtual/range {v19 .. v19}, Lcom/android/contacts/editor/KindSectionView;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_f

    .line 293
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_3

    .line 297
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f040071

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v3, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v18

    .line 299
    .local v18, "organizationView":Landroid/view/View;
    const v3, 0x7f060102

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 301
    .local v12, "addOrganizationButton":Landroid/view/View;
    const v3, 0x7f060103

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/view/ViewGroup;

    .line 304
    .local v17, "organizationSectionViewContainer":Landroid/view/ViewGroup;
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 307
    new-instance v3, Lcom/android/contacts/editor/RawContactEditorView$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v3, v0, v12, v1}, Lcom/android/contacts/editor/RawContactEditorView$2;-><init>(Lcom/android/contacts/editor/RawContactEditorView;Landroid/view/View;Landroid/view/ViewGroup;)V

    invoke-virtual {v12, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 316
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_3

    .line 320
    .end local v12    # "addOrganizationButton":Landroid/view/View;
    .end local v17    # "organizationSectionViewContainer":Landroid/view/ViewGroup;
    .end local v18    # "organizationView":Landroid/view/View;
    .end local v19    # "section":Lcom/android/contacts/editor/KindSectionView;
    :cond_10
    const-string v3, "com.card.contacts"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 321
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v3

    invoke-static {v3}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->isUSIMType(I)Z

    move-result v3

    if-nez v3, :cond_11

    .line 322
    const-string v3, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 323
    const/4 v3, 0x1

    iput v3, v4, Lcom/android/contacts/model/dataitem/DataKind;->typeOverallMax:I

    .line 332
    :cond_11
    iget-object v3, v4, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    if-eqz v3, :cond_3

    .line 333
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f040067

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v3, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v19

    check-cast v19, Lcom/android/contacts/editor/KindSectionView;

    .line 335
    .restart local v19    # "section":Lcom/android/contacts/editor/KindSectionView;
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/RawContactEditorView;->isEnabled()Z

    move-result v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/android/contacts/editor/KindSectionView;->setEnabled(Z)V

    .line 336
    const/4 v3, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v4, v1, v3, v2}, Lcom/android/contacts/editor/KindSectionView;->setState(Lcom/android/contacts/model/dataitem/DataKind;Lcom/android/contacts/model/RawContactDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    .line 337
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_3

    .line 324
    .end local v19    # "section":Lcom/android/contacts/editor/KindSectionView;
    :cond_12
    const-string v3, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    goto/16 :goto_3

    .line 341
    .end local v4    # "kind":Lcom/android/contacts/model/dataitem/DataKind;
    .end local v16    # "mimeType":Ljava/lang/String;
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipView:Lcom/android/contacts/editor/GroupMembershipView;

    if-eqz v3, :cond_14

    .line 342
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mFields:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/editor/RawContactEditorView;->mGroupMembershipView:Lcom/android/contacts/editor/GroupMembershipView;

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 345
    :cond_14
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/editor/RawContactEditorView;->updatePhoneticNameVisibility()V

    .line 347
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/editor/RawContactEditorView;->addToDefaultGroupIfNeeded()V

    .line 350
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/editor/RawContactEditorView;->getSectionViewsWithoutFields()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v20

    .line 351
    .local v20, "sectionCount":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAddFieldButton:Landroid/widget/Button;

    if-lez v20, :cond_15

    const/4 v3, 0x0

    :goto_6
    invoke-virtual {v6, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 352
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactEditorView;->mAddFieldButton:Landroid/widget/Button;

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/RawContactEditorView;->isEnabled()Z

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 351
    :cond_15
    const/16 v3, 0x8

    goto :goto_6
.end method
