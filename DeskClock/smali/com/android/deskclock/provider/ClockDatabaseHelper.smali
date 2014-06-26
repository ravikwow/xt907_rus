.class Lcom/android/deskclock/provider/ClockDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "ClockDatabaseHelper.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 119
    const-string v0, "alarms.db"

    const/4 v1, 0x0

    const/4 v2, 0x7

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 120
    iput-object p1, p0, Lcom/android/deskclock/provider/ClockDatabaseHelper;->mContext:Landroid/content/Context;

    .line 121
    return-void
.end method

.method private static createAlarmsTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 75
    const-string v0, "CREATE TABLE alarm_templates (_id INTEGER PRIMARY KEY,hour INTEGER NOT NULL, minutes INTEGER NOT NULL, daysofweek INTEGER NOT NULL, enabled INTEGER NOT NULL, vibrate INTEGER NOT NULL, label TEXT NOT NULL, ringtone TEXT, delete_after_use INTEGER NOT NULL DEFAULT 0);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 85
    const-string v0, "Alarms Table created"

    invoke-static {v0}, Lcom/android/deskclock/Log;->i(Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method private static createCitiesTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 108
    const-string v0, "CREATE TABLE selected_cities (city_id TEXT PRIMARY KEY,city_name TEXT NOT NULL, timezone_name TEXT NOT NULL, timezone_offset INTEGER NOT NULL);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 113
    const-string v0, "Cities table created"

    invoke-static {v0}, Lcom/android/deskclock/Log;->i(Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method private static createInstanceTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 89
    const-string v0, "CREATE TABLE alarm_instances (_id INTEGER PRIMARY KEY,year INTEGER NOT NULL, month INTEGER NOT NULL, day INTEGER NOT NULL, hour INTEGER NOT NULL, minutes INTEGER NOT NULL, vibrate INTEGER NOT NULL, label TEXT NOT NULL, ringtone TEXT, alarm_state INTEGER NOT NULL, alarm_id INTEGER REFERENCES alarm_templates(_id) ON UPDATE CASCADE ON DELETE CASCADE);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 104
    const-string v0, "Instance table created"

    invoke-static {v0}, Lcom/android/deskclock/Log;->i(Ljava/lang/String;)V

    .line 105
    return-void
.end method


# virtual methods
.method fixAlarmInsert(Landroid/content/ContentValues;)J
    .locals 14
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 231
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 232
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 233
    const-wide/16 v11, -0x1

    .line 236
    .local v11, "rowId":J
    :try_start_0
    const-string v1, "_id"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    .line 237
    .local v13, "value":Ljava/lang/Object;
    if-eqz v13, :cond_0

    .line 238
    check-cast v13, Ljava/lang/Long;

    .end local v13    # "value":Ljava/lang/Object;
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 239
    .local v9, "id":J
    const-wide/16 v1, -0x1

    cmp-long v1, v9, v1

    if-lez v1, :cond_0

    .line 240
    const-string v1, "alarm_templates"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const-string v3, "_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 244
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 246
    const-string v1, "_id"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 251
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "id":J
    :cond_0
    const-string v1, "alarm_templates"

    const-string v2, "ringtone"

    invoke-virtual {v0, v1, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v11

    .line 252
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 256
    const-wide/16 v1, 0x0

    cmp-long v1, v11, v1

    if-gez v1, :cond_1

    .line 257
    new-instance v1, Landroid/database/SQLException;

    const-string v2, "Failed to insert row"

    invoke-direct {v1, v2}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 254
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 261
    :cond_1
    return-wide v11
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 125
    invoke-static {p1}, Lcom/android/deskclock/provider/ClockDatabaseHelper;->createAlarmsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 126
    invoke-static {p1}, Lcom/android/deskclock/provider/ClockDatabaseHelper;->createInstanceTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 127
    invoke-static {p1}, Lcom/android/deskclock/provider/ClockDatabaseHelper;->createCitiesTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 130
    const-string v2, "Inserting default alarms"

    invoke-static {v2}, Lcom/android/deskclock/Log;->i(Ljava/lang/String;)V

    .line 131
    const-string v0, ", "

    .line 132
    .local v0, "cs":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "INSERT INTO alarm_templates (hour"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "minutes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "daysofweek"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "enabled"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "vibrate"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "label"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ringtone"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "delete_after_use"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") VALUES "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 141
    .local v1, "insertMe":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "(8, 30, 31, 0, 0, \'\', NULL, 0);"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 142
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "(9, 00, 96, 0, 0, \'\', NULL, 0);"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 16
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "currentVersion"    # I

    .prologue
    .line 151
    const/4 v1, 0x6

    move/from16 v0, p2

    if-gt v0, v1, :cond_7

    .line 153
    const-string v1, "DROP TABLE IF EXISTS alarm_instances;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 154
    const-string v1, "DROP TABLE IF EXISTS selected_cities;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 157
    invoke-static/range {p1 .. p1}, Lcom/android/deskclock/provider/ClockDatabaseHelper;->createAlarmsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 158
    invoke-static/range {p1 .. p1}, Lcom/android/deskclock/provider/ClockDatabaseHelper;->createInstanceTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 159
    invoke-static/range {p1 .. p1}, Lcom/android/deskclock/provider/ClockDatabaseHelper;->createCitiesTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 161
    const-string v1, "Copying old alarms to new table"

    invoke-static {v1}, Lcom/android/deskclock/Log;->i(Ljava/lang/String;)V

    .line 162
    const/16 v1, 0x8

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v3, v1

    const/4 v1, 0x1

    const-string v2, "hour"

    aput-object v2, v3, v1

    const/4 v1, 0x2

    const-string v2, "minutes"

    aput-object v2, v3, v1

    const/4 v1, 0x3

    const-string v2, "daysofweek"

    aput-object v2, v3, v1

    const/4 v1, 0x4

    const-string v2, "enabled"

    aput-object v2, v3, v1

    const/4 v1, 0x5

    const-string v2, "vibrate"

    aput-object v2, v3, v1

    const/4 v1, 0x6

    const-string v2, "message"

    aput-object v2, v3, v1

    const/4 v1, 0x7

    const-string v2, "alert"

    aput-object v2, v3, v1

    .line 172
    .local v3, "OLD_TABLE_COLUMNS":[Ljava/lang/String;
    const-string v2, "alarms"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 174
    .local v12, "cursor":Landroid/database/Cursor;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    .line 178
    .local v11, "currentTime":Ljava/util/Calendar;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/deskclock/provider/ClockDatabaseHelper;->mContext:Landroid/content/Context;

    const-string v2, "AlarmClock"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 180
    .local v14, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "snooze_ids"

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v14, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v15

    .line 183
    .local v15, "snoozedIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 184
    new-instance v9, Lcom/android/deskclock/provider/Alarm;

    invoke-direct {v9}, Lcom/android/deskclock/provider/Alarm;-><init>()V

    .line 185
    .local v9, "alarm":Lcom/android/deskclock/provider/Alarm;
    const/4 v1, 0x0

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v9, Lcom/android/deskclock/provider/Alarm;->id:J

    .line 186
    const/4 v1, 0x1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v9, Lcom/android/deskclock/provider/Alarm;->hour:I

    .line 187
    const/4 v1, 0x2

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v9, Lcom/android/deskclock/provider/Alarm;->minutes:I

    .line 188
    new-instance v1, Lcom/android/deskclock/provider/DaysOfWeek;

    const/4 v2, 0x3

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-direct {v1, v2}, Lcom/android/deskclock/provider/DaysOfWeek;-><init>(I)V

    iput-object v1, v9, Lcom/android/deskclock/provider/Alarm;->daysOfWeek:Lcom/android/deskclock/provider/DaysOfWeek;

    .line 189
    const/4 v1, 0x4

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, v9, Lcom/android/deskclock/provider/Alarm;->enabled:Z

    .line 190
    const/4 v1, 0x5

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    const/4 v1, 0x1

    :goto_2
    iput-boolean v1, v9, Lcom/android/deskclock/provider/Alarm;->vibrate:Z

    .line 191
    const/4 v1, 0x6

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/android/deskclock/provider/Alarm;->label:Ljava/lang/String;

    .line 193
    const/4 v1, 0x7

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 194
    .local v10, "alertString":Ljava/lang/String;
    const-string v1, "silent"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 195
    sget-object v1, Lcom/android/deskclock/provider/Alarm;->NO_RINGTONE_URI:Landroid/net/Uri;

    iput-object v1, v9, Lcom/android/deskclock/provider/Alarm;->alert:Landroid/net/Uri;

    .line 201
    :goto_3
    iget-boolean v1, v9, Lcom/android/deskclock/provider/Alarm;->enabled:Z

    if-eqz v1, :cond_0

    .line 202
    invoke-virtual {v9, v11}, Lcom/android/deskclock/provider/Alarm;->createInstanceAfter(Ljava/util/Calendar;)Lcom/android/deskclock/provider/AlarmInstance;

    move-result-object v13

    .line 203
    .local v13, "newInstance":Lcom/android/deskclock/provider/AlarmInstance;
    const-string v1, "alarm_instances"

    const/4 v2, 0x0

    invoke-static {v13}, Lcom/android/deskclock/provider/AlarmInstance;->createContentValues(Lcom/android/deskclock/provider/AlarmInstance;)Landroid/content/ContentValues;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 212
    .end local v13    # "newInstance":Lcom/android/deskclock/provider/AlarmInstance;
    :cond_0
    iget-wide v1, v9, Lcom/android/deskclock/provider/Alarm;->id:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v15, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 213
    const/4 v1, 0x1

    iput-boolean v1, v9, Lcom/android/deskclock/provider/Alarm;->enabled:Z

    .line 214
    invoke-virtual {v9, v11}, Lcom/android/deskclock/provider/Alarm;->createInstanceAfter(Ljava/util/Calendar;)Lcom/android/deskclock/provider/AlarmInstance;

    move-result-object v13

    .line 215
    .restart local v13    # "newInstance":Lcom/android/deskclock/provider/AlarmInstance;
    const-string v1, "alarm_instances"

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/deskclock/provider/ClockDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v13, v4}, Lcom/android/deskclock/provider/AlarmInstance;->getSnoozeValues(Lcom/android/deskclock/provider/AlarmInstance;Landroid/content/Context;)Landroid/content/ContentValues;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 218
    .end local v13    # "newInstance":Lcom/android/deskclock/provider/AlarmInstance;
    :cond_1
    const-string v1, "alarm_templates"

    const/4 v2, 0x0

    invoke-static {v9}, Lcom/android/deskclock/provider/Alarm;->createContentValues(Lcom/android/deskclock/provider/Alarm;)Landroid/content/ContentValues;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto/16 :goto_0

    .line 189
    .end local v10    # "alertString":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 190
    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    .line 197
    .restart local v10    # "alertString":Ljava/lang/String;
    :cond_4
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    :goto_4
    iput-object v1, v9, Lcom/android/deskclock/provider/Alarm;->alert:Landroid/net/Uri;

    goto :goto_3

    :cond_5
    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_4

    .line 221
    .end local v9    # "alarm":Lcom/android/deskclock/provider/Alarm;
    .end local v10    # "alertString":Ljava/lang/String;
    :cond_6
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 223
    const-string v1, "Dropping old alarm table"

    invoke-static {v1}, Lcom/android/deskclock/Log;->i(Ljava/lang/String;)V

    .line 224
    const-string v1, "DROP TABLE IF EXISTS alarms;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 226
    .end local v3    # "OLD_TABLE_COLUMNS":[Ljava/lang/String;
    .end local v11    # "currentTime":Ljava/util/Calendar;
    .end local v12    # "cursor":Landroid/database/Cursor;
    .end local v14    # "prefs":Landroid/content/SharedPreferences;
    .end local v15    # "snoozedIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_7
    return-void
.end method
