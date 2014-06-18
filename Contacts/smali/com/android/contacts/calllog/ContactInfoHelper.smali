.class public Lcom/android/contacts/calllog/ContactInfoHelper;
.super Ljava/lang/Object;
.source "ContactInfoHelper.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mCurrentCountryIso:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "currentCountryIso"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/contacts/calllog/ContactInfoHelper;->mContext:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/android/contacts/calllog/ContactInfoHelper;->mCurrentCountryIso:Ljava/lang/String;

    .line 40
    return-void
.end method

.method private formatPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "normalizedNumber"    # Ljava/lang/String;
    .param p3, "countryIso"    # Ljava/lang/String;
    .param p4, "convertNumber"    # Ljava/lang/String;

    .prologue
    .line 308
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 309
    const-string p1, ""

    .line 324
    .end local p1    # "number":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 312
    .restart local p1    # "number":Ljava/lang/String;
    :cond_1
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 315
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 316
    iget-object p3, p0, Lcom/android/contacts/calllog/ContactInfoHelper;->mCurrentCountryIso:Ljava/lang/String;

    .line 319
    :cond_2
    invoke-static {p1, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 322
    iget-object v0, p0, Lcom/android/contacts/calllog/ContactInfoHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, p4, p2, p3}, Lcom/motorola/internal/telephony/PhoneNumberUtilsExt;->formatNumber(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 324
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/calllog/ContactInfoHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3}, Lcom/motorola/internal/telephony/PhoneNumberUtilsExt;->formatNumber(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private lookupContactFromUri(Landroid/net/Uri;)Lcom/android/contacts/calllog/ContactInfo;
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 112
    iget-object v0, p0, Lcom/android/contacts/calllog/ContactInfoHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/contacts/calllog/PhoneQuery;->_PROJECTION:[Ljava/lang/String;

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 116
    .local v10, "phonesCursor":Landroid/database/Cursor;
    if-eqz v10, :cond_1

    .line 118
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    new-instance v8, Lcom/android/contacts/calllog/ContactInfo;

    invoke-direct {v8}, Lcom/android/contacts/calllog/ContactInfo;-><init>()V

    .line 120
    .local v8, "info":Lcom/android/contacts/calllog/ContactInfo;
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 121
    .local v6, "contactId":J
    const/4 v0, 0x7

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 122
    .local v9, "lookupKey":Ljava/lang/String;
    invoke-static {v6, v7, v9}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v8, Lcom/android/contacts/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    .line 123
    const/4 v0, 0x1

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/android/contacts/calllog/ContactInfo;->name:Ljava/lang/String;

    .line 124
    const/4 v0, 0x2

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Lcom/android/contacts/calllog/ContactInfo;->type:I

    .line 125
    const/4 v0, 0x3

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/android/contacts/calllog/ContactInfo;->label:Ljava/lang/String;

    .line 126
    const/4 v0, 0x4

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/android/contacts/calllog/ContactInfo;->number:Ljava/lang/String;

    .line 127
    const/4 v0, 0x5

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/android/contacts/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    .line 128
    const/4 v0, 0x6

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v8, Lcom/android/contacts/calllog/ContactInfo;->photoId:J

    .line 129
    const/16 v0, 0x8

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/util/UriUtils;->parseUriOrNull(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v8, Lcom/android/contacts/calllog/ContactInfo;->photoUri:Landroid/net/Uri;

    .line 131
    const/4 v0, 0x0

    iput-object v0, v8, Lcom/android/contacts/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    .end local v6    # "contactId":J
    .end local v9    # "lookupKey":Ljava/lang/String;
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 142
    :goto_1
    return-object v8

    .line 133
    .end local v8    # "info":Lcom/android/contacts/calllog/ContactInfo;
    :cond_0
    :try_start_1
    sget-object v8, Lcom/android/contacts/calllog/ContactInfo;->EMPTY:Lcom/android/contacts/calllog/ContactInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v8    # "info":Lcom/android/contacts/calllog/ContactInfo;
    goto :goto_0

    .line 136
    .end local v8    # "info":Lcom/android/contacts/calllog/ContactInfo;
    :catchall_0
    move-exception v0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v0

    .line 140
    :cond_1
    const/4 v8, 0x0

    .restart local v8    # "info":Lcom/android/contacts/calllog/ContactInfo;
    goto :goto_1
.end method

.method private lookupContactFromUriAndMatchNumber(Landroid/net/Uri;Ljava/lang/String;)Lcom/android/contacts/calllog/ContactInfo;
    .locals 15
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/contacts/calllog/ContactInfoHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/contacts/calllog/PhoneQuery;->_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 163
    .local v13, "phonesCursor":Landroid/database/Cursor;
    if-eqz v13, :cond_5

    .line 165
    const/4 v6, 0x0

    .line 166
    .local v6, "contactFound":Z
    :try_start_0
    const-string v11, ""

    .line 167
    .local v11, "origNumber":Ljava/lang/String;
    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    move-object/from16 v11, p2

    .line 170
    :cond_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 171
    const/4 v0, 0x4

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 173
    .local v12, "phoneNumber":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "#"

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "*"

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "#"

    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "*"

    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 176
    :cond_1
    invoke-direct {p0, v12}, Lcom/android/contacts/calllog/ContactInfoHelper;->removeFormatting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 177
    .local v14, "unFormatNumber":Ljava/lang/String;
    if-eqz v14, :cond_0

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    const/4 v6, 0x1

    .line 186
    .end local v12    # "phoneNumber":Ljava/lang/String;
    .end local v14    # "unFormatNumber":Ljava/lang/String;
    :cond_2
    :goto_0
    if-eqz v6, :cond_4

    .line 187
    new-instance v9, Lcom/android/contacts/calllog/ContactInfo;

    invoke-direct {v9}, Lcom/android/contacts/calllog/ContactInfo;-><init>()V

    .line 188
    .local v9, "info":Lcom/android/contacts/calllog/ContactInfo;
    const/4 v0, 0x0

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 189
    .local v7, "contactId":J
    const/4 v0, 0x7

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 190
    .local v10, "lookupKey":Ljava/lang/String;
    invoke-static {v7, v8, v10}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v9, Lcom/android/contacts/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    .line 191
    const/4 v0, 0x1

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/android/contacts/calllog/ContactInfo;->name:Ljava/lang/String;

    .line 192
    const/4 v0, 0x2

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v9, Lcom/android/contacts/calllog/ContactInfo;->type:I

    .line 193
    const/4 v0, 0x3

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/android/contacts/calllog/ContactInfo;->label:Ljava/lang/String;

    .line 194
    const/4 v0, 0x4

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/android/contacts/calllog/ContactInfo;->number:Ljava/lang/String;

    .line 195
    const/4 v0, 0x5

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/android/contacts/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    .line 196
    const/4 v0, 0x6

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v9, Lcom/android/contacts/calllog/ContactInfo;->photoId:J

    .line 197
    const/16 v0, 0x8

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/util/UriUtils;->parseUriOrNull(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v9, Lcom/android/contacts/calllog/ContactInfo;->photoUri:Landroid/net/Uri;

    .line 199
    const/4 v0, 0x0

    iput-object v0, v9, Lcom/android/contacts/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    .end local v7    # "contactId":J
    .end local v10    # "lookupKey":Ljava/lang/String;
    :goto_1
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 210
    .end local v6    # "contactFound":Z
    .end local v11    # "origNumber":Ljava/lang/String;
    :goto_2
    return-object v9

    .line 182
    .end local v9    # "info":Lcom/android/contacts/calllog/ContactInfo;
    .restart local v6    # "contactFound":Z
    .restart local v11    # "origNumber":Ljava/lang/String;
    .restart local v12    # "phoneNumber":Ljava/lang/String;
    :cond_3
    const/4 v6, 0x1

    .line 183
    goto :goto_0

    .line 201
    .end local v12    # "phoneNumber":Ljava/lang/String;
    :cond_4
    :try_start_1
    sget-object v9, Lcom/android/contacts/calllog/ContactInfo;->EMPTY:Lcom/android/contacts/calllog/ContactInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v9    # "info":Lcom/android/contacts/calllog/ContactInfo;
    goto :goto_1

    .line 204
    .end local v9    # "info":Lcom/android/contacts/calllog/ContactInfo;
    .end local v11    # "origNumber":Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v0

    .line 208
    .end local v6    # "contactFound":Z
    :cond_5
    const/4 v9, 0x0

    .restart local v9    # "info":Lcom/android/contacts/calllog/ContactInfo;
    goto :goto_2
.end method

.method private queryContactInfoForPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/calllog/ContactInfo;
    .locals 7
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "countryIso"    # Ljava/lang/String;
    .param p3, "convertNumber"    # Ljava/lang/String;

    .prologue
    .line 265
    move-object v0, p1

    .line 266
    .local v0, "contactNumber":Ljava/lang/String;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 269
    invoke-static {p1, p2}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 270
    .local v3, "numberE164":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 272
    move-object v0, v3

    .line 277
    .end local v3    # "numberE164":Ljava/lang/String;
    :cond_0
    sget-object v5, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 280
    .local v4, "uri":Landroid/net/Uri;
    const/4 v1, 0x0

    .line 281
    .local v1, "info":Lcom/android/contacts/calllog/ContactInfo;
    iget-object v5, p0, Lcom/android/contacts/calllog/ContactInfoHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x11100bf

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 282
    .local v2, "matchSpecialCharsEnabled":Z
    if-eqz v2, :cond_2

    .line 283
    invoke-direct {p0, v4, p1}, Lcom/android/contacts/calllog/ContactInfoHelper;->lookupContactFromUriAndMatchNumber(Landroid/net/Uri;Ljava/lang/String;)Lcom/android/contacts/calllog/ContactInfo;

    move-result-object v1

    .line 289
    :goto_0
    if-eqz v1, :cond_1

    sget-object v5, Lcom/android/contacts/calllog/ContactInfo;->EMPTY:Lcom/android/contacts/calllog/ContactInfo;

    if-eq v1, v5, :cond_1

    .line 290
    const/4 v5, 0x0

    invoke-direct {p0, p1, v5, p2, p3}, Lcom/android/contacts/calllog/ContactInfoHelper;->formatPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/contacts/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    .line 292
    :cond_1
    return-object v1

    .line 286
    :cond_2
    invoke-direct {p0, v4}, Lcom/android/contacts/calllog/ContactInfoHelper;->lookupContactFromUri(Landroid/net/Uri;)Lcom/android/contacts/calllog/ContactInfo;

    move-result-object v1

    goto :goto_0
.end method

.method private queryContactInfoForSipAddress(Ljava/lang/String;)Lcom/android/contacts/calllog/ContactInfo;
    .locals 3
    .param p1, "sipAddress"    # Ljava/lang/String;

    .prologue
    .line 247
    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 248
    .local v0, "uriBuilder":Landroid/net/Uri$Builder;
    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 249
    const-string v1, "sip"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 250
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/contacts/calllog/ContactInfoHelper;->lookupContactFromUri(Landroid/net/Uri;)Lcom/android/contacts/calllog/ContactInfo;

    move-result-object v1

    return-object v1
.end method

.method private removeFormatting(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 214
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 215
    .local v4, "sb":Ljava/lang/StringBuilder;
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 216
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 217
    .local v3, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_4

    .line 218
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 220
    .local v0, "c":C
    const/16 v5, 0xa

    invoke-static {v0, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 221
    .local v1, "digit":I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_1

    .line 222
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 217
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 223
    :cond_1
    const/16 v5, 0x2a

    if-eq v0, v5, :cond_2

    const/16 v5, 0x23

    if-ne v0, v5, :cond_3

    .line 224
    :cond_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 225
    :cond_3
    if-nez v2, :cond_0

    const/16 v5, 0x2b

    if-ne v0, v5, :cond_0

    .line 226
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 229
    .end local v0    # "c":C
    .end local v1    # "digit":I
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method


# virtual methods
.method public lookupNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/calllog/ContactInfo;
    .locals 6
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "countryIso"    # Ljava/lang/String;
    .param p3, "convertNumber"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 59
    invoke-direct {p0, p1}, Lcom/android/contacts/calllog/ContactInfoHelper;->queryContactInfoForSipAddress(Ljava/lang/String;)Lcom/android/contacts/calllog/ContactInfo;

    move-result-object v2

    .line 60
    .local v2, "sipInfo":Lcom/android/contacts/calllog/ContactInfo;
    if-eqz v2, :cond_0

    sget-object v5, Lcom/android/contacts/calllog/ContactInfo;->EMPTY:Lcom/android/contacts/calllog/ContactInfo;

    if-ne v2, v5, :cond_1

    .line 63
    :cond_0
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->getUsernameFromUriNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 64
    .local v4, "username":Ljava/lang/String;
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 65
    invoke-direct {p0, v4, p2, v4}, Lcom/android/contacts/calllog/ContactInfoHelper;->queryContactInfoForPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/calllog/ContactInfo;

    move-result-object v2

    .line 69
    .end local v4    # "username":Ljava/lang/String;
    :cond_1
    move-object v0, v2

    .line 83
    .end local v2    # "sipInfo":Lcom/android/contacts/calllog/ContactInfo;
    .local v0, "info":Lcom/android/contacts/calllog/ContactInfo;
    :goto_0
    if-nez v0, :cond_5

    .line 85
    const/4 v3, 0x0

    .line 98
    .local v3, "updatedInfo":Lcom/android/contacts/calllog/ContactInfo;
    :goto_1
    return-object v3

    .line 72
    .end local v0    # "info":Lcom/android/contacts/calllog/ContactInfo;
    .end local v3    # "updatedInfo":Lcom/android/contacts/calllog/ContactInfo;
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/calllog/ContactInfoHelper;->queryContactInfoForPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/calllog/ContactInfo;

    move-result-object v1

    .line 75
    .local v1, "phoneInfo":Lcom/android/contacts/calllog/ContactInfo;
    if-eqz v1, :cond_3

    sget-object v5, Lcom/android/contacts/calllog/ContactInfo;->EMPTY:Lcom/android/contacts/calllog/ContactInfo;

    if-ne v1, v5, :cond_4

    .line 77
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/contacts/calllog/ContactInfoHelper;->queryContactInfoForSipAddress(Ljava/lang/String;)Lcom/android/contacts/calllog/ContactInfo;

    move-result-object v1

    .line 79
    :cond_4
    move-object v0, v1

    .restart local v0    # "info":Lcom/android/contacts/calllog/ContactInfo;
    goto :goto_0

    .line 88
    .end local v1    # "phoneInfo":Lcom/android/contacts/calllog/ContactInfo;
    :cond_5
    sget-object v5, Lcom/android/contacts/calllog/ContactInfo;->EMPTY:Lcom/android/contacts/calllog/ContactInfo;

    if-ne v0, v5, :cond_6

    .line 90
    new-instance v3, Lcom/android/contacts/calllog/ContactInfo;

    invoke-direct {v3}, Lcom/android/contacts/calllog/ContactInfo;-><init>()V

    .line 91
    .restart local v3    # "updatedInfo":Lcom/android/contacts/calllog/ContactInfo;
    iput-object p1, v3, Lcom/android/contacts/calllog/ContactInfo;->number:Ljava/lang/String;

    .line 92
    const/4 v5, 0x0

    invoke-direct {p0, p1, v5, p2, p3}, Lcom/android/contacts/calllog/ContactInfoHelper;->formatPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/contacts/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    goto :goto_1

    .line 95
    .end local v3    # "updatedInfo":Lcom/android/contacts/calllog/ContactInfo;
    :cond_6
    move-object v3, v0

    .restart local v3    # "updatedInfo":Lcom/android/contacts/calllog/ContactInfo;
    goto :goto_1
.end method
