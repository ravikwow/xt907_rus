.class public Lcom/motorola/providers/contacts/MotContactsExtensionsProvider;
.super Ljava/lang/Object;
.source "MotContactsExtensionsProvider.java"


# static fields
.field public static final sCallsProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final sDataViewProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private final mDelegate:Lcom/android/providers/contacts/ContactsProvider2;

.field private mPartialFieldPickVcard:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x3ee

    .line 52
    new-instance v1, Landroid/content/UriMatcher;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v1, Lcom/motorola/providers/contacts/MotContactsExtensionsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    .line 78
    sget-object v0, Lcom/motorola/providers/contacts/MotContactsExtensionsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    .line 79
    .local v0, "matcher":Landroid/content/UriMatcher;
    const-string v1, "com.android.contacts"

    const-string v2, "contacts/as_partial_field_vcard/*"

    const/16 v3, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 81
    const-string v1, "com.android.contacts"

    const-string v2, "profile/as_partial_field_vcard"

    const/16 v3, 0x3e9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 84
    const-string v1, "com.android.contacts"

    const-string v2, "smartdialer/fuzzy_match_query"

    const/16 v3, 0x3ed

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 85
    const-string v1, "com.android.contacts"

    const-string v2, "smartdialer/exact_match_query"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 86
    const-string v1, "com.android.contacts"

    const-string v2, "smartdialer/exact_match_query/*"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 89
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/motorola/providers/contacts/MotContactsExtensionsProvider;->sDataViewProjectionMap:Ljava/util/HashMap;

    .line 90
    sget-object v1, Lcom/motorola/providers/contacts/MotContactsExtensionsProvider;->sDataViewProjectionMap:Ljava/util/HashMap;

    const-string v2, "data1"

    const-string v3, "data1"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v1, Lcom/motorola/providers/contacts/MotContactsExtensionsProvider;->sDataViewProjectionMap:Ljava/util/HashMap;

    const-string v2, "data2"

    const-string v3, "data2"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v1, Lcom/motorola/providers/contacts/MotContactsExtensionsProvider;->sDataViewProjectionMap:Ljava/util/HashMap;

    const-string v2, "data3"

    const-string v3, "data3"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v1, Lcom/motorola/providers/contacts/MotContactsExtensionsProvider;->sDataViewProjectionMap:Ljava/util/HashMap;

    const-string v2, "display_name"

    const-string v3, "display_name"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v1, Lcom/motorola/providers/contacts/MotContactsExtensionsProvider;->sDataViewProjectionMap:Ljava/util/HashMap;

    const-string v2, "photo_id"

    const-string v3, "photo_id"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v1, Lcom/motorola/providers/contacts/MotContactsExtensionsProvider;->sDataViewProjectionMap:Ljava/util/HashMap;

    const-string v2, "sort_key"

    const-string v3, "sort_key"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v1, Lcom/motorola/providers/contacts/MotContactsExtensionsProvider;->sDataViewProjectionMap:Ljava/util/HashMap;

    const-string v2, "times_contacted"

    const-string v3, "times_contacted"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v1, Lcom/motorola/providers/contacts/MotContactsExtensionsProvider;->sDataViewProjectionMap:Ljava/util/HashMap;

    const-string v2, "starred"

    const-string v3, "starred"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/motorola/providers/contacts/MotContactsExtensionsProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    .line 100
    sget-object v1, Lcom/motorola/providers/contacts/MotContactsExtensionsProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v2, "number"

    const-string v3, "number"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v1, Lcom/motorola/providers/contacts/MotContactsExtensionsProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v2, "date"

    const-string v3, "date"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v1, Lcom/motorola/providers/contacts/MotContactsExtensionsProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v2, "type"

    const-string v3, "type"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v1, Lcom/motorola/providers/contacts/MotContactsExtensionsProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v2, "name"

    const-string v3, "name"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v1, Lcom/motorola/providers/contacts/MotContactsExtensionsProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v2, "numbertype"

    const-string v3, "numbertype"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v1, Lcom/motorola/providers/contacts/MotContactsExtensionsProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v2, "numberlabel"

    const-string v3, "numberlabel"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    return-void
.end method

.method public constructor <init>(Lcom/android/providers/contacts/ContactsProvider2;)V
    .locals 0
    .param p1, "delegate"    # Lcom/android/providers/contacts/ContactsProvider2;

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, Lcom/motorola/providers/contacts/MotContactsExtensionsProvider;->mDelegate:Lcom/android/providers/contacts/ContactsProvider2;

    .line 111
    return-void
.end method

.method public static hasDigitsChar(Ljava/lang/CharSequence;)Z
    .locals 5
    .param p0, "str"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v3, 0x0

    .line 421
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 431
    :cond_0
    :goto_0
    return v3

    .line 424
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 425
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_0

    .line 426
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 427
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 428
    const/4 v3, 0x1

    goto :goto_0

    .line 425
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private outputPartialFieldPickVCardAsVCard(Landroid/net/Uri;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "stream"    # Ljava/io/OutputStream;
    .param p3, "partialFieldPickVcard"    # Ljava/lang/String;

    .prologue
    .line 402
    const/4 v1, 0x0

    .line 404
    .local v1, "writer":Ljava/io/Writer;
    :try_start_0
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-direct {v3, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 405
    .end local v1    # "writer":Ljava/io/Writer;
    .local v2, "writer":Ljava/io/Writer;
    :try_start_1
    invoke-virtual {v2, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 409
    if-eqz v2, :cond_2

    .line 411
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    .line 417
    .end local v2    # "writer":Ljava/io/Writer;
    .restart local v1    # "writer":Ljava/io/Writer;
    :cond_0
    :goto_0
    return-void

    .line 412
    .end local v1    # "writer":Ljava/io/Writer;
    .restart local v2    # "writer":Ljava/io/Writer;
    :catch_0
    move-exception v0

    .line 413
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "MotContactsExtensionsProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IOException during closing output stream: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 414
    .end local v2    # "writer":Ljava/io/Writer;
    .restart local v1    # "writer":Ljava/io/Writer;
    goto :goto_0

    .line 406
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 407
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    const-string v3, "MotContactsExtensionsProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IOException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 409
    if-eqz v1, :cond_0

    .line 411
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 412
    :catch_2
    move-exception v0

    .line 413
    const-string v3, "MotContactsExtensionsProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IOException during closing output stream: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 409
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_2
    if-eqz v1, :cond_1

    .line 411
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 414
    :cond_1
    :goto_3
    throw v3

    .line 412
    :catch_3
    move-exception v0

    .line 413
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v4, "MotContactsExtensionsProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException during closing output stream: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 409
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "writer":Ljava/io/Writer;
    .restart local v2    # "writer":Ljava/io/Writer;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "writer":Ljava/io/Writer;
    .restart local v1    # "writer":Ljava/io/Writer;
    goto :goto_2

    .line 406
    .end local v1    # "writer":Ljava/io/Writer;
    .restart local v2    # "writer":Ljava/io/Writer;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "writer":Ljava/io/Writer;
    .restart local v1    # "writer":Ljava/io/Writer;
    goto :goto_1

    .end local v1    # "writer":Ljava/io/Writer;
    .restart local v2    # "writer":Ljava/io/Writer;
    :cond_2
    move-object v1, v2

    .end local v2    # "writer":Ljava/io/Writer;
    .restart local v1    # "writer":Ljava/io/Writer;
    goto :goto_0
.end method


# virtual methods
.method public deleteInTransaction(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 353
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 389
    sget-object v1, Lcom/motorola/providers/contacts/MotContactsExtensionsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 390
    .local v0, "match":I
    packed-switch v0, :pswitch_data_0

    .line 396
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 393
    :pswitch_0
    const-string v1, "text/x-vcard"

    goto :goto_0

    .line 390
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public insertInTransaction(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 329
    const-wide/16 v0, 0x0

    .line 330
    .local v0, "id":J
    sget-object v3, Lcom/motorola/providers/contacts/MotContactsExtensionsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p2}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 331
    .local v2, "match":I
    packed-switch v2, :pswitch_data_0

    .line 339
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-gez v3, :cond_0

    .line 340
    const/4 p2, 0x0

    .line 343
    .end local p2    # "uri":Landroid/net/Uri;
    :goto_0
    return-object p2

    .line 334
    .restart local p2    # "uri":Landroid/net/Uri;
    :pswitch_0
    const-string v3, "partial_field_vcard"

    invoke-virtual {p3, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/providers/contacts/MotContactsExtensionsProvider;->mPartialFieldPickVcard:Ljava/lang/String;

    goto :goto_0

    .line 343
    :cond_0
    invoke-static {p2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p2

    goto :goto_0

    .line 331
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isUriMatched(Landroid/net/Uri;)Z
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 376
    sget-object v1, Lcom/motorola/providers/contacts/MotContactsExtensionsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 377
    .local v0, "match":I
    packed-switch v0, :pswitch_data_0

    .line 385
    :pswitch_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 382
    :pswitch_1
    const/4 v1, 0x1

    goto :goto_0

    .line 377
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Lcom/android/providers/contacts/ContactsDatabaseHelper;)V
    .locals 0
    .param p1, "dbHelper"    # Lcom/android/providers/contacts/ContactsDatabaseHelper;

    .prologue
    .line 118
    return-void
.end method

.method public openAssetFile(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 358
    sget-object v2, Lcom/motorola/providers/contacts/MotContactsExtensionsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p2}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 359
    .local v1, "match":I
    packed-switch v1, :pswitch_data_0

    .line 372
    const/4 v2, 0x0

    :goto_0
    return-object v2

    .line 365
    :pswitch_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 366
    .local v0, "localStream":Ljava/io/ByteArrayOutputStream;
    iget-object v2, p0, Lcom/motorola/providers/contacts/MotContactsExtensionsProvider;->mPartialFieldPickVcard:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 367
    iget-object v2, p0, Lcom/motorola/providers/contacts/MotContactsExtensionsProvider;->mPartialFieldPickVcard:Ljava/lang/String;

    invoke-direct {p0, p2, v0, v2}, Lcom/motorola/providers/contacts/MotContactsExtensionsProvider;->outputPartialFieldPickVCardAsVCard(Landroid/net/Uri;Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 369
    :cond_0
    iget-object v2, p0, Lcom/motorola/providers/contacts/MotContactsExtensionsProvider;->mDelegate:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v2, v0}, Lcom/android/providers/contacts/ContactsProvider2;->buildAssetFileDescriptor(Ljava/io/ByteArrayOutputStream;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    goto :goto_0

    .line 359
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public query(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 43
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "projection"    # [Ljava/lang/String;
    .param p4, "selection"    # Ljava/lang/String;
    .param p5, "selectionArgs"    # [Ljava/lang/String;
    .param p6, "sortOrder"    # Ljava/lang/String;
    .param p7, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .prologue
    .line 123
    new-instance v3, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v3}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 124
    .local v3, "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    const/16 v16, 0x0

    .line 125
    .local v16, "groupBy":Ljava/lang/String;
    const/16 v17, 0x0

    .line 126
    .local v17, "having":Ljava/lang/String;
    const/16 v18, 0x0

    .line 128
    .local v18, "limit":Ljava/lang/String;
    sget-object v2, Lcom/motorola/providers/contacts/MotContactsExtensionsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v30

    .line 129
    .local v30, "match":I
    packed-switch v30, :pswitch_data_0

    .line 321
    :goto_0
    :pswitch_0
    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setStrict(Z)V

    .line 322
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/motorola/providers/contacts/MotContactsExtensionsProvider;->mDelegate:Lcom/android/providers/contacts/ContactsProvider2;

    move-object/from16 v10, p1

    move-object v11, v3

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    move-object/from16 v15, p6

    move-object/from16 v19, p7

    invoke-virtual/range {v9 .. v19}, Lcom/android/providers/contacts/ContactsProvider2;->query(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v22

    .line 325
    :goto_1
    return-object v22

    .line 131
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v9, 0x2

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 132
    .local v29, "lookupKey":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/providers/contacts/MotContactsExtensionsProvider;->mDelegate:Lcom/android/providers/contacts/ContactsProvider2;

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v2, v0, v1}, Lcom/android/providers/contacts/ContactsProvider2;->lookupContactIdByLookupKey(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v20

    .line 133
    .local v20, "contactId":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/providers/contacts/MotContactsExtensionsProvider;->mDelegate:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v2}, Lcom/android/providers/contacts/ContactsProvider2;->getDelegateDatabaseHelper()Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-result-object v2

    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getContactView(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 134
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/providers/contacts/MotContactsExtensionsProvider;->mDelegate:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v2, Lcom/android/providers/contacts/ContactsProvider2;->sContactsVCardProjectionMap:Lcom/android/common/content/ProjectionMap;

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 135
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/providers/contacts/MotContactsExtensionsProvider;->mDelegate:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p5

    invoke-virtual {v2, v0, v9}, Lcom/android/providers/contacts/ContactsProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p5

    .line 136
    const-string v2, "_id=?"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 142
    .end local v20    # "contactId":J
    .end local v29    # "lookupKey":Ljava/lang/String;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/providers/contacts/MotContactsExtensionsProvider;->mDelegate:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v2}, Lcom/android/providers/contacts/ContactsProvider2;->getDelegateDatabaseHelper()Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-result-object v2

    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getContactView(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 143
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/providers/contacts/MotContactsExtensionsProvider;->mDelegate:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v2, Lcom/android/providers/contacts/ContactsProvider2;->sContactsVCardProjectionMap:Lcom/android/common/content/ProjectionMap;

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    goto :goto_0

    .line 148
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/providers/contacts/MotContactsExtensionsProvider;->mDelegate:Lcom/android/providers/contacts/ContactsProvider2;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForData(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;ZLjava/lang/Integer;)V

    .line 149
    const-string v2, " AND mimetype = \'vnd.android.cursor.item/phone_v2\'"

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 150
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v9, 0x2

    if-le v2, v9, :cond_2

    .line 151
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v25

    .line 152
    .local v25, "filterParam":Ljava/lang/String;
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    .local v37, "sb":Ljava/lang/StringBuilder;
    const-string v2, " AND ("

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-static/range {v25 .. v25}, Lcom/android/providers/contacts/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 158
    .local v34, "normalizedName":Ljava/lang/String;
    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 159
    const-string v2, "raw_contact_id IN "

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    const-string v2, "(SELECT raw_contact_id FROM name_lookup WHERE normalized_name GLOB \'"

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    move-object/from16 v0, v37

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    const-string v2, "*\')"

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    :cond_0
    invoke-static/range {v25 .. v25}, Lcom/motorola/providers/contacts/MotContactsExtensionsProvider;->hasDigitsChar(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 171
    const-string v2, "MotContactsExtensionsProvider"

    const-string v9, "The string contain digits, will convert string to pure digits for number search."

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const-string v2, " OR "

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    invoke-static/range {v25 .. v25}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 174
    .local v35, "number":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_id IN (SELECT _id FROM "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/motorola/providers/contacts/MotContactsExtensionsProvider;->mDelegate:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v9}, Lcom/android/providers/contacts/ContactsProvider2;->getDelegateDatabaseHelper()Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getDataView()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, " WHERE "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, "mimetype"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, "=\'"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, "\' AND "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, "data1"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, "<>\'\'"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, " AND "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, "data1"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, " IS NOT NULL "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, " AND "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, "(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE("

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, "data1"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, ", \' \', \'\'), \'(\', \'\'), \')\', \'\'), \'-\', \'\'), \'.\', \'\'), \';\', \'\'), \'/\', \'\'), \',\', \'\'), \'*\', \'\'), \'+\', \'\'), \'#\', \'\') LIKE \'%"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v35

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, "%\'))"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 183
    .local v23, "dataSelect":Ljava/lang/String;
    move-object/from16 v0, v37

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .end local v23    # "dataSelect":Ljava/lang/String;
    .end local v35    # "number":Ljava/lang/String;
    :cond_1
    const-string v2, ")"

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    move-object/from16 v0, v37

    invoke-virtual {v3, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 188
    .end local v25    # "filterParam":Ljava/lang/String;
    .end local v34    # "normalizedName":Ljava/lang/String;
    .end local v37    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 190
    if-nez p6, :cond_3

    .line 191
    const-string p6, "times_contacted desc,starred desc,sort_key ASC"

    .line 193
    :cond_3
    const-string v18, "25"

    .line 194
    goto/16 :goto_0

    .line 198
    :pswitch_4
    const-string v2, "MotContactsExtensionsProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "query(): smartDialer query. selection=["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p4

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-static/range {p4 .. p4}, Lcom/motorola/providers/contacts/smartdialer/SmartDialerTokenUtils;->getFilterDigitsForMatch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 202
    .local v24, "filterMatchStr":Ljava/lang/String;
    const-string v2, "MotContactsExtensionsProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "query(): filterMatchDigits = ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 205
    const-string v2, "MotContactsExtensionsProvider"

    const-string v9, "query(): query for most recent call."

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const-string v32, "(SELECT * FROM calls GROUP BY number ORDER BY date DESC LIMIT 1)"

    .line 209
    .local v32, "mostRecentSelect":Ljava/lang/String;
    new-instance v4, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v4}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 210
    .local v4, "qb_mostRc":Landroid/database/sqlite/SQLiteQueryBuilder;
    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 211
    sget-object v2, Lcom/motorola/providers/contacts/MotContactsExtensionsProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 213
    move-object/from16 v0, p3

    array-length v2, v0

    new-array v5, v2, [Ljava/lang/String;

    .line 214
    .local v5, "callsProjection":[Ljava/lang/String;
    const/16 v28, 0x0

    .local v28, "i":I
    :goto_2
    move-object/from16 v0, p3

    array-length v2, v0

    move/from16 v0, v28

    if-ge v0, v2, :cond_5

    .line 215
    sget-object v2, Lcom/motorola/providers/contacts/MotContactsExtensionsProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    aget-object v9, p3, v28

    invoke-virtual {v2, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 216
    aget-object v2, p3, v28

    aput-object v2, v5, v28

    .line 214
    :goto_3
    add-int/lit8 v28, v28, 0x1

    goto :goto_2

    .line 218
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "NULL AS "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v9, p3, v28

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v28

    goto :goto_3

    .line 222
    :cond_5
    move-object/from16 v0, p3

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    const-string v9, "0 AS group_id"

    aput-object v9, v5, v2

    .line 224
    const-string v6, "(number!=-2) AND (number!=-1) AND (number!=-3)"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 226
    .local v31, "mostRecentQuery":Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v22

    goto/16 :goto_1

    .line 229
    .end local v4    # "qb_mostRc":Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v5    # "callsProjection":[Ljava/lang/String;
    .end local v28    # "i":I
    .end local v31    # "mostRecentQuery":Ljava/lang/String;
    .end local v32    # "mostRecentSelect":Ljava/lang/String;
    :cond_6
    const-string v2, "MotContactsExtensionsProvider"

    const-string v9, "query(): query view_data & calls table."

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v9, 0x25

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 233
    .local v33, "nameMatchStr":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v9, 0x25

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v9, 0x25

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 236
    .local v36, "numberMatchStr":Ljava/lang/String;
    new-instance v6, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v6}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 243
    .local v6, "qb_viewData":Landroid/database/sqlite/SQLiteQueryBuilder;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/providers/contacts/MotContactsExtensionsProvider;->mDelegate:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v2}, Lcom/android/providers/contacts/ContactsProvider2;->getDelegateDatabaseHelper()Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getDataView()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 244
    sget-object v2, Lcom/motorola/providers/contacts/MotContactsExtensionsProvider;->sDataViewProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 246
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mimetype=\'vnd.android.cursor.item/phone_v2\' AND (data1<>\'\') AND (data1 IS NOT NULL) AND ((raw_contact_id IN (SELECT raw_contact_id FROM moto_extension_lookup WHERE data2 LIKE "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v33

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, ")) OR "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, "(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE("

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, "data1"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, ", \' \', \'\'), \'(\', \'\'), \')\', \'\'), \'-\', \'\'), \'.\', \'\'), \';\', \'\'), \'/\', \'\'), \',\', \'\'), \'*\', \'\'), \'+\', \'\'), \'#\', \'\') LIKE "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v36

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, "))"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    .line 254
    .local v42, "where_data":Ljava/lang/String;
    move-object/from16 v0, v42

    invoke-virtual {v6, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 255
    const/4 v2, 0x1

    invoke-virtual {v6, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 258
    move-object/from16 v0, p3

    array-length v2, v0

    new-array v7, v2, [Ljava/lang/String;

    .line 259
    .local v7, "dataProjection":[Ljava/lang/String;
    const/16 v28, 0x0

    .restart local v28    # "i":I
    :goto_4
    move-object/from16 v0, p3

    array-length v2, v0

    move/from16 v0, v28

    if-ge v0, v2, :cond_8

    .line 260
    sget-object v2, Lcom/motorola/providers/contacts/MotContactsExtensionsProvider;->sDataViewProjectionMap:Ljava/util/HashMap;

    aget-object v9, p3, v28

    invoke-virtual {v2, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 261
    aget-object v2, p3, v28

    aput-object v2, v7, v28

    .line 259
    :goto_5
    add-int/lit8 v28, v28, 0x1

    goto :goto_4

    .line 263
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "NULL AS "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v9, p3, v28

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v28

    goto :goto_5

    .line 268
    :cond_8
    move-object/from16 v0, p3

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    const-string v9, "1 AS group_id"

    aput-object v9, v7, v2

    .line 270
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v12, "times_contacted DESC, starred DESC, sort_key COLLATE LOCALIZED ASC"

    const-string v13, "500"

    invoke-virtual/range {v6 .. v13}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 279
    .local v26, "firstInnerQuery":Ljava/lang/String;
    new-instance v8, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v8}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 280
    .local v8, "qb_calls":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v2, "calls"

    invoke-virtual {v8, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 281
    sget-object v2, Lcom/motorola/providers/contacts/MotContactsExtensionsProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v8, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 283
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "(REPLACE( number, \'-\', \'\') LIKE "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v36

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, " AND ("

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, "name"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, " IS NULL))"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    .line 291
    .local v41, "where_calls":Ljava/lang/String;
    move-object/from16 v0, v41

    invoke-virtual {v8, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 294
    move-object/from16 v0, p3

    array-length v2, v0

    new-array v5, v2, [Ljava/lang/String;

    .line 295
    .restart local v5    # "callsProjection":[Ljava/lang/String;
    const/16 v28, 0x0

    :goto_6
    move-object/from16 v0, p3

    array-length v2, v0

    move/from16 v0, v28

    if-ge v0, v2, :cond_a

    .line 296
    sget-object v2, Lcom/motorola/providers/contacts/MotContactsExtensionsProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    aget-object v9, p3, v28

    invoke-virtual {v2, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 297
    aget-object v2, p3, v28

    aput-object v2, v5, v28

    .line 295
    :goto_7
    add-int/lit8 v28, v28, 0x1

    goto :goto_6

    .line 299
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "NULL AS "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v9, p3, v28

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v28

    goto :goto_7

    .line 304
    :cond_a
    move-object/from16 v0, p3

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    const-string v9, "2 AS group_id"

    aput-object v9, v5, v2

    .line 306
    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v12, "number"

    const/4 v13, 0x0

    const-string v14, "date DESC"

    const-string v15, "40"

    move-object v9, v5

    invoke-virtual/range {v8 .. v15}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 309
    .local v38, "secondInnerQuery":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SELECT * FROM ("

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, ")"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 310
    .local v27, "firstQuery":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SELECT * FROM ("

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v38

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, ")"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    .line 312
    .local v39, "secondQuery":Ljava/lang/String;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v27, v2, v9

    const/4 v9, 0x1

    aput-object v39, v2, v9

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v3, v2, v9, v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .line 315
    .local v40, "unionQuery":Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v40

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v22

    goto/16 :goto_1

    .line 129
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public updateInTransaction(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "values"    # Landroid/content/ContentValues;
    .param p4, "selection"    # Ljava/lang/String;
    .param p5, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 348
    const/4 v0, 0x0

    return v0
.end method
