.class public Lcom/motorola/messaging/provider/MessageSettingsProvider;
.super Landroid/content/ContentProvider;
.source "MessageSettingsProvider.java"


# static fields
.field private static final DEBUG:Z

.field private static final LOCAL_LOG:Z

.field private static final mUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDatabaseHelper:Lcom/motorola/messaging/provider/SettingsDatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 23
    sput-boolean v1, Lcom/motorola/messaging/provider/MessageSettingsProvider;->DEBUG:Z

    .line 24
    sget-boolean v0, Lcom/motorola/messaging/provider/MessageSettingsProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/motorola/messaging/provider/MessageSettingsProvider;->LOCAL_LOG:Z

    .line 43
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v2, -0x1

    invoke-direct {v0, v2}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/motorola/messaging/provider/MessageSettingsProvider;->mUriMatcher:Landroid/content/UriMatcher;

    .line 44
    sget-object v0, Lcom/motorola/messaging/provider/MessageSettingsProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "com.motorola.messaging.settings"

    const-string v3, "settings"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 45
    sget-object v0, Lcom/motorola/messaging/provider/MessageSettingsProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.motorola.messaging.settings"

    const-string v2, "settings/#"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 46
    return-void

    .line 24
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/messaging/provider/MessageSettingsProvider;->mDatabaseHelper:Lcom/motorola/messaging/provider/SettingsDatabaseHelper;

    return-void
.end method

.method private updateStaticSettings(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 17
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 166
    sget-boolean v2, Lcom/motorola/messaging/provider/MessageSettingsProvider;->LOCAL_LOG:Z

    if-eqz v2, :cond_1

    .line 167
    const-string v2, "MessageSettingsProvider"

    const-string v3, "updateStaticSettings()"

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string v2, "MessageSettingsProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "selection -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    if-eqz p2, :cond_0

    .line 170
    move-object/from16 v9, p2

    .local v9, "arr$":[Ljava/lang/String;
    array-length v12, v9

    .local v12, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_0
    if-ge v11, v12, :cond_1

    aget-object v14, v9, v11

    .line 171
    .local v14, "selectionArg":Ljava/lang/String;
    const-string v2, "MessageSettingsProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "selectionArgs -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 174
    .end local v9    # "arr$":[Ljava/lang/String;
    .end local v11    # "i$":I
    .end local v12    # "len$":I
    .end local v14    # "selectionArg":Ljava/lang/String;
    :cond_0
    const-string v2, "MessageSettingsProvider"

    const-string v3, "selectionArgs -> null"

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    :cond_1
    const-string v2, "name=?"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz p2, :cond_2

    move-object/from16 v0, p2

    array-length v2, v0

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    .line 186
    :cond_2
    const/16 p1, 0x0

    .line 187
    const/16 p2, 0x0

    .line 190
    :cond_3
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 192
    .local v15, "settings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/messaging/provider/MessageSettingsProvider;->mDatabaseHelper:Lcom/motorola/messaging/provider/SettingsDatabaseHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 193
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "settings"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "name"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "value"

    aput-object v5, v3, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 198
    .local v10, "cursor":Landroid/database/Cursor;
    if-eqz v10, :cond_6

    .line 203
    :goto_1
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 204
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 205
    .local v13, "name":Ljava/lang/String;
    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 207
    .local v16, "value":Ljava/lang/String;
    sget-boolean v2, Lcom/motorola/messaging/provider/MessageSettingsProvider;->LOCAL_LOG:Z

    if-eqz v2, :cond_4

    .line 208
    const-string v2, "MessageSettingsProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updating static setting: name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :cond_4
    move-object/from16 v0, v16

    invoke-interface {v15, v13, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 216
    .end local v13    # "name":Ljava/lang/String;
    .end local v16    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v2

    .line 214
    :cond_5
    :try_start_1
    invoke-static {v15}, Lcom/motorola/messaging/settings/MessageSettings;->updateStaticSettings(Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 216
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 219
    :cond_6
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "arg0"    # Landroid/net/Uri;
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "arg2"    # [Ljava/lang/String;

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 55
    sget-object v0, Lcom/motorola/messaging/provider/MessageSettingsProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported URI:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :pswitch_0
    const-string v0, "vnd.android.cursor.item/settings"

    .line 59
    :goto_0
    return-object v0

    :pswitch_1
    const-string v0, "vnd.android.cursor.dir/settings"

    goto :goto_0

    .line 55
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 67
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 3

    .prologue
    .line 72
    sget-boolean v1, Lcom/motorola/messaging/provider/MessageSettingsProvider;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 73
    const-string v1, "MessageSettingsProvider"

    const-string v2, "onCreate - START"

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_0
    iget-object v1, p0, Lcom/motorola/messaging/provider/MessageSettingsProvider;->mDatabaseHelper:Lcom/motorola/messaging/provider/SettingsDatabaseHelper;

    if-nez v1, :cond_2

    .line 77
    sget-boolean v1, Lcom/motorola/messaging/provider/MessageSettingsProvider;->LOCAL_LOG:Z

    if-eqz v1, :cond_1

    .line 78
    const-string v1, "MessageSettingsProvider"

    const-string v2, "Initializing SettingsDatabaseHelper object."

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :cond_1
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 82
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/messaging/provider/MessageSettingsProvider;->mContentResolver:Landroid/content/ContentResolver;

    .line 83
    new-instance v1, Lcom/motorola/messaging/provider/SettingsDatabaseHelper;

    invoke-direct {v1, v0}, Lcom/motorola/messaging/provider/SettingsDatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/motorola/messaging/provider/MessageSettingsProvider;->mDatabaseHelper:Lcom/motorola/messaging/provider/SettingsDatabaseHelper;

    .line 86
    .end local v0    # "context":Landroid/content/Context;
    :cond_2
    sget-boolean v1, Lcom/motorola/messaging/provider/MessageSettingsProvider;->LOCAL_LOG:Z

    if-eqz v1, :cond_3

    .line 87
    const-string v1, "MessageSettingsProvider"

    const-string v2, "onCreate - END"

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :cond_3
    const/4 v1, 0x1

    return v1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 96
    sget-boolean v2, Lcom/motorola/messaging/provider/MessageSettingsProvider;->LOCAL_LOG:Z

    if-eqz v2, :cond_0

    .line 97
    const-string v2, "MessageSettingsProvider"

    const-string v3, "query - START"

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_0
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 101
    .local v0, "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v2, "settings"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 103
    sget-object v2, Lcom/motorola/messaging/provider/MessageSettingsProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 110
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported URI:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 105
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 113
    :pswitch_1
    if-eqz p5, :cond_1

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    const-string p5, "_id"

    .line 115
    :cond_2
    iget-object v2, p0, Lcom/motorola/messaging/provider/MessageSettingsProvider;->mDatabaseHelper:Lcom/motorola/messaging/provider/SettingsDatabaseHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    .line 116
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 118
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_3

    .line 119
    iget-object v2, p0, Lcom/motorola/messaging/provider/MessageSettingsProvider;->mContentResolver:Landroid/content/ContentResolver;

    invoke-interface {v8, v2, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 122
    :cond_3
    sget-boolean v2, Lcom/motorola/messaging/provider/MessageSettingsProvider;->LOCAL_LOG:Z

    if-eqz v2, :cond_4

    .line 123
    const-string v2, "MessageSettingsProvider"

    const-string v3, "query - END"

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :cond_4
    return-object v8

    .line 103
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 131
    sget-boolean v2, Lcom/motorola/messaging/provider/MessageSettingsProvider;->LOCAL_LOG:Z

    if-eqz v2, :cond_0

    .line 132
    const-string v2, "MessageSettingsProvider"

    const-string v3, "update - START"

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :cond_0
    const/4 v0, 0x0

    .line 137
    .local v0, "affectedRows":I
    iget-object v2, p0, Lcom/motorola/messaging/provider/MessageSettingsProvider;->mDatabaseHelper:Lcom/motorola/messaging/provider/SettingsDatabaseHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 139
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    const-string v3, "load_static_settings"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 141
    iget-object v2, p0, Lcom/motorola/messaging/provider/MessageSettingsProvider;->mDatabaseHelper:Lcom/motorola/messaging/provider/SettingsDatabaseHelper;

    invoke-virtual {v2, v1}, Lcom/motorola/messaging/provider/SettingsDatabaseHelper;->loadSettingsProvider(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 153
    :goto_0
    iget-object v2, p0, Lcom/motorola/messaging/provider/MessageSettingsProvider;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/motorola/contracts/messaging/Provider$MessageSettingsColumns;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 155
    sget-boolean v2, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v2, :cond_1

    .line 156
    const-string v2, "MessageSettingsProvider"

    const-string v3, "Update notification was sent"

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :cond_1
    sget-boolean v2, Lcom/motorola/messaging/provider/MessageSettingsProvider;->LOCAL_LOG:Z

    if-eqz v2, :cond_2

    .line 160
    const-string v2, "MessageSettingsProvider"

    const-string v3, "update - END"

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :cond_2
    return v0

    .line 144
    :cond_3
    const-string v2, "settings"

    invoke-virtual {v1, v2, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 146
    if-gtz v0, :cond_4

    .line 147
    new-instance v2, Landroid/database/SQLException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to update row into "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 150
    :cond_4
    invoke-direct {p0, p3, p4}, Lcom/motorola/messaging/provider/MessageSettingsProvider;->updateStaticSettings(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method
