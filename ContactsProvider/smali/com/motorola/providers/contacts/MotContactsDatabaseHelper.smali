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

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Lcom/motorola/providers/contacts/MotContactsDatabaseHelper;->mContext:Landroid/content/Context;

    .line 94
    iput-object v0, p0, Lcom/motorola/providers/contacts/MotContactsDatabaseHelper;->mSmartDialerTokenInsert:Landroid/database/sqlite/SQLiteStatement;

    .line 95
    iput-object v0, p0, Lcom/motorola/providers/contacts/MotContactsDatabaseHelper;->mSmartDialerTokenDelete:Landroid/database/sqlite/SQLiteStatement;

    .line 96
    return-void
.end method

.method private bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V
    .locals 0
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;
    .param p2, "index"    # I
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 331
    if-nez p3, :cond_0

    .line 332
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteProgram;->bindNull(I)V

    .line 336
    :goto_0
    return-void

    .line 334
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private static createMotoExtensionLookupTableAndIndexes(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 259
    const-string v0, "CREATE TABLE IF NOT EXISTS moto_extension_lookup (raw_contact_id INTEGER REFERENCES raw_contacts(_id) NOT NULL,data1 INTEGER, data2 TEXT, data3 TEXT, data4 TEXT, data5 TEXT, data6 TEXT, data7 TEXT, data8 TEXT, data9 TEXT, data10 TEXT, data11 TEXT, data12 TEXT, data13 TEXT, data14 TEXT, data15 TEXT );"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 279
    const-string v0, "DROP INDEX IF EXISTS moto_extension_lookup_raw_contact_id_index"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 280
    const-string v0, "CREATE INDEX moto_extension_lookup_raw_contact_id_index ON moto_extension_lookup (raw_contact_id, data2,data1);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 286
    return-void
.end method

.method private static createMotoMetaTable(Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 3
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "version"    # I

    .prologue
    .line 248
    const-string v1, "CREATE TABLE IF NOT EXISTS moto_meta_info (version INTEGER);"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 250
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 251
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "version"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 252
    const-string v1, "moto_meta_info"

    const-string v2, "version"

    invoke-virtual {p0, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 254
    return-void
.end method

.method private insertSmartDialerLookupToken(Landroid/database/sqlite/SQLiteDatabase;JILjava/lang/String;)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "rawContactId"    # J
    .param p4, "is_acronym"    # I
    .param p5, "token"    # Ljava/lang/String;

    .prologue
    .line 315
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

    .line 317
    iget-object v0, p0, Lcom/motorola/providers/contacts/MotContactsDatabaseHelper;->mSmartDialerTokenInsert:Landroid/database/sqlite/SQLiteStatement;

    if-nez v0, :cond_0

    .line 318
    const-string v0, "INSERT OR IGNORE INTO moto_extension_lookup(raw_contact_id,data1,data2) VALUES (?,?,?)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/providers/contacts/MotContactsDatabaseHelper;->mSmartDialerTokenInsert:Landroid/database/sqlite/SQLiteStatement;

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/motorola/providers/contacts/MotContactsDatabaseHelper;->mSmartDialerTokenInsert:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 324
    iget-object v0, p0, Lcom/motorola/providers/contacts/MotContactsDatabaseHelper;->mSmartDialerTokenInsert:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x2

    int-to-long v2, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 325
    iget-object v0, p0, Lcom/motorola/providers/contacts/MotContactsDatabaseHelper;->mSmartDialerTokenInsert:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1, p5}, Lcom/motorola/providers/contacts/MotContactsDatabaseHelper;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 326
    iget-object v0, p0, Lcom/motorola/providers/contacts/MotContactsDatabaseHelper;->mSmartDialerTokenInsert:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    .line 327
    return-void
.end method

.method private static modifyCallsTableForCNAPandCV(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 352
    :try_start_0
    const-string v1, "ALTER TABLE calls ADD cnap_name TEXT;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 353
    const-string v1, "ALTER TABLE calls ADD cached_convert_number TEXT;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    :goto_0
    return-void

    .line 354
    :catch_0
    move-exception v0

    .line 357
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MotContactsDatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to alter table calls: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public deleteNameLookupTokenForSmartDialer(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "rawContactId"    # J

    .prologue
    .line 340
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

    .line 341
    iget-object v0, p0, Lcom/motorola/providers/contacts/MotContactsDatabaseHelper;->mSmartDialerTokenDelete:Landroid/database/sqlite/SQLiteStatement;

    if-nez v0, :cond_0

    .line 342
    const-string v0, "DELETE FROM moto_extension_lookup WHERE raw_contact_id=?"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/providers/contacts/MotContactsDatabaseHelper;->mSmartDialerTokenDelete:Landroid/database/sqlite/SQLiteStatement;

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/motorola/providers/contacts/MotContactsDatabaseHelper;->mSmartDialerTokenDelete:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 346
    iget-object v0, p0, Lcom/motorola/providers/contacts/MotContactsDatabaseHelper;->mSmartDialerTokenDelete:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 347
    return-void
.end method

.method public insertNameLookupTokenForSmartDialer(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Landroid/content/ContentValues;)V
    .locals 9
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "rawContactId"    # J
    .param p4, "displayName"    # Ljava/lang/String;
    .param p5, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 290
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

    .line 292
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 293
    :cond_0
    const-string v0, "MotContactsDatabaseHelper"

    const-string v1, "displayName is null or empty. No need to insert smartdialer tokens."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :cond_1
    :goto_0
    return-void

    .line 297
    :cond_2
    iget-object v0, p0, Lcom/motorola/providers/contacts/MotContactsDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, p4, p5}, Lcom/motorola/providers/contacts/smartdialer/SmartDialerTokenUtils;->getSmartDialerInstance(Landroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)Lcom/motorola/providers/contacts/smartdialer/SmartDialerTokenUtils;

    move-result-object v8

    .line 298
    .local v8, "sInstance":Lcom/motorola/providers/contacts/smartdialer/SmartDialerTokenUtils;
    if-eqz v8, :cond_3

    .line 299
    invoke-virtual {v8, p4}, Lcom/motorola/providers/contacts/smartdialer/SmartDialerTokenUtils;->getSmartDialerToken(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v6

    .line 300
    .local v6, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    if-eqz v6, :cond_1

    .line 301
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 302
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 303
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

    .line 307
    .end local v6    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .end local v7    # "mEntry":Ljava/util/Map$Entry;
    :cond_3
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
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 103
    const/16 v0, 0x70

    invoke-static {p2, v0}, Lcom/motorola/providers/contacts/MotContactsDatabaseHelper;->createMotoMetaTable(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 106
    invoke-static {p2}, Lcom/motorola/providers/contacts/MotContactsDatabaseHelper;->createMotoExtensionLookupTableAndIndexes(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 109
    invoke-static {p2}, Lcom/motorola/providers/contacts/MotContactsDatabaseHelper;->modifyCallsTableForCNAPandCV(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 111
    return-void
.end method

.method public onOpen(Lcom/android/providers/contacts/ContactsDatabaseHelper;Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6
    .param p1, "delegatedDbHelper"    # Lcom/android/providers/contacts/ContactsDatabaseHelper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v4, 0x0

    const/16 v5, 0x70

    .line 118
    const-string v2, "select version from moto_meta_info"

    invoke-static {p3, v2, v4}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v2

    long-to-int v1, v2

    .line 122
    .local v1, "version":I
    if-ge v1, v5, :cond_1

    .line 124
    invoke-virtual {p0, p1, p3, v1}, Lcom/motorola/providers/contacts/MotContactsDatabaseHelper;->upgradeMotExtensionTables(Lcom/android/providers/contacts/ContactsDatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 127
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 128
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v2, "version"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 129
    const-string v2, "moto_meta_info"

    invoke-virtual {p3, v2, v0, v4, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 135
    .end local v0    # "cv":Landroid/content/ContentValues;
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    if-le v1, v5, :cond_0

    .line 131
    const-string v2, "MotContactsDatabaseHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot downgrade mot ext contacts database version from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " down to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onUpgrade(Lcom/android/providers/contacts/ContactsDatabaseHelper;Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 6
    .param p1, "delegatedDbHelper"    # Lcom/android/providers/contacts/ContactsDatabaseHelper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p4, "oldVersion"    # I
    .param p5, "newVersion"    # I

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x70

    .line 174
    const-string v2, "select version from moto_meta_info"

    invoke-static {p3, v2, v5}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v2

    long-to-int v1, v2

    .line 180
    .local v1, "motoOldVersion":I
    const/16 v2, 0x6e

    if-ge v1, v2, :cond_0

    .line 182
    invoke-virtual {p1, p3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->createContactsViews(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 183
    const/16 v1, 0x70

    .line 186
    :cond_0
    const/16 v2, 0x6f

    if-ge v1, v2, :cond_1

    .line 187
    invoke-virtual {p0, p1, p3}, Lcom/motorola/providers/contacts/MotContactsDatabaseHelper;->upgradeToMotoVersion111(Lcom/android/providers/contacts/ContactsDatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 188
    const/16 v1, 0x6f

    .line 191
    :cond_1
    if-ge v1, v4, :cond_2

    .line 192
    invoke-static {p3}, Lcom/motorola/providers/contacts/MotContactsDatabaseHelper;->createMotoExtensionLookupTableAndIndexes(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 193
    const/16 v1, 0x70

    .line 204
    :cond_2
    if-eq v1, v4, :cond_3

    .line 205
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "error upgrading the database to version 112"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 210
    :cond_3
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 211
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v2, "version"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 212
    const-string v2, "moto_meta_info"

    invoke-virtual {p3, v2, v0, v5, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 213
    return-void
.end method

.method public upgradeMotExtensionTables(Lcom/android/providers/contacts/ContactsDatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 2
    .param p1, "delegatedDbHelper"    # Lcom/android/providers/contacts/ContactsDatabaseHelper;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "oldVersion"    # I

    .prologue
    const/16 v1, 0x70

    .line 140
    const/16 v0, 0x6f

    if-ge p3, v0, :cond_0

    .line 141
    invoke-virtual {p0, p1, p2}, Lcom/motorola/providers/contacts/MotContactsDatabaseHelper;->upgradeToMotoVersion111(Lcom/android/providers/contacts/ContactsDatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 142
    const/16 p3, 0x6f

    .line 145
    :cond_0
    if-ge p3, v1, :cond_1

    .line 146
    invoke-static {p2}, Lcom/motorola/providers/contacts/MotContactsDatabaseHelper;->createMotoExtensionLookupTableAndIndexes(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 147
    const/16 p3, 0x70

    .line 164
    :cond_1
    if-eq p3, v1, :cond_2

    .line 165
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "error upgrading the mot ext database to version 112"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_2
    return-void
.end method

.method public upgradeToMotoVersion111(Lcom/android/providers/contacts/ContactsDatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .param p1, "delegatedDbHelper"    # Lcom/android/providers/contacts/ContactsDatabaseHelper;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 365
    :try_start_0
    const-string v1, "ALTER TABLE raw_contacts ADD COLUMN is_restricted INTEGER DEFAULT 0"

    invoke-virtual {p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    :goto_0
    :try_start_1
    const-string v1, "ALTER TABLE contacts ADD COLUMN single_is_restricted INTEGER NOT NULL DEFAULT 0"

    invoke-virtual {p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 377
    const-string v1, "CREATE INDEX contacts_restricted_index ON contacts (single_is_restricted);"

    invoke-virtual {p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 386
    :goto_1
    invoke-virtual {p1, p2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->createContactsViews(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 387
    return-void

    .line 367
    :catch_0
    move-exception v0

    .line 370
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MotContactsDatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to alter table raw_contacts for restricted contact: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 380
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 383
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "MotContactsDatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to alter table contacts for restricted contact: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
