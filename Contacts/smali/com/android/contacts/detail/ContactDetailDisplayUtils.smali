.class public Lcom/android/contacts/detail/ContactDetailDisplayUtils;
.super Ljava/lang/Object;
.source "ContactDetailDisplayUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/detail/ContactDetailDisplayUtils$DefaultImageGetter;,
        Lcom/android/contacts/detail/ContactDetailDisplayUtils$StreamPhotoTag;
    }
.end annotation


# static fields
.field private static sImageGetter:Landroid/text/Html$ImageGetter;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    return-void
.end method

.method static addStreamItemText(Landroid/content/Context;Lcom/android/contacts/util/StreamItemEntry;Landroid/view/View;)Landroid/view/View;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "streamItem"    # Lcom/android/contacts/util/StreamItemEntry;
    .param p2, "rootView"    # Landroid/view/View;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 361
    const v4, 0x7f07016e

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 362
    .local v2, "htmlView":Landroid/widget/TextView;
    const v4, 0x7f07016f

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 364
    .local v0, "attributionView":Landroid/widget/TextView;
    const v4, 0x7f070170

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 365
    .local v1, "commentsView":Landroid/widget/TextView;
    new-instance v3, Lcom/android/contacts/detail/ContactDetailDisplayUtils$DefaultImageGetter;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/contacts/detail/ContactDetailDisplayUtils$DefaultImageGetter;-><init>(Landroid/content/pm/PackageManager;)V

    .line 368
    .local v3, "imageGetter":Landroid/text/Html$ImageGetter;
    invoke-virtual {p1}, Lcom/android/contacts/util/StreamItemEntry;->getDecodedText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->setDataOrHideIfNone(Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    .line 370
    invoke-static {p1, p0}, Lcom/android/contacts/util/ContactBadgeUtil;->getSocialDate(Lcom/android/contacts/util/StreamItemEntry;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->setDataOrHideIfNone(Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    .line 373
    invoke-virtual {p1}, Lcom/android/contacts/util/StreamItemEntry;->getDecodedComments()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->setDataOrHideIfNone(Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    .line 374
    return-object p2
.end method

.method public static configureStarredImageView(Landroid/widget/ImageView;ZZZ)V
    .locals 3
    .param p0, "starredView"    # Landroid/widget/ImageView;
    .param p1, "isDirectoryEntry"    # Z
    .param p2, "isUserProfile"    # Z
    .param p3, "isStarred"    # Z

    .prologue
    .line 192
    if-nez p1, :cond_2

    if-nez p2, :cond_2

    .line 193
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 194
    if-eqz p3, :cond_0

    const v0, 0x7f02001f

    .line 197
    .local v0, "resId":I
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 198
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 199
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz p3, :cond_1

    const v1, 0x7f0c0031

    :goto_1
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 204
    .end local v0    # "resId":I
    :goto_2
    return-void

    .line 194
    :cond_0
    const v0, 0x7f02001d

    goto :goto_0

    .line 199
    .restart local v0    # "resId":I
    :cond_1
    const v1, 0x7f0c0030

    goto :goto_1

    .line 202
    .end local v0    # "resId":I
    :cond_2
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2
.end method

.method public static configureStarredMenuItem(Landroid/view/MenuItem;ZZZ)V
    .locals 2
    .param p0, "starredMenuItem"    # Landroid/view/MenuItem;
    .param p1, "isDirectoryEntry"    # Z
    .param p2, "isUserProfile"    # Z
    .param p3, "isStarred"    # Z

    .prologue
    .line 212
    if-nez p1, :cond_2

    if-nez p2, :cond_2

    .line 213
    const/4 v1, 0x1

    invoke-interface {p0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 214
    if-eqz p3, :cond_0

    const v0, 0x7f02001e

    .line 217
    .local v0, "resId":I
    :goto_0
    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 218
    invoke-interface {p0, p3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 219
    if-eqz p3, :cond_1

    const v1, 0x7f0c0031

    :goto_1
    invoke-interface {p0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 223
    .end local v0    # "resId":I
    :goto_2
    return-void

    .line 214
    :cond_0
    const v0, 0x7f02001c

    goto :goto_0

    .line 219
    .restart local v0    # "resId":I
    :cond_1
    const v1, 0x7f0c0030

    goto :goto_1

    .line 221
    .end local v0    # "resId":I
    :cond_2
    const/4 v1, 0x0

    invoke-interface {p0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2
.end method

.method public static createStreamItemView(Landroid/view/LayoutInflater;Landroid/content/Context;Landroid/view/View;Lcom/android/contacts/util/StreamItemEntry;Landroid/view/View$OnClickListener;)Landroid/view/View;
    .locals 16
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "streamItem"    # Lcom/android/contacts/util/StreamItemEntry;
    .param p4, "photoClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 264
    if-eqz p2, :cond_1

    .line 265
    move-object/from16 v8, p2

    .line 270
    .local v8, "container":Landroid/view/View;
    :goto_0
    invoke-static/range {p1 .. p1}, Lcom/android/contacts/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/ContactPhotoManager;

    move-result-object v2

    .line 271
    .local v2, "contactPhotoManager":Lcom/android/contacts/ContactPhotoManager;
    invoke-virtual/range {p3 .. p3}, Lcom/android/contacts/util/StreamItemEntry;->getPhotos()Ljava/util/List;

    move-result-object v14

    .line 272
    .local v14, "photos":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/util/StreamItemPhotoEntry;>;"
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v13

    .line 275
    .local v13, "photoCount":I
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v1, v8}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->addStreamItemText(Landroid/content/Context;Lcom/android/contacts/util/StreamItemEntry;Landroid/view/View;)Landroid/view/View;

    .line 278
    const v3, 0x7f07016d

    invoke-virtual {v8, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    .line 280
    .local v10, "imageRows":Landroid/view/ViewGroup;
    if-nez v13, :cond_2

    .line 282
    const/16 v3, 0x8

    invoke-virtual {v10, v3}, Landroid/view/View;->setVisibility(I)V

    .line 332
    :cond_0
    return-object v8

    .line 267
    .end local v2    # "contactPhotoManager":Lcom/android/contacts/ContactPhotoManager;
    .end local v8    # "container":Landroid/view/View;
    .end local v10    # "imageRows":Landroid/view/ViewGroup;
    .end local v13    # "photoCount":I
    .end local v14    # "photos":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/util/StreamItemPhotoEntry;>;"
    :cond_1
    const v3, 0x7f0400ab

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    .restart local v8    # "container":Landroid/view/View;
    goto :goto_0

    .line 285
    .restart local v2    # "contactPhotoManager":Lcom/android/contacts/ContactPhotoManager;
    .restart local v10    # "imageRows":Landroid/view/ViewGroup;
    .restart local v13    # "photoCount":I
    .restart local v14    # "photos":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/util/StreamItemPhotoEntry;>;"
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v10, v3}, Landroid/view/View;->setVisibility(I)V

    .line 288
    add-int/lit8 v3, v13, 0x1

    div-int/lit8 v11, v3, 0x2

    .line 291
    .local v11, "numImageRows":I
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    .line 294
    .local v12, "numOldImageRows":I
    if-ne v12, v11, :cond_4

    .line 311
    :cond_3
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-ge v9, v13, :cond_0

    .line 312
    div-int/lit8 v3, v9, 0x2

    invoke-virtual {v10, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 314
    .local v5, "imageRow":Landroid/view/View;
    const/4 v3, 0x0

    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 317
    invoke-interface {v14, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/util/StreamItemPhotoEntry;

    const v6, 0x7f070173

    move-object/from16 v3, p3

    move-object/from16 v7, p4

    invoke-static/range {v2 .. v7}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->loadPhoto(Lcom/android/contacts/ContactPhotoManager;Lcom/android/contacts/util/StreamItemEntry;Lcom/android/contacts/util/StreamItemPhotoEntry;Landroid/view/View;ILandroid/view/View$OnClickListener;)V

    .line 319
    const v3, 0x7f070174

    invoke-virtual {v5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .line 320
    .local v15, "secondContainer":Landroid/view/View;
    add-int/lit8 v3, v9, 0x1

    if-ge v3, v13, :cond_6

    .line 322
    add-int/lit8 v3, v9, 0x1

    invoke-interface {v14, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/util/StreamItemPhotoEntry;

    const v6, 0x7f070175

    move-object/from16 v3, p3

    move-object/from16 v7, p4

    invoke-static/range {v2 .. v7}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->loadPhoto(Lcom/android/contacts/ContactPhotoManager;Lcom/android/contacts/util/StreamItemEntry;Lcom/android/contacts/util/StreamItemPhotoEntry;Landroid/view/View;ILandroid/view/View$OnClickListener;)V

    .line 324
    const/4 v3, 0x0

    invoke-virtual {v15, v3}, Landroid/view/View;->setVisibility(I)V

    .line 311
    :goto_2
    add-int/lit8 v9, v9, 0x2

    goto :goto_1

    .line 297
    .end local v5    # "imageRow":Landroid/view/View;
    .end local v9    # "i":I
    .end local v15    # "secondContainer":Landroid/view/View;
    :cond_4
    if-ge v12, v11, :cond_5

    .line 299
    move v9, v12

    .restart local v9    # "i":I
    :goto_3
    if-ge v9, v11, :cond_3

    .line 300
    const v3, 0x7f0400ad

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v10, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 299
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 305
    .end local v9    # "i":I
    :cond_5
    move v9, v11

    .restart local v9    # "i":I
    :goto_4
    if-ge v9, v12, :cond_3

    .line 306
    invoke-virtual {v10, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 305
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 327
    .restart local v5    # "imageRow":Landroid/view/View;
    .restart local v15    # "secondContainer":Landroid/view/View;
    :cond_6
    const/4 v3, 0x4

    invoke-virtual {v15, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method public static getAttribution(Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactData"    # Lcom/android/contacts/ContactLoader$Result;

    .prologue
    .line 131
    invoke-virtual {p1}, Lcom/android/contacts/ContactLoader$Result;->isDirectoryEntry()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 132
    invoke-virtual {p1}, Lcom/android/contacts/ContactLoader$Result;->getDirectoryDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "directoryDisplayName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/contacts/ContactLoader$Result;->getDirectoryType()Ljava/lang/String;

    move-result-object v1

    .line 134
    .local v1, "directoryType":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v2, v0

    .line 137
    .local v2, "displayName":Ljava/lang/String;
    :goto_0
    const v3, 0x7f0c01bf

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 139
    .end local v0    # "directoryDisplayName":Ljava/lang/String;
    .end local v1    # "directoryType":Ljava/lang/String;
    .end local v2    # "displayName":Ljava/lang/String;
    :goto_1
    return-object v3

    .restart local v0    # "directoryDisplayName":Ljava/lang/String;
    .restart local v1    # "directoryType":Ljava/lang/String;
    :cond_0
    move-object v2, v1

    .line 134
    goto :goto_0

    .line 139
    .end local v0    # "directoryDisplayName":Ljava/lang/String;
    .end local v1    # "directoryType":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static getCompany(Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;)Ljava/lang/String;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactData"    # Lcom/android/contacts/ContactLoader$Result;

    .prologue
    .line 147
    invoke-virtual {p1}, Lcom/android/contacts/ContactLoader$Result;->getDisplayNameSource()I

    move-result v10

    const/16 v11, 0x1e

    if-ne v10, v11, :cond_2

    const/4 v2, 0x1

    .line 149
    .local v2, "displayNameIsOrganization":Z
    :goto_0
    invoke-virtual {p1}, Lcom/android/contacts/ContactLoader$Result;->getEntities()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Entity;

    .line 150
    .local v3, "entity":Landroid/content/Entity;
    invoke-virtual {v3}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/Entity$NamedContentValues;

    .line 151
    .local v8, "subValue":Landroid/content/Entity$NamedContentValues;
    iget-object v4, v8, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 152
    .local v4, "entryValues":Landroid/content/ContentValues;
    const-string v10, "mimetype"

    invoke-virtual {v4, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 154
    .local v7, "mimeType":Ljava/lang/String;
    const-string v10, "vnd.android.cursor.item/organization"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 155
    const-string v10, "data1"

    invoke-virtual {v4, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 156
    .local v1, "company":Ljava/lang/String;
    const-string v10, "data4"

    invoke-virtual {v4, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 161
    .local v9, "title":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 162
    if-eqz v2, :cond_3

    const/4 v0, 0x0

    .line 177
    .local v0, "combined":Ljava/lang/String;
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 183
    .end local v0    # "combined":Ljava/lang/String;
    .end local v1    # "company":Ljava/lang/String;
    .end local v3    # "entity":Landroid/content/Entity;
    .end local v4    # "entryValues":Landroid/content/ContentValues;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "mimeType":Ljava/lang/String;
    .end local v8    # "subValue":Landroid/content/Entity$NamedContentValues;
    .end local v9    # "title":Ljava/lang/String;
    :goto_2
    return-object v0

    .line 147
    .end local v2    # "displayNameIsOrganization":Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .restart local v1    # "company":Ljava/lang/String;
    .restart local v2    # "displayNameIsOrganization":Z
    .restart local v3    # "entity":Landroid/content/Entity;
    .restart local v4    # "entryValues":Landroid/content/ContentValues;
    .restart local v6    # "i$":Ljava/util/Iterator;
    .restart local v7    # "mimeType":Ljava/lang/String;
    .restart local v8    # "subValue":Landroid/content/Entity$NamedContentValues;
    .restart local v9    # "title":Ljava/lang/String;
    :cond_3
    move-object v0, v9

    .line 162
    goto :goto_1

    .line 164
    :cond_4
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 165
    if-eqz v2, :cond_5

    const/4 v0, 0x0

    .restart local v0    # "combined":Ljava/lang/String;
    :goto_3
    goto :goto_1

    .end local v0    # "combined":Ljava/lang/String;
    :cond_5
    move-object v0, v1

    goto :goto_3

    .line 167
    :cond_6
    if-eqz v2, :cond_7

    .line 168
    move-object v0, v9

    .restart local v0    # "combined":Ljava/lang/String;
    goto :goto_1

    .line 170
    .end local v0    # "combined":Ljava/lang/String;
    :cond_7
    const v10, 0x7f0c01d0

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v1, v11, v12

    const/4 v12, 0x1

    aput-object v9, v11, v12

    invoke-virtual {p0, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "combined":Ljava/lang/String;
    goto :goto_1

    .line 183
    .end local v0    # "combined":Ljava/lang/String;
    .end local v1    # "company":Ljava/lang/String;
    .end local v3    # "entity":Landroid/content/Entity;
    .end local v4    # "entryValues":Landroid/content/ContentValues;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "mimeType":Ljava/lang/String;
    .end local v8    # "subValue":Landroid/content/Entity$NamedContentValues;
    .end local v9    # "title":Ljava/lang/String;
    :cond_8
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public static getDisplayName(Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;)Ljava/lang/CharSequence;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactData"    # Lcom/android/contacts/ContactLoader$Result;

    .prologue
    .line 99
    invoke-virtual {p1}, Lcom/android/contacts/ContactLoader$Result;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, "displayName":Ljava/lang/CharSequence;
    invoke-virtual {p1}, Lcom/android/contacts/ContactLoader$Result;->getAltDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "altDisplayName":Ljava/lang/CharSequence;
    new-instance v2, Lcom/android/contacts/preference/ContactsPreferences;

    invoke-direct {v2, p0}, Lcom/android/contacts/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    .line 102
    .local v2, "prefs":Lcom/android/contacts/preference/ContactsPreferences;
    const-string v3, ""

    .line 103
    .local v3, "styledName":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 104
    invoke-virtual {v2}, Lcom/android/contacts/preference/ContactsPreferences;->getDisplayOrder()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 105
    move-object v3, v1

    .line 112
    :goto_0
    return-object v3

    .line 107
    :cond_0
    move-object v3, v0

    goto :goto_0

    .line 110
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0121

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static getFirstListItemOffset(Landroid/widget/ListView;)I
    .locals 1
    .param p0, "listView"    # Landroid/widget/ListView;

    .prologue
    .line 538
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    if-eqz v0, :cond_1

    .line 540
    :cond_0
    const/high16 v0, -0x80000000

    .line 542
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    goto :goto_0
.end method

.method public static getImageGetter(Landroid/content/Context;)Landroid/text/Html$ImageGetter;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 438
    sget-object v0, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->sImageGetter:Landroid/text/Html$ImageGetter;

    if-nez v0, :cond_0

    .line 439
    new-instance v0, Lcom/android/contacts/detail/ContactDetailDisplayUtils$DefaultImageGetter;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/detail/ContactDetailDisplayUtils$DefaultImageGetter;-><init>(Landroid/content/pm/PackageManager;)V

    sput-object v0, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->sImageGetter:Landroid/text/Html$ImageGetter;

    .line 441
    :cond_0
    sget-object v0, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->sImageGetter:Landroid/text/Html$ImageGetter;

    return-object v0
.end method

.method public static getPhoneticName(Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactData"    # Lcom/android/contacts/ContactLoader$Result;

    .prologue
    .line 119
    invoke-virtual {p1}, Lcom/android/contacts/ContactLoader$Result;->getPhoneticName()Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "phoneticName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 123
    .end local v0    # "phoneticName":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "phoneticName":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static loadPhoto(Lcom/android/contacts/ContactPhotoManager;Lcom/android/contacts/util/StreamItemEntry;Lcom/android/contacts/util/StreamItemPhotoEntry;Landroid/view/View;ILandroid/view/View$OnClickListener;)V
    .locals 8
    .param p0, "contactPhotoManager"    # Lcom/android/contacts/ContactPhotoManager;
    .param p1, "streamItem"    # Lcom/android/contacts/util/StreamItemEntry;
    .param p2, "streamItemPhoto"    # Lcom/android/contacts/util/StreamItemPhotoEntry;
    .param p3, "photoContainer"    # Landroid/view/View;
    .param p4, "imageViewId"    # I
    .param p5, "photoClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 339
    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 340
    .local v6, "frame":Landroid/view/View;
    const v0, 0x7f070172

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 341
    .local v7, "pushLayerView":Landroid/view/View;
    const v0, 0x7f07015c

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 342
    .local v1, "imageView":Landroid/widget/ImageView;
    if-eqz p5, :cond_0

    .line 343
    invoke-virtual {v7, p5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 344
    new-instance v0, Lcom/android/contacts/detail/ContactDetailDisplayUtils$StreamPhotoTag;

    invoke-direct {v0, p1, p2}, Lcom/android/contacts/detail/ContactDetailDisplayUtils$StreamPhotoTag;-><init>(Lcom/android/contacts/util/StreamItemEntry;Lcom/android/contacts/util/StreamItemPhotoEntry;)V

    invoke-virtual {v7, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 345
    invoke-virtual {v7, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 346
    invoke-virtual {v7, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 355
    :goto_0
    invoke-virtual {p2}, Lcom/android/contacts/util/StreamItemPhotoEntry;->getPhotoUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, -0x1

    sget-object v5, Lcom/android/contacts/ContactPhotoManager;->DEFAULT_BLANK:Lcom/android/contacts/ContactPhotoManager$DefaultImageProvider;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;IZLcom/android/contacts/ContactPhotoManager$DefaultImageProvider;)V

    .line 357
    return-void

    .line 348
    :cond_0
    invoke-virtual {v7, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 349
    invoke-virtual {v7, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 350
    invoke-virtual {v7, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 352
    invoke-virtual {v7, v4}, Landroid/view/View;->setClickable(Z)V

    .line 353
    invoke-virtual {v7, v4}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method

.method public static requestToMoveToOffset(Landroid/widget/ListView;I)V
    .locals 2
    .param p0, "listView"    # Landroid/widget/ListView;
    .param p1, "offset"    # I

    .prologue
    const/4 v1, 0x0

    .line 558
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    if-nez v0, :cond_0

    if-lez p1, :cond_1

    .line 569
    :cond_0
    :goto_0
    return-void

    .line 564
    :cond_1
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 568
    invoke-virtual {p0, v1, p1}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_0
.end method

.method public static setAlphaOnViewBackground(Landroid/view/View;F)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "alpha"    # F

    .prologue
    .line 524
    if-eqz p0, :cond_0

    .line 527
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000

    invoke-static {p1, v0, v1}, Lcom/android/contacts/util/MoreMath;->clamp(FFF)F

    move-result v0

    const/high16 v1, 0x437f0000

    mul-float/2addr v0, v1

    float-to-int v0, v0

    shl-int/lit8 v0, v0, 0x18

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 529
    :cond_0
    return-void
.end method

.method public static setCompanyName(Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;Landroid/widget/TextView;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactData"    # Lcom/android/contacts/ContactLoader$Result;
    .param p2, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 393
    if-nez p2, :cond_0

    .line 397
    :goto_0
    return-void

    .line 396
    :cond_0
    invoke-static {p0, p1}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->getCompany(Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->setDataOrHideIfNone(Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    goto :goto_0
.end method

.method private static setDataOrHideIfNone(Ljava/lang/CharSequence;Landroid/widget/TextView;)V
    .locals 1
    .param p0, "textToDisplay"    # Ljava/lang/CharSequence;
    .param p1, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 426
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 427
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 428
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 433
    :goto_0
    return-void

    .line 430
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 431
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public static setDisplayName(Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;Landroid/widget/TextView;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactData"    # Lcom/android/contacts/ContactLoader$Result;
    .param p2, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 382
    if-nez p2, :cond_0

    .line 386
    :goto_0
    return-void

    .line 385
    :cond_0
    invoke-static {p0, p1}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->getDisplayName(Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->setDataOrHideIfNone(Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    goto :goto_0
.end method

.method public static setSocialSnippet(Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactData"    # Lcom/android/contacts/ContactLoader$Result;
    .param p2, "statusView"    # Landroid/widget/TextView;
    .param p3, "statusPhotoView"    # Landroid/widget/ImageView;

    .prologue
    const/4 v4, 0x0

    .line 230
    if-nez p2, :cond_0

    .line 256
    :goto_0
    return-void

    .line 234
    :cond_0
    const/4 v9, 0x0

    .line 235
    .local v9, "snippet":Ljava/lang/CharSequence;
    const/4 v8, 0x0

    .line 236
    .local v8, "photoUri":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/contacts/ContactLoader$Result;->getStreamItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 237
    invoke-virtual {p1}, Lcom/android/contacts/ContactLoader$Result;->getStreamItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/util/StreamItemEntry;

    .line 238
    .local v6, "firstEntry":Lcom/android/contacts/util/StreamItemEntry;
    invoke-virtual {v6}, Lcom/android/contacts/util/StreamItemEntry;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/contacts/util/HtmlUtils;->fromHtml(Landroid/content/Context;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v9

    .line 239
    invoke-virtual {v6}, Lcom/android/contacts/util/StreamItemEntry;->getPhotos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 240
    invoke-virtual {v6}, Lcom/android/contacts/util/StreamItemEntry;->getPhotos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/contacts/util/StreamItemPhotoEntry;

    .line 241
    .local v7, "firstPhoto":Lcom/android/contacts/util/StreamItemPhotoEntry;
    invoke-virtual {v7}, Lcom/android/contacts/util/StreamItemPhotoEntry;->getPhotoUri()Ljava/lang/String;

    move-result-object v8

    .line 244
    const/4 v9, 0x0

    .line 247
    .end local v6    # "firstEntry":Lcom/android/contacts/util/StreamItemEntry;
    .end local v7    # "firstPhoto":Lcom/android/contacts/util/StreamItemPhotoEntry;
    :cond_1
    invoke-static {v9, p2}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->setDataOrHideIfNone(Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    .line 248
    if-eqz v8, :cond_2

    .line 249
    invoke-static {p0}, Lcom/android/contacts/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/ContactPhotoManager;

    move-result-object v0

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, -0x1

    sget-object v5, Lcom/android/contacts/ContactPhotoManager;->DEFAULT_BLANK:Lcom/android/contacts/ContactPhotoManager$DefaultImageProvider;

    move-object v1, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;IZLcom/android/contacts/ContactPhotoManager$DefaultImageProvider;)V

    .line 252
    invoke-virtual {p3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 254
    :cond_2
    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
