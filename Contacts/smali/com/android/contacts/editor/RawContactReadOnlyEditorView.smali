.class public Lcom/android/contacts/editor/RawContactReadOnlyEditorView;
.super Lcom/android/contacts/editor/BaseRawContactEditorView;
.source "RawContactReadOnlyEditorView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/editor/RawContactReadOnlyEditorView$Listener;
    }
.end annotation


# instance fields
.field private mAccountContainer:Landroid/view/View;

.field private mAccountIcon:Landroid/widget/ImageView;

.field private mAccountName:Ljava/lang/String;

.field private mAccountNameTextView:Landroid/widget/TextView;

.field private mAccountType:Ljava/lang/String;

.field private mAccountTypeTextView:Landroid/widget/TextView;

.field private mDataSet:Ljava/lang/String;

.field private mEditExternallyButton:Landroid/widget/Button;

.field private mGeneral:Landroid/view/ViewGroup;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListener:Lcom/android/contacts/editor/RawContactReadOnlyEditorView$Listener;

.field private mName:Landroid/widget/TextView;

.field private mRawContactId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/BaseRawContactEditorView;-><init>(Landroid/content/Context;)V

    .line 71
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mRawContactId:J

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/editor/BaseRawContactEditorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mRawContactId:J

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/editor/RawContactReadOnlyEditorView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/editor/RawContactReadOnlyEditorView;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/editor/RawContactReadOnlyEditorView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/editor/RawContactReadOnlyEditorView;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private bindData(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V
    .locals 11
    .param p1, "titleText"    # Ljava/lang/CharSequence;
    .param p2, "data"    # Ljava/lang/CharSequence;
    .param p3, "type"    # Ljava/lang/CharSequence;
    .param p4, "isFirstEntry"    # Z

    .prologue
    const/4 v10, 0x0

    const/16 v9, 0x8

    .line 252
    iget-object v6, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f040069

    iget-object v8, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mGeneral:Landroid/view/ViewGroup;

    invoke-virtual {v6, v7, v8, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 253
    .local v2, "field":Landroid/view/View;
    const v6, 0x7f060048

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 254
    .local v1, "divider":Landroid/view/View;
    if-eqz p4, :cond_0

    .line 255
    const v6, 0x7f0600d4

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 256
    .local v4, "titleView":Landroid/widget/TextView;
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 263
    .end local v4    # "titleView":Landroid/widget/TextView;
    :goto_0
    const v6, 0x7f060002

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 264
    .local v0, "dataView":Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    const v6, 0x7f06006c

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 266
    .local v5, "typeView":Landroid/widget/TextView;
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 267
    invoke-virtual {v5, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    :goto_1
    iget-object v6, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mGeneral:Landroid/view/ViewGroup;

    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 273
    return-void

    .line 259
    .end local v0    # "dataView":Landroid/widget/TextView;
    .end local v5    # "typeView":Landroid/widget/TextView;
    :cond_0
    const v6, 0x7f0600f9

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 260
    .local v3, "titleContainer":Landroid/view/View;
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 261
    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 269
    .end local v3    # "titleContainer":Landroid/view/View;
    .restart local v0    # "dataView":Landroid/widget/TextView;
    .restart local v5    # "typeView":Landroid/widget/TextView;
    :cond_1
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public getRawContactId()J
    .locals 2

    .prologue
    .line 277
    iget-wide v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mRawContactId:J

    return-wide v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 282
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f06012d

    if-ne v0, v1, :cond_0

    .line 283
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mListener:Lcom/android/contacts/editor/RawContactReadOnlyEditorView$Listener;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mListener:Lcom/android/contacts/editor/RawContactReadOnlyEditorView$Listener;

    new-instance v1, Lcom/android/contacts/model/account/AccountWithDataSet;

    iget-object v2, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountType:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mDataSet:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/contacts/model/account/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mRawContactId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/contacts/editor/RawContactReadOnlyEditorView$Listener;->onExternalEditorRequest(Lcom/android/contacts/model/account/AccountWithDataSet;Landroid/net/Uri;)V

    .line 289
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 94
    invoke-super {p0}, Lcom/android/contacts/editor/BaseRawContactEditorView;->onFinishInflate()V

    .line 96
    invoke-virtual {p0}, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mInflater:Landroid/view/LayoutInflater;

    .line 99
    const v0, 0x7f06012c

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mName:Landroid/widget/TextView;

    .line 100
    const v0, 0x7f06012d

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mEditExternallyButton:Landroid/widget/Button;

    .line 101
    iget-object v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mEditExternallyButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    const v0, 0x7f06012e

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mGeneral:Landroid/view/ViewGroup;

    .line 104
    const v0, 0x7f0600d6

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountContainer:Landroid/view/View;

    .line 105
    const v0, 0x7f0600da

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountIcon:Landroid/widget/ImageView;

    .line 106
    const v0, 0x7f0600d8

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountTypeTextView:Landroid/widget/TextView;

    .line 107
    const v0, 0x7f0600d9

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    .line 108
    return-void
.end method

.method public setListener(Lcom/android/contacts/editor/RawContactReadOnlyEditorView$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/contacts/editor/RawContactReadOnlyEditorView$Listener;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mListener:Lcom/android/contacts/editor/RawContactReadOnlyEditorView$Listener;

    .line 89
    return-void
.end method

.method public setState(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/account/AccountType;Lcom/android/contacts/editor/ViewIdGenerator;Z)V
    .locals 23
    .param p1, "state"    # Lcom/android/contacts/model/RawContactDelta;
    .param p2, "type"    # Lcom/android/contacts/model/account/AccountType;
    .param p3, "vig"    # Lcom/android/contacts/editor/ViewIdGenerator;
    .param p4, "isProfile"    # Z

    .prologue
    .line 119
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mGeneral:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 122
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    const-string v3, "vnd.android.cursor.item/name"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v3}, Lcom/android/contacts/model/RawContactModifier;->ensureKindExists(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/account/AccountType;Ljava/lang/String;)Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    .line 128
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/model/RawContactDelta;->getAccountName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountName:Ljava/lang/String;

    .line 129
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/model/RawContactDelta;->getAccountType()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountType:Ljava/lang/String;

    .line 130
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/model/RawContactDelta;->getDataSet()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mDataSet:Ljava/lang/String;

    .line 132
    if-eqz p4, :cond_4

    .line 133
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 134
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 135
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountTypeTextView:Landroid/widget/TextView;

    const v6, 0x7f0b01f2

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    .line 158
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountTypeTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f07001e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 163
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountIcon:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lcom/android/contacts/model/account/AccountType;->getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 165
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/model/RawContactDelta;->getRawContactId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mRawContactId:J

    .line 170
    const-string v3, "vnd.android.cursor.item/photo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/account/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v4

    .line 171
    .local v4, "kind":Lcom/android/contacts/model/dataitem/DataKind;
    if-eqz v4, :cond_2

    .line 172
    const-string v3, "vnd.android.cursor.item/photo"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v3}, Lcom/android/contacts/model/RawContactModifier;->ensureKindExists(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/account/AccountType;Ljava/lang/String;)Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    .line 173
    const-string v3, "vnd.android.cursor.item/photo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/account/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v3

    if-eqz v3, :cond_7

    const/4 v14, 0x1

    .line 174
    .local v14, "hasPhotoEditor":Z
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->setHasPhotoEditor(Z)V

    .line 175
    const-string v3, "vnd.android.cursor.item/photo"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/RawContactDelta;->getPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    move-result-object v5

    .line 176
    .local v5, "primary":Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->getPhotoEditor()Lcom/android/contacts/editor/PhotoEditorView;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/model/account/AccountType;->areContactsWritable()Z

    move-result v6

    if-nez v6, :cond_8

    const/4 v7, 0x1

    :goto_3
    move-object/from16 v6, p1

    move-object/from16 v8, p3

    invoke-virtual/range {v3 .. v8}, Lcom/android/contacts/editor/PhotoEditorView;->setValues(Lcom/android/contacts/model/dataitem/DataKind;Lcom/android/contacts/model/RawContactDelta$ValuesDelta;Lcom/android/contacts/model/RawContactDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    .line 180
    .end local v5    # "primary":Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    .end local v14    # "hasPhotoEditor":Z
    :cond_2
    const-string v3, "vnd.android.cursor.item/name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/RawContactDelta;->getPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    move-result-object v5

    .line 181
    .restart local v5    # "primary":Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mName:Landroid/widget/TextView;

    if-eqz v5, :cond_9

    const-string v3, "data1"

    invoke-virtual {v5, v3}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_4
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/model/account/AccountType;->getEditContactActivityClassName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 185
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountContainer:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 186
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountContainer:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 187
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mEditExternallyButton:Landroid/widget/Button;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 199
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    .line 201
    .local v20, "res":Landroid/content/res/Resources;
    const-string v3, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v19

    .line 202
    .local v19, "phones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/RawContactDelta$ValuesDelta;>;"
    if-eqz v19, :cond_d

    .line 203
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_6
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v15, v3, :cond_d

    .line 204
    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    .line 207
    .local v16, "phone":Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mContext:Landroid/content/Context;

    invoke-virtual/range {v16 .. v16}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->getPhoneNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v16 .. v16}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->getPhoneNormalizedNumber()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/android/contacts/ContactsUtils;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v6, v7, v8}, Lcom/motorola/internal/telephony/PhoneNumberUtilsExt;->formatNumber(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 213
    .local v17, "phoneNumber":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->phoneHasType()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 214
    invoke-virtual/range {v16 .. v16}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->getPhoneType()I

    move-result v3

    invoke-virtual/range {v16 .. v16}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->getPhoneLabel()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-static {v0, v3, v6}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v18

    .line 219
    .local v18, "phoneType":Ljava/lang/CharSequence;
    :goto_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mContext:Landroid/content/Context;

    const v6, 0x7f0b004e

    invoke-virtual {v3, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    if-nez v15, :cond_c

    const/4 v3, 0x1

    :goto_8
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v6, v1, v2, v3}, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->bindData(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    .line 203
    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    .line 137
    .end local v4    # "kind":Lcom/android/contacts/model/dataitem/DataKind;
    .end local v5    # "primary":Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    .end local v15    # "i":I
    .end local v16    # "phone":Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    .end local v17    # "phoneNumber":Ljava/lang/String;
    .end local v18    # "phoneType":Ljava/lang/CharSequence;
    .end local v19    # "phones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/RawContactDelta$ValuesDelta;>;"
    .end local v20    # "res":Landroid/content/res/Resources;
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/account/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 138
    .local v9, "accountType":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountTypeTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mContext:Landroid/content/Context;

    const v7, 0x7f0b01f3

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/16 v21, 0x0

    aput-object v9, v8, v21

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 143
    .end local v9    # "accountType":Ljava/lang/CharSequence;
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/account/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 144
    .restart local v9    # "accountType":Ljava/lang/CharSequence;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 145
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mContext:Landroid/content/Context;

    const v6, 0x7f0b0115

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 147
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 148
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 149
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mContext:Landroid/content/Context;

    const v7, 0x7f0b016d

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v8, v21

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    :goto_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountTypeTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mContext:Landroid/content/Context;

    const v7, 0x7f0b016c

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/16 v21, 0x0

    aput-object v9, v8, v21

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 153
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountNameTextView:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_9

    .line 173
    .end local v9    # "accountType":Ljava/lang/CharSequence;
    .restart local v4    # "kind":Lcom/android/contacts/model/dataitem/DataKind;
    :cond_7
    const/4 v14, 0x0

    goto/16 :goto_2

    .line 176
    .restart local v5    # "primary":Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    .restart local v14    # "hasPhotoEditor":Z
    :cond_8
    const/4 v7, 0x0

    goto/16 :goto_3

    .line 181
    .end local v14    # "hasPhotoEditor":Z
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mContext:Landroid/content/Context;

    const v7, 0x7f0b00fc

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_4

    .line 189
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mAccountContainer:Landroid/view/View;

    new-instance v6, Lcom/android/contacts/editor/RawContactReadOnlyEditorView$1;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/android/contacts/editor/RawContactReadOnlyEditorView$1;-><init>(Lcom/android/contacts/editor/RawContactReadOnlyEditorView;)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mEditExternallyButton:Landroid/widget/Button;

    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_5

    .line 217
    .restart local v15    # "i":I
    .restart local v16    # "phone":Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    .restart local v17    # "phoneNumber":Ljava/lang/String;
    .restart local v19    # "phones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/RawContactDelta$ValuesDelta;>;"
    .restart local v20    # "res":Landroid/content/res/Resources;
    :cond_b
    const/16 v18, 0x0

    .restart local v18    # "phoneType":Ljava/lang/CharSequence;
    goto/16 :goto_7

    .line 219
    :cond_c
    const/4 v3, 0x0

    goto/16 :goto_8

    .line 225
    .end local v15    # "i":I
    .end local v16    # "phone":Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    .end local v17    # "phoneNumber":Ljava/lang/String;
    .end local v18    # "phoneType":Ljava/lang/CharSequence;
    :cond_d
    const-string v3, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v13

    .line 226
    .local v13, "emails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/RawContactDelta$ValuesDelta;>;"
    if-eqz v13, :cond_10

    .line 227
    const/4 v15, 0x0

    .restart local v15    # "i":I
    :goto_a
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v15, v3, :cond_10

    .line 228
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    .line 229
    .local v10, "email":Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    invoke-virtual {v10}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->getEmailData()Ljava/lang/String;

    move-result-object v11

    .line 231
    .local v11, "emailAddress":Ljava/lang/String;
    invoke-virtual {v10}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->emailHasType()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 232
    invoke-virtual {v10}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->getEmailType()I

    move-result v3

    invoke-virtual {v10}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->getEmailLabel()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-static {v0, v3, v6}, Landroid/provider/ContactsContract$CommonDataKinds$Email;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v12

    .line 237
    .local v12, "emailType":Ljava/lang/CharSequence;
    :goto_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mContext:Landroid/content/Context;

    const v6, 0x7f0b004f

    invoke-virtual {v3, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    if-nez v15, :cond_f

    const/4 v3, 0x1

    :goto_c
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v11, v12, v3}, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->bindData(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    .line 227
    add-int/lit8 v15, v15, 0x1

    goto :goto_a

    .line 235
    .end local v12    # "emailType":Ljava/lang/CharSequence;
    :cond_e
    const/4 v12, 0x0

    .restart local v12    # "emailType":Ljava/lang/CharSequence;
    goto :goto_b

    .line 237
    :cond_f
    const/4 v3, 0x0

    goto :goto_c

    .line 243
    .end local v10    # "email":Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    .end local v11    # "emailAddress":Ljava/lang/String;
    .end local v12    # "emailType":Ljava/lang/CharSequence;
    .end local v15    # "i":I
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mGeneral:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-lez v3, :cond_11

    .line 244
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mGeneral:Landroid/view/ViewGroup;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_0

    .line 246
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/editor/RawContactReadOnlyEditorView;->mGeneral:Landroid/view/ViewGroup;

    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_0
.end method
