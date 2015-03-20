.class public Lcom/motorola/messaging/contact/ContactInfoCache;
.super Ljava/lang/Object;
.source "ContactInfoCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/messaging/contact/ContactInfoCache$CacheEntry;
    }
.end annotation


# static fields
.field private static final CALLER_ID_PROJECTION:[Ljava/lang/String;

.field private static final DEBUG:Z

.field private static final EMAIL_PROJECTION:[Ljava/lang/String;

.field private static final EMAIL_WITH_PRESENCE_URI:Landroid/net/Uri;

.field private static final LOCAL_LOG:Z

.field private static final PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

.field private static sInstance:Lcom/motorola/messaging/contact/ContactInfoCache;


# instance fields
.field private final mCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/motorola/messaging/contact/ContactInfoCache$CacheEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mContactInfoSelectionArgs:[Ljava/lang/String;

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 54
    sget-boolean v0, Lcom/motorola/messaging/logger/Logger;->MSG_DEBUG_ALL:Z

    sput-boolean v0, Lcom/motorola/messaging/contact/ContactInfoCache;->DEBUG:Z

    .line 55
    sget-boolean v0, Lcom/motorola/messaging/contact/ContactInfoCache;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/motorola/messaging/contact/ContactInfoCache;->LOCAL_LOG:Z

    .line 63
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/motorola/messaging/contact/ContactInfoCache;->PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

    .line 65
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "data1"

    aput-object v3, v0, v2

    const-string v3, "data3"

    aput-object v3, v0, v1

    const-string v3, "display_name"

    aput-object v3, v0, v5

    const-string v3, "contact_id"

    aput-object v3, v0, v6

    const-string v3, "_id"

    aput-object v3, v0, v7

    const/4 v3, 0x5

    const-string v4, "data2"

    aput-object v4, v0, v3

    sput-object v0, Lcom/motorola/messaging/contact/ContactInfoCache;->CALLER_ID_PROJECTION:[Ljava/lang/String;

    .line 81
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/motorola/messaging/contact/ContactInfoCache;->EMAIL_WITH_PRESENCE_URI:Landroid/net/Uri;

    .line 86
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "data4"

    aput-object v3, v0, v2

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const-string v1, "display_name"

    aput-object v1, v0, v5

    const-string v1, "_id"

    aput-object v1, v0, v6

    const-string v1, "data3"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "data2"

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/messaging/contact/ContactInfoCache;->EMAIL_PROJECTION:[Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    .line 55
    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/motorola/messaging/contact/ContactInfoCache;->mContactInfoSelectionArgs:[Ljava/lang/String;

    .line 109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/messaging/contact/ContactInfoCache;->mCache:Ljava/util/HashMap;

    .line 177
    iput-object p1, p0, Lcom/motorola/messaging/contact/ContactInfoCache;->mContext:Landroid/content/Context;

    .line 178
    return-void
.end method

.method public static getInstance()Lcom/motorola/messaging/contact/ContactInfoCache;
    .locals 1

    .prologue
    .line 215
    sget-object v0, Lcom/motorola/messaging/contact/ContactInfoCache;->sInstance:Lcom/motorola/messaging/contact/ContactInfoCache;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 208
    new-instance v0, Lcom/motorola/messaging/contact/ContactInfoCache;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/contact/ContactInfoCache;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/motorola/messaging/contact/ContactInfoCache;->sInstance:Lcom/motorola/messaging/contact/ContactInfoCache;

    .line 209
    return-void
.end method

.method private loadAvatar(Lcom/motorola/messaging/contact/ContactInfoCache$CacheEntry;)V
    .locals 12
    .param p1, "entry"    # Lcom/motorola/messaging/contact/ContactInfoCache$CacheEntry;

    .prologue
    const/4 v11, 0x0

    .line 360
    iget-wide v7, p1, Lcom/motorola/messaging/contact/ContactInfoCache$CacheEntry;->contact_id:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-gtz v7, :cond_1

    .line 361
    iput-object v11, p1, Lcom/motorola/messaging/contact/ContactInfoCache$CacheEntry;->mAvatar:Landroid/graphics/Bitmap;

    .line 393
    :cond_0
    :goto_0
    return-void

    .line 363
    :cond_1
    sget-object v7, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v8, p1, Lcom/motorola/messaging/contact/ContactInfoCache$CacheEntry;->contact_id:J

    invoke-static {v7, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 364
    .local v1, "contactUri":Landroid/net/Uri;
    iget-object v7, p0, Lcom/motorola/messaging/contact/ContactInfoCache;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v7, v1}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 366
    .local v0, "avatarDataStream":Ljava/io/InputStream;
    if-eqz v0, :cond_0

    .line 367
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 369
    .local v5, "photo":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 370
    if-eqz v5, :cond_4

    .line 371
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 372
    .local v3, "h":I
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 374
    .local v6, "w":I
    move-object v4, v5

    .line 375
    .local v4, "newPhoto":Landroid/graphics/Bitmap;
    if-le v3, v6, :cond_5

    .line 376
    const/4 v7, 0x0

    sub-int v8, v3, v6

    div-int/lit8 v8, v8, 0x2

    invoke-static {v5, v7, v8, v6, v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 381
    :cond_2
    :goto_1
    if-eq v5, v4, :cond_3

    .line 382
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 385
    :cond_3
    move-object v5, v4

    .line 387
    .end local v3    # "h":I
    .end local v4    # "newPhoto":Landroid/graphics/Bitmap;
    .end local v6    # "w":I
    :cond_4
    iput-object v5, p1, Lcom/motorola/messaging/contact/ContactInfoCache$CacheEntry;->mAvatar:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 388
    :catch_0
    move-exception v2

    .line 389
    .local v2, "e":Ljava/io/IOException;
    iput-object v11, p1, Lcom/motorola/messaging/contact/ContactInfoCache$CacheEntry;->mAvatar:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 377
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v3    # "h":I
    .restart local v4    # "newPhoto":Landroid/graphics/Bitmap;
    .restart local v6    # "w":I
    :cond_5
    if-ge v3, v6, :cond_2

    .line 378
    sub-int v7, v6, v3

    :try_start_1
    div-int/lit8 v7, v7, 0x2

    const/4 v8, 0x0

    invoke-static {v5, v7, v8, v3, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    goto :goto_1
.end method

.method private queryContactInfoByEmail(Ljava/lang/String;)Lcom/motorola/messaging/contact/ContactInfoCache$CacheEntry;
    .locals 10
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 454
    new-instance v8, Lcom/motorola/messaging/contact/ContactInfoCache$CacheEntry;

    invoke-direct {v8}, Lcom/motorola/messaging/contact/ContactInfoCache$CacheEntry;-><init>()V

    .line 456
    .local v8, "entry":Lcom/motorola/messaging/contact/ContactInfoCache$CacheEntry;
    iget-object v0, p0, Lcom/motorola/messaging/contact/ContactInfoCache;->mContactInfoSelectionArgs:[Ljava/lang/String;

    aput-object p1, v0, v1

    .line 458
    iget-object v0, p0, Lcom/motorola/messaging/contact/ContactInfoCache;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/motorola/messaging/contact/ContactInfoCache;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/motorola/messaging/contact/ContactInfoCache;->EMAIL_WITH_PRESENCE_URI:Landroid/net/Uri;

    sget-object v3, Lcom/motorola/messaging/contact/ContactInfoCache;->EMAIL_PROJECTION:[Ljava/lang/String;

    const-string v4, "data1=? AND mimetype=\'vnd.android.cursor.item/email_v2\'"

    iget-object v5, p0, Lcom/motorola/messaging/contact/ContactInfoCache;->mContactInfoSelectionArgs:[Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/motorola/messaging/provider/SqliteManager;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 465
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_3

    .line 467
    :cond_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 468
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v8, Lcom/motorola/messaging/contact/ContactInfoCache$CacheEntry;->contact_id:J

    .line 469
    const/4 v0, 0x3

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v8, Lcom/motorola/messaging/contact/ContactInfoCache$CacheEntry;->contact_table_id:J

    .line 470
    iget-object v0, p0, Lcom/motorola/messaging/contact/ContactInfoCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x4

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/ContactsContract$CommonDataKinds$Email;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v8, Lcom/motorola/messaging/contact/ContactInfoCache$CacheEntry;->label:Ljava/lang/CharSequence;

    .line 472
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 473
    .local v9, "name":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 474
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 476
    :cond_1
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 477
    iput-object v9, v8, Lcom/motorola/messaging/contact/ContactInfoCache$CacheEntry;->name:Ljava/lang/String;

    .line 478
    invoke-direct {p0, v8}, Lcom/motorola/messaging/contact/ContactInfoCache;->loadAvatar(Lcom/motorola/messaging/contact/ContactInfoCache$CacheEntry;)V

    .line 479
    sget-boolean v0, Lcom/motorola/messaging/contact/ContactInfoCache;->LOCAL_LOG:Z

    if-eqz v0, :cond_2

    .line 480
    const-string v0, "ContactInfoCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryEmailDisplayName: name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v8, Lcom/motorola/messaging/contact/ContactInfoCache$CacheEntry;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", email="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 487
    .end local v9    # "name":Ljava/lang/String;
    :cond_2
    invoke-static {v7}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    .line 490
    :cond_3
    return-object v8

    .line 487
    :catchall_0
    move-exception v0

    invoke-static {v7}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    throw v0
.end method

.method private queryContactInfoByNumber(Ljava/lang/String;)Lcom/motorola/messaging/contact/ContactInfoCache$CacheEntry;
    .locals 9
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 315
    new-instance v8, Lcom/motorola/messaging/contact/ContactInfoCache$CacheEntry;

    invoke-direct {v8}, Lcom/motorola/messaging/contact/ContactInfoCache$CacheEntry;-><init>()V

    .line 316
    .local v8, "entry":Lcom/motorola/messaging/contact/ContactInfoCache$CacheEntry;
    iput-object p1, v8, Lcom/motorola/messaging/contact/ContactInfoCache$CacheEntry;->phoneNumber:Ljava/lang/String;

    .line 317
    iget-object v0, p0, Lcom/motorola/messaging/contact/ContactInfoCache;->mContactInfoSelectionArgs:[Ljava/lang/String;

    aput-object p1, v0, v1

    .line 319
    sget-boolean v0, Lcom/motorola/messaging/contact/ContactInfoCache;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 320
    const-string v0, "ContactInfoCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryContactInfoByNumber: number="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/contact/ContactInfoCache;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/motorola/messaging/contact/ContactInfoCache;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/motorola/messaging/contact/ContactInfoCache;->PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

    sget-object v3, Lcom/motorola/messaging/contact/ContactInfoCache;->CALLER_ID_PROJECTION:[Ljava/lang/String;

    const-string v4, "PHONE_NUMBERS_EQUAL(data1,?) AND mimetype=\'vnd.android.cursor.item/phone_v2\'"

    iget-object v5, p0, Lcom/motorola/messaging/contact/ContactInfoCache;->mContactInfoSelectionArgs:[Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/motorola/messaging/provider/SqliteManager;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 329
    .local v7, "cursor":Landroid/database/Cursor;
    if-nez v7, :cond_1

    .line 330
    const-string v0, "ContactInfoCache"

    const-string v1, "queryContactInfoByNumber returned NULL cursor!"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    :goto_0
    return-object v8

    .line 335
    :cond_1
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 336
    iget-object v0, v8, Lcom/motorola/messaging/contact/ContactInfoCache$CacheEntry;->phoneNumber:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 337
    iget-object v0, p0, Lcom/motorola/messaging/contact/ContactInfoCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v8, Lcom/motorola/messaging/contact/ContactInfoCache$CacheEntry;->label:Ljava/lang/CharSequence;

    .line 338
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/motorola/messaging/contact/ContactInfoCache$CacheEntry;->name:Ljava/lang/String;

    .line 339
    const/4 v0, 0x3

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v8, Lcom/motorola/messaging/contact/ContactInfoCache$CacheEntry;->contact_id:J

    .line 340
    const/4 v0, 0x4

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v8, Lcom/motorola/messaging/contact/ContactInfoCache$CacheEntry;->contact_table_id:J

    .line 342
    invoke-direct {p0, v8}, Lcom/motorola/messaging/contact/ContactInfoCache;->loadAvatar(Lcom/motorola/messaging/contact/ContactInfoCache$CacheEntry;)V

    .line 344
    sget-boolean v0, Lcom/motorola/messaging/contact/ContactInfoCache;->LOCAL_LOG:Z

    if-eqz v0, :cond_2

    .line 345
    const-string v0, "ContactInfoCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryContactInfoByNumber: name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v8, Lcom/motorola/messaging/contact/ContactInfoCache$CacheEntry;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", contact_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v8, Lcom/motorola/messaging/contact/ContactInfoCache$CacheEntry;->contact_id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 353
    :cond_2
    :goto_1
    invoke-static {v7}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_0

    .line 348
    :cond_3
    const/4 v0, 0x1

    :try_start_1
    # setter for: Lcom/motorola/messaging/contact/ContactInfoCache$CacheEntry;->isStale:Z
    invoke-static {v8, v0}, Lcom/motorola/messaging/contact/ContactInfoCache$CacheEntry;->access$002(Lcom/motorola/messaging/contact/ContactInfoCache$CacheEntry;Z)Z

    .line 349
    const-string v0, "ContactInfoCache"

    const-string v1, "Contact query returned incorrect match"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 353
    :catchall_0
    move-exception v0

    invoke-static {v7}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    throw v0
.end method


# virtual methods
.method public getContactInfo(Ljava/lang/String;)Lcom/motorola/messaging/contact/ContactInfoCache$CacheEntry;
    .locals 1
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 247
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/motorola/messaging/contact/ContactInfoCache;->getContactInfo(Ljava/lang/String;Z)Lcom/motorola/messaging/contact/ContactInfoCache$CacheEntry;

    move-result-object v0

    return-object v0
.end method

.method public getContactInfo(Ljava/lang/String;Z)Lcom/motorola/messaging/contact/ContactInfoCache$CacheEntry;
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "allowQuery"    # Z

    .prologue
    .line 238
    invoke-static {p1}, Lcom/motorola/messaging/contact/ContactUtils;->isMessagableNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    invoke-virtual {p0, p1, p2}, Lcom/motorola/messaging/contact/ContactInfoCache;->getContactInfoForPhoneNumber(Ljava/lang/String;Z)Lcom/motorola/messaging/contact/ContactInfoCache$CacheEntry;

    move-result-object v0

    .line 242
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/motorola/messaging/contact/ContactInfoCache;->getContactInfoForEmailAddress(Ljava/lang/String;Z)Lcom/motorola/messaging/contact/ContactInfoCache$CacheEntry;

    move-result-object v0

    goto :goto_0
.end method

.method public getContactInfoForEmailAddress(Ljava/lang/String;Z)Lcom/motorola/messaging/contact/ContactInfoCache$CacheEntry;
    .locals 3
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "allowQuery"    # Z

    .prologue
    .line 423
    iget-object v2, p0, Lcom/motorola/messaging/contact/ContactInfoCache;->mCache:Ljava/util/HashMap;

    monitor-enter v2

    .line 424
    :try_start_0
    iget-object v1, p0, Lcom/motorola/messaging/contact/ContactInfoCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 425
    iget-object v1, p0, Lcom/motorola/messaging/contact/ContactInfoCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/contact/ContactInfoCache$CacheEntry;

    .line 426
    .local v0, "entry":Lcom/motorola/messaging/contact/ContactInfoCache$CacheEntry;
    if-eqz p2, :cond_0

    invoke-virtual {v0}, Lcom/motorola/messaging/contact/ContactInfoCache$CacheEntry;->isStale()Z

    move-result v1

    if-nez v1, :cond_2

    .line 427
    :cond_0
    monitor-exit v2

    .line 437
    .end local v0    # "entry":Lcom/motorola/messaging/contact/ContactInfoCache$CacheEntry;
    :goto_0
    return-object v0

    .line 429
    :cond_1
    if-nez p2, :cond_2

    .line 430
    const/4 v0, 0x0

    monitor-exit v2

    goto :goto_0

    .line 432
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 433
    invoke-direct {p0, p1}, Lcom/motorola/messaging/contact/ContactInfoCache;->queryContactInfoByEmail(Ljava/lang/String;)Lcom/motorola/messaging/contact/ContactInfoCache$CacheEntry;

    move-result-object v0

    .line 434
    .restart local v0    # "entry":Lcom/motorola/messaging/contact/ContactInfoCache$CacheEntry;
    iget-object v2, p0, Lcom/motorola/messaging/contact/ContactInfoCache;->mCache:Ljava/util/HashMap;

    monitor-enter v2

    .line 435
    :try_start_2
    iget-object v1, p0, Lcom/motorola/messaging/contact/ContactInfoCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    monitor-exit v2

    goto :goto_0

    .line 438
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public getContactInfoForPhoneNumber(Ljava/lang/String;Z)Lcom/motorola/messaging/contact/ContactInfoCache$CacheEntry;
    .locals 5
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "allowQuery"    # Z

    .prologue
    .line 260
    sget-boolean v1, Lcom/motorola/messaging/contact/ContactInfoCache;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 261
    const-string v1, "ContactInfoCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getContactInfoForPhoneNumber IN, number="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    :cond_0
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 268
    iget-object v2, p0, Lcom/motorola/messaging/contact/ContactInfoCache;->mCache:Ljava/util/HashMap;

    monitor-enter v2

    .line 269
    :try_start_0
    iget-object v1, p0, Lcom/motorola/messaging/contact/ContactInfoCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 270
    iget-object v1, p0, Lcom/motorola/messaging/contact/ContactInfoCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/contact/ContactInfoCache$CacheEntry;

    .line 271
    .local v0, "entry":Lcom/motorola/messaging/contact/ContactInfoCache$CacheEntry;
    sget-boolean v1, Lcom/motorola/messaging/contact/ContactInfoCache;->LOCAL_LOG:Z

    if-eqz v1, :cond_1

    .line 272
    const-string v1, "ContactInfoCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getContactInfoForPhoneNumber OUT (cache), name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/motorola/messaging/contact/ContactInfoCache$CacheEntry;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {v0}, Lcom/motorola/messaging/contact/ContactInfoCache$CacheEntry;->isStale()Z

    move-result v1

    if-nez v1, :cond_4

    .line 275
    :cond_2
    monitor-exit v2

    .line 307
    .end local v0    # "entry":Lcom/motorola/messaging/contact/ContactInfoCache$CacheEntry;
    :goto_0
    return-object v0

    .line 277
    :cond_3
    if-nez p2, :cond_4

    .line 278
    const/4 v0, 0x0

    monitor-exit v2

    goto :goto_0

    .line 280
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_4
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 282
    invoke-direct {p0, p1}, Lcom/motorola/messaging/contact/ContactInfoCache;->queryContactInfoByNumber(Ljava/lang/String;)Lcom/motorola/messaging/contact/ContactInfoCache$CacheEntry;

    move-result-object v0

    .line 284
    .restart local v0    # "entry":Lcom/motorola/messaging/contact/ContactInfoCache$CacheEntry;
    if-eqz v0, :cond_6

    .line 285
    iget-object v1, v0, Lcom/motorola/messaging/contact/ContactInfoCache$CacheEntry;->name:Ljava/lang/String;

    if-nez v1, :cond_7

    .line 286
    iget-object v1, p0, Lcom/motorola/messaging/contact/ContactInfoCache;->mContext:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/motorola/messaging/util/MessageUtils;->getNameFromFdn(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/motorola/messaging/contact/ContactInfoCache$CacheEntry;->name:Ljava/lang/String;

    .line 290
    iget-object v1, v0, Lcom/motorola/messaging/contact/ContactInfoCache$CacheEntry;->name:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 291
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/motorola/messaging/contact/ContactInfoCache$CacheEntry;->isFixedDialContact:Z

    .line 294
    :cond_5
    sget-boolean v1, Lcom/motorola/messaging/contact/ContactInfoCache;->LOCAL_LOG:Z

    if-eqz v1, :cond_6

    .line 295
    const-string v1, "ContactInfoCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getContactInfoForPhoneNumber OUT (fdn), name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/motorola/messaging/contact/ContactInfoCache$CacheEntry;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    :cond_6
    :goto_1
    iget-object v2, p0, Lcom/motorola/messaging/contact/ContactInfoCache;->mCache:Ljava/util/HashMap;

    monitor-enter v2

    .line 305
    :try_start_2
    iget-object v1, p0, Lcom/motorola/messaging/contact/ContactInfoCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    monitor-exit v2

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 298
    :cond_7
    sget-boolean v1, Lcom/motorola/messaging/contact/ContactInfoCache;->LOCAL_LOG:Z

    if-eqz v1, :cond_6

    .line 299
    const-string v1, "ContactInfoCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getContactInfoForPhoneNumber OUT (contact), name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/motorola/messaging/contact/ContactInfoCache$CacheEntry;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public invalidateCache()V
    .locals 5

    .prologue
    .line 184
    iget-object v4, p0, Lcom/motorola/messaging/contact/ContactInfoCache;->mCache:Ljava/util/HashMap;

    monitor-enter v4

    .line 185
    :try_start_0
    iget-object v3, p0, Lcom/motorola/messaging/contact/ContactInfoCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 186
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/motorola/messaging/contact/ContactInfoCache$CacheEntry;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/messaging/contact/ContactInfoCache$CacheEntry;

    .line 187
    .local v1, "entry":Lcom/motorola/messaging/contact/ContactInfoCache$CacheEntry;
    const/4 v3, 0x1

    # setter for: Lcom/motorola/messaging/contact/ContactInfoCache$CacheEntry;->isStale:Z
    invoke-static {v1, v3}, Lcom/motorola/messaging/contact/ContactInfoCache$CacheEntry;->access$002(Lcom/motorola/messaging/contact/ContactInfoCache$CacheEntry;Z)Z

    goto :goto_0

    .line 189
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/motorola/messaging/contact/ContactInfoCache$CacheEntry;>;"
    .end local v1    # "entry":Lcom/motorola/messaging/contact/ContactInfoCache$CacheEntry;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 190
    return-void
.end method

.method public invalidateContact(Ljava/lang/String;)V
    .locals 3
    .param p1, "emailOrNumber"    # Ljava/lang/String;

    .prologue
    .line 196
    iget-object v2, p0, Lcom/motorola/messaging/contact/ContactInfoCache;->mCache:Ljava/util/HashMap;

    monitor-enter v2

    .line 197
    :try_start_0
    iget-object v1, p0, Lcom/motorola/messaging/contact/ContactInfoCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/contact/ContactInfoCache$CacheEntry;

    .line 198
    .local v0, "entry":Lcom/motorola/messaging/contact/ContactInfoCache$CacheEntry;
    if-eqz v0, :cond_0

    .line 199
    const/4 v1, 0x1

    # setter for: Lcom/motorola/messaging/contact/ContactInfoCache$CacheEntry;->isStale:Z
    invoke-static {v0, v1}, Lcom/motorola/messaging/contact/ContactInfoCache$CacheEntry;->access$002(Lcom/motorola/messaging/contact/ContactInfoCache$CacheEntry;Z)Z

    .line 201
    :cond_0
    monitor-exit v2

    .line 202
    return-void

    .line 201
    .end local v0    # "entry":Lcom/motorola/messaging/contact/ContactInfoCache$CacheEntry;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
