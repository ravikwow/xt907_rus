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

.field private static final sStrequentPhoneOnlyFrequentProjectionMap:Lcom/android/common/content/ProjectionMap;

.field private static final sStrequentPhoneOnlyStarredProjectionMap:Lcom/android/common/content/ProjectionMap;

.field private static final sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mContactsHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

.field private final mDelegate:Lcom/android/providers/contacts/ContactsProvider2;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const-wide v5, 0x7fffffffffffffffL

    const/16 v4, 0x3ee

    .line 51
    new-instance v1, Landroid/content/UriMatcher;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v1, Lcom/motorola/providers/contacts/MotContactsExtensionsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    .line 75
    sget-object v0, Lcom/motorola/providers/contacts/MotContactsExtensionsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    .line 77
    .local v0, "matcher":Landroid/content/UriMatcher;
    const-string v1, "com.android.contacts"

    const-string v2, "smartdialer/fuzzy_match_query"

    const/16 v3, 0x3ed

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 78
    const-string v1, "com.android.contacts"

    const-string v2, "smartdialer/exact_match_query"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 79
    const-string v1, "com.android.contacts"

    const-string v2, "smartdialer/exact_match_query/*"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 81
    const-string v1, "com.android.contacts"

    const-string v2, "contacts/strequent_moto_legacy/"

    const/16 v3, 0x3ef

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 84
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/motorola/providers/contacts/MotContactsExtensionsProvider;->sDataViewProjectionMap:Ljava/util/HashMap;

    .line 85
    sget-object v1, Lcom/motorola/providers/contacts/MotContactsExtensionsProvider;->sDataViewProjectionMap:Ljava/util/HashMap;

    const-string v2, "data1"

    const-string v3, "data1"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v1, Lcom/motorola/providers/contacts/MotContactsExtensionsProvider;->sDataViewProjectionMap:Ljava/util/HashMap;

    const-string v2, "data2"

    const-string v3, "data2"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v1, Lcom/motorola/providers/contacts/MotContactsExtensionsProvider;->sDataViewProjectionMap:Ljava/util/HashMap;

    const-string v2, "data3"

    const-string v3, "data3"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v1, Lcom/motorola/providers/contacts/MotContactsExtensionsProvider;->sDataViewProjectionMap:Ljava/util/HashMap;

    const-string v2, "display_name"

    const-string v3, "display_name"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v1, Lcom/motorola/providers/contacts/MotContactsExtensionsProvider;->sDataViewProjectionMap:Ljava/util/HashMap;

    const-string v2, "photo_id"

    const-string v3, "photo_id"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v1, Lcom/motorola/providers/contacts/MotContactsExtensionsProvider;->sDataViewProjectionMap:Ljava/util/HashMap;

    const-string v2, "sort_key"

    const-string v3, "sort_key"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v1, Lcom/motorola/providers/contacts/MotContactsExtensionsProvider;->sDataViewProjectionMap:Ljava/util/HashMap;

    const-string v2, "times_contacted"

    const-string v3, "times_contacted"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v1, Lcom/motorola/providers/contacts/MotContactsExtensionsProvider;->sDataViewProjectionMap:Ljava/util/HashMap;

    const-string v2, "starred"

    const-string v3, "starred"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v1, Lcom/motorola/providers/contacts/MotContactsExtensionsProvider;->sDataViewProjectionMap:Ljava/util/HashMap;

    const-string v2, "lookup"

    const-string v3, "lookup"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v1, Lcom/motorola/providers/contacts/MotContactsExtensionsProvider;->sDataViewProjectionMap:Ljava/util/HashMap;

    const-string v2, "contact_id"

    const-string v3, "contact_id"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/motorola/providers/contacts/MotContactsExtensionsProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    .line 97
    sget-object v1, Lcom/motorola/providers/contacts/MotContactsExtensionsProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v2, "number"

    const-string v3, "number"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v1, Lcom/motorola/providers/contacts/MotContactsExtensionsProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v2, "date"

    const-string v3, "date"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v1, Lcom/motorola/providers/contacts/MotContactsExtensionsProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v2, "type"

    const-string v3, "type"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v1, Lcom/motorola/providers/contacts/MotContactsExtensionsProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v2, "name"

    const-string v3, "name"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v1, Lcom/motorola/providers/contacts/MotContactsExtensionsProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v2, "numbertype"

    const-string v3, "numbertype"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v1, Lcom/motorola/providers/contacts/MotContactsExtensionsProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v2, "numberlabel"

    const-string v3, "numberlabel"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    invoke-static {}, Lcom/android/common/content/ProjectionMap;->builder()Lcom/android/common/content/ProjectionMap$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/providers/contacts/ContactsProvider2;->sContactsProjectionMap:Lcom/android/common/content/ProjectionMap;

    invoke-virtual {v1, v2}, Lcom/android/common/content/ProjectionMap$Builder;->addAll(Lcom/android/common/content/ProjectionMap;)Lcom/android/common/content/ProjectionMap$Builder;

    move-result-object v1

    const-string v2, "times_used"

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/common/content/ProjectionMap$Builder;

    move-result-object v1

    const-string v2, "last_time_used"

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/common/content/ProjectionMap$Builder;

    move-result-object v1

    const-string v2, "data1"

    const-string v3, "NULL"

    invoke-virtual {v1, v2, v3}, Lcom/android/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/common/content/ProjectionMap$Builder;

    move-result-object v1

    const-string v2, "data2"

    const-string v3, "NULL"

    invoke-virtual {v1, v2, v3}, Lcom/android/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/common/content/ProjectionMap$Builder;

    move-result-object v1

    const-string v2, "data3"

    const-string v3, "NULL"

    invoke-virtual {v1, v2, v3}, Lcom/android/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/common/content/ProjectionMap$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/content/ProjectionMap$Builder;->build()Lcom/android/common/content/ProjectionMap;

    move-result-object v1

    sput-object v1, Lcom/motorola/providers/contacts/MotContactsExtensionsProvider;->sStrequentPhoneOnlyStarredProjectionMap:Lcom/android/common/content/ProjectionMap;

    .line 129
    invoke-static {}, Lcom/android/common/content/ProjectionMap;->builder()Lcom/android/common/content/ProjectionMap$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/providers/contacts/ContactsProvider2;->sContactsProjectionMap:Lcom/android/common/content/ProjectionMap;

    invoke-virtual {v1, v2}, Lcom/android/common/content/ProjectionMap$Builder;->addAll(Lcom/android/common/content/ProjectionMap;)Lcom/android/common/content/ProjectionMap$Builder;

    move-result-object v1

    const-string v2, "times_used"

    const-string v3, "data_usage_stat.times_used"

    invoke-virtual {v1, v2, v3}, Lcom/android/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/common/content/ProjectionMap$Builder;

    move-result-object v1

    const-string v2, "last_time_used"

    const-string v3, "data_usage_stat.last_time_used"

    invoke-virtual {v1, v2, v3}, Lcom/android/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/common/content/ProjectionMap$Builder;

    move-result-object v1

    const-string v2, "data1"

    invoke-virtual {v1, v2}, Lcom/android/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/common/content/ProjectionMap$Builder;

    move-result-object v1

    const-string v2, "data2"

    invoke-virtual {v1, v2}, Lcom/android/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/common/content/ProjectionMap$Builder;

    move-result-object v1

    const-string v2, "data3"

    invoke-virtual {v1, v2}, Lcom/android/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;)Lcom/android/common/content/ProjectionMap$Builder;

    move-result-object v1

    const-string v2, "is_user_profile"

    const-string v3, "NULL"

    invoke-virtual {v1, v2, v3}, Lcom/android/common/content/ProjectionMap$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/common/content/ProjectionMap$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/content/ProjectionMap$Builder;->build()Lcom/android/common/content/ProjectionMap;

    move-result-object v1

    sput-object v1, Lcom/motorola/providers/contacts/MotContactsExtensionsProvider;->sStrequentPhoneOnlyFrequentProjectionMap:Lcom/android/common/content/ProjectionMap;

    return-void
.end method

.method public constructor <init>(Lcom/android/providers/contacts/ContactsProvider2;)V
    .locals 0
    .param p1, "delegate"    # Lcom/android/providers/contacts/ContactsProvider2;

    .prologue
    .line 142
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput-object p1, p0, Lcom/motorola/providers/contacts/MotContactsExtensionsProvider;->mDelegate:Lcom/android/providers/contacts/ContactsProvider2;

    .line 144
    return-void
.end method

.method public static hasDigitsChar(Ljava/lang/CharSequence;)Z
    .locals 5
    .param p0, "str"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v3, 0x0

    .line 568
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 578
    :cond_0
    :goto_0
    return v3

    .line 571
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 572
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_0

    .line 573
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 574
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 575
    const/4 v3, 0x1

    goto :goto_0

    .line 572
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public deleteInTransaction(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 520
    const/4 v0, 0x0

    .line 521
    .local v0, "count":I
    const/4 v2, 0x0

    .line 523
    .local v2, "notifyUri":Landroid/net/Uri;
    sget-object v3, Lcom/motorola/providers/contacts/MotContactsExtensionsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p2}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 530
    .local v1, "match":I
    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 557
    sget-object v1, Lcom/motorola/providers/contacts/MotContactsExtensionsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 563
    .local v0, "match":I
    const/4 v1, 0x0

    return-object v1
.end method

.method public insertInTransaction(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 488
    const-wide/16 v0, 0x0

    .line 489
    .local v0, "id":J
    sget-object v3, Lcom/motorola/providers/contacts/MotContactsExtensionsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p2}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 496
    .local v2, "match":I
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-gez v3, :cond_0

    .line 497
    const/4 v3, 0x0

    .line 500
    :goto_0
    return-object v3

    :cond_0
    invoke-static {p2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    goto :goto_0
.end method

.method public isUriMatched(Landroid/net/Uri;)Z
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 545
    sget-object v1, Lcom/motorola/providers/contacts/MotContactsExtensionsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 546
    .local v0, "match":I
    packed-switch v0, :pswitch_data_0

    .line 553
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 550
    :pswitch_0
    const/4 v1, 0x1

    goto :goto_0

    .line 546
    nop

    :pswitch_data_0
    .packed-switch 0x3ed
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Lcom/android/providers/contacts/ContactsDatabaseHelper;)V
    .locals 0
    .param p1, "dbHelper"    # Lcom/android/providers/contacts/ContactsDatabaseHelper;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/motorola/providers/contacts/MotContactsExtensionsProvider;->mContactsHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    .line 152
    return-void
.end method

.method public openAssetFile(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 535
    sget-object v1, Lcom/motorola/providers/contacts/MotContactsExtensionsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p2}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 541
    .local v0, "match":I
    const/4 v1, 0x0

    return-object v1
.end method

.method public query(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 57
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "projection"    # [Ljava/lang/String;
    .param p4, "selection"    # Ljava/lang/String;
    .param p5, "selectionArgs"    # [Ljava/lang/String;
    .param p6, "sortOrder"    # Ljava/lang/String;
    .param p7, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .prologue
    .line 157
    new-instance v5, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v5}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 158
    .local v5, "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    const/16 v20, 0x0

    .line 159
    .local v20, "groupBy":Ljava/lang/String;
    const/16 v21, 0x0

    .line 160
    .local v21, "having":Ljava/lang/String;
    const/16 v22, 0x0

    .line 162
    .local v22, "limit":Ljava/lang/String;
    sget-object v4, Lcom/motorola/providers/contacts/MotContactsExtensionsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v36

    .line 163
    .local v36, "match":I
    packed-switch v36, :pswitch_data_0

    .line 480
    :goto_0
    const/4 v4, 0x1

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setStrict(Z)V

    .line 481
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/motorola/providers/contacts/MotContactsExtensionsProvider;->mDelegate:Lcom/android/providers/contacts/ContactsProvider2;

    move-object/from16 v14, p1

    move-object v15, v5

    move-object/from16 v16, p3

    move-object/from16 v17, p4

    move-object/from16 v18, p5

    move-object/from16 v19, p6

    move-object/from16 v23, p7

    invoke-virtual/range {v13 .. v23}, Lcom/android/providers/contacts/ContactsProvider2;->query(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v25

    .line 484
    :cond_0
    :goto_1
    return-object v25

    .line 165
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/motorola/providers/contacts/MotContactsExtensionsProvider;->mDelegate:Lcom/android/providers/contacts/ContactsProvider2;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    invoke-virtual/range {v4 .. v9}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForData(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;ZLjava/lang/Integer;)V

    .line 166
    const-string v4, " AND mimetype = \'vnd.android.cursor.item/phone_v2\'"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 167
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v11, 0x2

    if-le v4, v11, :cond_4

    .line 168
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v29

    .line 169
    .local v29, "filterParam":Ljava/lang/String;
    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    .local v46, "sb":Ljava/lang/StringBuilder;
    const-string v4, " AND ("

    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-static/range {v29 .. v29}, Lcom/android/providers/contacts/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .line 175
    .local v40, "normalizedName":Ljava/lang/String;
    invoke-virtual/range {v40 .. v40}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 176
    const-string v4, "raw_contact_id IN "

    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    const-string v4, "(SELECT raw_contact_id FROM name_lookup WHERE normalized_name GLOB \'"

    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    move-object/from16 v0, v46

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    const-string v4, "*\')"

    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    :cond_1
    invoke-static/range {v29 .. v29}, Lcom/motorola/providers/contacts/MotContactsExtensionsProvider;->hasDigitsChar(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 188
    sget-boolean v4, Lcom/motorola/providers/contacts/util/LogUtils;->DBG:Z

    if-eqz v4, :cond_2

    .line 189
    const-string v4, "MotContactsExtProvider"

    const-string v11, "The string contain digits, will convert string to pure digits for number search."

    invoke-static {v4, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_2
    const-string v4, " OR "

    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-static/range {v29 .. v29}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 193
    .local v41, "number":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "_id IN (SELECT _id FROM view_data WHERE mimetype=\'vnd.android.cursor.item/phone_v2\' AND data1<>\'\' AND data1 IS NOT NULL  AND (REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(data1, \' \', \'\'), \'(\', \'\'), \')\', \'\'), \'-\', \'\'), \'.\', \'\'), \';\', \'\'), \'/\', \'\'), \',\', \'\'), \'*\', \'\'), \'+\', \'\'), \'#\', \'\') LIKE \'%"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v41

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v11, "%\'))"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 202
    .local v26, "dataSelect":Ljava/lang/String;
    move-object/from16 v0, v46

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .end local v26    # "dataSelect":Ljava/lang/String;
    .end local v41    # "number":Ljava/lang/String;
    :cond_3
    const-string v4, ")"

    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    move-object/from16 v0, v46

    invoke-virtual {v5, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 207
    .end local v29    # "filterParam":Ljava/lang/String;
    .end local v40    # "normalizedName":Ljava/lang/String;
    .end local v46    # "sb":Ljava/lang/StringBuilder;
    :cond_4
    const/4 v4, 0x1

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 209
    if-nez p6, :cond_5

    .line 210
    const-string p6, "times_contacted desc,starred desc,sort_key ASC"

    .line 212
    :cond_5
    const-string v22, "25"

    .line 213
    goto/16 :goto_0

    .line 217
    :pswitch_1
    sget-boolean v4, Lcom/motorola/providers/contacts/util/LogUtils;->DBG:Z

    if-eqz v4, :cond_6

    .line 218
    const-string v4, "MotContactsExtProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "query(): smartDialer query. selection=["

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p4

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, "]"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_6
    invoke-static/range {p4 .. p4}, Lcom/motorola/providers/contacts/smartdialer/SmartDialerTokenUtils;->getFilterDigitsForMatch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 222
    .local v28, "filterMatchStr":Ljava/lang/String;
    sget-boolean v4, Lcom/motorola/providers/contacts/util/LogUtils;->DBG:Z

    if-eqz v4, :cond_7

    .line 223
    const-string v4, "MotContactsExtProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "query(): filterMatchDigits = ["

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v28

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, "]"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_7
    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 227
    sget-boolean v4, Lcom/motorola/providers/contacts/util/LogUtils;->DBG:Z

    if-eqz v4, :cond_8

    .line 228
    const-string v4, "MotContactsExtProvider"

    const-string v11, "query(): query for most recent call."

    invoke-static {v4, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_8
    const-string v38, "(SELECT * FROM calls GROUP BY number ORDER BY date DESC LIMIT 1)"

    .line 233
    .local v38, "mostRecentSelect":Ljava/lang/String;
    new-instance v6, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v6}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 234
    .local v6, "qb_mostRc":Landroid/database/sqlite/SQLiteQueryBuilder;
    move-object/from16 v0, v38

    invoke-virtual {v6, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 235
    sget-object v4, Lcom/motorola/providers/contacts/MotContactsExtensionsProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 237
    move-object/from16 v0, p3

    array-length v4, v0

    new-array v7, v4, [Ljava/lang/String;

    .line 238
    .local v7, "callsProjection":[Ljava/lang/String;
    const/16 v34, 0x0

    .local v34, "i":I
    :goto_2
    move-object/from16 v0, p3

    array-length v4, v0

    move/from16 v0, v34

    if-ge v0, v4, :cond_a

    .line 239
    sget-object v4, Lcom/motorola/providers/contacts/MotContactsExtensionsProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    aget-object v11, p3, v34

    invoke-virtual {v4, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 240
    aget-object v4, p3, v34

    aput-object v4, v7, v34

    .line 238
    :goto_3
    add-int/lit8 v34, v34, 0x1

    goto :goto_2

    .line 242
    :cond_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "NULL AS "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v11, p3, v34

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v34

    goto :goto_3

    .line 246
    :cond_a
    move-object/from16 v0, p3

    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    const-string v11, "0 AS group_id"

    aput-object v11, v7, v4

    .line 248
    const-string v8, "(presentation=1)"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v6 .. v13}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 250
    .local v37, "mostRecentQuery":Ljava/lang/String;
    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v25

    goto/16 :goto_1

    .line 253
    .end local v6    # "qb_mostRc":Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v7    # "callsProjection":[Ljava/lang/String;
    .end local v34    # "i":I
    .end local v37    # "mostRecentQuery":Ljava/lang/String;
    .end local v38    # "mostRecentSelect":Ljava/lang/String;
    :cond_b
    sget-boolean v4, Lcom/motorola/providers/contacts/util/LogUtils;->DBG:Z

    if-eqz v4, :cond_c

    .line 254
    const-string v4, "MotContactsExtProvider"

    const-string v11, "query(): query view_data & calls table."

    invoke-static {v4, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v11, 0x25

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 258
    .local v39, "nameMatchStr":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v11, 0x25

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v11, 0x25

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 261
    .local v42, "numberMatchStr":Ljava/lang/String;
    new-instance v8, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v8}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 268
    .local v8, "qb_viewData":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v4, "view_data"

    invoke-virtual {v8, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 269
    sget-object v4, Lcom/motorola/providers/contacts/MotContactsExtensionsProvider;->sDataViewProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v8, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 271
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mimetype=\'vnd.android.cursor.item/phone_v2\' AND (data1<>\'\') AND (data1 IS NOT NULL) AND ((raw_contact_id IN (SELECT raw_contact_id FROM moto_extension_lookup WHERE data2 LIKE "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v39

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v11, ")) OR "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v11, "(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE("

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v11, "data1"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v11, ", \' \', \'\'), \'(\', \'\'), \')\', \'\'), \'-\', \'\'), \'.\', \'\'), \';\', \'\'), \'/\', \'\'), \',\', \'\'), \'*\', \'\'), \'+\', \'\'), \'#\', \'\') LIKE "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v42

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v11, "))"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    .line 279
    .local v56, "where_data":Ljava/lang/String;
    move-object/from16 v0, v56

    invoke-virtual {v8, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 280
    const/4 v4, 0x1

    invoke-virtual {v8, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 283
    move-object/from16 v0, p3

    array-length v4, v0

    new-array v9, v4, [Ljava/lang/String;

    .line 284
    .local v9, "dataProjection":[Ljava/lang/String;
    const/16 v34, 0x0

    .restart local v34    # "i":I
    :goto_4
    move-object/from16 v0, p3

    array-length v4, v0

    move/from16 v0, v34

    if-ge v0, v4, :cond_e

    .line 285
    sget-object v4, Lcom/motorola/providers/contacts/MotContactsExtensionsProvider;->sDataViewProjectionMap:Ljava/util/HashMap;

    aget-object v11, p3, v34

    invoke-virtual {v4, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 286
    aget-object v4, p3, v34

    aput-object v4, v9, v34

    .line 284
    :goto_5
    add-int/lit8 v34, v34, 0x1

    goto :goto_4

    .line 288
    :cond_d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "NULL AS "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v11, p3, v34

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v9, v34

    goto :goto_5

    .line 293
    :cond_e
    move-object/from16 v0, p3

    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    const-string v11, "1 AS group_id"

    aput-object v11, v9, v4

    .line 295
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-string v14, "times_contacted DESC, starred DESC, sort_key COLLATE LOCALIZED ASC"

    const-string v15, "500"

    invoke-virtual/range {v8 .. v15}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 304
    .local v30, "firstInnerQuery":Ljava/lang/String;
    new-instance v10, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v10}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 305
    .local v10, "qb_calls":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v4, "calls"

    invoke-virtual {v10, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 306
    sget-object v4, Lcom/motorola/providers/contacts/MotContactsExtensionsProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v10, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 308
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "(REPLACE( number, \'-\', \'\') LIKE "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v42

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v11, " AND ("

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v11, "name"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v11, " IS NULL))"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v55

    .line 316
    .local v55, "where_calls":Ljava/lang/String;
    move-object/from16 v0, v55

    invoke-virtual {v10, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 319
    move-object/from16 v0, p3

    array-length v4, v0

    new-array v7, v4, [Ljava/lang/String;

    .line 320
    .restart local v7    # "callsProjection":[Ljava/lang/String;
    const/16 v34, 0x0

    :goto_6
    move-object/from16 v0, p3

    array-length v4, v0

    move/from16 v0, v34

    if-ge v0, v4, :cond_10

    .line 321
    sget-object v4, Lcom/motorola/providers/contacts/MotContactsExtensionsProvider;->sCallsProjectionMap:Ljava/util/HashMap;

    aget-object v11, p3, v34

    invoke-virtual {v4, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 322
    aget-object v4, p3, v34

    aput-object v4, v7, v34

    .line 320
    :goto_7
    add-int/lit8 v34, v34, 0x1

    goto :goto_6

    .line 324
    :cond_f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "NULL AS "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v11, p3, v34

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v34

    goto :goto_7

    .line 329
    :cond_10
    move-object/from16 v0, p3

    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    const-string v11, "2 AS group_id"

    aput-object v11, v7, v4

    .line 331
    const/4 v12, 0x0

    const/4 v13, 0x0

    const-string v14, "number"

    const/4 v15, 0x0

    const-string v16, "date DESC"

    const-string v17, "40"

    move-object v11, v7

    invoke-virtual/range {v10 .. v17}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    .line 334
    .local v47, "secondInnerQuery":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SELECT * FROM ("

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v11, ")"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    .line 335
    .local v31, "firstQuery":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SELECT * FROM ("

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v47

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v11, ")"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    .line 337
    .local v48, "secondQuery":Ljava/lang/String;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v31, v4, v11

    const/4 v11, 0x1

    aput-object v48, v4, v11

    const/4 v11, 0x0

    const/4 v13, 0x0

    invoke-virtual {v5, v4, v11, v13}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v54

    .line 340
    .local v54, "unionQuery":Ljava/lang/String;
    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v54

    invoke-virtual {v0, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v25

    goto/16 :goto_1

    .line 354
    .end local v7    # "callsProjection":[Ljava/lang/String;
    .end local v8    # "qb_viewData":Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v9    # "dataProjection":[Ljava/lang/String;
    .end local v10    # "qb_calls":Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v28    # "filterMatchStr":Ljava/lang/String;
    .end local v30    # "firstInnerQuery":Ljava/lang/String;
    .end local v31    # "firstQuery":Ljava/lang/String;
    .end local v34    # "i":I
    .end local v39    # "nameMatchStr":Ljava/lang/String;
    .end local v42    # "numberMatchStr":Ljava/lang/String;
    .end local v47    # "secondInnerQuery":Ljava/lang/String;
    .end local v48    # "secondQuery":Ljava/lang/String;
    .end local v54    # "unionQuery":Ljava/lang/String;
    .end local v55    # "where_calls":Ljava/lang/String;
    .end local v56    # "where_data":Ljava/lang/String;
    :pswitch_2
    const-string v4, "strequent_phone_only"

    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v4, v11}, Lcom/android/providers/contacts/ContactsProvider2;->readBooleanQueryParameter(Landroid/net/Uri;Ljava/lang/String;Z)Z

    move-result v45

    .line 366
    .local v45, "phoneOnly":Z
    const/4 v12, 0x0

    .line 367
    .local v12, "subProjection":[Ljava/lang/String;
    if-eqz p3, :cond_11

    .line 368
    move-object/from16 v0, p3

    array-length v4, v0

    add-int/lit8 v4, v4, 0x2

    new-array v12, v4, [Ljava/lang/String;

    .line 369
    const/4 v4, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p3

    array-length v13, v0

    move-object/from16 v0, p3

    invoke-static {v0, v4, v12, v11, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 370
    move-object/from16 v0, p3

    array-length v4, v0

    add-int/lit8 v4, v4, 0x0

    const-string v11, "times_used"

    aput-object v11, v12, v4

    .line 371
    move-object/from16 v0, p3

    array-length v4, v0

    add-int/lit8 v4, v4, 0x1

    const-string v11, "last_time_used"

    aput-object v11, v12, v4

    .line 375
    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/motorola/providers/contacts/MotContactsExtensionsProvider;->mDelegate:Lcom/android/providers/contacts/ContactsProvider2;

    const/4 v11, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v4, v5, v0, v1, v11}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForContacts(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Z)V

    .line 376
    if-eqz v45, :cond_14

    sget-object v4, Lcom/motorola/providers/contacts/MotContactsExtensionsProvider;->sStrequentPhoneOnlyStarredProjectionMap:Lcom/android/common/content/ProjectionMap;

    :goto_8
    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 379
    if-eqz v45, :cond_12

    .line 380
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object p4, v4, v11

    const/4 v11, 0x1

    const-string v13, "has_phone_number=1"

    aput-object v13, v4, v11

    invoke-static {v4}, Lcom/android/providers/contacts/util/DbQueryUtils;->concatenateClauses([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 383
    :cond_12
    const/4 v4, 0x1

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setStrict(Z)V

    .line 384
    const-string v13, "starred=1"

    const-string v14, "_id"

    const/4 v15, 0x0

    const-string v16, "display_name COLLATE LOCALIZED ASC"

    const/16 v17, 0x0

    move-object v11, v5

    invoke-virtual/range {v11 .. v17}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    .line 389
    .local v51, "starredInnerQuery":Ljava/lang/String;
    new-instance v5, Landroid/database/sqlite/SQLiteQueryBuilder;

    .end local v5    # "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    invoke-direct {v5}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 390
    .restart local v5    # "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    const/4 v4, 0x1

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setStrict(Z)V

    .line 395
    if-eqz v45, :cond_15

    .line 396
    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {v53 .. v53}, Ljava/lang/StringBuilder;-><init>()V

    .line 407
    .local v53, "tableBuilder":Ljava/lang/StringBuilder;
    const-string v4, "data_usage_stat INNER JOIN view_data data ON (data_usage_stat.data_id=data._id AND data_usage_stat.usage_type=0)"

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/motorola/providers/contacts/MotContactsExtensionsProvider;->mDelegate:Lcom/android/providers/contacts/ContactsProvider2;

    const-string v11, "contact_id"

    move-object/from16 v0, v53

    move-object/from16 v1, p3

    invoke-virtual {v4, v0, v1, v11}, Lcom/android/providers/contacts/ContactsProvider2;->appendContactPresenceJoin(Ljava/lang/StringBuilder;[Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/motorola/providers/contacts/MotContactsExtensionsProvider;->mDelegate:Lcom/android/providers/contacts/ContactsProvider2;

    const-string v11, "status_update_id"

    move-object/from16 v0, v53

    move-object/from16 v1, p3

    invoke-virtual {v4, v0, v1, v11}, Lcom/android/providers/contacts/ContactsProvider2;->appendContactStatusUpdateJoin(Ljava/lang/StringBuilder;[Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 418
    sget-object v4, Lcom/motorola/providers/contacts/MotContactsExtensionsProvider;->sStrequentPhoneOnlyFrequentProjectionMap:Lcom/android/common/content/ProjectionMap;

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 419
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/motorola/providers/contacts/MotContactsExtensionsProvider;->mContactsHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v11, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v4, v11}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v43

    .line 421
    .local v43, "phoneMimeTypeId":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/motorola/providers/contacts/MotContactsExtensionsProvider;->mContactsHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v11, "vnd.android.cursor.item/sip_address"

    invoke-virtual {v4, v11}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v49

    .line 423
    .local v49, "sipMimeTypeId":J
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object p4, v4, v11

    const/4 v11, 0x1

    const-string v13, "(starred=0 OR starred IS NULL"

    aput-object v13, v4, v11

    const/4 v11, 0x2

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mimetype_id IN ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-wide/from16 v0, v43

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-wide/from16 v0, v49

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")) AND ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "contact_id"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " IN "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "default_directory"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v4, v11

    invoke-static {v4}, Lcom/android/providers/contacts/util/DbQueryUtils;->concatenateClauses([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 429
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-string v16, "(CASE WHEN (strftime(\'%s\', \'now\') - last_time_used/1000) < 259200 THEN 0  WHEN (strftime(\'%s\', \'now\') - last_time_used/1000) < 604800 THEN 1  WHEN (strftime(\'%s\', \'now\') - last_time_used/1000) < 1209600 THEN 2  WHEN (strftime(\'%s\', \'now\') - last_time_used/1000) < 2592000 THEN 3  ELSE 4 END), times_used DESC"

    const-string v17, "25"

    move-object v11, v5

    invoke-virtual/range {v11 .. v17}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 447
    .end local v43    # "phoneMimeTypeId":J
    .end local v49    # "sipMimeTypeId":J
    .end local v53    # "tableBuilder":Ljava/lang/StringBuilder;
    .local v32, "frequentInnerQuery":Ljava/lang/String;
    :goto_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SELECT * FROM ("

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v11, ")"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    .line 448
    .local v33, "frequentQuery":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SELECT * FROM ("

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v51

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v11, ")"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    .line 451
    .local v52, "starredQuery":Ljava/lang/String;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v52, v4, v11

    const/4 v11, 0x1

    aput-object v33, v4, v11

    const/4 v11, 0x0

    const/4 v13, 0x0

    invoke-virtual {v5, v4, v11, v13}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v54

    .line 462
    .restart local v54    # "unionQuery":Ljava/lang/String;
    const/16 v27, 0x0

    .line 463
    .local v27, "doubledSelectionArgs":[Ljava/lang/String;
    if-eqz p5, :cond_13

    .line 464
    move-object/from16 v0, p5

    array-length v0, v0

    move/from16 v35, v0

    .line 465
    .local v35, "length":I
    mul-int/lit8 v4, v35, 0x2

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v27, v0

    .line 466
    const/4 v4, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p5

    move-object/from16 v1, v27

    move/from16 v2, v35

    invoke-static {v0, v4, v1, v11, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 467
    const/4 v4, 0x0

    move-object/from16 v0, p5

    move-object/from16 v1, v27

    move/from16 v2, v35

    move/from16 v3, v35

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 470
    .end local v35    # "length":I
    :cond_13
    move-object/from16 v0, p1

    move-object/from16 v1, v54

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v25

    .line 471
    .local v25, "cursor":Landroid/database/Cursor;
    if-eqz v25, :cond_0

    .line 472
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/motorola/providers/contacts/MotContactsExtensionsProvider;->mDelegate:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v4}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v11, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    move-object/from16 v0, v25

    invoke-interface {v0, v4, v11}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto/16 :goto_1

    .line 376
    .end local v25    # "cursor":Landroid/database/Cursor;
    .end local v27    # "doubledSelectionArgs":[Ljava/lang/String;
    .end local v32    # "frequentInnerQuery":Ljava/lang/String;
    .end local v33    # "frequentQuery":Ljava/lang/String;
    .end local v51    # "starredInnerQuery":Ljava/lang/String;
    .end local v52    # "starredQuery":Ljava/lang/String;
    .end local v54    # "unionQuery":Ljava/lang/String;
    :cond_14
    sget-object v4, Lcom/android/providers/contacts/ContactsProvider2;->sStrequentStarredProjectionMap:Lcom/android/common/content/ProjectionMap;

    goto/16 :goto_8

    .line 432
    .restart local v51    # "starredInnerQuery":Ljava/lang/String;
    :cond_15
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/motorola/providers/contacts/MotContactsExtensionsProvider;->mDelegate:Lcom/android/providers/contacts/ContactsProvider2;

    const/4 v11, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v4, v5, v0, v1, v11}, Lcom/android/providers/contacts/ContactsProvider2;->setTablesAndProjectionMapForContacts(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Z)V

    .line 433
    sget-object v4, Lcom/android/providers/contacts/ContactsProvider2;->sStrequentFrequentProjectionMap:Lcom/android/common/content/ProjectionMap;

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 434
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object p4, v4, v11

    const/4 v11, 0x1

    const-string v13, "(starred =0 OR starred IS NULL)"

    aput-object v13, v4, v11

    invoke-static {v4}, Lcom/android/providers/contacts/util/DbQueryUtils;->concatenateClauses([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 439
    const-string v24, "contact_id IN default_directory"

    .line 441
    .local v24, "HAVING":Ljava/lang/String;
    const/4 v13, 0x0

    const-string v14, "_id"

    const-string v15, "contact_id IN default_directory"

    const-string v16, "(CASE WHEN (strftime(\'%s\', \'now\') - last_time_used/1000) < 259200 THEN 0  WHEN (strftime(\'%s\', \'now\') - last_time_used/1000) < 604800 THEN 1  WHEN (strftime(\'%s\', \'now\') - last_time_used/1000) < 1209600 THEN 2  WHEN (strftime(\'%s\', \'now\') - last_time_used/1000) < 2592000 THEN 3  ELSE 4 END), times_used DESC"

    const-string v17, "25"

    move-object v11, v5

    invoke-virtual/range {v11 .. v17}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .restart local v32    # "frequentInnerQuery":Ljava/lang/String;
    goto/16 :goto_9

    .line 163
    :pswitch_data_0
    .packed-switch 0x3ed
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public updateInTransaction(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "values"    # Landroid/content/ContentValues;
    .param p4, "selection"    # Ljava/lang/String;
    .param p5, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 505
    const/4 v0, 0x0

    .line 506
    .local v0, "count":I
    const/4 v2, 0x0

    .line 508
    .local v2, "notifyUri":Landroid/net/Uri;
    sget-object v3, Lcom/motorola/providers/contacts/MotContactsExtensionsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p2}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 515
    .local v1, "match":I
    return v0
.end method
