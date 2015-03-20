.class public Lcom/android/providers/settings/OverlayDatabaseHelper;
.super Lcom/android/providers/settings/DatabaseHelper;
.source "OverlayDatabaseHelper.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/providers/settings/DatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 39
    iput-object p1, p0, Lcom/android/providers/settings/OverlayDatabaseHelper;->mContext:Landroid/content/Context;

    .line 40
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 44
    const-string v1, "MotorolaSettingsProvider"

    const-string v2, "MotorolaDatabaseHelper.onCreate(): ENTER"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-super {p0, p1}, Lcom/android/providers/settings/DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 47
    new-instance v0, Lcom/motorola/flex/OverlayHelper;

    iget-object v1, p0, Lcom/android/providers/settings/OverlayDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/motorola/flex/OverlayHelper;-><init>(Landroid/content/Context;)V

    .line 48
    .local v0, "oh":Lcom/motorola/flex/OverlayHelper;
    const-string v1, "system"

    invoke-virtual {v0, p1, v1}, Lcom/motorola/flex/OverlayHelper;->apply(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 49
    const-string v1, "secure"

    invoke-virtual {v0, p1, v1}, Lcom/motorola/flex/OverlayHelper;->apply(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 62
    const-string v0, "MotorolaSettingsProvider"

    const-string v1, "MotorolaDatabaseHelper.onDowngrade(): ENTER"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 54
    invoke-super {p0, p1, p2, p3}, Lcom/android/providers/settings/DatabaseHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 55
    const-string v0, "MotorolaSettingsProvider"

    const-string v1, "MotorolaDatabaseHelper.onUpgrade(): ENTER"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    return-void
.end method
