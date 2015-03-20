.class public Lcom/android/calendar/ics/IcsService;
.super Landroid/app/IntentService;
.source "IcsService.java"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    const-string v0, "IcsService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method private invokeCalendarUI(Landroid/database/Cursor;Landroid/os/Bundle;)Z
    .locals 9

    .prologue
    .line 114
    const/4 v2, 0x0

    .line 115
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 124
    const-string v0, "dtstart"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 126
    const-string v0, "dtend"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 130
    const-wide/16 v7, 0x0

    cmp-long v7, v7, v5

    if-nez v7, :cond_0

    .line 131
    const-string v3, "IcsService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ERROR Invalid start/end time (ms): "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 172
    :goto_0
    return v0

    .line 136
    :cond_0
    cmp-long v2, v0, v5

    if-gez v2, :cond_1

    .line 138
    const-wide/32 v0, 0x36ee80

    add-long/2addr v0, v5

    .line 139
    const-string v2, "duration"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 141
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 142
    new-instance v7, Lcom/android/calendarcommon/Duration;

    invoke-direct {v7}, Lcom/android/calendarcommon/Duration;-><init>()V

    .line 144
    :try_start_0
    invoke-virtual {v7, v2}, Lcom/android/calendarcommon/Duration;->parse(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v7}, Lcom/android/calendarcommon/Duration;->getMillis()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    add-long/2addr v0, v5

    .line 153
    :cond_1
    :goto_1
    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 155
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v3, v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 156
    const/high16 v2, 0x10000000

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 157
    const-string v2, "beginTime"

    invoke-virtual {v3, v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 158
    const-string v2, "endTime"

    invoke-virtual {v3, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 159
    const v0, 0x7f090005

    invoke-static {p0, v0}, Lcom/android/calendar/Utils;->getConfigBool(Landroid/content/Context;I)Z

    move-result v0

    .line 161
    if-eqz v0, :cond_3

    .line 162
    const/high16 v0, 0x4000000

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 163
    const-class v0, Lcom/android/calendar/EventInfoActivity;

    invoke-virtual {v3, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 167
    :goto_2
    if-eqz p2, :cond_2

    invoke-virtual {v3, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 169
    :cond_2
    invoke-virtual {p0, v3}, Lcom/android/calendar/ics/IcsService;->startActivity(Landroid/content/Intent;)V

    .line 170
    const/4 v0, 0x1

    goto :goto_0

    .line 146
    :catch_0
    move-exception v2

    .line 148
    const-string v2, "IcsService"

    const-string v7, "Couldn\'t get EndTime of the event. Set it to StartTime + 1hour."

    invoke-static {v2, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 165
    :cond_3
    const-class v0, Lcom/android/calendar/AllInOneActivity;

    invoke-virtual {v3, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_2
.end method

.method private showToast(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "messageId"    # I

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/android/calendar/ics/IcsService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/calendar/ics/IcsService$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/calendar/ics/IcsService$1;-><init>(Lcom/android/calendar/ics/IcsService;Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 105
    return-void
.end method

.method private static validateEventData(Lcom/motorola/calendarcommon/vcal/common/CalendarEvent;)Z
    .locals 9
    .param p0, "calEvent"    # Lcom/motorola/calendarcommon/vcal/common/CalendarEvent;

    .prologue
    const-wide/16 v7, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 176
    iget-wide v5, p0, Lcom/motorola/calendarcommon/vcal/common/CalendarEvent;->dtStart:J

    cmp-long v5, v5, v7

    if-eqz v5, :cond_0

    move v1, v3

    .line 177
    .local v1, "hasDtstart":Z
    :goto_0
    iget-wide v5, p0, Lcom/motorola/calendarcommon/vcal/common/CalendarEvent;->dtEnd:J

    cmp-long v5, v5, v7

    if-eqz v5, :cond_1

    move v0, v3

    .line 178
    .local v0, "hasDtend":Z
    :goto_1
    iget-object v5, p0, Lcom/motorola/calendarcommon/vcal/common/CalendarEvent;->duration:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    move v2, v3

    .line 182
    .local v2, "hasDuration":Z
    :goto_2
    if-nez v1, :cond_3

    .line 183
    const-string v3, "IcsService"

    const-string v5, "vCal event doesn\'t have valid start time"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :goto_3
    return v4

    .end local v0    # "hasDtend":Z
    .end local v1    # "hasDtstart":Z
    .end local v2    # "hasDuration":Z
    :cond_0
    move v1, v4

    .line 176
    goto :goto_0

    .restart local v1    # "hasDtstart":Z
    :cond_1
    move v0, v4

    .line 177
    goto :goto_1

    .restart local v0    # "hasDtend":Z
    :cond_2
    move v2, v4

    .line 178
    goto :goto_2

    .line 187
    .restart local v2    # "hasDuration":Z
    :cond_3
    if-nez v2, :cond_4

    if-nez v0, :cond_4

    .line 188
    const-string v3, "IcsService"

    const-string v5, "vCal event doesn\'t have valid end time"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_4
    move v4, v3

    .line 192
    goto :goto_3
.end method

.method private viewIcs(Landroid/content/Intent;)V
    .locals 14
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 204
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    .line 205
    .local v9, "fileUri":Landroid/net/Uri;
    if-nez v9, :cond_1

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    const/4 v13, 0x0

    .line 214
    .local v13, "vcalEvent":Lcom/motorola/calendarcommon/vcal/common/CalendarEvent;
    :try_start_0
    invoke-static {p0, v9}, Lcom/motorola/calendarcommon/vcal/VCalUtils;->parseVcal(Landroid/content/Context;Landroid/net/Uri;)Lcom/motorola/calendarcommon/vcal/common/CalendarEvent;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v13

    .line 220
    :goto_1
    if-eqz v13, :cond_0

    .line 222
    iget-boolean v0, v13, Lcom/motorola/calendarcommon/vcal/common/CalendarEvent;->isVtodo:Z

    if-eqz v0, :cond_2

    .line 227
    new-instance v11, Landroid/content/Intent;

    const-string v0, "com.motorola.tasks.action.VIEW_VTODO"

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 228
    .local v11, "taskIntent":Landroid/content/Intent;
    const/high16 v0, 0x10000000

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 229
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    invoke-virtual {v11, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 230
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 232
    :try_start_1
    invoke-virtual {p0, v11}, Lcom/android/calendar/ics/IcsService;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 233
    :catch_0
    move-exception v10

    .line 234
    .local v10, "noActivity":Landroid/content/ActivityNotFoundException;
    const-string v0, "IcsService"

    const-string v2, "No Activity is available to view vToDo event"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 215
    .end local v10    # "noActivity":Landroid/content/ActivityNotFoundException;
    .end local v11    # "taskIntent":Landroid/content/Intent;
    :catch_1
    move-exception v6

    .line 216
    .local v6, "e":Ljava/io/FileNotFoundException;
    const-string v0, "IcsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to open the file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 217
    .end local v6    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v6

    .line 218
    .local v6, "e":Ljava/io/IOException;
    const-string v0, "IcsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "I/O error when reading the file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 239
    .end local v6    # "e":Ljava/io/IOException;
    :cond_2
    invoke-static {v13}, Lcom/android/calendar/ics/IcsService;->validateEventData(Lcom/motorola/calendarcommon/vcal/common/CalendarEvent;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 240
    const v0, 0x7f0c00a9

    invoke-direct {p0, p0, v0}, Lcom/android/calendar/ics/IcsService;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 248
    :cond_3
    invoke-static {p0, v13}, Lcom/motorola/calendarcommon/vcal/VCalUtils;->pushIntoScratchCalendar(Landroid/content/Context;Lcom/motorola/calendarcommon/vcal/common/CalendarEvent;)Landroid/net/Uri;

    move-result-object v1

    .line 249
    .local v1, "eventUri":Landroid/net/Uri;
    if-eqz v1, :cond_6

    .line 250
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v12

    .line 252
    .local v12, "uriBuilder":Landroid/net/Uri$Builder;
    const-string v0, "use_hidden_calendar"

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v0, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 253
    invoke-virtual {v12}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 255
    iget-object v0, p0, Lcom/android/calendar/ics/IcsService;->mContentResolver:Landroid/content/ContentResolver;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 256
    .local v7, "eventCursor":Landroid/database/Cursor;
    if-eqz v7, :cond_5

    .line 258
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 259
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 260
    .local v8, "extras":Landroid/os/Bundle;
    const-string v0, "com.android.calendar.ics.IMPORT_ICS"

    const/4 v2, 0x1

    invoke-virtual {v8, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 261
    invoke-direct {p0, v7, v8}, Lcom/android/calendar/ics/IcsService;->invokeCalendarUI(Landroid/database/Cursor;Landroid/os/Bundle;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 264
    .end local v8    # "extras":Landroid/os/Bundle;
    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 267
    :cond_5
    const-string v0, "IcsService"

    const-string v2, "onStart: Couldn\'t obtain cursor on Events table."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 270
    .end local v7    # "eventCursor":Landroid/database/Cursor;
    .end local v12    # "uriBuilder":Landroid/net/Uri$Builder;
    :cond_6
    const-string v0, "IcsService"

    const-string v2, "Unknown error while viewing ICS file."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method


# virtual methods
.method protected getHandler()Landroid/os/Handler;
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/calendar/ics/IcsService;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/calendar/ics/IcsService;->mHandler:Landroid/os/Handler;

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/ics/IcsService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 53
    invoke-virtual {p0}, Lcom/android/calendar/ics/IcsService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/ics/IcsService;->mContentResolver:Landroid/content/ContentResolver;

    .line 54
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 63
    if-nez p1, :cond_1

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 71
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    invoke-direct {p0, p1}, Lcom/android/calendar/ics/IcsService;->viewIcs(Landroid/content/Intent;)V

    goto :goto_0
.end method
