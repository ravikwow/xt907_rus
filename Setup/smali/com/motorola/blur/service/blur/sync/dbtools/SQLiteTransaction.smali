.class public Lcom/motorola/blur/service/blur/sync/dbtools/SQLiteTransaction;
.super Ljava/lang/Object;
.source "SQLiteTransaction.java"


# instance fields
.field private isLocked:Z

.field private isSuccessful:Z

.field private mDb:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-boolean v0, p0, Lcom/motorola/blur/service/blur/sync/dbtools/SQLiteTransaction;->isSuccessful:Z

    .line 17
    iput-boolean v0, p0, Lcom/motorola/blur/service/blur/sync/dbtools/SQLiteTransaction;->isLocked:Z

    .line 20
    iput-object p1, p0, Lcom/motorola/blur/service/blur/sync/dbtools/SQLiteTransaction;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 21
    return-void
.end method


# virtual methods
.method public beginExclusive()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 24
    iget-boolean v1, p0, Lcom/motorola/blur/service/blur/sync/dbtools/SQLiteTransaction;->isLocked:Z

    if-eqz v1, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 29
    :goto_0
    return v0

    .line 27
    :cond_0
    iget-object v1, p0, Lcom/motorola/blur/service/blur/sync/dbtools/SQLiteTransaction;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "BEGIN EXCLUSIVE;"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 28
    iput-boolean v0, p0, Lcom/motorola/blur/service/blur/sync/dbtools/SQLiteTransaction;->isLocked:Z

    goto :goto_0
.end method

.method public beginImmediate()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 33
    iget-boolean v1, p0, Lcom/motorola/blur/service/blur/sync/dbtools/SQLiteTransaction;->isLocked:Z

    if-eqz v1, :cond_0

    .line 34
    const/4 v0, 0x0

    .line 38
    :goto_0
    return v0

    .line 36
    :cond_0
    iget-object v1, p0, Lcom/motorola/blur/service/blur/sync/dbtools/SQLiteTransaction;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "BEGIN IMMEDIATE;"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 37
    iput-boolean v0, p0, Lcom/motorola/blur/service/blur/sync/dbtools/SQLiteTransaction;->isLocked:Z

    goto :goto_0
.end method

.method public endTransaction()V
    .locals 2

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/motorola/blur/service/blur/sync/dbtools/SQLiteTransaction;->isLocked:Z

    if-nez v0, :cond_0

    .line 54
    :goto_0
    return-void

    .line 49
    :cond_0
    iget-boolean v0, p0, Lcom/motorola/blur/service/blur/sync/dbtools/SQLiteTransaction;->isSuccessful:Z

    if-eqz v0, :cond_1

    .line 50
    iget-object v0, p0, Lcom/motorola/blur/service/blur/sync/dbtools/SQLiteTransaction;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "COMMIT;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/motorola/blur/service/blur/sync/dbtools/SQLiteTransaction;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ROLLBACK;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setSuccessful()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/blur/service/blur/sync/dbtools/SQLiteTransaction;->isSuccessful:Z

    .line 43
    return-void
.end method
