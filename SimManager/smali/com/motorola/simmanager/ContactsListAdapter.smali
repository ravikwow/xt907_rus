.class public Lcom/motorola/simmanager/ContactsListAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "ContactsListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/simmanager/ContactsListAdapter$CheckedListItem;,
        Lcom/motorola/simmanager/ContactsListAdapter$ViewItemDataTag;
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String;


# instance fields
.field private mActivityHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mFilterText:Ljava/lang/String;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mMode:I

.field private mPhotoLoader:Lcom/motorola/simmanager/ContactPhotoLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-class v0, Lcom/motorola/simmanager/ContactsListAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/simmanager/ContactsListAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;ILandroid/os/Handler;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "mode"    # I
    .param p4, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 72
    const/high16 v0, 0x7f030000

    invoke-direct {p0, p1, v0, p2, v2}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V

    .line 37
    iput v2, p0, Lcom/motorola/simmanager/ContactsListAdapter;->mMode:I

    .line 40
    iput-object v1, p0, Lcom/motorola/simmanager/ContactsListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 45
    iput-object v1, p0, Lcom/motorola/simmanager/ContactsListAdapter;->mActivityHandler:Landroid/os/Handler;

    .line 47
    iput-object v1, p0, Lcom/motorola/simmanager/ContactsListAdapter;->mPhotoLoader:Lcom/motorola/simmanager/ContactPhotoLoader;

    .line 53
    iput-object v1, p0, Lcom/motorola/simmanager/ContactsListAdapter;->mContext:Landroid/content/Context;

    .line 74
    iput p3, p0, Lcom/motorola/simmanager/ContactsListAdapter;->mMode:I

    .line 76
    iput-object p4, p0, Lcom/motorola/simmanager/ContactsListAdapter;->mActivityHandler:Landroid/os/Handler;

    .line 77
    iput-object p1, p0, Lcom/motorola/simmanager/ContactsListAdapter;->mContext:Landroid/content/Context;

    .line 79
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/motorola/simmanager/ContactsListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 82
    new-instance v0, Lcom/motorola/simmanager/ContactPhotoLoader;

    iget-object v1, p0, Lcom/motorola/simmanager/ContactsListAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f020006

    invoke-direct {v0, v1, v2}, Lcom/motorola/simmanager/ContactPhotoLoader;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/motorola/simmanager/ContactsListAdapter;->mPhotoLoader:Lcom/motorola/simmanager/ContactPhotoLoader;

    .line 84
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 14
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 94
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/motorola/simmanager/ContactsListAdapter$ViewItemDataTag;

    .line 95
    .local v9, "tag":Lcom/motorola/simmanager/ContactsListAdapter$ViewItemDataTag;
    iget v11, p0, Lcom/motorola/simmanager/ContactsListAdapter;->mMode:I

    move-object/from16 v0, p3

    invoke-virtual {v9, v0, v11}, Lcom/motorola/simmanager/ContactsListAdapter$ViewItemDataTag;->refresh(Landroid/database/Cursor;I)V

    .line 97
    const v11, 0x7f090003

    invoke-virtual {p1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 99
    .local v5, "mName":Landroid/widget/TextView;
    const v11, 0x7f090004

    invoke-virtual {p1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 101
    .local v3, "mData":Landroid/widget/TextView;
    const v11, 0x7f090002

    invoke-virtual {p1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 104
    .local v4, "mImage":Landroid/widget/ImageView;
    iget v11, p0, Lcom/motorola/simmanager/ContactsListAdapter;->mMode:I

    move-object/from16 v0, p3

    invoke-static {v0, v11}, Lcom/motorola/simmanager/SMUtils;->getNameColumnIndex(Landroid/database/Cursor;I)I

    move-result v11

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 105
    .local v8, "name":Ljava/lang/String;
    invoke-static {v8}, Lcom/motorola/simmanager/PBUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 106
    iget-object v11, p0, Lcom/motorola/simmanager/ContactsListAdapter;->mContext:Landroid/content/Context;

    const v12, 0x7f070051

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    :goto_0
    iget v11, p0, Lcom/motorola/simmanager/ContactsListAdapter;->mMode:I

    const/4 v12, 0x1

    if-eq v11, v12, :cond_5

    .line 117
    iget v11, p0, Lcom/motorola/simmanager/ContactsListAdapter;->mMode:I

    move-object/from16 v0, p3

    invoke-static {v0, v11}, Lcom/motorola/simmanager/SMUtils;->getPhoneColumnIndex(Landroid/database/Cursor;I)I

    move-result v11

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    const/4 v11, 0x2

    new-array v10, v11, [I

    fill-array-data v10, :array_0

    .line 123
    .local v10, "viewIDs":[I
    sget-boolean v11, Lcom/motorola/simmanager/SMUtils;->FTR_35420_USIM_IMPORT_EXPORT:Z

    if-eqz v11, :cond_3

    .line 124
    const/4 v11, 0x2

    new-array v1, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    sget-object v12, Lcom/motorola/simmanager/SIMCommunication;->COL_NUMBER_EXT:[Ljava/lang/String;

    const/4 v13, 0x1

    aget-object v12, v12, v13

    aput-object v12, v1, v11

    const/4 v11, 0x1

    sget-object v12, Lcom/motorola/simmanager/SIMCommunication;->COL_EMAIL_EXT:[Ljava/lang/String;

    const/4 v13, 0x0

    aget-object v12, v12, v13

    aput-object v12, v1, v11

    .line 127
    .local v1, "columnNames":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v11, v10

    if-ge v2, v11, :cond_4

    .line 128
    aget v11, v10, v2

    invoke-virtual {p1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 129
    .local v7, "mText":Landroid/widget/TextView;
    const/16 v11, 0x8

    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    .line 130
    aget-object v11, v1, v2

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    if-ltz v11, :cond_0

    .line 131
    aget-object v11, v1, v2

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 132
    .local v6, "mStringData":Ljava/lang/String;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_0

    .line 134
    aget v11, v10, v2

    const v12, 0x7f090005

    if-ne v11, v12, :cond_2

    .line 135
    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    :goto_2
    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    .line 127
    .end local v6    # "mStringData":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 108
    .end local v1    # "columnNames":[Ljava/lang/String;
    .end local v2    # "i":I
    .end local v7    # "mText":Landroid/widget/TextView;
    .end local v10    # "viewIDs":[I
    :cond_1
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 137
    .restart local v1    # "columnNames":[Ljava/lang/String;
    .restart local v2    # "i":I
    .restart local v6    # "mStringData":Ljava/lang/String;
    .restart local v7    # "mText":Landroid/widget/TextView;
    .restart local v10    # "viewIDs":[I
    :cond_2
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 145
    .end local v1    # "columnNames":[Ljava/lang/String;
    .end local v2    # "i":I
    .end local v6    # "mStringData":Ljava/lang/String;
    .end local v7    # "mText":Landroid/widget/TextView;
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    array-length v11, v10

    if-ge v2, v11, :cond_4

    .line 146
    aget v11, v10, v2

    invoke-virtual {p1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 147
    .restart local v7    # "mText":Landroid/widget/TextView;
    const/16 v11, 0x8

    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    .line 145
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 151
    .end local v7    # "mText":Landroid/widget/TextView;
    :cond_4
    const/16 v11, 0x8

    invoke-virtual {v4, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 157
    .end local v2    # "i":I
    .end local v10    # "viewIDs":[I
    :goto_4
    return-void

    .line 154
    :cond_5
    const/16 v11, 0x8

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    .line 155
    iget-object v11, p0, Lcom/motorola/simmanager/ContactsListAdapter;->mPhotoLoader:Lcom/motorola/simmanager/ContactPhotoLoader;

    iget v12, v9, Lcom/motorola/simmanager/ContactsListAdapter$ViewItemDataTag;->mPhotoId:I

    int-to-long v12, v12

    invoke-virtual {v11, v4, v12, v13}, Lcom/motorola/simmanager/ContactPhotoLoader;->loadPhoto(Landroid/widget/ImageView;J)V

    goto :goto_4

    .line 121
    nop

    :array_0
    .array-data 4
        0x7f090005
        0x7f090006
    .end array-data
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 4
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 279
    invoke-super {p0, p1}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 281
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeCursor(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/simmanager/SMUtils;->logi(Ljava/lang/String;)V

    .line 283
    iget-object v2, p0, Lcom/motorola/simmanager/ContactsListAdapter;->mActivityHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 284
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 285
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 286
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 287
    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "filter_text"

    iget-object v3, p0, Lcom/motorola/simmanager/ContactsListAdapter;->mFilterText:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 289
    iget-object v2, p0, Lcom/motorola/simmanager/ContactsListAdapter;->mActivityHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 291
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    .line 169
    iget-object v2, p0, Lcom/motorola/simmanager/ContactsListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const/high16 v3, 0x7f030000

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 172
    .local v1, "viewToReturn":Landroid/view/View;
    new-instance v0, Lcom/motorola/simmanager/ContactsListAdapter$ViewItemDataTag;

    invoke-direct {v0}, Lcom/motorola/simmanager/ContactsListAdapter$ViewItemDataTag;-><init>()V

    .line 174
    .local v0, "tag":Lcom/motorola/simmanager/ContactsListAdapter$ViewItemDataTag;
    iget v2, p0, Lcom/motorola/simmanager/ContactsListAdapter;->mMode:I

    invoke-static {p2, v2}, Lcom/motorola/simmanager/SMUtils;->getIdColumnIndex(Landroid/database/Cursor;I)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/motorola/simmanager/ContactsListAdapter$ViewItemDataTag;->mId:I

    .line 175
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 176
    invoke-virtual {v1, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 177
    return-object v1
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 270
    iput-object v1, p0, Lcom/motorola/simmanager/ContactsListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 271
    iput-object v1, p0, Lcom/motorola/simmanager/ContactsListAdapter;->mActivityHandler:Landroid/os/Handler;

    .line 273
    iget-object v0, p0, Lcom/motorola/simmanager/ContactsListAdapter;->mPhotoLoader:Lcom/motorola/simmanager/ContactPhotoLoader;

    invoke-virtual {v0}, Lcom/motorola/simmanager/ContactPhotoLoader;->stop()V

    .line 274
    iput-object v1, p0, Lcom/motorola/simmanager/ContactsListAdapter;->mPhotoLoader:Lcom/motorola/simmanager/ContactPhotoLoader;

    .line 275
    return-void
.end method
