.class final Lcom/android/providers/downloads/DownloadProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DownloadProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/downloads/DownloadProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DatabaseHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/downloads/DownloadProvider;


# direct methods
.method public constructor <init>(Lcom/android/providers/downloads/DownloadProvider;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter "context"

    .prologue
    .line 236
    iput-object p1, p0, Lcom/android/providers/downloads/DownloadProvider$DatabaseHelper;->this$0:Lcom/android/providers/downloads/DownloadProvider;

    .line 237
    const-string v0, "downloads.db"

    const/4 v1, 0x0

    const/16 v2, 0x6e

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 238
    return-void
.end method

.method private addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "db"
    .parameter "dbTable"
    .parameter "columnName"
    .parameter "columnDefinition"

    .prologue
    .line 450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ALTER TABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ADD COLUMN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 452
    return-void
.end method

.method private columnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "db"
    .parameter "table_name"
    .parameter "col_name"
    .parameter "col_desc"

    .prologue
    .line 370
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 371
    :cond_0
    const/4 v2, 0x0

    .line 399
    :goto_0
    return v2

    .line 373
    :cond_1
    const/4 v2, 0x0

    .line 374
    .local v2, rtnValue:Z
    const/4 v0, 0x0

    .line 376
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_0
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "select tbl_name from sqlite_master where "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 377
    .local v3, sqlBuf:Ljava/lang/StringBuffer;
    const-string v4, " type=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "table"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 378
    const-string v4, " and tbl_name=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 379
    const-string v4, " and sql like \'%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 380
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 381
    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 383
    :cond_2
    const-string v4, "%\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 384
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Check column exists : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/providers/downloads/DownloadProvider$DatabaseHelper;->logd(Ljava/lang/String;)V

    .line 385
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 386
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_5

    .line 387
    :cond_3
    const/4 v2, 0x0

    .line 394
    :goto_1
    if-eqz v0, :cond_4

    .line 395
    .end local v3           #sqlBuf:Ljava/lang/StringBuffer;
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 398
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Check column exists return: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/providers/downloads/DownloadProvider$DatabaseHelper;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 389
    .restart local v3       #sqlBuf:Ljava/lang/StringBuffer;
    :cond_5
    const/4 v2, 0x1

    goto :goto_1

    .line 391
    .end local v3           #sqlBuf:Ljava/lang/StringBuffer;
    :catch_0
    move-exception v1

    .line 392
    .local v1, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 394
    if-eqz v0, :cond_4

    goto :goto_2

    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    if-eqz v0, :cond_6

    .line 395
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 394
    :cond_6
    throw v4
.end method

.method private createDownloadsTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 459
    :try_start_0
    const-string v1, "DROP TABLE IF EXISTS downloads"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 460
    const-string v1, "CREATE TABLE downloads(_id INTEGER PRIMARY KEY AUTOINCREMENT,uri TEXT, method INTEGER, entity TEXT, no_integrity BOOLEAN, hint TEXT, otaupdate BOOLEAN, _data TEXT, mimetype TEXT, destination INTEGER, no_system BOOLEAN, visibility INTEGER, control INTEGER, status INTEGER, numfailed INTEGER, lastmod BIGINT, notificationpackage TEXT, notificationclass TEXT, notificationextras TEXT, cookiedata TEXT, useragent TEXT, referer TEXT, total_bytes INTEGER, current_bytes INTEGER, etag TEXT, uid INTEGER, otheruid INTEGER, title TEXT, description TEXT, scanned BOOLEAN);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 495
    return-void

    .line 491
    :catch_0
    move-exception v0

    .line 492
    .local v0, ex:Landroid/database/SQLException;
    const-string v1, "DownloadManager"

    const-string v2, "couldn\'t create table in downloads database"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    throw v0
.end method

.method private createHeadersTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 498
    const-string v0, "DROP TABLE IF EXISTS request_headers"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 499
    const-string v0, "CREATE TABLE request_headers(id INTEGER PRIMARY KEY AUTOINCREMENT,download_id INTEGER NOT NULL,header TEXT NOT NULL,value TEXT NOT NULL);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 505
    return-void
.end method

.method private fillNullValues(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 414
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 415
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "current_bytes"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 416
    invoke-direct {p0, p1, v0}, Lcom/android/providers/downloads/DownloadProvider$DatabaseHelper;->fillNullValuesForColumn(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)V

    .line 417
    const-string v1, "total_bytes"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 418
    invoke-direct {p0, p1, v0}, Lcom/android/providers/downloads/DownloadProvider$DatabaseHelper;->fillNullValuesForColumn(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)V

    .line 419
    const-string v1, "title"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    invoke-direct {p0, p1, v0}, Lcom/android/providers/downloads/DownloadProvider$DatabaseHelper;->fillNullValuesForColumn(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)V

    .line 421
    const-string v1, "description"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    invoke-direct {p0, p1, v0}, Lcom/android/providers/downloads/DownloadProvider$DatabaseHelper;->fillNullValuesForColumn(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)V

    .line 423
    return-void
.end method

.method private fillNullValuesForColumn(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)V
    .locals 4
    .parameter "db"
    .parameter "values"

    .prologue
    .line 426
    invoke-virtual {p2}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 427
    .local v0, column:Ljava/lang/String;
    const-string v1, "downloads"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v1, p2, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 428
    invoke-virtual {p2}, Landroid/content/ContentValues;->clear()V

    .line 429
    return-void
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 403
    invoke-static {}, Lcom/android/providers/downloads/DownloadProvider;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    const-string v0, "DownloadProvider"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    :cond_0
    return-void
.end method

.method private makeCacheDownloadsInvisible(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .parameter "db"

    .prologue
    .line 435
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 436
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "is_visible_in_downloads_ui"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 437
    const-string v0, "destination != 0"

    .line 439
    .local v0, cacheSelection:Ljava/lang/String;
    const-string v2, "downloads"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v1, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 440
    return-void
.end method

.method private upgradeTo(Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 3
    .parameter "db"
    .parameter "version"

    .prologue
    .line 298
    packed-switch p2, :pswitch_data_0

    .line 363
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Don\'t know how to upgrade to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 300
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadProvider$DatabaseHelper;->createDownloadsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 365
    :cond_0
    :goto_0
    return-void

    .line 304
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadProvider$DatabaseHelper;->createHeadersTable(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 308
    :pswitch_2
    const-string v0, "downloads"

    const-string v1, "is_public_api"

    const-string v2, "INTEGER NOT NULL DEFAULT 0"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/downloads/DownloadProvider$DatabaseHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    const-string v0, "downloads"

    const-string v1, "allow_roaming"

    const-string v2, "INTEGER NOT NULL DEFAULT 0"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/downloads/DownloadProvider$DatabaseHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    const-string v0, "downloads"

    const-string v1, "allowed_network_types"

    const-string v2, "INTEGER NOT NULL DEFAULT 0"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/downloads/DownloadProvider$DatabaseHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 317
    :pswitch_3
    const-string v0, "downloads"

    const-string v1, "is_visible_in_downloads_ui"

    const-string v2, "INTEGER NOT NULL DEFAULT 1"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/downloads/DownloadProvider$DatabaseHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadProvider$DatabaseHelper;->makeCacheDownloadsInvisible(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 323
    :pswitch_4
    const-string v0, "downloads"

    const-string v1, "bypass_recommended_size_limit"

    const-string v2, "INTEGER NOT NULL DEFAULT 0"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/downloads/DownloadProvider$DatabaseHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 328
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadProvider$DatabaseHelper;->fillNullValues(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 332
    :pswitch_6
    const-string v0, "downloads"

    const-string v1, "mediaprovider_uri"

    const-string v2, "TEXT"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/downloads/DownloadProvider$DatabaseHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    const-string v0, "downloads"

    const-string v1, "deleted"

    const-string v2, "BOOLEAN NOT NULL DEFAULT 0"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/downloads/DownloadProvider$DatabaseHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 338
    :pswitch_7
    const-string v0, "downloads"

    const-string v1, "errorMsg"

    const-string v2, "TEXT"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/downloads/DownloadProvider$DatabaseHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 342
    :pswitch_8
    const-string v0, "downloads"

    const-string v1, "allow_metered"

    const-string v2, "INTEGER NOT NULL DEFAULT 1"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/downloads/DownloadProvider$DatabaseHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 347
    :pswitch_9
    const-string v0, "downloads"

    const-string v1, "allow_write"

    const-string v2, "BOOLEAN NOT NULL DEFAULT 0"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/downloads/DownloadProvider$DatabaseHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 355
    :pswitch_a
    const-string v0, "downloads"

    const-string v1, "allow_write"

    const-string v2, "BOOLEAN NOT NULL DEFAULT 0"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/downloads/DownloadProvider$DatabaseHelper;->columnExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 357
    const-string v0, "downloads"

    const-string v1, "allow_write"

    const-string v2, "BOOLEAN NOT NULL DEFAULT 0"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/downloads/DownloadProvider$DatabaseHelper;->addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 298
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 245
    sget-boolean v0, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v0, :cond_0

    .line 246
    const-string v0, "DownloadManager"

    const-string v1, "populating new database"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_0
    const/4 v0, 0x0

    const/16 v1, 0x6e

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/providers/downloads/DownloadProvider$DatabaseHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 249
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 255
    :try_start_0
    const-string v1, "delete from downloads where _data like \'/data/data/com.android.providers.drm/%\';"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    :goto_0
    return-void

    .line 257
    :catch_0
    move-exception v0

    .line 258
    .local v0, e:Landroid/database/SQLException;
    const-string v1, "DownloadManager"

    const-string v2, "exception when cleaning drm data in downloads.db"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 4
    .parameter "db"
    .parameter "oldV"
    .parameter "newV"

    .prologue
    .line 272
    const/16 v1, 0x1f

    if-ne p2, v1, :cond_1

    .line 275
    const/16 p2, 0x64

    .line 289
    :cond_0
    :goto_0
    add-int/lit8 v0, p2, 0x1

    .local v0, version:I
    :goto_1
    if-gt v0, p3, :cond_3

    .line 290
    invoke-direct {p0, p1, v0}, Lcom/android/providers/downloads/DownloadProvider$DatabaseHelper;->upgradeTo(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 289
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 276
    .end local v0           #version:I
    :cond_1
    const/16 v1, 0x64

    if-ge p2, v1, :cond_2

    .line 278
    const-string v1, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Upgrading downloads database from version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", which will destroy all old data"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const/16 p2, 0x63

    goto :goto_0

    .line 281
    :cond_2
    if-le p2, p3, :cond_0

    .line 284
    const-string v1, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Downgrading downloads database from version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (current version is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), destroying all old data"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    const/16 p2, 0x63

    goto :goto_0

    .line 292
    .restart local v0       #version:I
    :cond_3
    return-void
.end method
