.class public Lcom/android/providers/contacts/GlobalSearchSupport;
.super Ljava/lang/Object;
.source "GlobalSearchSupport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/contacts/GlobalSearchSupport$1;,
        Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;
    }
.end annotation


# static fields
.field private static final SEARCH_SUGGESTIONS_COLUMNS:[Ljava/lang/String;


# instance fields
.field private final mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 48
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "suggest_text_1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "suggest_text_2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "suggest_icon_1"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "suggest_icon_2"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "suggest_intent_data"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "suggest_intent_action"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "suggest_shortcut_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "suggest_intent_extra_data"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "suggest_last_access_hint"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/contacts/GlobalSearchSupport;->SEARCH_SUGGESTIONS_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/providers/contacts/ContactsProvider2;)V
    .locals 3
    .param p1, "contactsProvider"    # Lcom/android/providers/contacts/ContactsProvider2;

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    iput-object p1, p0, Lcom/android/providers/contacts/GlobalSearchSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    .line 171
    iget-object v1, p0, Lcom/android/providers/contacts/GlobalSearchSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v1}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 180
    .local v0, "telman":Landroid/telephony/TelephonyManager;
    return-void
.end method

.method private addSearchSuggestionsBasedOnFilter(Landroid/database/MatrixCursor;Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 13
    .param p1, "cursor"    # Landroid/database/MatrixCursor;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "projection"    # [Ljava/lang/String;
    .param p4, "selection"    # Ljava/lang/String;
    .param p5, "filter"    # Ljava/lang/String;
    .param p6, "limit"    # Ljava/lang/String;

    .prologue
    .line 225
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 226
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v11, 0x1

    .line 227
    .local v11, "haveFilter":Z
    :goto_0
    const-string v1, "SELECT _id, lookup, photo_thumb_uri, display_name, (SELECT mode FROM agg_presence WHERE presence_contact_id=contacts._id) AS contact_presence, last_time_contacted"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    if-eqz v11, :cond_0

    .line 235
    const-string v1, ", snippet"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    :cond_0
    const-string v1, " FROM "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    invoke-direct {p0}, Lcom/android/providers/contacts/GlobalSearchSupport;->getDatabaseHelper()Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getContactView(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    const-string v1, " AS contacts"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    if-eqz v11, :cond_1

    .line 241
    iget-object v1, p0, Lcom/android/providers/contacts/GlobalSearchSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    const/4 v4, 0x1

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    const-string v7, "\u2026"

    const/4 v8, 0x5

    const/4 v9, 0x0

    move-object/from16 v3, p5

    invoke-virtual/range {v1 .. v9}, Lcom/android/providers/contacts/ContactsProvider2;->appendSearchIndexJoin(Ljava/lang/StringBuilder;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 245
    :cond_1
    if-eqz p4, :cond_2

    .line 246
    const-string v1, " WHERE "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    :cond_2
    if-eqz p6, :cond_3

    .line 249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " LIMIT "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {p2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 252
    .local v10, "c":Landroid/database/Cursor;
    new-instance v12, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;

    const/4 v1, 0x0

    invoke-direct {v12, v1}, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;-><init>(Lcom/android/providers/contacts/GlobalSearchSupport$1;)V

    .line 253
    .local v12, "suggestion":Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;
    move-object/from16 v0, p5

    iput-object v0, v12, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->filter:Ljava/lang/String;

    .line 255
    :goto_1
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 256
    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v12, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->contactId:J

    .line 257
    const/4 v1, 0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v12, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->lookupKey:Ljava/lang/String;

    .line 258
    const/4 v1, 0x2

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v12, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->photoUri:Ljava/lang/String;

    .line 259
    const/4 v1, 0x3

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v12, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->text1:Ljava/lang/String;

    .line 260
    const/4 v1, 0x4

    invoke-interface {v10, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, -0x1

    :goto_2
    iput v1, v12, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->presence:I

    .line 261
    const/4 v1, 0x5

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v12, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->lastAccessTime:Ljava/lang/String;

    .line 262
    if-eqz v11, :cond_4

    .line 263
    const/4 v1, 0x6

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/providers/contacts/GlobalSearchSupport;->shortenSnippet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v12, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->text2:Ljava/lang/String;

    .line 265
    :cond_4
    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->asList([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    .line 266
    invoke-virtual {v12}, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 269
    :catchall_0
    move-exception v1

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v1

    .line 226
    .end local v10    # "c":Landroid/database/Cursor;
    .end local v11    # "haveFilter":Z
    .end local v12    # "suggestion":Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;
    :cond_5
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 260
    .restart local v10    # "c":Landroid/database/Cursor;
    .restart local v11    # "haveFilter":Z
    .restart local v12    # "suggestion":Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;
    :cond_6
    const/4 v1, 0x4

    :try_start_1
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_2

    .line 269
    :cond_7
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 271
    return-object p1
.end method

.method private getDatabaseHelper()Lcom/android/providers/contacts/ContactsDatabaseHelper;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/providers/contacts/GlobalSearchSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsProvider2;->getDelegateDatabaseHelper()Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-result-object v0

    return-object v0
.end method

.method private shortenSnippet(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "snippet"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    const/16 v12, 0xa

    const/4 v11, 0x1

    const/4 v10, -0x1

    .line 281
    if-nez p1, :cond_1

    .line 311
    :cond_0
    :goto_0
    return-object v9

    .line 285
    :cond_1
    const/4 v3, 0x0

    .line 286
    .local v3, "from":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    .line 287
    .local v8, "to":I
    invoke-virtual {p1, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 288
    .local v7, "start":I
    if-eq v7, v10, :cond_0

    .line 292
    invoke-virtual {p1, v12, v7}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v2

    .line 293
    .local v2, "firstNl":I
    if-eq v2, v10, :cond_2

    .line 294
    add-int/lit8 v3, v2, 0x1

    .line 296
    :cond_2
    invoke-virtual {p1, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 297
    .local v1, "end":I
    if-eq v1, v10, :cond_3

    .line 298
    invoke-virtual {p1, v12, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 299
    .local v5, "lastNl":I
    if-eq v5, v10, :cond_3

    .line 300
    move v8, v5

    .line 304
    .end local v5    # "lastNl":I
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 305
    .local v6, "sb":Ljava/lang/StringBuilder;
    move v4, v3

    .local v4, "i":I
    :goto_1
    if-ge v4, v8, :cond_5

    .line 306
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 307
    .local v0, "c":C
    if-eq v0, v11, :cond_4

    if-eq v0, v11, :cond_4

    .line 308
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 305
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 311
    .end local v0    # "c":C
    :cond_5
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_0
.end method


# virtual methods
.method public handleSearchShortcutRefresh(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "lookupKey"    # Ljava/lang/String;
    .param p4, "filter"    # Ljava/lang/String;

    .prologue
    .line 213
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/contacts/GlobalSearchSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v0, p1, p3}, Lcom/android/providers/contacts/ContactsProvider2;->lookupContactIdByLookupKey(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v7

    .line 217
    .local v7, "contactId":J
    :goto_0
    new-instance v1, Landroid/database/MatrixCursor;

    if-nez p2, :cond_0

    sget-object v0, Lcom/android/providers/contacts/GlobalSearchSupport;->SEARCH_SUGGESTIONS_COLUMNS:[Ljava/lang/String;

    :goto_1
    invoke-direct {v1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 219
    .local v1, "cursor":Landroid/database/MatrixCursor;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "contacts._id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/providers/contacts/GlobalSearchSupport;->addSearchSuggestionsBasedOnFilter(Landroid/database/MatrixCursor;Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 214
    .end local v1    # "cursor":Landroid/database/MatrixCursor;
    .end local v7    # "contactId":J
    :catch_0
    move-exception v9

    .line 215
    .local v9, "e":Ljava/lang/IllegalArgumentException;
    const-wide/16 v7, -0x1

    .restart local v7    # "contactId":J
    goto :goto_0

    .end local v9    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    move-object v0, p2

    .line 217
    goto :goto_1
.end method

.method public handleSearchSuggestionsQuery(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "projection"    # [Ljava/lang/String;
    .param p4, "limit"    # Ljava/lang/String;

    .prologue
    .line 184
    new-instance v1, Landroid/database/MatrixCursor;

    if-nez p3, :cond_0

    sget-object v0, Lcom/android/providers/contacts/GlobalSearchSupport;->SEARCH_SUGGESTIONS_COLUMNS:[Ljava/lang/String;

    :goto_0
    invoke-direct {v1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 187
    .local v1, "cursor":Landroid/database/MatrixCursor;
    invoke-virtual {p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_1

    .line 196
    :goto_1
    return-object v1

    .end local v1    # "cursor":Landroid/database/MatrixCursor;
    :cond_0
    move-object v0, p3

    .line 184
    goto :goto_0

    .line 190
    .restart local v1    # "cursor":Landroid/database/MatrixCursor;
    :cond_1
    const/4 v4, 0x0

    .line 191
    .local v4, "selection":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    .local v5, "searchClause":Ljava/lang/String;
    move-object v0, p0

    move-object v2, p1

    move-object v3, p3

    move-object v6, p4

    .line 192
    invoke-direct/range {v0 .. v6}, Lcom/android/providers/contacts/GlobalSearchSupport;->addSearchSuggestionsBasedOnFilter(Landroid/database/MatrixCursor;Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    goto :goto_1
.end method
