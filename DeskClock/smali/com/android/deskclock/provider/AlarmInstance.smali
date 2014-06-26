.class public final Lcom/android/deskclock/provider/AlarmInstance;
.super Ljava/lang/Object;
.source "AlarmInstance.java"

# interfaces
.implements Lcom/android/deskclock/provider/ClockContract$InstancesColumns;


# static fields
.field private static final QUERY_COLUMNS:[Ljava/lang/String;


# instance fields
.field public mAlarmId:Ljava/lang/Long;

.field public mAlarmState:I

.field public mDay:I

.field public mHour:I

.field public mId:J

.field public mLabel:Ljava/lang/String;

.field public mMinute:I

.field public mMonth:I

.field public mRingtone:Landroid/net/Uri;

.field public mVibrate:Z

.field public mYear:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 65
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "year"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "month"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "day"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "hour"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "minutes"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "label"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "vibrate"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "ringtone"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "alarm_id"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "alarm_state"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/deskclock/provider/AlarmInstance;->QUERY_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 7
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    const/16 v6, 0x9

    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 305
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/deskclock/provider/AlarmInstance;->mId:J

    .line 306
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/android/deskclock/provider/AlarmInstance;->mYear:I

    .line 307
    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/android/deskclock/provider/AlarmInstance;->mMonth:I

    .line 308
    const/4 v2, 0x3

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/android/deskclock/provider/AlarmInstance;->mDay:I

    .line 309
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/android/deskclock/provider/AlarmInstance;->mHour:I

    .line 310
    const/4 v2, 0x5

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/android/deskclock/provider/AlarmInstance;->mMinute:I

    .line 311
    const/4 v2, 0x6

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/deskclock/provider/AlarmInstance;->mLabel:Ljava/lang/String;

    .line 312
    const/4 v2, 0x7

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/android/deskclock/provider/AlarmInstance;->mVibrate:Z

    .line 313
    invoke-interface {p1, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 316
    invoke-static {v4}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/provider/AlarmInstance;->mRingtone:Landroid/net/Uri;

    .line 321
    :goto_1
    invoke-interface {p1, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 322
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/provider/AlarmInstance;->mAlarmId:Ljava/lang/Long;

    .line 324
    :cond_0
    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/deskclock/provider/AlarmInstance;->mAlarmState:I

    .line 325
    return-void

    :cond_1
    move v0, v1

    .line 312
    goto :goto_0

    .line 318
    :cond_2
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/provider/AlarmInstance;->mRingtone:Landroid/net/Uri;

    goto :goto_1
.end method

.method public constructor <init>(Ljava/util/Calendar;)V
    .locals 3
    .param p1, "calendar"    # Ljava/util/Calendar;

    .prologue
    const/4 v2, 0x0

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 296
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/deskclock/provider/AlarmInstance;->mId:J

    .line 297
    invoke-virtual {p0, p1}, Lcom/android/deskclock/provider/AlarmInstance;->setAlarmTime(Ljava/util/Calendar;)V

    .line 298
    const-string v0, ""

    iput-object v0, p0, Lcom/android/deskclock/provider/AlarmInstance;->mLabel:Ljava/lang/String;

    .line 299
    iput-boolean v2, p0, Lcom/android/deskclock/provider/AlarmInstance;->mVibrate:Z

    .line 300
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/deskclock/provider/AlarmInstance;->mRingtone:Landroid/net/Uri;

    .line 301
    iput v2, p0, Lcom/android/deskclock/provider/AlarmInstance;->mAlarmState:I

    .line 302
    return-void
.end method

.method public constructor <init>(Ljava/util/Calendar;Ljava/lang/Long;)V
    .locals 0
    .param p1, "calendar"    # Ljava/util/Calendar;
    .param p2, "alarmId"    # Ljava/lang/Long;

    .prologue
    .line 291
    invoke-direct {p0, p1}, Lcom/android/deskclock/provider/AlarmInstance;-><init>(Ljava/util/Calendar;)V

    .line 292
    iput-object p2, p0, Lcom/android/deskclock/provider/AlarmInstance;->mAlarmId:Ljava/lang/Long;

    .line 293
    return-void
.end method

.method public static addInstance(Landroid/content/ContentResolver;Lcom/android/deskclock/provider/AlarmInstance;)Lcom/android/deskclock/provider/AlarmInstance;
    .locals 7
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .param p1, "instance"    # Lcom/android/deskclock/provider/AlarmInstance;

    .prologue
    .line 215
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "alarm_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/deskclock/provider/AlarmInstance;->mAlarmId:Ljava/lang/Long;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, "dupSelector":Ljava/lang/String;
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-static {p0, v0, v5}, Lcom/android/deskclock/provider/AlarmInstance;->getInstances(Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/deskclock/provider/AlarmInstance;

    .line 217
    .local v2, "otherInstances":Lcom/android/deskclock/provider/AlarmInstance;
    invoke-virtual {v2}, Lcom/android/deskclock/provider/AlarmInstance;->getAlarmTime()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/deskclock/provider/AlarmInstance;->getAlarmTime()Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 218
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Detected duplicate instance in DB. Updating "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/deskclock/Log;->i(Ljava/lang/String;)V

    .line 221
    iget-wide v5, v2, Lcom/android/deskclock/provider/AlarmInstance;->mId:J

    iput-wide v5, p1, Lcom/android/deskclock/provider/AlarmInstance;->mId:J

    .line 222
    invoke-static {p0, p1}, Lcom/android/deskclock/provider/AlarmInstance;->updateInstance(Landroid/content/ContentResolver;Lcom/android/deskclock/provider/AlarmInstance;)Z

    .line 230
    .end local v2    # "otherInstances":Lcom/android/deskclock/provider/AlarmInstance;
    :goto_0
    return-object p1

    .line 227
    :cond_1
    invoke-static {p1}, Lcom/android/deskclock/provider/AlarmInstance;->createContentValues(Lcom/android/deskclock/provider/AlarmInstance;)Landroid/content/ContentValues;

    move-result-object v4

    .line 228
    .local v4, "values":Landroid/content/ContentValues;
    sget-object v5, Lcom/android/deskclock/provider/AlarmInstance;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v5, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 229
    .local v3, "uri":Landroid/net/Uri;
    invoke-static {v3}, Lcom/android/deskclock/provider/AlarmInstance;->getId(Landroid/net/Uri;)J

    move-result-wide v5

    iput-wide v5, p1, Lcom/android/deskclock/provider/AlarmInstance;->mId:J

    goto :goto_0
.end method

.method public static createContentValues(Lcom/android/deskclock/provider/AlarmInstance;)Landroid/content/ContentValues;
    .locals 5
    .param p0, "instance"    # Lcom/android/deskclock/provider/AlarmInstance;

    .prologue
    .line 99
    new-instance v0, Landroid/content/ContentValues;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 100
    .local v0, "values":Landroid/content/ContentValues;
    iget-wide v1, p0, Lcom/android/deskclock/provider/AlarmInstance;->mId:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 101
    const-string v1, "_id"

    iget-wide v2, p0, Lcom/android/deskclock/provider/AlarmInstance;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 104
    :cond_0
    const-string v1, "year"

    iget v2, p0, Lcom/android/deskclock/provider/AlarmInstance;->mYear:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 105
    const-string v1, "month"

    iget v2, p0, Lcom/android/deskclock/provider/AlarmInstance;->mMonth:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 106
    const-string v1, "day"

    iget v2, p0, Lcom/android/deskclock/provider/AlarmInstance;->mDay:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 107
    const-string v1, "hour"

    iget v2, p0, Lcom/android/deskclock/provider/AlarmInstance;->mHour:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 108
    const-string v1, "minutes"

    iget v2, p0, Lcom/android/deskclock/provider/AlarmInstance;->mMinute:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 109
    const-string v1, "label"

    iget-object v2, p0, Lcom/android/deskclock/provider/AlarmInstance;->mLabel:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string v2, "vibrate"

    iget-boolean v1, p0, Lcom/android/deskclock/provider/AlarmInstance;->mVibrate:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 111
    iget-object v1, p0, Lcom/android/deskclock/provider/AlarmInstance;->mRingtone:Landroid/net/Uri;

    if-nez v1, :cond_2

    .line 114
    const-string v1, "ringtone"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 118
    :goto_1
    const-string v1, "alarm_id"

    iget-object v2, p0, Lcom/android/deskclock/provider/AlarmInstance;->mAlarmId:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 119
    const-string v1, "alarm_state"

    iget v2, p0, Lcom/android/deskclock/provider/AlarmInstance;->mAlarmState:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 120
    return-object v0

    .line 110
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 116
    :cond_2
    const-string v1, "ringtone"

    iget-object v2, p0, Lcom/android/deskclock/provider/AlarmInstance;->mRingtone:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static createIntent(Landroid/content/Context;Ljava/lang/Class;J)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "instanceId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;J)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 128
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p2, p3}, Lcom/android/deskclock/provider/AlarmInstance;->getUri(J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static deleteInstance(Landroid/content/ContentResolver;J)Z
    .locals 6
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .param p1, "instanceId"    # J

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 272
    const-wide/16 v3, -0x1

    cmp-long v3, p1, v3

    if-nez v3, :cond_0

    .line 274
    :goto_0
    return v2

    .line 273
    :cond_0
    invoke-static {p1, p2}, Lcom/android/deskclock/provider/AlarmInstance;->getUri(J)Landroid/net/Uri;

    move-result-object v3

    const-string v4, ""

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 274
    .local v0, "deletedRows":I
    if-ne v0, v1, :cond_1

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public static getId(Landroid/net/Uri;)J
    .locals 2
    .param p0, "contentUri"    # Landroid/net/Uri;

    .prologue
    .line 132
    invoke-static {p0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getInstance(Landroid/content/ContentResolver;J)Lcom/android/deskclock/provider/AlarmInstance;
    .locals 9
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .param p1, "instanceId"    # J

    .prologue
    const/4 v3, 0x0

    .line 147
    invoke-static {p1, p2}, Lcom/android/deskclock/provider/AlarmInstance;->getUri(J)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/deskclock/provider/AlarmInstance;->QUERY_COLUMNS:[Ljava/lang/String;

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 148
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 149
    .local v7, "result":Lcom/android/deskclock/provider/AlarmInstance;
    if-nez v6, :cond_0

    move-object v8, v7

    .line 161
    .end local v7    # "result":Lcom/android/deskclock/provider/AlarmInstance;
    .local v8, "result":Lcom/android/deskclock/provider/AlarmInstance;
    :goto_0
    return-object v8

    .line 154
    .end local v8    # "result":Lcom/android/deskclock/provider/AlarmInstance;
    .restart local v7    # "result":Lcom/android/deskclock/provider/AlarmInstance;
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    new-instance v7, Lcom/android/deskclock/provider/AlarmInstance;

    .end local v7    # "result":Lcom/android/deskclock/provider/AlarmInstance;
    invoke-direct {v7, v6}, Lcom/android/deskclock/provider/AlarmInstance;-><init>(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    .restart local v7    # "result":Lcom/android/deskclock/provider/AlarmInstance;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v8, v7

    .line 161
    .end local v7    # "result":Lcom/android/deskclock/provider/AlarmInstance;
    .restart local v8    # "result":Lcom/android/deskclock/provider/AlarmInstance;
    goto :goto_0

    .line 158
    .end local v8    # "result":Lcom/android/deskclock/provider/AlarmInstance;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static varargs getInstances(Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/deskclock/provider/AlarmInstance;",
            ">;"
        }
    .end annotation

    .prologue
    .line 190
    sget-object v1, Lcom/android/deskclock/provider/AlarmInstance;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/deskclock/provider/AlarmInstance;->QUERY_COLUMNS:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 192
    .local v6, "cursor":Landroid/database/Cursor;
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    .line 193
    .local v7, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/deskclock/provider/AlarmInstance;>;"
    if-nez v6, :cond_0

    .line 207
    :goto_0
    return-object v7

    .line 198
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 200
    :cond_1
    new-instance v0, Lcom/android/deskclock/provider/AlarmInstance;

    invoke-direct {v0, v6}, Lcom/android/deskclock/provider/AlarmInstance;-><init>(Landroid/database/Cursor;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 204
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getInstancesByAlarmId(Landroid/content/ContentResolver;J)Ljava/util/List;
    .locals 2
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .param p1, "alarmId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "J)",
            "Ljava/util/List",
            "<",
            "Lcom/android/deskclock/provider/AlarmInstance;",
            ">;"
        }
    .end annotation

    .prologue
    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "alarm_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/android/deskclock/provider/AlarmInstance;->getInstances(Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getSnoozeValues(Lcom/android/deskclock/provider/AlarmInstance;Landroid/content/Context;)Landroid/content/ContentValues;
    .locals 10
    .param p0, "instance"    # Lcom/android/deskclock/provider/AlarmInstance;
    .param p1, "mcontext"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 235
    new-instance v4, Landroid/content/ContentValues;

    const/16 v6, 0xb

    invoke-direct {v4, v6}, Landroid/content/ContentValues;-><init>(I)V

    .line 236
    .local v4, "values":Landroid/content/ContentValues;
    iget-wide v6, p0, Lcom/android/deskclock/provider/AlarmInstance;->mId:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    .line 237
    const-string v6, "_id"

    iget-wide v7, p0, Lcom/android/deskclock/provider/AlarmInstance;->mId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 240
    :cond_0
    const-string v6, "AlarmClock"

    invoke-virtual {p1, v6, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 241
    .local v1, "snooze_time":Landroid/content/SharedPreferences;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "snooze_time"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/deskclock/provider/AlarmInstance;->mAlarmId:Ljava/lang/Long;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-wide/16 v7, 0x0

    invoke-interface {v1, v6, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 242
    .local v2, "timeinmillisec":J
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 243
    .local v0, "resultdate":Ljava/util/Date;
    const-string v6, "year"

    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result v7

    add-int/lit16 v7, v7, 0x76c

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 244
    const-string v6, "month"

    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 245
    const-string v6, "day"

    invoke-virtual {v0}, Ljava/util/Date;->getDate()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 246
    const-string v6, "hour"

    invoke-virtual {v0}, Ljava/util/Date;->getHours()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 247
    const-string v6, "minutes"

    invoke-virtual {v0}, Ljava/util/Date;->getMinutes()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 248
    const-string v6, "label"

    iget-object v7, p0, Lcom/android/deskclock/provider/AlarmInstance;->mLabel:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const-string v6, "vibrate"

    iget-boolean v7, p0, Lcom/android/deskclock/provider/AlarmInstance;->mVibrate:Z

    if-eqz v7, :cond_1

    const/4 v5, 0x1

    :cond_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 250
    iget-object v5, p0, Lcom/android/deskclock/provider/AlarmInstance;->mRingtone:Landroid/net/Uri;

    if-nez v5, :cond_2

    .line 253
    const-string v5, "ringtone"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 257
    :goto_0
    const-string v5, "alarm_id"

    iget-object v6, p0, Lcom/android/deskclock/provider/AlarmInstance;->mAlarmId:Ljava/lang/Long;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 258
    const-string v5, "alarm_state"

    iget v6, p0, Lcom/android/deskclock/provider/AlarmInstance;->mAlarmState:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 260
    return-object v4

    .line 255
    :cond_2
    const-string v5, "ringtone"

    iget-object v6, p0, Lcom/android/deskclock/provider/AlarmInstance;->mRingtone:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getUri(J)Landroid/net/Uri;
    .locals 1
    .param p0, "instanceId"    # J

    .prologue
    .line 136
    sget-object v0, Lcom/android/deskclock/provider/AlarmInstance;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static updateInstance(Landroid/content/ContentResolver;Lcom/android/deskclock/provider/AlarmInstance;)Z
    .locals 9
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .param p1, "instance"    # Lcom/android/deskclock/provider/AlarmInstance;

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 265
    iget-wide v4, p1, Lcom/android/deskclock/provider/AlarmInstance;->mId:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 268
    :cond_0
    :goto_0
    return v3

    .line 266
    :cond_1
    invoke-static {p1}, Lcom/android/deskclock/provider/AlarmInstance;->createContentValues(Lcom/android/deskclock/provider/AlarmInstance;)Landroid/content/ContentValues;

    move-result-object v2

    .line 267
    .local v2, "values":Landroid/content/ContentValues;
    iget-wide v4, p1, Lcom/android/deskclock/provider/AlarmInstance;->mId:J

    invoke-static {v4, v5}, Lcom/android/deskclock/provider/AlarmInstance;->getUri(J)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p0, v4, v2, v8, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    int-to-long v0, v4

    .line 268
    .local v0, "rowsUpdated":J
    const-wide/16 v4, 0x1

    cmp-long v4, v0, v4

    if-nez v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 412
    instance-of v2, p1, Lcom/android/deskclock/provider/AlarmInstance;

    if-nez v2, :cond_1

    .line 414
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 413
    check-cast v0, Lcom/android/deskclock/provider/AlarmInstance;

    .line 414
    .local v0, "other":Lcom/android/deskclock/provider/AlarmInstance;
    iget-wide v2, p0, Lcom/android/deskclock/provider/AlarmInstance;->mId:J

    iget-wide v4, v0, Lcom/android/deskclock/provider/AlarmInstance;->mId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getAlarmTime()Ljava/util/Calendar;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 345
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 346
    .local v0, "calendar":Ljava/util/Calendar;
    const/4 v1, 0x1

    iget v2, p0, Lcom/android/deskclock/provider/AlarmInstance;->mYear:I

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 347
    const/4 v1, 0x2

    iget v2, p0, Lcom/android/deskclock/provider/AlarmInstance;->mMonth:I

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 348
    const/4 v1, 0x5

    iget v2, p0, Lcom/android/deskclock/provider/AlarmInstance;->mDay:I

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 349
    const/16 v1, 0xb

    iget v2, p0, Lcom/android/deskclock/provider/AlarmInstance;->mHour:I

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 350
    const/16 v1, 0xc

    iget v2, p0, Lcom/android/deskclock/provider/AlarmInstance;->mMinute:I

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 351
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 352
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 353
    return-object v0
.end method

.method public getHighNotificationTime()Ljava/util/Calendar;
    .locals 3

    .prologue
    .line 373
    invoke-virtual {p0}, Lcom/android/deskclock/provider/AlarmInstance;->getAlarmTime()Ljava/util/Calendar;

    move-result-object v0

    .line 374
    .local v0, "calendar":Ljava/util/Calendar;
    const/16 v1, 0xc

    const/16 v2, -0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 375
    return-object v0
.end method

.method public getLabelOrDefault(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/deskclock/provider/AlarmInstance;->mLabel:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0d0010

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/deskclock/provider/AlarmInstance;->mLabel:Ljava/lang/String;

    goto :goto_0
.end method

.method public getLowNotificationTime()Ljava/util/Calendar;
    .locals 3

    .prologue
    .line 362
    invoke-virtual {p0}, Lcom/android/deskclock/provider/AlarmInstance;->getAlarmTime()Ljava/util/Calendar;

    move-result-object v0

    .line 363
    .local v0, "calendar":Ljava/util/Calendar;
    const/16 v1, 0xb

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 364
    return-object v0
.end method

.method public getMissedTimeToLive()Ljava/util/Calendar;
    .locals 3

    .prologue
    .line 384
    invoke-virtual {p0}, Lcom/android/deskclock/provider/AlarmInstance;->getAlarmTime()Ljava/util/Calendar;

    move-result-object v0

    .line 385
    .local v0, "calendar":Ljava/util/Calendar;
    const/16 v1, 0xa

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 386
    return-object v0
.end method

.method public getTimeout(Landroid/content/Context;)Ljava/util/Calendar;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 396
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "auto_silence"

    const-string v5, "10"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 398
    .local v2, "timeoutSetting":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 401
    .local v1, "timeoutMinutes":I
    if-gez v1, :cond_0

    .line 402
    const/4 v0, 0x0

    .line 407
    :goto_0
    return-object v0

    .line 405
    :cond_0
    invoke-virtual {p0}, Lcom/android/deskclock/provider/AlarmInstance;->getAlarmTime()Ljava/util/Calendar;

    move-result-object v0

    .line 406
    .local v0, "calendar":Ljava/util/Calendar;
    const/16 v3, 0xc

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->add(II)V

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 419
    iget-wide v0, p0, Lcom/android/deskclock/provider/AlarmInstance;->mId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    return v0
.end method

.method public setAlarmTime(Ljava/util/Calendar;)V
    .locals 1
    .param p1, "calendar"    # Ljava/util/Calendar;

    .prologue
    .line 332
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/android/deskclock/provider/AlarmInstance;->mYear:I

    .line 333
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/android/deskclock/provider/AlarmInstance;->mMonth:I

    .line 334
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/android/deskclock/provider/AlarmInstance;->mDay:I

    .line 335
    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/android/deskclock/provider/AlarmInstance;->mHour:I

    .line 336
    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/android/deskclock/provider/AlarmInstance;->mMinute:I

    .line 337
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AlarmInstance{mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/deskclock/provider/AlarmInstance;->mId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mYear="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/deskclock/provider/AlarmInstance;->mYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMonth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/deskclock/provider/AlarmInstance;->mMonth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/deskclock/provider/AlarmInstance;->mDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mHour="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/deskclock/provider/AlarmInstance;->mHour:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMinute="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/deskclock/provider/AlarmInstance;->mMinute:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLabel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/deskclock/provider/AlarmInstance;->mLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mVibrate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/deskclock/provider/AlarmInstance;->mVibrate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRingtone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/deskclock/provider/AlarmInstance;->mRingtone:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAlarmId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/deskclock/provider/AlarmInstance;->mAlarmId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAlarmState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/deskclock/provider/AlarmInstance;->mAlarmState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
