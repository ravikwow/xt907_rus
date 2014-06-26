.class public Lcom/android/deskclock/stopwatch/StopwatchService;
.super Landroid/app/Service;
.source "StopwatchService.java"


# instance fields
.field private mElapsedTime:J

.field private mLoadApp:Z

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mNumLaps:I

.field private mStartTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private clearSavedNotification()V
    .locals 3

    .prologue
    .line 294
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 296
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 297
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "notif_clock_base"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 298
    const-string v2, "notif_clock_running"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 299
    const-string v2, "notif_clock_elapsed"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 300
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 301
    return-void
.end method

.method private closeNotificationShade()V
    .locals 2

    .prologue
    .line 304
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 305
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 306
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 307
    return-void
.end method

.method private readFromSharedPrefs()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    .line 310
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 312
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "sw_start_time"

    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mStartTime:J

    .line 313
    const-string v1, "sw_accum_time"

    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mElapsedTime:J

    .line 314
    const-string v1, "sw_lap_num"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mNumLaps:I

    .line 315
    return-void
.end method

.method private readLapsFromPrefs()[J
    .locals 12

    .prologue
    .line 318
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 320
    .local v6, "prefs":Landroid/content/SharedPreferences;
    const-string v9, "sw_lap_num"

    const/4 v10, 0x0

    invoke-interface {v6, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 321
    .local v5, "numLaps":I
    new-array v4, v5, [J

    .line 322
    .local v4, "laps":[J
    const-wide/16 v7, 0x0

    .line 323
    .local v7, "prevLapElapsedTime":J
    const/4 v3, 0x0

    .local v3, "lap_i":I
    :goto_0
    if-ge v3, v5, :cond_1

    .line 324
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sw_lap_time_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v10, v3, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 325
    .local v0, "key":Ljava/lang/String;
    const-wide/16 v9, 0x0

    invoke-interface {v6, v0, v9, v10}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 326
    .local v1, "lap":J
    cmp-long v9, v1, v7

    if-nez v9, :cond_0

    add-int/lit8 v9, v5, -0x1

    if-ne v3, v9, :cond_0

    .line 327
    iget-wide v1, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mElapsedTime:J

    .line 329
    :cond_0
    sub-int v9, v5, v3

    add-int/lit8 v9, v9, -0x1

    sub-long v10, v1, v7

    aput-wide v10, v4, v9

    .line 330
    move-wide v7, v1

    .line 323
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 332
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "lap":J
    :cond_1
    return-object v4
.end method

.method private saveNotification(JZI)V
    .locals 7
    .param p1, "clockTime"    # J
    .param p3, "clockRunning"    # Z
    .param p4, "numLaps"    # I

    .prologue
    const-wide/16 v5, -0x1

    const/4 v4, 0x0

    .line 255
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 257
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 258
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    if-eqz p3, :cond_0

    .line 259
    const-string v2, "notif_clock_base"

    invoke-interface {v0, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 260
    const-string v2, "notif_clock_elapsed"

    invoke-interface {v0, v2, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 261
    const-string v2, "notif_clock_running"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 267
    :goto_0
    const-string v2, "sw_update_circle"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 268
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 269
    return-void

    .line 263
    :cond_0
    const-string v2, "notif_clock_elapsed"

    invoke-interface {v0, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 264
    const-string v2, "notif_clock_base"

    invoke-interface {v0, v2, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 265
    const-string v2, "notif_clock_running"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method private setNotification(JZI)V
    .locals 8

    .prologue
    .line 146
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    .line 148
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/deskclock/DeskClock;

    invoke-direct {v0, v7, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 149
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 150
    const-string v1, "deskclock.select.tab"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 152
    const-string v1, "stopwatch"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    const/4 v1, 0x0

    const/high16 v2, 0x48000000

    invoke-static {v7, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 157
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f040023

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 159
    const v1, 0x7f0e005e

    invoke-virtual {v0, v1, v6}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 160
    const v1, 0x7f0e0061

    const/4 v4, 0x0

    move-wide v2, p1

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->setChronometer(IJLjava/lang/String;Z)V

    .line 162
    const v1, 0x7f0e005f

    const v2, 0x7f0200ba

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 164
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f040024

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 166
    const v2, 0x7f0e0063

    invoke-virtual {v1, v2, v6}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 167
    const v2, 0x7f0e0064

    const/4 v5, 0x0

    move-wide v3, p1

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/widget/RemoteViews;->setChronometer(IJLjava/lang/String;Z)V

    .line 169
    const v2, 0x7f0e005f

    const v3, 0x7f0200ba

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 172
    if-eqz p3, :cond_1

    .line 174
    const v2, 0x7f0e0066

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d005a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 176
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/deskclock/stopwatch/StopwatchService;

    invoke-direct {v2, v7, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 177
    const-string v3, "lap_stopwatch"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    const v3, 0x7f0e0066

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v7, v4, v2, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 180
    const v2, 0x7f0e0066

    const v3, 0x7f02008d

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/widget/RemoteViews;->setTextViewCompoundDrawablesRelative(IIIII)V

    .line 185
    const v2, 0x7f0e0067

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0059

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 187
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/deskclock/stopwatch/StopwatchService;

    invoke-direct {v2, v7, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 188
    const-string v3, "stop_stopwatch"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    const v3, 0x7f0e0067

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v7, v4, v2, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 191
    const v2, 0x7f0e0067

    const v3, 0x7f020090

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/widget/RemoteViews;->setTextViewCompoundDrawablesRelative(IIIII)V

    .line 196
    if-lez p4, :cond_0

    .line 197
    const v2, 0x7f0d0066

    invoke-virtual {v7, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 199
    const v3, 0x7f0e0062

    invoke-virtual {v0, v3, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 200
    const v3, 0x7f0e0062

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 201
    const v3, 0x7f0e0065

    invoke-virtual {v1, v3, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 202
    const v2, 0x7f0e0065

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 239
    :goto_0
    new-instance v3, Landroid/content/Intent;

    const-class v2, Lcom/android/deskclock/stopwatch/StopwatchService;

    invoke-direct {v3, v7, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 240
    const-string v2, "reset_stopwatch"

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    new-instance v4, Landroid/app/Notification$Builder;

    invoke-direct {v4, v7}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    if-nez p3, :cond_2

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-static {v7, v2, v3, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    const v2, 0x7f0200a5

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 249
    iput-object v1, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 250
    iget-object v1, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mNotificationManager:Landroid/app/NotificationManager;

    const v2, 0x7ffffffe

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 251
    return-void

    .line 204
    :cond_0
    const v2, 0x7f0e0062

    const/16 v3, 0x8

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 205
    const v2, 0x7f0e0065

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_0

    .line 209
    :cond_1
    const v2, 0x7f0e0066

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d005b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 211
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/deskclock/stopwatch/StopwatchService;

    invoke-direct {v2, v7, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 212
    const-string v3, "reset_and_launch_stopwatch"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    const v3, 0x7f0e0066

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v7, v4, v2, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 215
    const v2, 0x7f0e0066

    const v3, 0x7f02008e

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/widget/RemoteViews;->setTextViewCompoundDrawablesRelative(IIIII)V

    .line 220
    const v2, 0x7f0e0067

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0058

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 222
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/deskclock/stopwatch/StopwatchService;

    invoke-direct {v2, v7, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 223
    const-string v3, "start_stopwatch"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    const v3, 0x7f0e0067

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v7, v4, v2, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 226
    const v2, 0x7f0e0067

    const v3, 0x7f02008f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/widget/RemoteViews;->setTextViewCompoundDrawablesRelative(IIIII)V

    .line 231
    const v2, 0x7f0e0062

    const v3, 0x7f0d0084

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 233
    const v2, 0x7f0e0062

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 234
    const v2, 0x7f0e0065

    const v3, 0x7f0d0084

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 236
    const v2, 0x7f0e0065

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_0

    .line 242
    :cond_2
    const/4 v2, 0x0

    goto/16 :goto_1
.end method

.method private showSavedNotification()Z
    .locals 12

    .prologue
    const/4 v7, 0x0

    const-wide/16 v10, -0x1

    .line 273
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 275
    .local v6, "prefs":Landroid/content/SharedPreferences;
    const-string v8, "notif_clock_base"

    invoke-interface {v6, v8, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 276
    .local v0, "clockBaseTime":J
    const-string v8, "notif_clock_elapsed"

    invoke-interface {v6, v8, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 277
    .local v2, "clockElapsedTime":J
    const-string v8, "notif_clock_running"

    invoke-interface {v6, v8, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 278
    .local v4, "clockRunning":Z
    const-string v8, "sw_lap_num"

    const/4 v9, -0x1

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 279
    .local v5, "numLaps":I
    cmp-long v8, v0, v10

    if-nez v8, :cond_1

    .line 280
    cmp-long v8, v2, v10

    if-nez v8, :cond_0

    .line 290
    :goto_0
    return v7

    .line 285
    :cond_0
    iput-wide v2, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mElapsedTime:J

    .line 286
    invoke-static {}, Lcom/android/deskclock/Utils;->getTimeNow()J

    move-result-wide v7

    sub-long v0, v7, v2

    .line 289
    :cond_1
    invoke-direct {p0, v0, v1, v4, v5}, Lcom/android/deskclock/stopwatch/StopwatchService;->setNotification(JZI)V

    .line 290
    const/4 v7, 0x1

    goto :goto_0
.end method

.method private writeSharedPrefsLap(JZ)V
    .locals 14
    .param p1, "lapTimeElapsed"    # J
    .param p3, "updateCircle"    # Z

    .prologue
    .line 392
    const/4 v1, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/deskclock/stopwatch/StopwatchService;->writeToSharedPrefs(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Z)V

    .line 393
    if-eqz p3, :cond_0

    .line 394
    invoke-static {}, Lcom/android/deskclock/Utils;->getTimeNow()J

    move-result-wide v12

    .line 395
    .local v12, "time":J
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 397
    .local v11, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 398
    .local v6, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/StopwatchService;->readLapsFromPrefs()[J

    move-result-object v9

    .line 399
    .local v9, "laps":[J
    array-length v10, v9

    .line 400
    .local v10, "numLaps":I
    const/4 v0, 0x1

    aget-wide v7, v9, v0

    .line 401
    .local v7, "lapTime":J
    const/4 v0, 0x2

    if-ne v10, v0, :cond_1

    .line 402
    const-string v0, "sw_ctv_interval"

    invoke-interface {v6, v0, v7, v8}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 406
    :goto_0
    const-string v0, "sw_ctv_accum_time"

    const-wide/16 v1, 0x0

    invoke-interface {v6, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 407
    const/16 v0, 0x63

    if-ge v10, v0, :cond_2

    .line 408
    const-string v0, "sw_ctv_interval_start"

    invoke-interface {v6, v0, v12, v13}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 409
    const-string v0, "sw_ctv_paused"

    const/4 v1, 0x0

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 413
    :goto_1
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 415
    .end local v6    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v7    # "lapTime":J
    .end local v9    # "laps":[J
    .end local v10    # "numLaps":I
    .end local v11    # "prefs":Landroid/content/SharedPreferences;
    .end local v12    # "time":J
    :cond_0
    return-void

    .line 404
    .restart local v6    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v7    # "lapTime":J
    .restart local v9    # "laps":[J
    .restart local v10    # "numLaps":I
    .restart local v11    # "prefs":Landroid/content/SharedPreferences;
    .restart local v12    # "time":J
    :cond_1
    const-string v0, "sw_ctv_marker_time"

    invoke-interface {v6, v0, v7, v8}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 411
    :cond_2
    const-string v0, "sw_ctv_interval_start"

    const-wide/16 v1, -0x1

    invoke-interface {v6, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method

.method private writeSharedPrefsReset(Z)V
    .locals 6
    .param p1, "updateCircle"    # Z

    .prologue
    const/4 v1, 0x0

    .line 438
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/deskclock/stopwatch/StopwatchService;->writeToSharedPrefs(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Z)V

    .line 439
    return-void
.end method

.method private writeSharedPrefsStarted(JZ)V
    .locals 12
    .param p1, "startTime"    # J
    .param p3, "updateCircle"    # Z

    .prologue
    .line 373
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v0, p0

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/deskclock/stopwatch/StopwatchService;->writeToSharedPrefs(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Z)V

    .line 374
    if-eqz p3, :cond_0

    .line 375
    invoke-static {}, Lcom/android/deskclock/Utils;->getTimeNow()J

    move-result-wide v10

    .line 376
    .local v10, "time":J
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 378
    .local v9, "prefs":Landroid/content/SharedPreferences;
    const-string v0, "sw_ctv_interval_start"

    const-wide/16 v1, -0x1

    invoke-interface {v9, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    .line 380
    .local v7, "intervalStartTime":J
    const-wide/16 v0, -0x1

    cmp-long v0, v7, v0

    if-eqz v0, :cond_0

    .line 381
    move-wide v7, v10

    .line 382
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 383
    .local v6, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v0, "sw_ctv_interval_start"

    invoke-interface {v6, v0, v7, v8}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 385
    const-string v0, "sw_ctv_paused"

    const/4 v1, 0x0

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 386
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 389
    .end local v6    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v7    # "intervalStartTime":J
    .end local v9    # "prefs":Landroid/content/SharedPreferences;
    .end local v10    # "time":J
    :cond_0
    return-void
.end method

.method private writeSharedPrefsStopped(JZ)V
    .locals 14
    .param p1, "elapsedTime"    # J
    .param p3, "updateCircle"    # Z

    .prologue
    .line 418
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v0, p0

    move/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/deskclock/stopwatch/StopwatchService;->writeToSharedPrefs(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Z)V

    .line 419
    if-eqz p3, :cond_0

    .line 420
    invoke-static {}, Lcom/android/deskclock/Utils;->getTimeNow()J

    move-result-wide v12

    .line 421
    .local v12, "time":J
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 423
    .local v11, "prefs":Landroid/content/SharedPreferences;
    const-string v0, "sw_ctv_accum_time"

    const-wide/16 v1, 0x0

    invoke-interface {v11, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 425
    .local v6, "accumulatedTime":J
    const-string v0, "sw_ctv_interval_start"

    const-wide/16 v1, -0x1

    invoke-interface {v11, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    .line 427
    .local v9, "intervalStartTime":J
    sub-long v0, v12, v9

    add-long/2addr v6, v0

    .line 428
    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 429
    .local v8, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v0, "sw_ctv_accum_time"

    invoke-interface {v8, v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 430
    const-string v0, "sw_ctv_paused"

    const/4 v1, 0x1

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 431
    const-string v0, "sw_ctv_current_interval"

    invoke-interface {v8, v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 433
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 435
    .end local v6    # "accumulatedTime":J
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v9    # "intervalStartTime":J
    .end local v11    # "prefs":Landroid/content/SharedPreferences;
    .end local v12    # "time":J
    :cond_0
    return-void
.end method

.method private writeToSharedPrefs(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Z)V
    .locals 9
    .param p1, "startTime"    # Ljava/lang/Long;
    .param p2, "lapTimeElapsed"    # Ljava/lang/Long;
    .param p3, "elapsedTime"    # Ljava/lang/Long;
    .param p4, "state"    # Ljava/lang/Integer;
    .param p5, "updateCircle"    # Z

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 337
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 339
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 340
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    if-eqz p1, :cond_0

    .line 341
    const-string v3, "sw_start_time"

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 342
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mStartTime:J

    .line 344
    :cond_0
    if-eqz p2, :cond_2

    .line 345
    const-string v3, "sw_lap_num"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 346
    .local v1, "numLaps":I
    if-nez v1, :cond_1

    .line 347
    iget v3, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mNumLaps:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mNumLaps:I

    .line 348
    add-int/lit8 v1, v1, 0x1

    .line 350
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sw_lap_time_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 351
    add-int/lit8 v1, v1, 0x1

    .line 352
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sw_lap_time_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 353
    const-string v3, "sw_lap_num"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 355
    .end local v1    # "numLaps":I
    :cond_2
    if-eqz p3, :cond_3

    .line 356
    const-string v3, "sw_accum_time"

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 357
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mElapsedTime:J

    .line 359
    :cond_3
    if-eqz p4, :cond_4

    .line 360
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_5

    .line 361
    const-string v3, "sw_state"

    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 368
    :cond_4
    :goto_0
    const-string v3, "sw_update_circle"

    invoke-interface {v0, v3, p5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 369
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 370
    return-void

    .line 362
    :cond_5
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v7, :cond_6

    .line 363
    const-string v3, "sw_state"

    invoke-interface {v0, v3, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 364
    :cond_6
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v8, :cond_4

    .line 365
    const-string v3, "sw_state"

    invoke-interface {v0, v3, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 39
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 44
    iput v0, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mNumLaps:I

    .line 45
    iput-wide v1, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mElapsedTime:J

    .line 46
    iput-wide v1, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mStartTime:J

    .line 47
    iput-boolean v0, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mLoadApp:Z

    .line 48
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 49
    return-void
.end method

.method public onDestroy()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    .line 130
    iget-object v0, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mNotificationManager:Landroid/app/NotificationManager;

    const v1, 0x7ffffffe

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 131
    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/StopwatchService;->clearSavedNotification()V

    .line 132
    iput v3, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mNumLaps:I

    .line 133
    iput-wide v4, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mElapsedTime:J

    .line 134
    iput-wide v4, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mStartTime:J

    .line 135
    iget-boolean v0, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mLoadApp:Z

    if-eqz v0, :cond_0

    .line 136
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/deskclock/DeskClock;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 137
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 138
    const-string v1, "deskclock.select.tab"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 140
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    .line 141
    iput-boolean v3, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mLoadApp:Z

    .line 143
    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 14
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 53
    if-nez p1, :cond_0

    .line 54
    const/4 v9, 0x2

    .line 125
    :goto_0
    return v9

    .line 57
    :cond_0
    iget-wide v9, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mStartTime:J

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_1

    iget-wide v9, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mElapsedTime:J

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_1

    iget v9, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mNumLaps:I

    if-nez v9, :cond_2

    .line 59
    :cond_1
    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/StopwatchService;->readFromSharedPrefs()V

    .line 62
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 63
    .local v2, "actionType":Ljava/lang/String;
    const-string v9, "message_time"

    invoke-static {}, Lcom/android/deskclock/Utils;->getTimeNow()J

    move-result-wide v10

    invoke-virtual {p1, v9, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 64
    .local v0, "actionTime":J
    const-string v9, "show_notification"

    const/4 v10, 0x1

    invoke-virtual {p1, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 65
    .local v7, "showNotif":Z
    move v8, v7

    .line 66
    .local v8, "updateCircle":Z
    const-string v9, "start_stopwatch"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 67
    iput-wide v0, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mStartTime:J

    .line 68
    iget-wide v9, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mStartTime:J

    invoke-direct {p0, v9, v10, v8}, Lcom/android/deskclock/stopwatch/StopwatchService;->writeSharedPrefsStarted(JZ)V

    .line 69
    if-eqz v7, :cond_4

    .line 70
    iget-wide v9, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mStartTime:J

    iget-wide v11, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mElapsedTime:J

    sub-long/2addr v9, v11

    const/4 v11, 0x1

    iget v12, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mNumLaps:I

    invoke-direct {p0, v9, v10, v11, v12}, Lcom/android/deskclock/stopwatch/StopwatchService;->setNotification(JZI)V

    .line 125
    :cond_3
    :goto_1
    const/4 v9, 0x1

    goto :goto_0

    .line 72
    :cond_4
    iget-wide v9, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mStartTime:J

    iget-wide v11, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mElapsedTime:J

    sub-long/2addr v9, v11

    const/4 v11, 0x1

    iget v12, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mNumLaps:I

    invoke-direct {p0, v9, v10, v11, v12}, Lcom/android/deskclock/stopwatch/StopwatchService;->saveNotification(JZI)V

    goto :goto_1

    .line 74
    :cond_5
    const-string v9, "lap_stopwatch"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 75
    iget v9, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mNumLaps:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mNumLaps:I

    .line 76
    iget-wide v9, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mStartTime:J

    sub-long v9, v0, v9

    iget-wide v11, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mElapsedTime:J

    add-long v4, v9, v11

    .line 77
    .local v4, "lapTimeElapsed":J
    invoke-direct {p0, v4, v5, v8}, Lcom/android/deskclock/stopwatch/StopwatchService;->writeSharedPrefsLap(JZ)V

    .line 78
    if-eqz v7, :cond_6

    .line 79
    iget-wide v9, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mStartTime:J

    iget-wide v11, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mElapsedTime:J

    sub-long/2addr v9, v11

    const/4 v11, 0x1

    iget v12, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mNumLaps:I

    invoke-direct {p0, v9, v10, v11, v12}, Lcom/android/deskclock/stopwatch/StopwatchService;->setNotification(JZI)V

    goto :goto_1

    .line 81
    :cond_6
    iget-wide v9, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mStartTime:J

    iget-wide v11, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mElapsedTime:J

    sub-long/2addr v9, v11

    const/4 v11, 0x1

    iget v12, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mNumLaps:I

    invoke-direct {p0, v9, v10, v11, v12}, Lcom/android/deskclock/stopwatch/StopwatchService;->saveNotification(JZI)V

    goto :goto_1

    .line 83
    .end local v4    # "lapTimeElapsed":J
    :cond_7
    const-string v9, "stop_stopwatch"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 84
    iget-wide v9, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mElapsedTime:J

    iget-wide v11, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mStartTime:J

    sub-long v11, v0, v11

    add-long/2addr v9, v11

    iput-wide v9, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mElapsedTime:J

    .line 85
    iget-wide v9, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mElapsedTime:J

    invoke-direct {p0, v9, v10, v8}, Lcom/android/deskclock/stopwatch/StopwatchService;->writeSharedPrefsStopped(JZ)V

    .line 86
    if-eqz v7, :cond_8

    .line 87
    iget-wide v9, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mElapsedTime:J

    sub-long v9, v0, v9

    const/4 v11, 0x0

    iget v12, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mNumLaps:I

    invoke-direct {p0, v9, v10, v11, v12}, Lcom/android/deskclock/stopwatch/StopwatchService;->setNotification(JZI)V

    goto :goto_1

    .line 89
    :cond_8
    iget-wide v9, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mElapsedTime:J

    const/4 v11, 0x0

    iget v12, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mNumLaps:I

    invoke-direct {p0, v9, v10, v11, v12}, Lcom/android/deskclock/stopwatch/StopwatchService;->saveNotification(JZI)V

    goto :goto_1

    .line 91
    :cond_9
    const-string v9, "reset_stopwatch"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 92
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mLoadApp:Z

    .line 93
    invoke-direct {p0, v8}, Lcom/android/deskclock/stopwatch/StopwatchService;->writeSharedPrefsReset(Z)V

    .line 94
    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/StopwatchService;->clearSavedNotification()V

    .line 95
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    goto/16 :goto_1

    .line 96
    :cond_a
    const-string v9, "reset_and_launch_stopwatch"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 97
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mLoadApp:Z

    .line 98
    invoke-direct {p0, v8}, Lcom/android/deskclock/stopwatch/StopwatchService;->writeSharedPrefsReset(Z)V

    .line 99
    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/StopwatchService;->clearSavedNotification()V

    .line 100
    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/StopwatchService;->closeNotificationShade()V

    .line 101
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    goto/16 :goto_1

    .line 102
    :cond_b
    const-string v9, "share_stopwatch"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 103
    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/StopwatchService;->closeNotificationShade()V

    .line 104
    new-instance v6, Landroid/content/Intent;

    const-string v9, "android.intent.action.SEND"

    invoke-direct {v6, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 105
    .local v6, "shareIntent":Landroid/content/Intent;
    const-string v9, "text/plain"

    invoke-virtual {v6, v9}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    const-string v9, "android.intent.extra.SUBJECT"

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/android/deskclock/stopwatch/Stopwatches;->getShareTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    const-string v9, "android.intent.extra.TEXT"

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    iget-wide v11, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mElapsedTime:J

    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/StopwatchService;->readLapsFromPrefs()[J

    move-result-object v13

    invoke-static {v10, v11, v12, v13}, Lcom/android/deskclock/stopwatch/Stopwatches;->buildShareResults(Landroid/content/Context;J[J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    const/4 v9, 0x0

    invoke-static {v6, v9}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    .line 111
    .local v3, "chooserIntent":Landroid/content/Intent;
    const/high16 v9, 0x10000000

    invoke-virtual {v3, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 112
    invoke-virtual {p0}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 113
    .end local v3    # "chooserIntent":Landroid/content/Intent;
    .end local v6    # "shareIntent":Landroid/content/Intent;
    :cond_c
    const-string v9, "show_notification"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 116
    invoke-direct {p0}, Lcom/android/deskclock/stopwatch/StopwatchService;->showSavedNotification()Z

    move-result v9

    if-nez v9, :cond_3

    .line 117
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    goto/16 :goto_1

    .line 119
    :cond_d
    const-string v9, "kill_notification"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 120
    iget-object v9, p0, Lcom/android/deskclock/stopwatch/StopwatchService;->mNotificationManager:Landroid/app/NotificationManager;

    const v10, 0x7ffffffe

    invoke-virtual {v9, v10}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_1
.end method
