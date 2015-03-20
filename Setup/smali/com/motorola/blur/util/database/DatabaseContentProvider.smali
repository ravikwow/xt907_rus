.class public abstract Lcom/motorola/blur/util/database/DatabaseContentProvider;
.super Landroid/content/ContentProvider;
.source "DatabaseContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/util/database/DatabaseContentProvider$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DbContentProvider"


# instance fields
.field protected mDbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

.field private final mDbName:Ljava/lang/String;

.field final mDbVersion:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "dbName"    # Ljava/lang/String;
    .param p2, "dbVersion"    # I

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/motorola/blur/util/database/DatabaseContentProvider;->mDbName:Ljava/lang/String;

    .line 54
    iput p2, p0, Lcom/motorola/blur/util/database/DatabaseContentProvider;->mDbVersion:I

    .line 55
    return-void
.end method

.method protected static addColumn(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "columnName"    # Ljava/lang/String;
    .param p3, "columnType"    # Ljava/lang/String;

    .prologue
    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, "ALTER TABLE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ADD COLUMN "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p3, :cond_0

    const-string p3, "INTEGER DEFAULT 0"

    .end local p3    # "columnType":Ljava/lang/String;
    :cond_0
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 90
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 91
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isClosed(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 356
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-nez v2, :cond_1

    .line 357
    :cond_0
    const-string v2, "DbContentProvider"

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "Null DB returned from DBHelper for a writable/readable database."

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Lcom/motorola/blur/util/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)I

    move v0, v1

    .line 360
    :cond_1
    return v0
.end method


# virtual methods
.method protected bootstrapDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 64
    return-void
.end method

.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # [Landroid/content/ContentValues;

    .prologue
    const/4 v9, 0x0

    .line 313
    const/4 v0, 0x0

    .line 314
    .local v0, "added":I
    if-eqz p2, :cond_4

    .line 315
    array-length v6, p2

    .line 316
    .local v6, "numRows":I
    iget-object v7, p0, Lcom/motorola/blur/util/database/DatabaseContentProvider;->mDbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 317
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0, v2}, Lcom/motorola/blur/util/database/DatabaseContentProvider;->isClosed(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v1, v0

    .line 352
    .end local v0    # "added":I
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v6    # "numRows":I
    .local v1, "added":I
    :goto_0
    return v1

    .line 321
    .end local v1    # "added":I
    .restart local v0    # "added":I
    .restart local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v6    # "numRows":I
    :cond_0
    :try_start_0
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteClosable;->acquireReference()V

    .line 324
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 326
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v6, :cond_2

    .line 327
    aget-object v7, p2, v5

    invoke-virtual {p0, v2, p1, v7}, Lcom/motorola/blur/util/database/DatabaseContentProvider;->insertInternal(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 328
    add-int/lit8 v0, v0, 0x1

    .line 326
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 331
    :cond_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 332
    if-lez v0, :cond_3

    .line 333
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, p1, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 342
    :cond_3
    :try_start_1
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 349
    :goto_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v5    # "i":I
    .end local v6    # "numRows":I
    :cond_4
    :goto_3
    move v1, v0

    .line 352
    .end local v0    # "added":I
    .restart local v1    # "added":I
    goto :goto_0

    .line 343
    .end local v1    # "added":I
    .restart local v0    # "added":I
    .restart local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v5    # "i":I
    .restart local v6    # "numRows":I
    :catch_0
    move-exception v4

    .line 344
    .local v4, "fullEx":Landroid/database/sqlite/SQLiteFullException;
    const-string v7, "DbContentProvider"

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v7, v4, v8}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)I

    .line 345
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/motorola/blur/util/os/StorageUtil;->sendStorageFullIntent(Landroid/content/Context;)V

    goto :goto_2

    .line 346
    .end local v4    # "fullEx":Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v3

    .line 347
    .local v3, "e":Ljava/lang/Exception;
    const-string v7, "DbContentProvider"

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v7, v3, v8}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)I

    goto :goto_2

    .line 335
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "i":I
    :catch_2
    move-exception v4

    .line 336
    .restart local v4    # "fullEx":Landroid/database/sqlite/SQLiteFullException;
    :try_start_2
    const-string v7, "DbContentProvider"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7, v4, v8}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)I

    .line 337
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/motorola/blur/util/os/StorageUtil;->sendStorageFullIntent(Landroid/content/Context;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 342
    :try_start_3
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 349
    :goto_4
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    goto :goto_3

    .line 343
    :catch_3
    move-exception v4

    .line 344
    const-string v7, "DbContentProvider"

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v7, v4, v8}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)I

    .line 345
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/motorola/blur/util/os/StorageUtil;->sendStorageFullIntent(Landroid/content/Context;)V

    goto :goto_4

    .line 346
    :catch_4
    move-exception v3

    .line 347
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string v7, "DbContentProvider"

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v7, v3, v8}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)I

    goto :goto_4

    .line 338
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "fullEx":Landroid/database/sqlite/SQLiteFullException;
    :catch_5
    move-exception v3

    .line 339
    .restart local v3    # "e":Ljava/lang/Exception;
    :try_start_4
    const-string v7, "DbContentProvider"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7, v3, v8}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 342
    :try_start_5
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7

    .line 349
    :goto_5
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    goto :goto_3

    .line 343
    :catch_6
    move-exception v4

    .line 344
    .restart local v4    # "fullEx":Landroid/database/sqlite/SQLiteFullException;
    const-string v7, "DbContentProvider"

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v7, v4, v8}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)I

    .line 345
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/motorola/blur/util/os/StorageUtil;->sendStorageFullIntent(Landroid/content/Context;)V

    goto :goto_5

    .line 346
    .end local v4    # "fullEx":Landroid/database/sqlite/SQLiteFullException;
    :catch_7
    move-exception v3

    .line 347
    const-string v7, "DbContentProvider"

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v7, v3, v8}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)I

    goto :goto_5

    .line 341
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 342
    :try_start_6
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_9

    .line 349
    :goto_6
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    throw v7

    .line 343
    :catch_8
    move-exception v4

    .line 344
    .restart local v4    # "fullEx":Landroid/database/sqlite/SQLiteFullException;
    const-string v8, "DbContentProvider"

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v4, v9}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)I

    .line 345
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/motorola/blur/util/os/StorageUtil;->sendStorageFullIntent(Landroid/content/Context;)V

    goto :goto_6

    .line 346
    .end local v4    # "fullEx":Landroid/database/sqlite/SQLiteFullException;
    :catch_9
    move-exception v3

    .line 347
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string v8, "DbContentProvider"

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v3, v9}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)I

    goto :goto_6
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 146
    const/4 v3, 0x0

    .line 147
    .local v3, "result":I
    iget-object v5, p0, Lcom/motorola/blur/util/database/DatabaseContentProvider;->mDbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 148
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0, v0}, Lcom/motorola/blur/util/database/DatabaseContentProvider;->isClosed(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v4, v3

    .line 178
    .end local v3    # "result":I
    .local v4, "result":I
    :goto_0
    return v4

    .line 153
    .end local v4    # "result":I
    .restart local v3    # "result":I
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->acquireReference()V

    .line 156
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 157
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/motorola/blur/util/database/DatabaseContentProvider;->deleteInternal(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 158
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 174
    :goto_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    .line 177
    :goto_2
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, p1, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    move v4, v3

    .line 178
    .end local v3    # "result":I
    .restart local v4    # "result":I
    goto :goto_0

    .line 167
    .end local v4    # "result":I
    .restart local v3    # "result":I
    :catch_0
    move-exception v2

    .line 168
    .local v2, "fullEx":Landroid/database/sqlite/SQLiteFullException;
    const-string v5, "DbContentProvider"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v5, v2, v6}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)I

    .line 169
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/motorola/blur/util/os/StorageUtil;->sendStorageFullIntent(Landroid/content/Context;)V

    goto :goto_1

    .line 170
    .end local v2    # "fullEx":Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v1

    .line 171
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "DbContentProvider"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v5, v1, v6}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)I

    goto :goto_1

    .line 159
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 160
    .restart local v2    # "fullEx":Landroid/database/sqlite/SQLiteFullException;
    :try_start_2
    const-string v5, "DbContentProvider"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v2, v6}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)I

    .line 161
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/motorola/blur/util/os/StorageUtil;->sendStorageFullIntent(Landroid/content/Context;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 166
    :try_start_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 174
    :goto_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    goto :goto_2

    .line 167
    :catch_3
    move-exception v2

    .line 168
    const-string v5, "DbContentProvider"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v5, v2, v6}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)I

    .line 169
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/motorola/blur/util/os/StorageUtil;->sendStorageFullIntent(Landroid/content/Context;)V

    goto :goto_3

    .line 170
    :catch_4
    move-exception v1

    .line 171
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v5, "DbContentProvider"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v5, v1, v6}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)I

    goto :goto_3

    .line 162
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "fullEx":Landroid/database/sqlite/SQLiteFullException;
    :catch_5
    move-exception v1

    .line 163
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_4
    const-string v5, "DbContentProvider"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v1, v6}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 166
    :try_start_5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7

    .line 174
    :goto_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    goto :goto_2

    .line 167
    :catch_6
    move-exception v2

    .line 168
    .restart local v2    # "fullEx":Landroid/database/sqlite/SQLiteFullException;
    const-string v5, "DbContentProvider"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v5, v2, v6}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)I

    .line 169
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/motorola/blur/util/os/StorageUtil;->sendStorageFullIntent(Landroid/content/Context;)V

    goto :goto_4

    .line 170
    .end local v2    # "fullEx":Landroid/database/sqlite/SQLiteFullException;
    :catch_7
    move-exception v1

    .line 171
    const-string v5, "DbContentProvider"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v5, v1, v6}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)I

    goto :goto_4

    .line 165
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 166
    :try_start_6
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_9

    .line 174
    :goto_5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    throw v5

    .line 167
    :catch_8
    move-exception v2

    .line 168
    .restart local v2    # "fullEx":Landroid/database/sqlite/SQLiteFullException;
    const-string v6, "DbContentProvider"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v2, v7}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)I

    .line 169
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/motorola/blur/util/os/StorageUtil;->sendStorageFullIntent(Landroid/content/Context;)V

    goto :goto_5

    .line 170
    .end local v2    # "fullEx":Landroid/database/sqlite/SQLiteFullException;
    :catch_9
    move-exception v1

    .line 171
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v6, "DbContentProvider"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v1, v7}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)I

    goto :goto_5
.end method

.method protected abstract deleteInternal(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v7, 0x0

    .line 194
    const/4 v3, 0x0

    .line 195
    .local v3, "result":Landroid/net/Uri;
    iget-object v5, p0, Lcom/motorola/blur/util/database/DatabaseContentProvider;->mDbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 196
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0, v0}, Lcom/motorola/blur/util/database/DatabaseContentProvider;->isClosed(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v4, v3

    .line 225
    .end local v3    # "result":Landroid/net/Uri;
    .local v4, "result":Landroid/net/Uri;
    :goto_0
    return-object v4

    .line 200
    .end local v4    # "result":Landroid/net/Uri;
    .restart local v3    # "result":Landroid/net/Uri;
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->acquireReference()V

    .line 203
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 204
    invoke-virtual {p0, v0, p1, p2}, Lcom/motorola/blur/util/database/DatabaseContentProvider;->insertInternal(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 205
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 220
    :goto_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    .line 222
    :goto_2
    if-eqz v3, :cond_1

    .line 223
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, p1, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_1
    move-object v4, v3

    .line 225
    .end local v3    # "result":Landroid/net/Uri;
    .restart local v4    # "result":Landroid/net/Uri;
    goto :goto_0

    .line 214
    .end local v4    # "result":Landroid/net/Uri;
    .restart local v3    # "result":Landroid/net/Uri;
    :catch_0
    move-exception v2

    .line 215
    .local v2, "fullEx":Landroid/database/sqlite/SQLiteFullException;
    const-string v5, "DbContentProvider"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v5, v2, v6}, Lcom/motorola/blur/util/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)I

    .line 216
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/motorola/blur/util/os/StorageUtil;->sendStorageFullIntent(Landroid/content/Context;)V

    goto :goto_1

    .line 217
    .end local v2    # "fullEx":Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v1

    .line 218
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "DbContentProvider"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v5, v1, v6}, Lcom/motorola/blur/util/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)I

    goto :goto_1

    .line 206
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 207
    .restart local v2    # "fullEx":Landroid/database/sqlite/SQLiteFullException;
    :try_start_2
    const-string v5, "DbContentProvider"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v2, v6}, Lcom/motorola/blur/util/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)I

    .line 208
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/motorola/blur/util/os/StorageUtil;->sendStorageFullIntent(Landroid/content/Context;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 213
    :try_start_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 220
    :goto_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    goto :goto_2

    .line 214
    :catch_3
    move-exception v2

    .line 215
    const-string v5, "DbContentProvider"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v5, v2, v6}, Lcom/motorola/blur/util/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)I

    .line 216
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/motorola/blur/util/os/StorageUtil;->sendStorageFullIntent(Landroid/content/Context;)V

    goto :goto_3

    .line 217
    :catch_4
    move-exception v1

    .line 218
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v5, "DbContentProvider"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v5, v1, v6}, Lcom/motorola/blur/util/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)I

    goto :goto_3

    .line 209
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "fullEx":Landroid/database/sqlite/SQLiteFullException;
    :catch_5
    move-exception v1

    .line 210
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_4
    const-string v5, "DbContentProvider"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v1, v6}, Lcom/motorola/blur/util/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 213
    :try_start_5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7

    .line 220
    :goto_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    goto :goto_2

    .line 214
    :catch_6
    move-exception v2

    .line 215
    .restart local v2    # "fullEx":Landroid/database/sqlite/SQLiteFullException;
    const-string v5, "DbContentProvider"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v5, v2, v6}, Lcom/motorola/blur/util/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)I

    .line 216
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/motorola/blur/util/os/StorageUtil;->sendStorageFullIntent(Landroid/content/Context;)V

    goto :goto_4

    .line 217
    .end local v2    # "fullEx":Landroid/database/sqlite/SQLiteFullException;
    :catch_7
    move-exception v1

    .line 218
    const-string v5, "DbContentProvider"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v5, v1, v6}, Lcom/motorola/blur/util/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)I

    goto :goto_4

    .line 212
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 213
    :try_start_6
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_9

    .line 220
    :goto_5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    throw v5

    .line 214
    :catch_8
    move-exception v2

    .line 215
    .restart local v2    # "fullEx":Landroid/database/sqlite/SQLiteFullException;
    const-string v6, "DbContentProvider"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v2, v7}, Lcom/motorola/blur/util/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)I

    .line 216
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/motorola/blur/util/os/StorageUtil;->sendStorageFullIntent(Landroid/content/Context;)V

    goto :goto_5

    .line 217
    .end local v2    # "fullEx":Landroid/database/sqlite/SQLiteFullException;
    :catch_9
    move-exception v1

    .line 218
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v6, "DbContentProvider"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v1, v7}, Lcom/motorola/blur/util/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)I

    goto :goto_5
.end method

.method protected abstract insertInternal(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
.end method

.method public onCreate()Z
    .locals 3

    .prologue
    .line 230
    new-instance v0, Lcom/motorola/blur/util/database/DatabaseContentProvider$DatabaseHelper;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/blur/util/database/DatabaseContentProvider;->mDbName:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/motorola/blur/util/database/DatabaseContentProvider$DatabaseHelper;-><init>(Lcom/motorola/blur/util/database/DatabaseContentProvider;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/motorola/blur/util/database/DatabaseContentProvider;->mDbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 231
    invoke-virtual {p0}, Lcom/motorola/blur/util/database/DatabaseContentProvider;->onCreateInternal()Z

    move-result v0

    return v0
.end method

.method protected onCreateInternal()Z
    .locals 1

    .prologue
    .line 241
    const/4 v0, 0x1

    return v0
.end method

.method protected onDatabaseOpened(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 106
    return-void
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 259
    iget-object v0, p0, Lcom/motorola/blur/util/database/DatabaseContentProvider;->mDbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 260
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0, v1}, Lcom/motorola/blur/util/database/DatabaseContentProvider;->isClosed(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    const/4 v0, 0x0

    .line 268
    :goto_0
    return-object v0

    .line 265
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteClosable;->acquireReference()V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 266
    invoke-virtual/range {v0 .. v6}, Lcom/motorola/blur/util/database/DatabaseContentProvider;->queryInternal(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 268
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    throw v0
.end method

.method protected abstract queryInternal(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 277
    const/4 v8, 0x0

    .line 278
    .local v8, "result":I
    iget-object v0, p0, Lcom/motorola/blur/util/database/DatabaseContentProvider;->mDbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 279
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0, v1}, Lcom/motorola/blur/util/database/DatabaseContentProvider;->isClosed(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v9, v8

    .line 308
    .end local v8    # "result":I
    .local v9, "result":I
    :goto_0
    return v9

    .line 283
    .end local v9    # "result":I
    .restart local v8    # "result":I
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteClosable;->acquireReference()V

    .line 286
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 287
    invoke-virtual/range {v0 .. v5}, Lcom/motorola/blur/util/database/DatabaseContentProvider;->updateInternal(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 288
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 303
    :goto_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    .line 305
    :goto_2
    if-lez v8, :cond_1

    .line 306
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_1
    move v9, v8

    .line 308
    .end local v8    # "result":I
    .restart local v9    # "result":I
    goto :goto_0

    .line 297
    .end local v9    # "result":I
    .restart local v8    # "result":I
    :catch_0
    move-exception v7

    .line 298
    .local v7, "fullEx":Landroid/database/sqlite/SQLiteFullException;
    const-string v0, "DbContentProvider"

    new-array v2, v10, [Ljava/lang/Object;

    invoke-static {v0, v7, v2}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)I

    .line 299
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/util/os/StorageUtil;->sendStorageFullIntent(Landroid/content/Context;)V

    goto :goto_1

    .line 300
    .end local v7    # "fullEx":Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v6

    .line 301
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "DbContentProvider"

    new-array v2, v10, [Ljava/lang/Object;

    invoke-static {v0, v6, v2}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)I

    goto :goto_1

    .line 289
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v7

    .line 290
    .restart local v7    # "fullEx":Landroid/database/sqlite/SQLiteFullException;
    :try_start_2
    const-string v0, "DbContentProvider"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v7, v2}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)I

    .line 291
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/util/os/StorageUtil;->sendStorageFullIntent(Landroid/content/Context;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 296
    :try_start_3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 303
    :goto_3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    goto :goto_2

    .line 297
    :catch_3
    move-exception v7

    .line 298
    const-string v0, "DbContentProvider"

    new-array v2, v10, [Ljava/lang/Object;

    invoke-static {v0, v7, v2}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)I

    .line 299
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/util/os/StorageUtil;->sendStorageFullIntent(Landroid/content/Context;)V

    goto :goto_3

    .line 300
    :catch_4
    move-exception v6

    .line 301
    .restart local v6    # "e":Ljava/lang/Exception;
    const-string v0, "DbContentProvider"

    new-array v2, v10, [Ljava/lang/Object;

    invoke-static {v0, v6, v2}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)I

    goto :goto_3

    .line 292
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v7    # "fullEx":Landroid/database/sqlite/SQLiteFullException;
    :catch_5
    move-exception v6

    .line 293
    .restart local v6    # "e":Ljava/lang/Exception;
    :try_start_4
    const-string v0, "DbContentProvider"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v6, v2}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 296
    :try_start_5
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7

    .line 303
    :goto_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    goto :goto_2

    .line 297
    :catch_6
    move-exception v7

    .line 298
    .restart local v7    # "fullEx":Landroid/database/sqlite/SQLiteFullException;
    const-string v0, "DbContentProvider"

    new-array v2, v10, [Ljava/lang/Object;

    invoke-static {v0, v7, v2}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)I

    .line 299
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/blur/util/os/StorageUtil;->sendStorageFullIntent(Landroid/content/Context;)V

    goto :goto_4

    .line 300
    .end local v7    # "fullEx":Landroid/database/sqlite/SQLiteFullException;
    :catch_7
    move-exception v6

    .line 301
    const-string v0, "DbContentProvider"

    new-array v2, v10, [Ljava/lang/Object;

    invoke-static {v0, v6, v2}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)I

    goto :goto_4

    .line 295
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 296
    :try_start_6
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_9

    .line 303
    :goto_5
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteClosable;->releaseReference()V

    throw v0

    .line 297
    :catch_8
    move-exception v7

    .line 298
    .restart local v7    # "fullEx":Landroid/database/sqlite/SQLiteFullException;
    const-string v2, "DbContentProvider"

    new-array v3, v10, [Ljava/lang/Object;

    invoke-static {v2, v7, v3}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)I

    .line 299
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/blur/util/os/StorageUtil;->sendStorageFullIntent(Landroid/content/Context;)V

    goto :goto_5

    .line 300
    .end local v7    # "fullEx":Landroid/database/sqlite/SQLiteFullException;
    :catch_9
    move-exception v6

    .line 301
    .restart local v6    # "e":Ljava/lang/Exception;
    const-string v2, "DbContentProvider"

    new-array v3, v10, [Ljava/lang/Object;

    invoke-static {v2, v6, v3}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)I

    goto :goto_5
.end method

.method protected abstract updateInternal(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method protected abstract upgradeDatabase(Landroid/database/sqlite/SQLiteDatabase;II)Z
.end method
