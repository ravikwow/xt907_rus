.class public Lcom/motorola/providers/contacts/MotContactsDatabaseHelper;
.super Ljava/lang/Object;
.source "MotContactsDatabaseHelper.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mSmartDialerTokenDelete:Landroid/database/sqlite/SQLiteStatement;

.field private mSmartDialerTokenInsert:Landroid/database/sqlite/SQLiteStatement;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 102
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lcom/motorola/providers/contacts/MotContactsDatabaseHelper;->mContext:Landroid/content/Context;

    .line 106
    iput-object v0, p0, Lcom/motorola/providers/contacts/MotContactsDatabaseHelper;->mSmartDialerTokenInsert:Landroid/database/sqlite/SQLiteStatement;

    .line 107
    iput-object v0, p0, Lcom/motorola/providers/contacts/MotContactsDatabaseHelper;->mSmartDialerTokenDelete:Landroid/database/sqlite/SQLiteStatement;

    .line 108
    return-void
.end method

.method private bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V
    .locals 0
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;
    .param p2, "index"    # I
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 349
    if-nez p3, :cond_0

    .line 350
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 354
    :goto_0
    return-void

    .line 352
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private static createMotoExtensionLookupTableAndIndexes(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 209
    const-string v0, "CREATE TABLE IF NOT EXISTS moto_extension_lookup (raw_contact_id INTEGER REFERENCES raw_contacts(_id) NOT NULL,data1 INTEGER, data2 TEXT, data3 TEXT, data4 TEXT, data5 TEXT, data6 TEXT, data7 TEXT, data8 TEXT, data9 TEXT, data10 TEXT, data11 TEXT, data12 TEXT, data13 TEXT, data14 TEXT, data15 TEXT );"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 229
    const-string v0, "DROP INDEX IF EXISTS moto_extension_lookup_raw_contact_id_index"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 230
    const-string v0, "CREATE INDEX moto_extension_lookup_raw_contact_id_index ON moto_extension_lookup (raw_contact_id, data2,data1);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 236
    return-void
.end method

.method private static createMotoMetaTable(Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 3
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "version"    # I

    .prologue
    .line 193
    const-string v1, "CREATE TABLE moto_meta_info (version INTEGER);"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 195
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 196
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "version"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 197
    const-string v1, "moto_meta_info"

    const-string v2, "version"

    invoke-virtual {p0, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 198
    return-void
.end method

.method private insertSmartDialerLookupToken(Landroid/database/sqlite/SQLiteDatabase;JILjava/lang/String;)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "rawContactId"    # J
    .param p4, "is_acronym"    # I
    .param p5, "token"    # Ljava/lang/String;

    .prologue
    .line 331
    sget-boolean v0, Lcom/motorola/providers/contacts/util/LogUtils;->DBG:Z

    if-eqz v0, :cond_0

    .line 332
    const-string v0, "MotContactsDatabaseHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enter insertSmartDialerLookupToken(): rawId = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], is_acronym = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", token = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/motorola/providers/contacts/MotContactsDatabaseHelper;->mSmartDialerTokenInsert:Landroid/database/sqlite/SQLiteStatement;

    if-nez v0, :cond_1

    .line 336
    const-string v0, "INSERT OR IGNORE INTO moto_extension_lookup(raw_contact_id,data1,data2) VALUES (?,?,?)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/providers/contacts/MotContactsDatabaseHelper;->mSmartDialerTokenInsert:Landroid/database/sqlite/SQLiteStatement;

    .line 341
    :cond_1
    iget-object v0, p0, Lcom/motorola/providers/contacts/MotContactsDatabaseHelper;->mSmartDialerTokenInsert:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 342
    iget-object v0, p0, Lcom/motorola/providers/contacts/MotContactsDatabaseHelper;->mSmartDialerTokenInsert:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x2

    int-to-long v2, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 343
    iget-object v0, p0, Lcom/motorola/providers/contacts/MotContactsDatabaseHelper;->mSmartDialerTokenInsert:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1, p5}, Lcom/motorola/providers/contacts/MotContactsDatabaseHelper;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 344
    iget-object v0, p0, Lcom/motorola/providers/contacts/MotContactsDatabaseHelper;->mSmartDialerTokenInsert:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    .line 345
    return-void
.end method

.method private static modifyCallsTableForCNAPandCV(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 202
    const-string v0, "ALTER TABLE calls ADD cnap_name TEXT;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 203
    const-string v0, "ALTER TABLE calls ADD cached_convert_number TEXT;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 204
    return-void
.end method

.method private modifyCallsTableToAddIsVideo(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 378
    const-string v0, "ALTER TABLE calls ADD COLUMN is_video INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 379
    return-void
.end method

.method private modifyCallsTableToAddSubId(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 372
    const-string v0, "ALTER TABLE calls ADD COLUMN sub_id TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 373
    return-void
.end method

.method private updateExistingContactsNameLookupTokensForSmartDialer(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 11
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 250
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "raw_contact_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "data1"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "data10"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "data11"

    aput-object v1, v2, v0

    .line 255
    .local v2, "projection":[Ljava/lang/String;
    const-string v10, "mimetype=\'vnd.android.cursor.item/name\'"

    .line 256
    .local v10, "selection":Ljava/lang/String;
    const/4 v9, 0x0

    .line 258
    .local v9, "rawContactCursor":Landroid/database/Cursor;
    :try_start_0
    const-string v1, "view_data"

    const-string v3, "mimetype=\'vnd.android.cursor.item/name\'"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 260
    if-eqz v9, :cond_6

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_6

    .line 261
    sget-boolean v0, Lcom/motorola/providers/contacts/util/LogUtils;->DBG:Z

    if-eqz v0, :cond_0

    .line 262
    const-string v0, "MotContactsDatabaseHelper"

    const-string v1, "start insert exist contacts name token."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 266
    :cond_1
    :goto_0
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 267
    const-string v0, "raw_contact_id"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 269
    .local v5, "rawContactId":J
    const-string v0, "data1"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 271
    .local v7, "name":Ljava/lang/String;
    sget-boolean v0, Lcom/motorola/providers/contacts/util/LogUtils;->DBG:Z

    if-eqz v0, :cond_2

    .line 272
    const-string v0, "MotContactsDatabaseHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rawContactId=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "], name=["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_2
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 276
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 277
    .local v8, "values":Landroid/content/ContentValues;
    const-string v0, "data10"

    const-string v1, "data10"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 279
    const-string v0, "data11"

    const-string v1, "data11"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object v3, p0

    move-object v4, p1

    .line 281
    invoke-virtual/range {v3 .. v8}, Lcom/motorola/providers/contacts/MotContactsDatabaseHelper;->insertNameLookupTokenForSmartDialer(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Landroid/content/ContentValues;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 286
    .end local v5    # "rawContactId":J
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v0

    :try_start_2
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 287
    sget-boolean v1, Lcom/motorola/providers/contacts/util/LogUtils;->DBG:Z

    if-eqz v1, :cond_3

    .line 288
    const-string v1, "MotContactsDatabaseHelper"

    const-string v3, "token insert finished."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 293
    :catchall_1
    move-exception v0

    if-eqz v9, :cond_4

    .line 294
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 295
    const/4 v9, 0x0

    :cond_4
    throw v0

    .line 284
    :cond_5
    :try_start_3
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 286
    :try_start_4
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 287
    sget-boolean v0, Lcom/motorola/providers/contacts/util/LogUtils;->DBG:Z

    if-eqz v0, :cond_6

    .line 288
    const-string v0, "MotContactsDatabaseHelper"

    const-string v1, "token insert finished."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 293
    :cond_6
    if-eqz v9, :cond_7

    .line 294
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 295
    const/4 v9, 0x0

    .line 298
    :cond_7
    return-void
.end method


# virtual methods
.method public deleteNameLookupTokenForSmartDialer(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "rawContactId"    # J

    .prologue
    .line 358
    sget-boolean v0, Lcom/motorola/providers/contacts/util/LogUtils;->DBG:Z

    if-eqz v0, :cond_0

    .line 359
    const-string v0, "MotContactsDatabaseHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enter deleteNameLookupTokenForSmartDialer(): rawId = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/motorola/providers/contacts/MotContactsDatabaseHelper;->mSmartDialerTokenDelete:Landroid/database/sqlite/SQLiteStatement;

    if-nez v0, :cond_1

    .line 362
    const-string v0, "DELETE FROM moto_extension_lookup WHERE raw_contact_id=?"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/providers/contacts/MotContactsDatabaseHelper;->mSmartDialerTokenDelete:Landroid/database/sqlite/SQLiteStatement;

    .line 365
    :cond_1
    iget-object v0, p0, Lcom/motorola/providers/contacts/MotContactsDatabaseHelper;->mSmartDialerTokenDelete:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 366
    iget-object v0, p0, Lcom/motorola/providers/contacts/MotContactsDatabaseHelper;->mSmartDialerTokenDelete:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 367
    return-void
.end method

.method public insertNameLookupTokenForSmartDialer(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Landroid/content/ContentValues;)V
    .locals 9
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "rawContactId"    # J
    .param p4, "displayName"    # Ljava/lang/String;
    .param p5, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 302
    sget-boolean v0, Lcom/motorola/providers/contacts/util/LogUtils;->DBG:Z

    if-eqz v0, :cond_0

    .line 303
    const-string v0, "MotContactsDatabaseHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enter insertNameLookupTokenForSmartDialer(): rawContactId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", displayName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 307
    :cond_1
    sget-boolean v0, Lcom/motorola/providers/contacts/util/LogUtils;->DBG:Z

    if-eqz v0, :cond_2

    .line 308
    const-string v0, "MotContactsDatabaseHelper"

    const-string v1, "displayName is null or empty. No need to insert smartdialer tokens."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    :cond_2
    :goto_0
    return-void

    .line 313
    :cond_3
    iget-object v0, p0, Lcom/motorola/providers/contacts/MotContactsDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, p4, p5}, Lcom/motorola/providers/contacts/smartdialer/SmartDialerTokenUtils;->getSmartDialerInstance(Landroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)Lcom/motorola/providers/contacts/smartdialer/SmartDialerTokenUtils;

    move-result-object v8

    .line 314
    .local v8, "sInstance":Lcom/motorola/providers/contacts/smartdialer/SmartDialerTokenUtils;
    if-eqz v8, :cond_4

    .line 315
    invoke-virtual {v8, p4}, Lcom/motorola/providers/contacts/smartdialer/SmartDialerTokenUtils;->getSmartDialerToken(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v6

    .line 316
    .local v6, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    if-eqz v6, :cond_2

    .line 317
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 318
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 319
    .local v7, "mEntry":Ljava/util/Map$Entry;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/motorola/providers/contacts/MotContactsDatabaseHelper;->insertSmartDialerLookupToken(Landroid/database/sqlite/SQLiteDatabase;JILjava/lang/String;)V

    goto :goto_1

    .line 323
    .end local v6    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .end local v7    # "mEntry":Ljava/util/Map$Entry;
    :cond_4
    const-string v0, "MotContactsDatabaseHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insertNameLookupTokenForSmartDialer(): Failed to get smartdialer instance to generate tokens for rawContactId=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], displayName=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreate(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 115
    const/16 v0, 0xcb

    invoke-static {p2, v0}, Lcom/motorola/providers/contacts/MotContactsDatabaseHelper;->createMotoMetaTable(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 118
    invoke-static {p2}, Lcom/motorola/providers/contacts/MotContactsDatabaseHelper;->modifyCallsTableForCNAPandCV(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 121
    iget-object v0, p0, Lcom/motorola/providers/contacts/MotContactsDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f040000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    invoke-static {p2}, Lcom/motorola/providers/contacts/MotContactsDatabaseHelper;->createMotoExtensionLookupTableAndIndexes(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 126
    :cond_0
    invoke-direct {p0, p2}, Lcom/motorola/providers/contacts/MotContactsDatabaseHelper;->modifyCallsTableToAddSubId(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 129
    invoke-direct {p0, p2}, Lcom/motorola/providers/contacts/MotContactsDatabaseHelper;->modifyCallsTableToAddIsVideo(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 130
    return-void
.end method

.method public onOpen(Lcom/android/providers/contacts/ContactsDatabaseHelper;Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 7
    .param p1, "delegatedDbHelper"    # Lcom/android/providers/contacts/ContactsDatabaseHelper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v5, 0x0

    const/16 v6, 0xcb

    .line 136
    const/4 v2, 0x0

    .line 138
    .local v2, "version":I
    :try_start_0
    const-string v3, "select version from moto_meta_info"

    const/4 v4, 0x0

    invoke-static {p3, v3, v4}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    long-to-int v2, v3

    .line 148
    :goto_0
    if-ge v2, v6, :cond_1

    .line 150
    invoke-virtual {p0, p1, p3, v2}, Lcom/motorola/providers/contacts/MotContactsDatabaseHelper;->upgradeMotExtensionTables(Lcom/android/providers/contacts/ContactsDatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 153
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 154
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v3, "version"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 155
    const-string v3, "moto_meta_info"

    invoke-virtual {p3, v3, v0, v5, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 161
    .end local v0    # "cv":Landroid/content/ContentValues;
    :cond_0
    :goto_1
    return-void

    .line 140
    :catch_0
    move-exception v1

    .line 143
    .local v1, "e":Landroid/database/SQLException;
    invoke-virtual {p0, p2, p3}, Lcom/motorola/providers/contacts/MotContactsDatabaseHelper;->onCreate(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 144
    const/16 v2, 0xcb

    goto :goto_0

    .line 156
    .end local v1    # "e":Landroid/database/SQLException;
    :cond_1
    if-le v2, v6, :cond_0

    .line 157
    const-string v3, "MotContactsDatabaseHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot downgrade mot ext contacts database version from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " down to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public upgradeMotExtensionTables(Lcom/android/providers/contacts/ContactsDatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 2
    .param p1, "delegatedDbHelper"    # Lcom/android/providers/contacts/ContactsDatabaseHelper;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "oldVersion"    # I

    .prologue
    const/16 v1, 0xcb

    .line 166
    const/16 v0, 0xc9

    if-ge p3, v0, :cond_0

    .line 167
    invoke-virtual {p0, p1, p2}, Lcom/motorola/providers/contacts/MotContactsDatabaseHelper;->upgradeToMotoVersion201(Lcom/android/providers/contacts/ContactsDatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 168
    const/16 p3, 0xc9

    .line 172
    :cond_0
    const/16 v0, 0xca

    if-ge p3, v0, :cond_1

    .line 173
    invoke-direct {p0, p2}, Lcom/motorola/providers/contacts/MotContactsDatabaseHelper;->modifyCallsTableToAddSubId(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 174
    const/16 p3, 0xca

    .line 179
    :cond_1
    if-ge p3, v1, :cond_2

    .line 180
    invoke-direct {p0, p2}, Lcom/motorola/providers/contacts/MotContactsDatabaseHelper;->modifyCallsTableToAddIsVideo(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 181
    const/16 p3, 0xcb

    .line 185
    :cond_2
    if-eq p3, v1, :cond_3

    .line 186
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "error upgrading the mot ext database to version 203"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_3
    return-void
.end method

.method public upgradeToMotoVersion201(Lcom/android/providers/contacts/ContactsDatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "delegatedDbHelper"    # Lcom/android/providers/contacts/ContactsDatabaseHelper;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 240
    iget-object v0, p0, Lcom/motorola/providers/contacts/MotContactsDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f040000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    invoke-static {p2}, Lcom/motorola/providers/contacts/MotContactsDatabaseHelper;->createMotoExtensionLookupTableAndIndexes(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 242
    invoke-virtual {p1, p2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->createContactsTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 244
    invoke-direct {p0, p2}, Lcom/motorola/providers/contacts/MotContactsDatabaseHelper;->updateExistingContactsNameLookupTokensForSmartDialer(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 246
    :cond_0
    return-void
.end method
