.class public Lcom/android/contacts/calllog/ContactInfoHelper;
.super Ljava/lang/Object;
.source "ContactInfoHelper.java"


# static fields
.field private static final DBG:Z

.field private static final VDBG:Z


# instance fields
.field private final ADDRESS_BOOK_COL_NAMES:[Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mCurrentCountryIso:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    sget-boolean v0, Lcom/android/contacts/activities/DialtactsActivity;->DBG:Z

    sput-boolean v0, Lcom/android/contacts/calllog/ContactInfoHelper;->DBG:Z

    .line 54
    sget-boolean v0, Lcom/android/contacts/activities/DialtactsActivity;->VDBG:Z

    sput-boolean v0, Lcom/android/contacts/calllog/ContactInfoHelper;->VDBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "currentCountryIso"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "number"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/contacts/calllog/ContactInfoHelper;->ADDRESS_BOOK_COL_NAMES:[Ljava/lang/String;

    .line 58
    iput-object p1, p0, Lcom/android/contacts/calllog/ContactInfoHelper;->mContext:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lcom/android/contacts/calllog/ContactInfoHelper;->mCurrentCountryIso:Ljava/lang/String;

    .line 60
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

    .line 323
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

    .line 318
    :cond_2
    invoke-static {p1, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 321
    iget-object v0, p0, Lcom/android/contacts/calllog/ContactInfoHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, p4, p2, p3}, Lcom/motorola/contacts/util/PhoneNumberUtilsExt;->formatNumber(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 323
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/calllog/ContactInfoHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3}, Lcom/motorola/contacts/util/PhoneNumberUtilsExt;->formatNumber(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method static log(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 329
    const-string v0, "ContactInfoHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    return-void
.end method

.method private lookupContactFromUri(Landroid/net/Uri;)Lcom/android/contacts/calllog/ContactInfo;
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 130
    iget-object v0, p0, Lcom/android/contacts/calllog/ContactInfoHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/contacts/calllog/PhoneQuery;->_PROJECTION:[Ljava/lang/String;

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 134
    .local v10, "phonesCursor":Landroid/database/Cursor;
    if-eqz v10, :cond_2

    .line 136
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    new-instance v8, Lcom/android/contacts/calllog/ContactInfo;

    invoke-direct {v8}, Lcom/android/contacts/calllog/ContactInfo;-><init>()V

    .line 138
    .local v8, "info":Lcom/android/contacts/calllog/ContactInfo;
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 139
    .local v6, "contactId":J
    const/4 v0, 0x7

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 140
    .local v9, "lookupKey":Ljava/lang/String;
    invoke-static {v6, v7, v9}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v8, Lcom/android/contacts/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    .line 141
    const/4 v0, 0x1

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/android/contacts/calllog/ContactInfo;->name:Ljava/lang/String;

    .line 142
    const/4 v0, 0x2

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Lcom/android/contacts/calllog/ContactInfo;->type:I

    .line 143
    const/4 v0, 0x3

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/android/contacts/calllog/ContactInfo;->label:Ljava/lang/String;

    .line 144
    const/4 v0, 0x4

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/android/contacts/calllog/ContactInfo;->number:Ljava/lang/String;

    .line 145
    const/4 v0, 0x5

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/android/contacts/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    .line 146
    sget-boolean v0, Lcom/android/contacts/calllog/ContactInfoHelper;->VDBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PhoneQuery.MATCHED_NUMBER = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v8, Lcom/android/contacts/calllog/ContactInfo;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " PhoneQuery.NORMALIZED_NUMBER = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v8, Lcom/android/contacts/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/calllog/ContactInfoHelper;->log(Ljava/lang/String;)V

    .line 147
    :cond_0
    const/4 v0, 0x6

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v8, Lcom/android/contacts/calllog/ContactInfo;->photoId:J

    .line 148
    const/16 v0, 0x8

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/util/UriUtils;->parseUriOrNull(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v8, Lcom/android/contacts/calllog/ContactInfo;->photoUri:Landroid/net/Uri;

    .line 150
    const/4 v0, 0x0

    iput-object v0, v8, Lcom/android/contacts/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    .end local v6    # "contactId":J
    .end local v9    # "lookupKey":Ljava/lang/String;
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 161
    :goto_1
    return-object v8

    .line 152
    .end local v8    # "info":Lcom/android/contacts/calllog/ContactInfo;
    :cond_1
    :try_start_1
    sget-object v8, Lcom/android/contacts/calllog/ContactInfo;->EMPTY:Lcom/android/contacts/calllog/ContactInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v8    # "info":Lcom/android/contacts/calllog/ContactInfo;
    goto :goto_0

    .line 155
    .end local v8    # "info":Lcom/android/contacts/calllog/ContactInfo;
    :catchall_0
    move-exception v0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v0

    .line 159
    :cond_2
    const/4 v8, 0x0

    .restart local v8    # "info":Lcom/android/contacts/calllog/ContactInfo;
    goto :goto_1
.end method

.method private lookupFDNFromNumber(Ljava/lang/String;)Lcom/android/contacts/calllog/ContactInfo;
    .locals 13
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 239
    iget-object v1, p0, Lcom/android/contacts/calllog/ContactInfoHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    .line 240
    .local v9, "fdnSdnLookup":Z
    sget-object v10, Lcom/android/contacts/calllog/ContactInfo;->EMPTY:Lcom/android/contacts/calllog/ContactInfo;

    .line 242
    .local v10, "info":Lcom/android/contacts/calllog/ContactInfo;
    if-eqz v9, :cond_3

    .line 243
    sget-boolean v1, Lcom/android/contacts/calllog/ContactInfoHelper;->VDBG:Z

    if-eqz v1, :cond_0

    const-string v1, "lookupFDNFromNumber "

    invoke-static {v1}, Lcom/android/contacts/calllog/ContactInfoHelper;->log(Ljava/lang/String;)V

    .line 245
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/calllog/ContactInfoHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 246
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const-string v1, "content://icc/fdn"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/calllog/ContactInfoHelper;->ADDRESS_BOOK_COL_NAMES:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 249
    .local v7, "FdnCursor":Landroid/database/Cursor;
    const-string v1, "content://icc/sdn"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/calllog/ContactInfoHelper;->ADDRESS_BOOK_COL_NAMES:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 252
    .local v8, "SdnCursor":Landroid/database/Cursor;
    const-string v1, "content://icc/adn"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/calllog/ContactInfoHelper;->ADDRESS_BOOK_COL_NAMES:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 256
    .local v6, "AdnCursor":Landroid/database/Cursor;
    new-instance v12, Landroid/database/MergeCursor;

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/database/Cursor;

    const/4 v2, 0x0

    aput-object v7, v1, v2

    const/4 v2, 0x1

    aput-object v8, v1, v2

    const/4 v2, 0x2

    aput-object v6, v1, v2

    invoke-direct {v12, v1}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .line 259
    .local v12, "totalCursor":Landroid/database/Cursor;
    if-eqz v12, :cond_6

    .line 260
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 261
    const/4 v11, 0x0

    .line 262
    .local v11, "tempInfo":Lcom/android/contacts/calllog/ContactInfo;
    :goto_0
    invoke-interface {v12}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_1

    .line 264
    iget-object v1, p0, Lcom/android/contacts/calllog/ContactInfoHelper;->ADDRESS_BOOK_COL_NAMES:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 266
    new-instance v11, Lcom/android/contacts/calllog/ContactInfo;

    .end local v11    # "tempInfo":Lcom/android/contacts/calllog/ContactInfo;
    invoke-direct {v11}, Lcom/android/contacts/calllog/ContactInfo;-><init>()V

    .line 267
    .restart local v11    # "tempInfo":Lcom/android/contacts/calllog/ContactInfo;
    iget-object v1, p0, Lcom/android/contacts/calllog/ContactInfoHelper;->ADDRESS_BOOK_COL_NAMES:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v11, Lcom/android/contacts/calllog/ContactInfo;->name:Ljava/lang/String;

    .line 269
    iput-object p1, v11, Lcom/android/contacts/calllog/ContactInfo;->number:Ljava/lang/String;

    .line 270
    const-wide/16 v1, 0x0

    iput-wide v1, v11, Lcom/android/contacts/calllog/ContactInfo;->photoId:J

    .line 271
    const/4 v1, 0x0

    iput-object v1, v11, Lcom/android/contacts/calllog/ContactInfo;->photoUri:Landroid/net/Uri;

    .line 272
    const/4 v1, 0x0

    iput-object v1, v11, Lcom/android/contacts/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    .line 277
    :cond_1
    invoke-interface {v12}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 279
    sget-object v11, Lcom/android/contacts/calllog/ContactInfo;->EMPTY:Lcom/android/contacts/calllog/ContactInfo;

    .line 281
    :cond_2
    move-object v10, v11

    .line 285
    .end local v11    # "tempInfo":Lcom/android/contacts/calllog/ContactInfo;
    :goto_1
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 291
    .end local v0    # "contentResolver":Landroid/content/ContentResolver;
    .end local v6    # "AdnCursor":Landroid/database/Cursor;
    .end local v7    # "FdnCursor":Landroid/database/Cursor;
    .end local v8    # "SdnCursor":Landroid/database/Cursor;
    .end local v12    # "totalCursor":Landroid/database/Cursor;
    :cond_3
    :goto_2
    return-object v10

    .line 275
    .restart local v0    # "contentResolver":Landroid/content/ContentResolver;
    .restart local v6    # "AdnCursor":Landroid/database/Cursor;
    .restart local v7    # "FdnCursor":Landroid/database/Cursor;
    .restart local v8    # "SdnCursor":Landroid/database/Cursor;
    .restart local v11    # "tempInfo":Lcom/android/contacts/calllog/ContactInfo;
    .restart local v12    # "totalCursor":Landroid/database/Cursor;
    :cond_4
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 283
    .end local v11    # "tempInfo":Lcom/android/contacts/calllog/ContactInfo;
    :cond_5
    sget-object v10, Lcom/android/contacts/calllog/ContactInfo;->EMPTY:Lcom/android/contacts/calllog/ContactInfo;

    goto :goto_1

    .line 288
    :cond_6
    const/4 v10, 0x0

    goto :goto_2
.end method

.method private queryContactInfoForPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/calllog/ContactInfo;
    .locals 7
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "countryIso"    # Ljava/lang/String;
    .param p3, "convertNumber"    # Ljava/lang/String;

    .prologue
    .line 193
    sget-boolean v4, Lcom/android/contacts/calllog/ContactInfoHelper;->VDBG:Z

    if-eqz v4, :cond_0

    const-string v4, "queryContactInfoForPhoneNumber "

    invoke-static {v4}, Lcom/android/contacts/calllog/ContactInfoHelper;->log(Ljava/lang/String;)V

    .line 194
    :cond_0
    sget-boolean v4, Lcom/android/contacts/calllog/ContactInfoHelper;->VDBG:Z

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "number = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " countryIso = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/contacts/calllog/ContactInfoHelper;->log(Ljava/lang/String;)V

    .line 195
    :cond_1
    move-object v0, p1

    .line 196
    .local v0, "contactNumber":Ljava/lang/String;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 199
    invoke-static {p1, p2}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 200
    .local v2, "numberE164":Ljava/lang/String;
    sget-boolean v4, Lcom/android/contacts/calllog/ContactInfoHelper;->VDBG:Z

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "numberE164 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/contacts/calllog/ContactInfoHelper;->log(Ljava/lang/String;)V

    .line 201
    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 203
    move-object v0, v2

    .line 208
    .end local v2    # "numberE164":Ljava/lang/String;
    :cond_3
    sget-object v4, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 209
    .local v3, "uri":Landroid/net/Uri;
    invoke-direct {p0, v3}, Lcom/android/contacts/calllog/ContactInfoHelper;->lookupContactFromUri(Landroid/net/Uri;)Lcom/android/contacts/calllog/ContactInfo;

    move-result-object v1

    .line 211
    .local v1, "info":Lcom/android/contacts/calllog/ContactInfo;
    sget-object v4, Lcom/android/contacts/calllog/ContactInfo;->EMPTY:Lcom/android/contacts/calllog/ContactInfo;

    if-ne v1, v4, :cond_4

    .line 212
    invoke-direct {p0, p1}, Lcom/android/contacts/calllog/ContactInfoHelper;->lookupFDNFromNumber(Ljava/lang/String;)Lcom/android/contacts/calllog/ContactInfo;

    move-result-object v1

    .line 214
    :cond_4
    if-eqz v1, :cond_5

    sget-object v4, Lcom/android/contacts/calllog/ContactInfo;->EMPTY:Lcom/android/contacts/calllog/ContactInfo;

    if-eq v1, v4, :cond_5

    .line 215
    iget-object v4, v1, Lcom/android/contacts/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v4, 0x0

    :goto_0
    invoke-direct {p0, p1, v4, p2, p3}, Lcom/android/contacts/calllog/ContactInfoHelper;->formatPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/contacts/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    .line 219
    :cond_5
    sget-boolean v4, Lcom/android/contacts/calllog/ContactInfoHelper;->VDBG:Z

    if-eqz v4, :cond_6

    .line 220
    if-eqz v1, :cond_6

    .line 221
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "queryContactInfoForPhoneNumber: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/contacts/calllog/ContactInfoHelper;->log(Ljava/lang/String;)V

    .line 222
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--------------->info lookupUri "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/contacts/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/contacts/calllog/ContactInfoHelper;->log(Ljava/lang/String;)V

    .line 223
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--------------->info name "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/contacts/calllog/ContactInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/contacts/calllog/ContactInfoHelper;->log(Ljava/lang/String;)V

    .line 224
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--------------->info type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/contacts/calllog/ContactInfo;->type:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/contacts/calllog/ContactInfoHelper;->log(Ljava/lang/String;)V

    .line 225
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--------------->info label "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/contacts/calllog/ContactInfo;->label:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/contacts/calllog/ContactInfoHelper;->log(Ljava/lang/String;)V

    .line 226
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--------------->info number "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/contacts/calllog/ContactInfo;->number:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/contacts/calllog/ContactInfoHelper;->log(Ljava/lang/String;)V

    .line 227
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--------------->info normalizedNumber "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/contacts/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/contacts/calllog/ContactInfoHelper;->log(Ljava/lang/String;)V

    .line 228
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--------------->info photoUri "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/contacts/calllog/ContactInfo;->photoUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/contacts/calllog/ContactInfoHelper;->log(Ljava/lang/String;)V

    .line 229
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--------------->info photoId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v1, Lcom/android/contacts/calllog/ContactInfo;->photoId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/contacts/calllog/ContactInfoHelper;->log(Ljava/lang/String;)V

    .line 230
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--------------->info formattedNumber "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/contacts/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/contacts/calllog/ContactInfoHelper;->log(Ljava/lang/String;)V

    .line 234
    :cond_6
    return-object v1

    .line 215
    :cond_7
    iget-object v4, v1, Lcom/android/contacts/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method private queryContactInfoForSipAddress(Ljava/lang/String;)Lcom/android/contacts/calllog/ContactInfo;
    .locals 3
    .param p1, "sipAddress"    # Ljava/lang/String;

    .prologue
    .line 177
    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 178
    .local v0, "uriBuilder":Landroid/net/Uri$Builder;
    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 179
    const-string v1, "sip"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 180
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/contacts/calllog/ContactInfoHelper;->lookupContactFromUri(Landroid/net/Uri;)Lcom/android/contacts/calllog/ContactInfo;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public lookupNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/calllog/ContactInfo;
    .locals 6
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "countryIso"    # Ljava/lang/String;
    .param p3, "convertNumber"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 79
    invoke-direct {p0, p1}, Lcom/android/contacts/calllog/ContactInfoHelper;->queryContactInfoForSipAddress(Ljava/lang/String;)Lcom/android/contacts/calllog/ContactInfo;

    move-result-object v2

    .line 80
    .local v2, "sipInfo":Lcom/android/contacts/calllog/ContactInfo;
    if-eqz v2, :cond_0

    sget-object v5, Lcom/android/contacts/calllog/ContactInfo;->EMPTY:Lcom/android/contacts/calllog/ContactInfo;

    if-ne v2, v5, :cond_1

    .line 83
    :cond_0
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->getUsernameFromUriNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 84
    .local v4, "username":Ljava/lang/String;
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 85
    invoke-direct {p0, v4, p2, v4}, Lcom/android/contacts/calllog/ContactInfoHelper;->queryContactInfoForPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/calllog/ContactInfo;

    move-result-object v2

    .line 88
    .end local v4    # "username":Ljava/lang/String;
    :cond_1
    move-object v0, v2

    .line 101
    .end local v2    # "sipInfo":Lcom/android/contacts/calllog/ContactInfo;
    .local v0, "info":Lcom/android/contacts/calllog/ContactInfo;
    :goto_0
    if-nez v0, :cond_6

    .line 103
    sget-boolean v5, Lcom/android/contacts/calllog/ContactInfoHelper;->VDBG:Z

    if-eqz v5, :cond_2

    const-string v5, "lookupNumber failed"

    invoke-static {v5}, Lcom/android/contacts/calllog/ContactInfoHelper;->log(Ljava/lang/String;)V

    .line 104
    :cond_2
    const/4 v3, 0x0

    .line 116
    .local v3, "updatedInfo":Lcom/android/contacts/calllog/ContactInfo;
    :goto_1
    return-object v3

    .line 91
    .end local v0    # "info":Lcom/android/contacts/calllog/ContactInfo;
    .end local v3    # "updatedInfo":Lcom/android/contacts/calllog/ContactInfo;
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/calllog/ContactInfoHelper;->queryContactInfoForPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/calllog/ContactInfo;

    move-result-object v1

    .line 93
    .local v1, "phoneInfo":Lcom/android/contacts/calllog/ContactInfo;
    if-eqz v1, :cond_4

    sget-object v5, Lcom/android/contacts/calllog/ContactInfo;->EMPTY:Lcom/android/contacts/calllog/ContactInfo;

    if-ne v1, v5, :cond_5

    .line 95
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/contacts/calllog/ContactInfoHelper;->queryContactInfoForSipAddress(Ljava/lang/String;)Lcom/android/contacts/calllog/ContactInfo;

    move-result-object v1

    .line 97
    :cond_5
    move-object v0, v1

    .restart local v0    # "info":Lcom/android/contacts/calllog/ContactInfo;
    goto :goto_0

    .line 107
    .end local v1    # "phoneInfo":Lcom/android/contacts/calllog/ContactInfo;
    :cond_6
    sget-object v5, Lcom/android/contacts/calllog/ContactInfo;->EMPTY:Lcom/android/contacts/calllog/ContactInfo;

    if-ne v0, v5, :cond_7

    .line 109
    new-instance v3, Lcom/android/contacts/calllog/ContactInfo;

    invoke-direct {v3}, Lcom/android/contacts/calllog/ContactInfo;-><init>()V

    .line 110
    .restart local v3    # "updatedInfo":Lcom/android/contacts/calllog/ContactInfo;
    iput-object p1, v3, Lcom/android/contacts/calllog/ContactInfo;->number:Ljava/lang/String;

    .line 111
    const/4 v5, 0x0

    invoke-direct {p0, p1, v5, p2, p3}, Lcom/android/contacts/calllog/ContactInfoHelper;->formatPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/contacts/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    goto :goto_1

    .line 113
    .end local v3    # "updatedInfo":Lcom/android/contacts/calllog/ContactInfo;
    :cond_7
    move-object v3, v0

    .restart local v3    # "updatedInfo":Lcom/android/contacts/calllog/ContactInfo;
    goto :goto_1
.end method
