.class public final Lcom/android/mms/model/VcardModel;
.super Lcom/android/mms/model/MediaModel;
.source "VcardModel.java"


# instance fields
.field private mUri:Landroid/net/Uri;

.field private mVCardEntry:Lcom/android/mms/vcard/VCardEntry;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 73
    const-string v0, "text/x-vcard"

    const-string v1, "ref"

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/mms/model/MediaModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/model/VcardModel;->mUri:Landroid/net/Uri;

    .line 74
    iput-object p2, p0, Lcom/android/mms/model/VcardModel;->mUri:Landroid/net/Uri;

    .line 75
    invoke-virtual {p0, p2}, Lcom/android/mms/model/VcardModel;->initializeFromUri(Landroid/net/Uri;)V

    .line 76
    invoke-virtual {p0}, Lcom/android/mms/model/VcardModel;->getContactDetails()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/model/MediaModel;->mMediaData:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;[B)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "src"    # Ljava/lang/String;
    .param p3, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 89
    const-string v2, "ref"

    const-string v3, "text/x-vcard"

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/model/MediaModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/model/VcardModel;->mUri:Landroid/net/Uri;

    .line 90
    invoke-virtual {p0}, Lcom/android/mms/model/VcardModel;->getContactDetails()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/model/MediaModel;->mMediaData:Ljava/lang/String;

    .line 91
    return-void
.end method

.method private final fixFileExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 183
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 184
    :cond_0
    const-string v2, "IcalModel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fixFileExtension - fileName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    .end local p1    # "fileName":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object p1

    .line 188
    .restart local p1    # "fileName":Ljava/lang/String;
    :cond_2
    const-string v2, "."

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 189
    .local v1, "index":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 190
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, "extension":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 195
    const-string v2, "IcalModel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fixFileExtension - fileName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private getNameFromPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mContentType"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x5f

    const/16 v4, 0x2e

    .line 162
    const/16 v1, 0x2f

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, "name":Ljava/lang/String;
    invoke-direct {p0, v0, p2}, Lcom/android/mms/model/VcardModel;->fixFileExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 171
    const/16 v1, 0x20

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 174
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 179
    :cond_0
    return-object v0
.end method


# virtual methods
.method protected ensurePrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 105
    const-string v0, ".vcf"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".vcf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 108
    :cond_0
    return-object p1
.end method

.method public getBitmap(II)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "widthLimit"    # I
    .param p2, "heightLimit"    # I

    .prologue
    .line 125
    const/4 v0, 0x0

    .line 126
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/android/mms/model/VcardModel;->isLocationVCard()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 127
    iget-object v2, p0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02005a

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 133
    :goto_0
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 134
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    .line 135
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    .line 137
    :cond_1
    const/4 v2, 0x1

    invoke-static {v0, p1, p2, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 139
    .local v1, "useThisBitmap":Landroid/graphics/Bitmap;
    return-object v1

    .line 129
    .end local v1    # "useThisBitmap":Landroid/graphics/Bitmap;
    :cond_2
    iget-object v2, p0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02002d

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public getContactDetails()Ljava/lang/String;
    .locals 25

    .prologue
    .line 209
    const-string v3, "\r\n"

    .line 212
    .local v3, "carriageReturn":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/model/VcardModel;->mVCardEntry:Lcom/android/mms/vcard/VCardEntry;

    move-object/from16 v19, v0

    if-nez v19, :cond_0

    .line 213
    const/16 v19, 0x0

    .line 389
    :goto_0
    return-object v19

    .line 217
    :cond_0
    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    .line 219
    .local v15, "res":Ljava/lang/StringBuffer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/model/VcardModel;->mVCardEntry:Lcom/android/mms/vcard/VCardEntry;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/vcard/VCardEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    .line 220
    .local v6, "displayName":Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 221
    invoke-virtual {v15, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 222
    const-string v19, "\r\n"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 226
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/model/VcardModel;->mVCardEntry:Lcom/android/mms/vcard/VCardEntry;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/vcard/VCardEntry;->getOrganizationList()Ljava/util/List;

    move-result-object v12

    .line 227
    .local v12, "orgData":Ljava/util/List;, "Ljava/util/List<Lcom/android/mms/vcard/VCardEntry$OrganizationData;>;"
    if-eqz v12, :cond_6

    .line 228
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v8, v0, :cond_6

    .line 229
    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/mms/vcard/VCardEntry$OrganizationData;

    .line 230
    .local v5, "data":Lcom/android/mms/vcard/VCardEntry$OrganizationData;
    invoke-virtual {v5}, Lcom/android/mms/vcard/VCardEntry$OrganizationData;->getOrganizationName()Ljava/lang/String;

    move-result-object v4

    .line 231
    .local v4, "company":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/android/mms/vcard/VCardEntry$OrganizationData;->getTitle()Ljava/lang/String;

    move-result-object v17

    .line 232
    .local v17, "title":Ljava/lang/String;
    const/16 v16, 0x0

    .line 233
    .local v16, "result":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_4

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_4

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const v20, 0x7f0a013c

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v4, v21, v22

    const/16 v22, 0x1

    aput-object v17, v21, v22

    invoke-virtual/range {v19 .. v21}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 242
    :cond_2
    :goto_2
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_3

    .line 243
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 244
    const-string v19, "\r\n"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 228
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 237
    :cond_4
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_5

    .line 238
    move-object/from16 v16, v4

    goto :goto_2

    .line 239
    :cond_5
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_2

    .line 240
    move-object/from16 v16, v17

    goto :goto_2

    .line 250
    .end local v4    # "company":Ljava/lang/String;
    .end local v5    # "data":Lcom/android/mms/vcard/VCardEntry$OrganizationData;
    .end local v8    # "i":I
    .end local v16    # "result":Ljava/lang/String;
    .end local v17    # "title":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/model/VcardModel;->mVCardEntry:Lcom/android/mms/vcard/VCardEntry;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/vcard/VCardEntry;->getPhoneList()Ljava/util/List;

    move-result-object v13

    .line 251
    .local v13, "phoneData":Ljava/util/List;, "Ljava/util/List<Lcom/android/mms/vcard/VCardEntry$PhoneData;>;"
    if-eqz v13, :cond_8

    .line 252
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_3
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v8, v0, :cond_8

    .line 253
    invoke-interface {v13, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/mms/vcard/VCardEntry$PhoneData;

    .line 254
    .local v5, "data":Lcom/android/mms/vcard/VCardEntry$PhoneData;
    invoke-virtual {v5}, Lcom/android/mms/vcard/VCardEntry$PhoneData;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_7

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const v20, 0x7f0a013d

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    invoke-virtual {v5}, Lcom/android/mms/vcard/VCardEntry$PhoneData;->getType()I

    move-result v24

    invoke-static/range {v24 .. v24}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    invoke-virtual {v5}, Lcom/android/mms/vcard/VCardEntry$PhoneData;->getNumber()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-virtual/range {v19 .. v21}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 260
    const-string v19, "\r\n"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 252
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 266
    .end local v5    # "data":Lcom/android/mms/vcard/VCardEntry$PhoneData;
    .end local v8    # "i":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/model/VcardModel;->mVCardEntry:Lcom/android/mms/vcard/VCardEntry;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/vcard/VCardEntry;->getEmailList()Ljava/util/List;

    move-result-object v7

    .line 267
    .local v7, "emailData":Ljava/util/List;, "Ljava/util/List<Lcom/android/mms/vcard/VCardEntry$EmailData;>;"
    if-eqz v7, :cond_a

    .line 268
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_4
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v8, v0, :cond_a

    .line 269
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/mms/vcard/VCardEntry$EmailData;

    .line 270
    .local v5, "data":Lcom/android/mms/vcard/VCardEntry$EmailData;
    invoke-virtual {v5}, Lcom/android/mms/vcard/VCardEntry$EmailData;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_9

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const v20, 0x7f0a013e

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    invoke-virtual {v5}, Lcom/android/mms/vcard/VCardEntry$EmailData;->getType()I

    move-result v24

    invoke-static/range {v24 .. v24}, Landroid/provider/ContactsContract$CommonDataKinds$Email;->getTypeLabelResource(I)I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    invoke-virtual {v5}, Lcom/android/mms/vcard/VCardEntry$EmailData;->getAddress()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-virtual/range {v19 .. v21}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 276
    const-string v19, "\r\n"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 268
    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 282
    .end local v5    # "data":Lcom/android/mms/vcard/VCardEntry$EmailData;
    .end local v8    # "i":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/model/VcardModel;->mVCardEntry:Lcom/android/mms/vcard/VCardEntry;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/vcard/VCardEntry;->getImList()Ljava/util/List;

    move-result-object v9

    .line 283
    .local v9, "imData":Ljava/util/List;, "Ljava/util/List<Lcom/android/mms/vcard/VCardEntry$ImData;>;"
    if-eqz v9, :cond_c

    .line 284
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_5
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v8, v0, :cond_c

    .line 285
    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/mms/vcard/VCardEntry$ImData;

    .line 286
    .local v5, "data":Lcom/android/mms/vcard/VCardEntry$ImData;
    invoke-virtual {v5}, Lcom/android/mms/vcard/VCardEntry$ImData;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_b

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const v20, 0x7f0a013f

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    invoke-virtual {v5}, Lcom/android/mms/vcard/VCardEntry$ImData;->getProtocol()I

    move-result v24

    invoke-static/range {v24 .. v24}, Landroid/provider/ContactsContract$CommonDataKinds$Im;->getProtocolLabelResource(I)I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    invoke-virtual {v5}, Lcom/android/mms/vcard/VCardEntry$ImData;->getAddress()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-virtual/range {v19 .. v21}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 292
    const-string v19, "\r\n"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 284
    :cond_b
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 298
    .end local v5    # "data":Lcom/android/mms/vcard/VCardEntry$ImData;
    .end local v8    # "i":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/model/VcardModel;->mVCardEntry:Lcom/android/mms/vcard/VCardEntry;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/vcard/VCardEntry;->getNickNameList()Ljava/util/List;

    move-result-object v10

    .line 299
    .local v10, "nickNameData":Ljava/util/List;, "Ljava/util/List<Lcom/android/mms/vcard/VCardEntry$NicknameData;>;"
    if-eqz v10, :cond_f

    .line 300
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_6
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v8, v0, :cond_f

    .line 301
    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/mms/vcard/VCardEntry$NicknameData;

    .line 302
    .local v5, "data":Lcom/android/mms/vcard/VCardEntry$NicknameData;
    invoke-virtual {v5}, Lcom/android/mms/vcard/VCardEntry$NicknameData;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_e

    .line 303
    if-nez v8, :cond_d

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const v20, 0x7f0a0141

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 306
    :cond_d
    invoke-virtual {v5}, Lcom/android/mms/vcard/VCardEntry$NicknameData;->getNickname()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 307
    const-string v19, "\r\n"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 300
    :cond_e
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 313
    .end local v5    # "data":Lcom/android/mms/vcard/VCardEntry$NicknameData;
    .end local v8    # "i":I
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/model/VcardModel;->mVCardEntry:Lcom/android/mms/vcard/VCardEntry;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/vcard/VCardEntry;->getWebsiteList()Ljava/util/List;

    move-result-object v18

    .line 314
    .local v18, "websiteData":Ljava/util/List;, "Ljava/util/List<Lcom/android/mms/vcard/VCardEntry$WebsiteData;>;"
    if-eqz v18, :cond_12

    .line 315
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_7
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v8, v0, :cond_12

    .line 316
    move-object/from16 v0, v18

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/mms/vcard/VCardEntry$WebsiteData;

    .line 317
    .local v5, "data":Lcom/android/mms/vcard/VCardEntry$WebsiteData;
    invoke-virtual {v5}, Lcom/android/mms/vcard/VCardEntry$WebsiteData;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_11

    .line 318
    if-nez v8, :cond_10

    .line 319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const v20, 0x7f0a0143

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 321
    :cond_10
    invoke-virtual {v5}, Lcom/android/mms/vcard/VCardEntry$WebsiteData;->getWebsite()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 322
    const-string v19, "\r\n"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 315
    :cond_11
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 328
    .end local v5    # "data":Lcom/android/mms/vcard/VCardEntry$WebsiteData;
    .end local v8    # "i":I
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/model/VcardModel;->mVCardEntry:Lcom/android/mms/vcard/VCardEntry;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/vcard/VCardEntry;->getPostalList()Ljava/util/List;

    move-result-object v14

    .line 329
    .local v14, "postalData":Ljava/util/List;, "Ljava/util/List<Lcom/android/mms/vcard/VCardEntry$PostalData;>;"
    if-eqz v14, :cond_1a

    .line 330
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_8
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v8, v0, :cond_1a

    .line 331
    invoke-interface {v14, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/mms/vcard/VCardEntry$PostalData;

    .line 332
    .local v5, "data":Lcom/android/mms/vcard/VCardEntry$PostalData;
    invoke-virtual {v5}, Lcom/android/mms/vcard/VCardEntry$PostalData;->getStreet()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_13

    invoke-virtual {v5}, Lcom/android/mms/vcard/VCardEntry$PostalData;->getLocalty()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_13

    invoke-virtual {v5}, Lcom/android/mms/vcard/VCardEntry$PostalData;->getRegion()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_19

    .line 335
    :cond_13
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 336
    .local v1, "address":Ljava/lang/StringBuffer;
    invoke-virtual {v5}, Lcom/android/mms/vcard/VCardEntry$PostalData;->getStreet()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_14

    .line 337
    invoke-virtual {v5}, Lcom/android/mms/vcard/VCardEntry$PostalData;->getStreet()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 338
    const-string v19, " "

    move-object/from16 v0, v19

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 340
    :cond_14
    invoke-virtual {v5}, Lcom/android/mms/vcard/VCardEntry$PostalData;->getLocalty()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_15

    .line 341
    invoke-virtual {v5}, Lcom/android/mms/vcard/VCardEntry$PostalData;->getLocalty()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 342
    const-string v19, ","

    move-object/from16 v0, v19

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 343
    const-string v19, " "

    move-object/from16 v0, v19

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 345
    :cond_15
    invoke-virtual {v5}, Lcom/android/mms/vcard/VCardEntry$PostalData;->getRegion()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_16

    .line 346
    invoke-virtual {v5}, Lcom/android/mms/vcard/VCardEntry$PostalData;->getRegion()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 347
    const-string v19, " "

    move-object/from16 v0, v19

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 349
    :cond_16
    invoke-virtual {v5}, Lcom/android/mms/vcard/VCardEntry$PostalData;->getPostalCode()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_17

    .line 350
    invoke-virtual {v5}, Lcom/android/mms/vcard/VCardEntry$PostalData;->getPostalCode()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 351
    const-string v19, " "

    move-object/from16 v0, v19

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 353
    :cond_17
    invoke-virtual {v5}, Lcom/android/mms/vcard/VCardEntry$PostalData;->getCountry()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_18

    .line 354
    invoke-virtual {v5}, Lcom/android/mms/vcard/VCardEntry$PostalData;->getCountry()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 356
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const v20, 0x7f0a0140

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    invoke-virtual {v5}, Lcom/android/mms/vcard/VCardEntry$PostalData;->getType()I

    move-result v24

    invoke-static/range {v24 .. v24}, Landroid/provider/ContactsContract$CommonDataKinds$StructuredPostal;->getTypeLabelResource(I)I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-virtual/range {v19 .. v21}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 361
    const-string v19, "\r\n"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 330
    .end local v1    # "address":Ljava/lang/StringBuffer;
    :cond_19
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_8

    .line 367
    .end local v5    # "data":Lcom/android/mms/vcard/VCardEntry$PostalData;
    .end local v8    # "i":I
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/model/VcardModel;->mVCardEntry:Lcom/android/mms/vcard/VCardEntry;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/vcard/VCardEntry;->getBirthday()Ljava/lang/String;

    move-result-object v2

    .line 368
    .local v2, "birthday":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_1b

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const v20, 0x7f0a0144

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 370
    invoke-virtual {v15, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 371
    const-string v19, "\r\n"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 375
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/model/VcardModel;->mVCardEntry:Lcom/android/mms/vcard/VCardEntry;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/vcard/VCardEntry;->getNotes()Ljava/util/List;

    move-result-object v11

    .line 376
    .local v11, "notesData":Ljava/util/List;, "Ljava/util/List<Lcom/android/mms/vcard/VCardEntry$NoteData;>;"
    if-eqz v11, :cond_1e

    .line 377
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_9
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v8, v0, :cond_1e

    .line 378
    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/mms/vcard/VCardEntry$NoteData;

    .line 379
    .local v5, "data":Lcom/android/mms/vcard/VCardEntry$NoteData;
    invoke-virtual {v5}, Lcom/android/mms/vcard/VCardEntry$NoteData;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_1d

    .line 380
    if-nez v8, :cond_1c

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const v20, 0x7f0a0142

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 383
    :cond_1c
    invoke-virtual {v5}, Lcom/android/mms/vcard/VCardEntry$NoteData;->getNote()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 384
    const-string v19, "\r\n"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 377
    :cond_1d
    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    .line 389
    .end local v5    # "data":Lcom/android/mms/vcard/VCardEntry$NoteData;
    .end local v8    # "i":I
    :cond_1e
    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_0
.end method

.method protected getNameForUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/mms/model/VcardModel;->mVCardEntry:Lcom/android/mms/vcard/VCardEntry;

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/mms/model/VcardUtil;->parseVCard(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/mms/vcard/VCardEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/model/VcardModel;->mVCardEntry:Lcom/android/mms/vcard/VCardEntry;

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/android/mms/model/VcardModel;->mVCardEntry:Lcom/android/mms/vcard/VCardEntry;

    if-nez v0, :cond_1

    const-string v0, " "

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/mms/model/VcardModel;->ensurePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/mms/model/VcardModel;->mVCardEntry:Lcom/android/mms/vcard/VCardEntry;

    invoke-virtual {v0}, Lcom/android/mms/vcard/VCardEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public handleEvent(Lorg/w3c/dom/events/Event;)V
    .locals 0
    .param p1, "evt"    # Lorg/w3c/dom/events/Event;

    .prologue
    .line 206
    return-void
.end method

.method public hasLocationData()Z
    .locals 3

    .prologue
    .line 394
    const/4 v0, 0x0

    .line 396
    .local v0, "geoData":Lcom/android/mms/vcard/VCardEntry$GeoData;
    iget-object v1, p0, Lcom/android/mms/model/VcardModel;->mVCardEntry:Lcom/android/mms/vcard/VCardEntry;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/model/VcardModel;->mUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 397
    iget-object v1, p0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/mms/model/VcardModel;->mUri:Landroid/net/Uri;

    invoke-static {v1, v2}, Lcom/android/mms/model/VcardUtil;->parseVCard(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/mms/vcard/VCardEntry;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/model/VcardModel;->mVCardEntry:Lcom/android/mms/vcard/VCardEntry;

    .line 400
    :cond_0
    iget-object v1, p0, Lcom/android/mms/model/VcardModel;->mVCardEntry:Lcom/android/mms/vcard/VCardEntry;

    if-eqz v1, :cond_1

    .line 401
    iget-object v1, p0, Lcom/android/mms/model/VcardModel;->mVCardEntry:Lcom/android/mms/vcard/VCardEntry;

    invoke-virtual {v1}, Lcom/android/mms/vcard/VCardEntry;->getGeoData()Lcom/android/mms/vcard/VCardEntry$GeoData;

    move-result-object v0

    .line 404
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/mms/vcard/VCardEntry$GeoData;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 405
    const/4 v1, 0x1

    .line 407
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected initializeFromUri(Landroid/net/Uri;)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 144
    const-string v1, "IcalModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initializeFromUri, uri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mContentType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mSrc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/model/MediaModel;->mSrc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-virtual {p0, p1}, Lcom/android/mms/model/VcardModel;->getNameForUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, "path":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 158
    :cond_0
    return-void

    .line 152
    :cond_1
    iget-object v1, p0, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/mms/model/VcardModel;->getNameFromPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/model/MediaModel;->mSrc:Ljava/lang/String;

    .line 154
    iget-object v1, p0, Lcom/android/mms/model/MediaModel;->mSrc:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    new-instance v1, Lcom/google/android/mms/MmsException;

    const-string v2, "Media source name is unknown."

    invoke-direct {v1, v2}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
