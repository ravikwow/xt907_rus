.class public Lcom/android/providers/settings/OverlaySettingsProvider;
.super Lcom/android/providers/settings/SettingsProvider;
.source "OverlaySettingsProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/providers/settings/SettingsProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()Z
    .locals 3

    .prologue
    .line 36
    new-instance v0, Lcom/android/providers/settings/OverlayDatabaseHelper;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/providers/settings/OverlayDatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 41
    .local v0, "openHelper":Lcom/android/providers/settings/OverlayDatabaseHelper;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 43
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 45
    invoke-super {p0}, Lcom/android/providers/settings/SettingsProvider;->onCreate()Z

    move-result v1

    .line 47
    .local v1, "status":Z
    return v1
.end method
