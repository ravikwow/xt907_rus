.class public Lcom/android/deskclock/timer/TimerReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TimerReceiver.java"


# instance fields
.field mTimers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/deskclock/timer/TimerObj;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private buildTimeRemaining(Landroid/content/Context;J)Ljava/lang/String;
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "timeLeft"    # J

    .prologue
    .line 345
    const-wide/16 v13, 0x0

    cmp-long v13, p2, v13

    if-gez v13, :cond_0

    .line 347
    const-string v13, "TimerReceiver"

    const-string v14, "Will not show notification for timer already expired."

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    const/4 v13, 0x0

    .line 372
    :goto_0
    return-object v13

    .line 352
    :cond_0
    const-wide/16 v13, 0x3e8

    div-long v11, p2, v13

    .line 353
    .local v11, "seconds":J
    const-wide/16 v13, 0x3c

    div-long v9, v11, v13

    .line 354
    .local v9, "minutes":J
    const-wide/16 v13, 0x3c

    mul-long/2addr v13, v9

    sub-long/2addr v11, v13

    .line 355
    const-wide/16 v13, 0x3c

    div-long v5, v9, v13

    .line 356
    .local v5, "hours":J
    const-wide/16 v13, 0x3c

    mul-long/2addr v13, v5

    sub-long/2addr v9, v13

    .line 357
    const-wide/16 v13, 0x63

    cmp-long v13, v5, v13

    if-lez v13, :cond_1

    .line 358
    const-wide/16 v5, 0x0

    .line 361
    :cond_1
    const-wide/16 v13, 0x0

    cmp-long v13, v5, v13

    if-nez v13, :cond_2

    const-string v4, ""

    .line 364
    .local v4, "hourSeq":Ljava/lang/String;
    :goto_1
    const-wide/16 v13, 0x0

    cmp-long v13, v9, v13

    if-nez v13, :cond_4

    const-string v8, ""

    .line 368
    .local v8, "minSeq":Ljava/lang/String;
    :goto_2
    const-wide/16 v13, 0x0

    cmp-long v13, v5, v13

    if-lez v13, :cond_6

    const/4 v1, 0x1

    .line 369
    .local v1, "dispHour":Z
    :goto_3
    const-wide/16 v13, 0x0

    cmp-long v13, v9, v13

    if-lez v13, :cond_7

    const/4 v2, 0x1

    .line 370
    .local v2, "dispMinute":Z
    :goto_4
    if-eqz v1, :cond_8

    const/4 v13, 0x1

    move v14, v13

    :goto_5
    if-eqz v2, :cond_9

    const/4 v13, 0x2

    :goto_6
    or-int v7, v14, v13

    .line 371
    .local v7, "index":I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0a0009

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 372
    .local v3, "formats":[Ljava/lang/String;
    aget-object v13, v3, v7

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v4, v14, v15

    const/4 v15, 0x1

    aput-object v8, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto :goto_0

    .line 361
    .end local v1    # "dispHour":Z
    .end local v2    # "dispMinute":Z
    .end local v3    # "formats":[Ljava/lang/String;
    .end local v4    # "hourSeq":Ljava/lang/String;
    .end local v7    # "index":I
    .end local v8    # "minSeq":Ljava/lang/String;
    :cond_2
    const-wide/16 v13, 0x1

    cmp-long v13, v5, v13

    if-nez v13, :cond_3

    const v13, 0x7f0d0021

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_3
    const v13, 0x7f0d0022

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 364
    .restart local v4    # "hourSeq":Ljava/lang/String;
    :cond_4
    const-wide/16 v13, 0x1

    cmp-long v13, v9, v13

    if-nez v13, :cond_5

    const v13, 0x7f0d0023

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    :cond_5
    const v13, 0x7f0d0024

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    .line 368
    .restart local v8    # "minSeq":Ljava/lang/String;
    :cond_6
    const/4 v1, 0x0

    goto :goto_3

    .line 369
    .restart local v1    # "dispHour":Z
    :cond_7
    const/4 v2, 0x0

    goto :goto_4

    .line 370
    .restart local v2    # "dispMinute":Z
    :cond_8
    const/4 v13, 0x0

    move v14, v13

    goto :goto_5

    :cond_9
    const/4 v13, 0x0

    goto :goto_6
.end method

.method private cancelInUseNotification(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 401
    const-string v1, "notification"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 403
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    const v1, 0x7ffffffd

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 404
    return-void
.end method

.method private cancelTimesUpNotification(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 466
    iget-object v2, p0, Lcom/android/deskclock/timer/TimerReceiver;->mTimers:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/android/deskclock/timer/Timers;->timersInTimesUp(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/deskclock/timer/TimerObj;

    .line 467
    .local v1, "timerObj":Lcom/android/deskclock/timer/TimerObj;
    invoke-direct {p0, p1, v1}, Lcom/android/deskclock/timer/TimerReceiver;->cancelTimesUpNotification(Landroid/content/Context;Lcom/android/deskclock/timer/TimerObj;)V

    goto :goto_0

    .line 469
    .end local v1    # "timerObj":Lcom/android/deskclock/timer/TimerObj;
    :cond_0
    return-void
.end method

.method private cancelTimesUpNotification(Landroid/content/Context;Lcom/android/deskclock/timer/TimerObj;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "timerObj"    # Lcom/android/deskclock/timer/TimerObj;

    .prologue
    .line 472
    const-string v1, "notification"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 474
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    iget v1, p2, Lcom/android/deskclock/timer/TimerObj;->mTimerId:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 476
    const-string v1, "TimerReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Canceling times-up notification for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2, p1}, Lcom/android/deskclock/timer/TimerObj;->getLabelOrDefault(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p2, Lcom/android/deskclock/timer/TimerObj;->mTimerId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    return-void
.end method

.method private getBroadcastTime(JJ)J
    .locals 8
    .param p1, "now"    # J
    .param p3, "timeUntilBroadcast"    # J

    .prologue
    const-wide/16 v6, 0x3e8

    const-wide/16 v4, 0x3c

    .line 291
    div-long v0, p3, v6

    .line 292
    .local v0, "seconds":J
    div-long v2, v0, v4

    mul-long/2addr v2, v4

    sub-long/2addr v0, v2

    .line 293
    mul-long v2, v0, v6

    add-long/2addr v2, p1

    return-wide v2
.end method

.method private getNextRunningTimer(Ljava/util/ArrayList;ZJ)Lcom/android/deskclock/timer/TimerObj;
    .locals 12
    .param p2, "requireNextUpdate"    # Z
    .param p3, "now"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/deskclock/timer/TimerObj;",
            ">;ZJ)",
            "Lcom/android/deskclock/timer/TimerObj;"
        }
    .end annotation

    .prologue
    .line 377
    .local p1, "timers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/deskclock/timer/TimerObj;>;"
    const-wide v2, 0x7fffffffffffffffL

    .line 378
    .local v2, "nextTimesup":J
    const/4 v1, 0x0

    .line 379
    .local v1, "nextTimerFound":Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 380
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/deskclock/timer/TimerObj;>;"
    const/4 v4, 0x0

    .line 381
    .local v4, "t":Lcom/android/deskclock/timer/TimerObj;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 382
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/deskclock/timer/TimerObj;

    .line 383
    .local v9, "tmp":Lcom/android/deskclock/timer/TimerObj;
    iget v10, v9, Lcom/android/deskclock/timer/TimerObj;->mState:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_0

    .line 384
    invoke-virtual {v9}, Lcom/android/deskclock/timer/TimerObj;->getTimesupTime()J

    move-result-wide v7

    .line 385
    .local v7, "timesupTime":J
    sub-long v5, v7, p3

    .line 386
    .local v5, "timeLeft":J
    cmp-long v10, v7, v2

    if-gez v10, :cond_0

    if-eqz p2, :cond_1

    const-wide/16 v10, 0x3c

    cmp-long v10, v5, v10

    if-lez v10, :cond_0

    .line 387
    :cond_1
    move-wide v2, v7

    .line 388
    const/4 v1, 0x1

    .line 389
    move-object v4, v9

    goto :goto_0

    .line 393
    .end local v5    # "timeLeft":J
    .end local v7    # "timesupTime":J
    .end local v9    # "tmp":Lcom/android/deskclock/timer/TimerObj;
    :cond_2
    if-eqz v1, :cond_3

    .line 396
    .end local v4    # "t":Lcom/android/deskclock/timer/TimerObj;
    :goto_1
    return-object v4

    .restart local v4    # "t":Lcom/android/deskclock/timer/TimerObj;
    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private static showCollapsedNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/app/PendingIntent;IZ)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "priority"    # I
    .param p4, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p5, "notificationId"    # I
    .param p6, "showTicker"    # Z

    .prologue
    const/4 v5, 0x0

    .line 324
    new-instance v3, Landroid/app/Notification$Builder;

    invoke-direct {v3, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, p4}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    const v4, 0x7f0200bb

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 333
    .local v0, "builder":Landroid/app/Notification$Builder;
    if-eqz p6, :cond_0

    .line 334
    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 337
    :cond_0
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 338
    .local v1, "notification":Landroid/app/Notification;
    iput-object p4, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 339
    const-string v3, "notification"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 341
    .local v2, "notificationManager":Landroid/app/NotificationManager;
    invoke-virtual {v2, p5, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 342
    return-void
.end method

.method private showCollapsedNotificationWithNext(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    .line 298
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/deskclock/DeskClock;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 299
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 300
    const-string v1, "deskclock.select.tab"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 301
    const/high16 v1, 0x48000000

    invoke-static {p1, v6, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 303
    const/4 v3, 0x1

    const v5, 0x7ffffffd

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    invoke-static/range {v0 .. v6}, Lcom/android/deskclock/timer/TimerReceiver;->showCollapsedNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/app/PendingIntent;IZ)V

    .line 306
    if-nez p4, :cond_0

    .line 320
    :goto_0
    return-void

    .line 309
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 310
    const-string v1, "notif_in_use_show"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 311
    invoke-static {p1, v6, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 313
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 315
    invoke-static {}, Lcom/android/deskclock/Utils;->isKitKatOrLater()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 316
    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v7, v2, v3, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 318
    :cond_1
    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v7, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private showInUseNotification(Landroid/content/Context;)V
    .locals 24
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 238
    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 239
    .local v12, "prefs":Landroid/content/SharedPreferences;
    const-string v20, "notif_app_open"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 240
    .local v3, "appOpen":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/deskclock/timer/TimerReceiver;->mTimers:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/deskclock/timer/Timers;->timersInUse(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v18

    .line 241
    .local v18, "timersInUse":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/deskclock/timer/TimerObj;>;"
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 243
    .local v11, "numTimersInUse":I
    if-nez v3, :cond_0

    if-nez v11, :cond_1

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 248
    :cond_1
    const/4 v8, 0x0

    .line 249
    .local v8, "nextBroadcastTime":Ljava/lang/Long;
    invoke-static {}, Lcom/android/deskclock/Utils;->getTimeNow()J

    move-result-wide v9

    .line 250
    .local v9, "now":J
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_5

    .line 251
    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/deskclock/timer/TimerObj;

    .line 252
    .local v15, "timer":Lcom/android/deskclock/timer/TimerObj;
    invoke-virtual {v15}, Lcom/android/deskclock/timer/TimerObj;->isTicking()Z

    move-result v16

    .line 253
    .local v16, "timerIsTicking":Z
    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Lcom/android/deskclock/timer/TimerObj;->getLabelOrDefault(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 254
    .local v7, "label":Ljava/lang/String;
    if-eqz v16, :cond_3

    move-object/from16 v19, v7

    .line 255
    .local v19, "title":Ljava/lang/String;
    :goto_1
    if-eqz v16, :cond_4

    invoke-virtual {v15}, Lcom/android/deskclock/timer/TimerObj;->getTimesupTime()J

    move-result-wide v20

    sub-long v13, v20, v9

    .line 256
    .local v13, "timeLeft":J
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13, v14}, Lcom/android/deskclock/timer/TimerReceiver;->buildTimeRemaining(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    .line 257
    .local v6, "contentText":Ljava/lang/String;
    if-eqz v16, :cond_2

    const-wide/32 v20, 0xea60

    cmp-long v20, v13, v20

    if-lez v20, :cond_2

    .line 258
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10, v13, v14}, Lcom/android/deskclock/timer/TimerReceiver;->getBroadcastTime(JJ)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 287
    .end local v7    # "label":Ljava/lang/String;
    .end local v13    # "timeLeft":J
    .end local v16    # "timerIsTicking":Z
    :cond_2
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2, v6, v8}, Lcom/android/deskclock/timer/TimerReceiver;->showCollapsedNotificationWithNext(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    .line 254
    .end local v6    # "contentText":Ljava/lang/String;
    .end local v19    # "title":Ljava/lang/String;
    .restart local v7    # "label":Ljava/lang/String;
    .restart local v16    # "timerIsTicking":Z
    :cond_3
    const v20, 0x7f0d0089

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    goto :goto_1

    .line 255
    .restart local v19    # "title":Ljava/lang/String;
    :cond_4
    iget-wide v13, v15, Lcom/android/deskclock/timer/TimerObj;->mTimeLeft:J

    goto :goto_2

    .line 261
    .end local v7    # "label":Ljava/lang/String;
    .end local v15    # "timer":Lcom/android/deskclock/timer/TimerObj;
    .end local v16    # "timerIsTicking":Z
    .end local v19    # "title":Ljava/lang/String;
    :cond_5
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v20

    invoke-direct {v0, v1, v2, v9, v10}, Lcom/android/deskclock/timer/TimerReceiver;->getNextRunningTimer(Ljava/util/ArrayList;ZJ)Lcom/android/deskclock/timer/TimerObj;

    move-result-object v15

    .line 262
    .restart local v15    # "timer":Lcom/android/deskclock/timer/TimerObj;
    if-nez v15, :cond_6

    .line 264
    const v20, 0x7f0d008a

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    .line 266
    .restart local v19    # "title":Ljava/lang/String;
    const v20, 0x7f0d008b

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "contentText":Ljava/lang/String;
    goto :goto_3

    .line 269
    .end local v6    # "contentText":Ljava/lang/String;
    .end local v19    # "title":Ljava/lang/String;
    :cond_6
    const v20, 0x7f0d008c

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    .line 271
    .restart local v19    # "title":Ljava/lang/String;
    invoke-virtual {v15}, Lcom/android/deskclock/timer/TimerObj;->getTimesupTime()J

    move-result-wide v4

    .line 272
    .local v4, "completionTime":J
    sub-long v13, v4, v9

    .line 273
    .restart local v13    # "timeLeft":J
    const v20, 0x7f0d008d

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13, v14}, Lcom/android/deskclock/timer/TimerReceiver;->buildTimeRemaining(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 275
    .restart local v6    # "contentText":Ljava/lang/String;
    const-wide/32 v20, 0xea60

    cmp-long v20, v13, v20

    if-gtz v20, :cond_7

    .line 276
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v20

    invoke-direct {v0, v1, v2, v9, v10}, Lcom/android/deskclock/timer/TimerReceiver;->getNextRunningTimer(Ljava/util/ArrayList;ZJ)Lcom/android/deskclock/timer/TimerObj;

    move-result-object v17

    .line 277
    .local v17, "timerWithUpdate":Lcom/android/deskclock/timer/TimerObj;
    if-eqz v17, :cond_2

    .line 278
    invoke-virtual/range {v17 .. v17}, Lcom/android/deskclock/timer/TimerObj;->getTimesupTime()J

    move-result-wide v4

    .line 279
    sub-long v13, v4, v9

    .line 280
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10, v13, v14}, Lcom/android/deskclock/timer/TimerReceiver;->getBroadcastTime(JJ)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    goto/16 :goto_3

    .line 283
    .end local v17    # "timerWithUpdate":Lcom/android/deskclock/timer/TimerObj;
    :cond_7
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10, v13, v14}, Lcom/android/deskclock/timer/TimerReceiver;->getBroadcastTime(JJ)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    goto/16 :goto_3
.end method

.method private showTimesUpNotification(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 407
    iget-object v2, p0, Lcom/android/deskclock/timer/TimerReceiver;->mTimers:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/android/deskclock/timer/Timers;->timersInTimesUp(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/deskclock/timer/TimerObj;

    .line 408
    .local v1, "timerObj":Lcom/android/deskclock/timer/TimerObj;
    invoke-direct {p0, p1, v1}, Lcom/android/deskclock/timer/TimerReceiver;->showTimesUpNotification(Landroid/content/Context;Lcom/android/deskclock/timer/TimerObj;)V

    goto :goto_0

    .line 410
    .end local v1    # "timerObj":Lcom/android/deskclock/timer/TimerObj;
    :cond_0
    return-void
.end method

.method private showTimesUpNotification(Landroid/content/Context;Lcom/android/deskclock/timer/TimerObj;)V
    .locals 7

    .prologue
    const/high16 v6, 0x8000000

    .line 414
    iget v0, p2, Lcom/android/deskclock/timer/TimerObj;->mTimerId:I

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/deskclock/timer/TimerAlertFullScreen;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "timer.intent.extra"

    iget v3, p2, Lcom/android/deskclock/timer/TimerObj;->mTimerId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    invoke-static {p1, v0, v1, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 420
    iget v1, p2, Lcom/android/deskclock/timer/TimerObj;->mTimerId:I

    new-instance v2, Landroid/content/Intent;

    const-string v3, "notif_times_up_plus_one"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "timer.intent.extra"

    iget v4, p2, Lcom/android/deskclock/timer/TimerObj;->mTimerId:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    invoke-static {p1, v1, v2, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 426
    iget v2, p2, Lcom/android/deskclock/timer/TimerObj;->mTimerId:I

    new-instance v3, Landroid/content/Intent;

    const-string v4, "notif_times_up_stop"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "timer.intent.extra"

    iget v5, p2, Lcom/android/deskclock/timer/TimerObj;->mTimerId:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    invoke-static {p1, v2, v3, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 432
    new-instance v3, Landroid/app/Notification$Builder;

    invoke-direct {v3, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    const v3, 0x7f020086

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d006b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4, v1}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/android/deskclock/timer/TimerObj;->getDeleteAfterUse()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x1080038

    :goto_0
    invoke-virtual {p2}, Lcom/android/deskclock/timer/TimerObj;->getDeleteAfterUse()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0d006d

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v3, v0, v1, v2}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {p2, p1}, Lcom/android/deskclock/timer/TimerObj;->getLabelOrDefault(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0070

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x7f0200bb

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 457
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iget v2, p2, Lcom/android/deskclock/timer/TimerObj;->mTimerId:I

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 460
    const-string v0, "TimerReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting times-up notification for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2, p1}, Lcom/android/deskclock/timer/TimerObj;->getLabelOrDefault(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/android/deskclock/timer/TimerObj;->mTimerId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    return-void

    .line 432
    :cond_0
    const v0, 0x7f0200a0

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0d006c

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1
.end method

.method private stopRingtoneIfNoTimesup(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerReceiver;->mTimers:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/deskclock/timer/Timers;->findExpiredTimer(Ljava/util/ArrayList;)Lcom/android/deskclock/timer/TimerObj;

    move-result-object v0

    if-nez v0, :cond_0

    .line 196
    const-string v0, "TimerReceiver"

    const-string v1, "stopping ringtone"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 198
    const-class v1, Lcom/android/deskclock/TimerRingService;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 199
    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 201
    :cond_0
    return-void
.end method

.method private updateNextTimesup(Landroid/content/Context;)V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 207
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerReceiver;->mTimers:Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/deskclock/Utils;->getTimeNow()J

    move-result-wide v1

    invoke-direct {p0, v0, v6, v1, v2}, Lcom/android/deskclock/timer/TimerReceiver;->getNextRunningTimer(Ljava/util/ArrayList;ZJ)Lcom/android/deskclock/timer/TimerObj;

    move-result-object v3

    .line 208
    if-nez v3, :cond_1

    const-wide/16 v0, -0x1

    move-wide v1, v0

    .line 209
    :goto_0
    if-nez v3, :cond_2

    const/4 v0, -0x1

    .line 211
    :goto_1
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 212
    const-string v5, "times_up"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    const-class v5, Lcom/android/deskclock/timer/TimerReceiver;

    invoke-virtual {v4, p1, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 214
    iget-object v5, p0, Lcom/android/deskclock/timer/TimerReceiver;->mTimers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 215
    const-string v5, "timer.intent.extra"

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 217
    :cond_0
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 218
    const/high16 v5, 0x48000000

    invoke-static {p1, v6, v4, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 220
    if-eqz v3, :cond_4

    .line 221
    invoke-static {}, Lcom/android/deskclock/Utils;->isKitKatOrLater()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 222
    invoke-virtual {v0, v7, v1, v2, v4}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 227
    :goto_2
    const-string v0, "TimerReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting times up to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :goto_3
    return-void

    .line 208
    :cond_1
    invoke-virtual {v3}, Lcom/android/deskclock/timer/TimerObj;->getTimesupTime()J

    move-result-wide v0

    move-wide v1, v0

    goto :goto_0

    .line 209
    :cond_2
    iget v0, v3, Lcom/android/deskclock/timer/TimerObj;->mTimerId:I

    goto :goto_1

    .line 224
    :cond_3
    invoke-virtual {v0, v7, v1, v2, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_2

    .line 230
    :cond_4
    invoke-virtual {v0, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 232
    const-string v0, "TimerReceiver"

    const-string v1, "no next times up"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    .prologue
    const/4 v7, 0x0

    const/4 v3, -0x1

    const/4 v9, 0x1

    const/4 v6, 0x3

    .line 50
    const-string v0, "TimerReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received intent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 54
    const-string v1, "notif_in_use_cancel"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    invoke-direct {p0, p1}, Lcom/android/deskclock/timer/TimerReceiver;->cancelInUseNotification(Landroid/content/Context;)V

    .line 191
    :goto_0
    return-void

    .line 60
    :cond_0
    iget-object v1, p0, Lcom/android/deskclock/timer/TimerReceiver;->mTimers:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 61
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/deskclock/timer/TimerReceiver;->mTimers:Ljava/util/ArrayList;

    .line 63
    :cond_1
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 64
    iget-object v2, p0, Lcom/android/deskclock/timer/TimerReceiver;->mTimers:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/android/deskclock/timer/TimerObj;->getTimersFromSharedPrefs(Landroid/content/SharedPreferences;Ljava/util/ArrayList;)V

    .line 67
    const-string v2, "notif_in_use_show"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 68
    invoke-direct {p0, p1}, Lcom/android/deskclock/timer/TimerReceiver;->showInUseNotification(Landroid/content/Context;)V

    goto :goto_0

    .line 70
    :cond_2
    const-string v2, "notif_times_up_show"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 71
    invoke-direct {p0, p1}, Lcom/android/deskclock/timer/TimerReceiver;->showTimesUpNotification(Landroid/content/Context;)V

    goto :goto_0

    .line 73
    :cond_3
    const-string v2, "notif_times_up_cancel"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 74
    invoke-direct {p0, p1}, Lcom/android/deskclock/timer/TimerReceiver;->cancelTimesUpNotification(Landroid/content/Context;)V

    goto :goto_0

    .line 79
    :cond_4
    const-string v2, "timer.intent.extra"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 81
    const-string v0, "TimerReceiver"

    const-string v1, "got intent without Timer data"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 86
    :cond_5
    const-string v2, "timer.intent.extra"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 87
    if-ne v2, v3, :cond_6

    .line 88
    const-string v3, "TimerReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OnReceive:intent without Timer data for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_6
    iget-object v3, p0, Lcom/android/deskclock/timer/TimerReceiver;->mTimers:Ljava/util/ArrayList;

    invoke-static {v3, v2}, Lcom/android/deskclock/timer/Timers;->findTimer(Ljava/util/ArrayList;I)Lcom/android/deskclock/timer/TimerObj;

    move-result-object v2

    .line 93
    const-string v3, "times_up"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 95
    if-nez v2, :cond_7

    .line 96
    const-string v0, "TimerReceiver"

    const-string v1, " timer not found in list - do nothing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 100
    :cond_7
    iput v6, v2, Lcom/android/deskclock/timer/TimerObj;->mState:I

    .line 101
    invoke-virtual {v2, v1}, Lcom/android/deskclock/timer/TimerObj;->writeToSharedPref(Landroid/content/SharedPreferences;)V

    .line 103
    const-string v0, "TimerReceiver"

    const-string v1, "playing ringtone"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 105
    const-class v1, Lcom/android/deskclock/TimerRingService;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 106
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 109
    iget-object v0, p0, Lcom/android/deskclock/timer/TimerReceiver;->mTimers:Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/deskclock/Utils;->getTimeNow()J

    move-result-wide v1

    invoke-direct {p0, v0, v7, v1, v2}, Lcom/android/deskclock/timer/TimerReceiver;->getNextRunningTimer(Ljava/util/ArrayList;ZJ)Lcom/android/deskclock/timer/TimerObj;

    move-result-object v0

    if-nez v0, :cond_9

    .line 111
    invoke-direct {p0, p1}, Lcom/android/deskclock/timer/TimerReceiver;->cancelInUseNotification(Landroid/content/Context;)V

    .line 117
    :goto_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/deskclock/timer/TimerAlertFullScreen;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 118
    const/high16 v1, 0x10040000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 120
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 190
    :cond_8
    :goto_2
    invoke-direct {p0, p1}, Lcom/android/deskclock/timer/TimerReceiver;->updateNextTimesup(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 113
    :cond_9
    invoke-direct {p0, p1}, Lcom/android/deskclock/timer/TimerReceiver;->showInUseNotification(Landroid/content/Context;)V

    goto :goto_1

    .line 121
    :cond_a
    const-string v3, "timer_reset"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string v3, "delete_timer"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string v3, "timer_done"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 125
    :cond_b
    invoke-direct {p0, p1}, Lcom/android/deskclock/timer/TimerReceiver;->stopRingtoneIfNoTimesup(Landroid/content/Context;)V

    goto :goto_2

    .line 126
    :cond_c
    const-string v3, "notif_times_up_stop"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 128
    if-nez v2, :cond_d

    .line 129
    const-string v0, "TimerReceiver"

    const-string v1, "timer to stop not found in list - do nothing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 131
    :cond_d
    iget v0, v2, Lcom/android/deskclock/timer/TimerObj;->mState:I

    if-eq v0, v6, :cond_e

    .line 132
    const-string v0, "TimerReceiver"

    const-string v1, "action to stop but timer not in times-up state - do nothing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 137
    :cond_e
    invoke-virtual {v2}, Lcom/android/deskclock/timer/TimerObj;->getDeleteAfterUse()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x6

    :goto_3
    iput v0, v2, Lcom/android/deskclock/timer/TimerObj;->mState:I

    .line 138
    iget-wide v3, v2, Lcom/android/deskclock/timer/TimerObj;->mOriginalLength:J

    invoke-static {}, Lcom/android/deskclock/Utils;->getTimeNow()J

    move-result-wide v5

    iget-wide v7, v2, Lcom/android/deskclock/timer/TimerObj;->mStartTime:J

    sub-long/2addr v5, v7

    sub-long/2addr v3, v5

    iput-wide v3, v2, Lcom/android/deskclock/timer/TimerObj;->mTimeLeft:J

    .line 139
    invoke-virtual {v2, v1}, Lcom/android/deskclock/timer/TimerObj;->writeToSharedPref(Landroid/content/SharedPreferences;)V

    .line 142
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "from_notification"

    invoke-interface {v0, v3, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 144
    invoke-direct {p0, p1, v2}, Lcom/android/deskclock/timer/TimerReceiver;->cancelTimesUpNotification(Landroid/content/Context;Lcom/android/deskclock/timer/TimerObj;)V

    .line 147
    invoke-virtual {v2}, Lcom/android/deskclock/timer/TimerObj;->getDeleteAfterUse()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 148
    invoke-virtual {v2, v1}, Lcom/android/deskclock/timer/TimerObj;->deleteFromSharedPref(Landroid/content/SharedPreferences;)V

    .line 152
    :cond_f
    invoke-direct {p0, p1}, Lcom/android/deskclock/timer/TimerReceiver;->stopRingtoneIfNoTimesup(Landroid/content/Context;)V

    goto :goto_2

    .line 137
    :cond_10
    const/4 v0, 0x4

    goto :goto_3

    .line 153
    :cond_11
    const-string v3, "notif_times_up_plus_one"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 155
    if-nez v2, :cond_12

    .line 156
    const-string v0, "TimerReceiver"

    const-string v1, "timer to +1m not found in list - do nothing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 158
    :cond_12
    iget v0, v2, Lcom/android/deskclock/timer/TimerObj;->mState:I

    if-eq v0, v6, :cond_13

    .line 159
    const-string v0, "TimerReceiver"

    const-string v1, "action to +1m but timer not in times up state - do nothing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 164
    :cond_13
    iput v9, v2, Lcom/android/deskclock/timer/TimerObj;->mState:I

    .line 165
    invoke-static {}, Lcom/android/deskclock/Utils;->getTimeNow()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/deskclock/timer/TimerObj;->mStartTime:J

    .line 166
    const-wide/32 v3, 0xea60

    iput-wide v3, v2, Lcom/android/deskclock/timer/TimerObj;->mOriginalLength:J

    iput-wide v3, v2, Lcom/android/deskclock/timer/TimerObj;->mTimeLeft:J

    .line 167
    invoke-virtual {v2, v1}, Lcom/android/deskclock/timer/TimerObj;->writeToSharedPref(Landroid/content/SharedPreferences;)V

    .line 170
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "from_notification"

    invoke-interface {v0, v3, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 172
    invoke-direct {p0, p1, v2}, Lcom/android/deskclock/timer/TimerReceiver;->cancelTimesUpNotification(Landroid/content/Context;Lcom/android/deskclock/timer/TimerObj;)V

    .line 175
    const-string v0, "notif_app_open"

    invoke-interface {v1, v0, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_14

    .line 176
    invoke-direct {p0, p1}, Lcom/android/deskclock/timer/TimerReceiver;->showInUseNotification(Landroid/content/Context;)V

    .line 180
    :cond_14
    invoke-direct {p0, p1}, Lcom/android/deskclock/timer/TimerReceiver;->stopRingtoneIfNoTimesup(Landroid/content/Context;)V

    goto/16 :goto_2

    .line 181
    :cond_15
    const-string v1, "timer_update"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 183
    iget v0, v2, Lcom/android/deskclock/timer/TimerObj;->mState:I

    if-ne v0, v6, :cond_8

    .line 185
    invoke-direct {p0, p1, v2}, Lcom/android/deskclock/timer/TimerReceiver;->cancelTimesUpNotification(Landroid/content/Context;Lcom/android/deskclock/timer/TimerObj;)V

    .line 186
    invoke-direct {p0, p1, v2}, Lcom/android/deskclock/timer/TimerReceiver;->showTimesUpNotification(Landroid/content/Context;Lcom/android/deskclock/timer/TimerObj;)V

    goto/16 :goto_2
.end method
