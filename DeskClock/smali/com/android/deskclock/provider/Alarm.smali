.class public final Lcom/android/deskclock/provider/Alarm;
.super Ljava/lang/Object;
.source "Alarm.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/android/deskclock/provider/ClockContract$AlarmsColumns;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/deskclock/provider/Alarm;",
            ">;"
        }
    .end annotation
.end field

.field private static final QUERY_COLUMNS:[Ljava/lang/String;


# instance fields
.field public alert:Landroid/net/Uri;

.field public daysOfWeek:Lcom/android/deskclock/provider/DaysOfWeek;

.field public deleteAfterUse:Z

.field public enabled:Z

.field public hour:I

.field public id:J

.field public label:Ljava/lang/String;

.field public minutes:I

.field public vibrate:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 51
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "hour"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "minutes"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "daysofweek"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "enabled"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "vibrate"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "label"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "ringtone"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "delete_after_use"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/deskclock/provider/Alarm;->QUERY_COLUMNS:[Ljava/lang/String;

    .line 208
    new-instance v0, Lcom/android/deskclock/provider/Alarm$1;

    invoke-direct {v0}, Lcom/android/deskclock/provider/Alarm$1;-><init>()V

    sput-object v0, Lcom/android/deskclock/provider/Alarm;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 232
    invoke-direct {p0, v0, v0}, Lcom/android/deskclock/provider/Alarm;-><init>(II)V

    .line 233
    return-void
.end method

.method public constructor <init>(II)V
    .locals 3
    .param p1, "hour"    # I
    .param p2, "minutes"    # I

    .prologue
    const/4 v2, 0x0

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/deskclock/provider/Alarm;->id:J

    .line 237
    iput p1, p0, Lcom/android/deskclock/provider/Alarm;->hour:I

    .line 238
    iput p2, p0, Lcom/android/deskclock/provider/Alarm;->minutes:I

    .line 239
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/deskclock/provider/Alarm;->vibrate:Z

    .line 240
    new-instance v0, Lcom/android/deskclock/provider/DaysOfWeek;

    invoke-direct {v0, v2}, Lcom/android/deskclock/provider/DaysOfWeek;-><init>(I)V

    iput-object v0, p0, Lcom/android/deskclock/provider/Alarm;->daysOfWeek:Lcom/android/deskclock/provider/DaysOfWeek;

    .line 241
    const-string v0, ""

    iput-object v0, p0, Lcom/android/deskclock/provider/Alarm;->label:Ljava/lang/String;

    .line 242
    const/4 v0, 0x4

    invoke-static {v0}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/provider/Alarm;->alert:Landroid/net/Uri;

    .line 243
    iput-boolean v2, p0, Lcom/android/deskclock/provider/Alarm;->deleteAfterUse:Z

    .line 244
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 7
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    const/4 v6, 0x7

    const/4 v5, 0x4

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/deskclock/provider/Alarm;->id:J

    .line 248
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/deskclock/provider/Alarm;->enabled:Z

    .line 249
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/deskclock/provider/Alarm;->hour:I

    .line 250
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/deskclock/provider/Alarm;->minutes:I

    .line 251
    new-instance v0, Lcom/android/deskclock/provider/DaysOfWeek;

    const/4 v3, 0x3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-direct {v0, v3}, Lcom/android/deskclock/provider/DaysOfWeek;-><init>(I)V

    iput-object v0, p0, Lcom/android/deskclock/provider/Alarm;->daysOfWeek:Lcom/android/deskclock/provider/DaysOfWeek;

    .line 252
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/deskclock/provider/Alarm;->vibrate:Z

    .line 253
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/provider/Alarm;->label:Ljava/lang/String;

    .line 254
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_2

    :goto_2
    iput-boolean v1, p0, Lcom/android/deskclock/provider/Alarm;->deleteAfterUse:Z

    .line 256
    invoke-interface {p1, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 259
    invoke-static {v5}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/provider/Alarm;->alert:Landroid/net/Uri;

    .line 263
    :goto_3
    return-void

    :cond_0
    move v0, v2

    .line 248
    goto :goto_0

    :cond_1
    move v0, v2

    .line 252
    goto :goto_1

    :cond_2
    move v1, v2

    .line 254
    goto :goto_2

    .line 261
    :cond_3
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/provider/Alarm;->alert:Landroid/net/Uri;

    goto :goto_3
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/deskclock/provider/Alarm;->id:J

    .line 267
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/deskclock/provider/Alarm;->enabled:Z

    .line 268
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/deskclock/provider/Alarm;->hour:I

    .line 269
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/deskclock/provider/Alarm;->minutes:I

    .line 270
    new-instance v0, Lcom/android/deskclock/provider/DaysOfWeek;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-direct {v0, v3}, Lcom/android/deskclock/provider/DaysOfWeek;-><init>(I)V

    iput-object v0, p0, Lcom/android/deskclock/provider/Alarm;->daysOfWeek:Lcom/android/deskclock/provider/DaysOfWeek;

    .line 271
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/deskclock/provider/Alarm;->vibrate:Z

    .line 272
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/deskclock/provider/Alarm;->label:Ljava/lang/String;

    .line 273
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/deskclock/provider/Alarm;->alert:Landroid/net/Uri;

    .line 274
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    :goto_2
    iput-boolean v1, p0, Lcom/android/deskclock/provider/Alarm;->deleteAfterUse:Z

    .line 275
    return-void

    :cond_0
    move v0, v2

    .line 267
    goto :goto_0

    :cond_1
    move v0, v2

    .line 271
    goto :goto_1

    :cond_2
    move v1, v2

    .line 274
    goto :goto_2
.end method

.method public static addAlarm(Landroid/content/ContentResolver;Lcom/android/deskclock/provider/Alarm;)Lcom/android/deskclock/provider/Alarm;
    .locals 4
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .param p1, "alarm"    # Lcom/android/deskclock/provider/Alarm;

    .prologue
    .line 189
    invoke-static {p1}, Lcom/android/deskclock/provider/Alarm;->createContentValues(Lcom/android/deskclock/provider/Alarm;)Landroid/content/ContentValues;

    move-result-object v1

    .line 190
    .local v1, "values":Landroid/content/ContentValues;
    sget-object v2, Lcom/android/deskclock/provider/Alarm;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 191
    .local v0, "uri":Landroid/net/Uri;
    invoke-static {v0}, Lcom/android/deskclock/provider/Alarm;->getId(Landroid/net/Uri;)J

    move-result-wide v2

    iput-wide v2, p1, Lcom/android/deskclock/provider/Alarm;->id:J

    .line 192
    return-object p1
.end method

.method public static createContentValues(Lcom/android/deskclock/provider/Alarm;)Landroid/content/ContentValues;
    .locals 8
    .param p0, "alarm"    # Lcom/android/deskclock/provider/Alarm;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 80
    new-instance v0, Landroid/content/ContentValues;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 81
    .local v0, "values":Landroid/content/ContentValues;
    iget-wide v4, p0, Lcom/android/deskclock/provider/Alarm;->id:J

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-eqz v1, :cond_0

    .line 82
    const-string v1, "_id"

    iget-wide v4, p0, Lcom/android/deskclock/provider/Alarm;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 85
    :cond_0
    const-string v4, "enabled"

    iget-boolean v1, p0, Lcom/android/deskclock/provider/Alarm;->enabled:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 86
    const-string v1, "hour"

    iget v4, p0, Lcom/android/deskclock/provider/Alarm;->hour:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 87
    const-string v1, "minutes"

    iget v4, p0, Lcom/android/deskclock/provider/Alarm;->minutes:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 88
    const-string v1, "daysofweek"

    iget-object v4, p0, Lcom/android/deskclock/provider/Alarm;->daysOfWeek:Lcom/android/deskclock/provider/DaysOfWeek;

    invoke-virtual {v4}, Lcom/android/deskclock/provider/DaysOfWeek;->getBitSet()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 89
    const-string v1, "vibrate"

    iget-boolean v4, p0, Lcom/android/deskclock/provider/Alarm;->vibrate:Z

    if-eqz v4, :cond_2

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 90
    const-string v1, "label"

    iget-object v2, p0, Lcom/android/deskclock/provider/Alarm;->label:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v1, "delete_after_use"

    iget-boolean v2, p0, Lcom/android/deskclock/provider/Alarm;->deleteAfterUse:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 92
    iget-object v1, p0, Lcom/android/deskclock/provider/Alarm;->alert:Landroid/net/Uri;

    if-nez v1, :cond_3

    .line 94
    const-string v1, "ringtone"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 99
    :goto_2
    return-object v0

    :cond_1
    move v1, v3

    .line 85
    goto :goto_0

    :cond_2
    move v2, v3

    .line 89
    goto :goto_1

    .line 96
    :cond_3
    const-string v1, "ringtone"

    iget-object v2, p0, Lcom/android/deskclock/provider/Alarm;->alert:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static createIntent(Landroid/content/Context;Ljava/lang/Class;J)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "alarmId"    # J
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
    .line 107
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p2, p3}, Lcom/android/deskclock/provider/Alarm;->getUri(J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static deleteAlarm(Landroid/content/ContentResolver;J)Z
    .locals 6
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .param p1, "alarmId"    # J

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 203
    const-wide/16 v3, -0x1

    cmp-long v3, p1, v3

    if-nez v3, :cond_0

    .line 205
    :goto_0
    return v2

    .line 204
    :cond_0
    invoke-static {p1, p2}, Lcom/android/deskclock/provider/Alarm;->getUri(J)Landroid/net/Uri;

    move-result-object v3

    const-string v4, ""

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 205
    .local v0, "deletedRows":I
    if-ne v0, v1, :cond_1

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public static getAlarm(Landroid/content/ContentResolver;J)Lcom/android/deskclock/provider/Alarm;
    .locals 9
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .param p1, "alarmId"    # J

    .prologue
    const/4 v3, 0x0

    .line 137
    invoke-static {p1, p2}, Lcom/android/deskclock/provider/Alarm;->getUri(J)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/deskclock/provider/Alarm;->QUERY_COLUMNS:[Ljava/lang/String;

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 138
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 139
    .local v7, "result":Lcom/android/deskclock/provider/Alarm;
    if-nez v6, :cond_0

    move-object v8, v7

    .line 151
    .end local v7    # "result":Lcom/android/deskclock/provider/Alarm;
    .local v8, "result":Lcom/android/deskclock/provider/Alarm;
    :goto_0
    return-object v8

    .line 144
    .end local v8    # "result":Lcom/android/deskclock/provider/Alarm;
    .restart local v7    # "result":Lcom/android/deskclock/provider/Alarm;
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    new-instance v7, Lcom/android/deskclock/provider/Alarm;

    .end local v7    # "result":Lcom/android/deskclock/provider/Alarm;
    invoke-direct {v7, v6}, Lcom/android/deskclock/provider/Alarm;-><init>(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    .restart local v7    # "result":Lcom/android/deskclock/provider/Alarm;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v8, v7

    .line 151
    .end local v7    # "result":Lcom/android/deskclock/provider/Alarm;
    .restart local v8    # "result":Lcom/android/deskclock/provider/Alarm;
    goto :goto_0

    .line 148
    .end local v8    # "result":Lcom/android/deskclock/provider/Alarm;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static varargs getAlarms(Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
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
            "Lcom/android/deskclock/provider/Alarm;",
            ">;"
        }
    .end annotation

    .prologue
    .line 168
    sget-object v1, Lcom/android/deskclock/provider/Alarm;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/deskclock/provider/Alarm;->QUERY_COLUMNS:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 170
    .local v6, "cursor":Landroid/database/Cursor;
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    .line 171
    .local v7, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/deskclock/provider/Alarm;>;"
    if-nez v6, :cond_0

    .line 185
    :goto_0
    return-object v7

    .line 176
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 178
    :cond_1
    new-instance v0, Lcom/android/deskclock/provider/Alarm;

    invoke-direct {v0, v6}, Lcom/android/deskclock/provider/Alarm;-><init>(Landroid/database/Cursor;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 182
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getAlarmsCursorLoader(Landroid/content/Context;)Landroid/content/CursorLoader;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 125
    new-instance v0, Landroid/content/CursorLoader;

    sget-object v2, Lcom/android/deskclock/provider/ClockContract$AlarmsColumns;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/deskclock/provider/Alarm;->QUERY_COLUMNS:[Ljava/lang/String;

    const-string v6, "hour, minutes ASC, _id DESC"

    move-object v1, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getId(Landroid/net/Uri;)J
    .locals 2
    .param p0, "contentUri"    # Landroid/net/Uri;

    .prologue
    .line 115
    invoke-static {p0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getUri(J)Landroid/net/Uri;
    .locals 1
    .param p0, "alarmId"    # J

    .prologue
    .line 111
    sget-object v0, Lcom/android/deskclock/provider/Alarm;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static updateAlarm(Landroid/content/ContentResolver;Lcom/android/deskclock/provider/Alarm;)Z
    .locals 9
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .param p1, "alarm"    # Lcom/android/deskclock/provider/Alarm;

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 196
    iget-wide v4, p1, Lcom/android/deskclock/provider/Alarm;->id:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 199
    :cond_0
    :goto_0
    return v3

    .line 197
    :cond_1
    invoke-static {p1}, Lcom/android/deskclock/provider/Alarm;->createContentValues(Lcom/android/deskclock/provider/Alarm;)Landroid/content/ContentValues;

    move-result-object v2

    .line 198
    .local v2, "values":Landroid/content/ContentValues;
    iget-wide v4, p1, Lcom/android/deskclock/provider/Alarm;->id:J

    invoke-static {v4, v5}, Lcom/android/deskclock/provider/Alarm;->getUri(J)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p0, v4, v2, v8, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    int-to-long v0, v4

    .line 199
    .local v0, "rowsUpdated":J
    const-wide/16 v4, 0x1

    cmp-long v4, v0, v4

    if-nez v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public createInstanceAfter(Ljava/util/Calendar;)Lcom/android/deskclock/provider/AlarmInstance;
    .locals 8
    .param p1, "time"    # Ljava/util/Calendar;

    .prologue
    const/4 v6, 0x5

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v7, 0x1

    .line 301
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 302
    .local v1, "nextInstanceTime":Ljava/util/Calendar;
    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v7, v3}, Ljava/util/Calendar;->set(II)V

    .line 303
    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v4, v3}, Ljava/util/Calendar;->set(II)V

    .line 304
    invoke-virtual {p1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v6, v3}, Ljava/util/Calendar;->set(II)V

    .line 305
    const/16 v3, 0xb

    iget v4, p0, Lcom/android/deskclock/provider/Alarm;->hour:I

    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 306
    const/16 v3, 0xc

    iget v4, p0, Lcom/android/deskclock/provider/Alarm;->minutes:I

    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 307
    const/16 v3, 0xd

    invoke-virtual {v1, v3, v5}, Ljava/util/Calendar;->set(II)V

    .line 308
    const/16 v3, 0xe

    invoke-virtual {v1, v3, v5}, Ljava/util/Calendar;->set(II)V

    .line 311
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gtz v3, :cond_0

    .line 312
    const/4 v3, 0x6

    invoke-virtual {v1, v3, v7}, Ljava/util/Calendar;->add(II)V

    .line 316
    :cond_0
    iget-object v3, p0, Lcom/android/deskclock/provider/Alarm;->daysOfWeek:Lcom/android/deskclock/provider/DaysOfWeek;

    invoke-virtual {v3, v1}, Lcom/android/deskclock/provider/DaysOfWeek;->calculateDaysToNextAlarm(Ljava/util/Calendar;)I

    move-result v0

    .line 317
    .local v0, "addDays":I
    if-lez v0, :cond_1

    .line 318
    const/4 v3, 0x7

    invoke-virtual {v1, v3, v0}, Ljava/util/Calendar;->add(II)V

    .line 321
    :cond_1
    new-instance v2, Lcom/android/deskclock/provider/AlarmInstance;

    iget-wide v3, p0, Lcom/android/deskclock/provider/Alarm;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/android/deskclock/provider/AlarmInstance;-><init>(Ljava/util/Calendar;Ljava/lang/Long;)V

    .line 322
    .local v2, "result":Lcom/android/deskclock/provider/AlarmInstance;
    iget-boolean v3, p0, Lcom/android/deskclock/provider/Alarm;->vibrate:Z

    iput-boolean v3, v2, Lcom/android/deskclock/provider/AlarmInstance;->mVibrate:Z

    .line 323
    iget-object v3, p0, Lcom/android/deskclock/provider/Alarm;->label:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/deskclock/provider/AlarmInstance;->mLabel:Ljava/lang/String;

    .line 324
    iget-object v3, p0, Lcom/android/deskclock/provider/Alarm;->alert:Landroid/net/Uri;

    iput-object v3, v2, Lcom/android/deskclock/provider/AlarmInstance;->mRingtone:Landroid/net/Uri;

    .line 325
    return-object v2
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 297
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 330
    instance-of v2, p1, Lcom/android/deskclock/provider/Alarm;

    if-nez v2, :cond_1

    .line 332
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 331
    check-cast v0, Lcom/android/deskclock/provider/Alarm;

    .line 332
    .local v0, "other":Lcom/android/deskclock/provider/Alarm;
    iget-wide v2, p0, Lcom/android/deskclock/provider/Alarm;->id:J

    iget-wide v4, v0, Lcom/android/deskclock/provider/Alarm;->id:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 337
    iget-wide v0, p0, Lcom/android/deskclock/provider/Alarm;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Alarm{alert="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/deskclock/provider/Alarm;->alert:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/deskclock/provider/Alarm;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/deskclock/provider/Alarm;->enabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hour="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/deskclock/provider/Alarm;->hour:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", minutes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/deskclock/provider/Alarm;->minutes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", daysOfWeek="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/deskclock/provider/Alarm;->daysOfWeek:Lcom/android/deskclock/provider/DaysOfWeek;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", vibrate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/deskclock/provider/Alarm;->vibrate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", label=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/deskclock/provider/Alarm;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", deleteAfterUse="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/deskclock/provider/Alarm;->deleteAfterUse:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .param p1, "p"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 285
    iget-wide v3, p0, Lcom/android/deskclock/provider/Alarm;->id:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 286
    iget-boolean v0, p0, Lcom/android/deskclock/provider/Alarm;->enabled:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 287
    iget v0, p0, Lcom/android/deskclock/provider/Alarm;->hour:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 288
    iget v0, p0, Lcom/android/deskclock/provider/Alarm;->minutes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 289
    iget-object v0, p0, Lcom/android/deskclock/provider/Alarm;->daysOfWeek:Lcom/android/deskclock/provider/DaysOfWeek;

    invoke-virtual {v0}, Lcom/android/deskclock/provider/DaysOfWeek;->getBitSet()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 290
    iget-boolean v0, p0, Lcom/android/deskclock/provider/Alarm;->vibrate:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 291
    iget-object v0, p0, Lcom/android/deskclock/provider/Alarm;->label:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/android/deskclock/provider/Alarm;->alert:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 293
    iget-boolean v0, p0, Lcom/android/deskclock/provider/Alarm;->deleteAfterUse:Z

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 294
    return-void

    :cond_0
    move v0, v2

    .line 286
    goto :goto_0

    :cond_1
    move v0, v2

    .line 290
    goto :goto_1

    :cond_2
    move v1, v2

    .line 293
    goto :goto_2
.end method
