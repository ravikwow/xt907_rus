.class public final Lcom/android/deskclock/alarms/AlarmStateManager;
.super Landroid/content/BroadcastReceiver;
.source "AlarmStateManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/deskclock/alarms/AlarmStateManager;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/deskclock/alarms/AlarmStateManager;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/content/Intent;

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Lcom/android/deskclock/alarms/AlarmStateManager;->handleIntent(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private static cancelScheduledInstance(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "instance"    # Lcom/android/deskclock/provider/AlarmInstance;

    .prologue
    .line 240
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Canceling instance "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p1, Lcom/android/deskclock/provider/AlarmInstance;->mId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " timers"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p1}, Lcom/android/deskclock/provider/AlarmInstance;->hashCode()I

    move-result v2

    const-string v3, "ALARM_MANAGER"

    const/4 v4, 0x0

    invoke-static {p0, v3, p1, v4}, Lcom/android/deskclock/alarms/AlarmStateManager;->createStateChangeIntent(Landroid/content/Context;Ljava/lang/String;Lcom/android/deskclock/provider/AlarmInstance;Ljava/lang/Integer;)Landroid/content/Intent;

    move-result-object v3

    const/high16 v4, 0x8000000

    invoke-static {p0, v2, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 247
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    const-string v2, "alarm"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 248
    .local v0, "am":Landroid/app/AlarmManager;
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 249
    return-void
.end method

.method public static createStateChangeIntent(Landroid/content/Context;Ljava/lang/String;Lcom/android/deskclock/provider/AlarmInstance;Ljava/lang/Integer;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 197
    const-class v0, Lcom/android/deskclock/alarms/AlarmStateManager;

    iget-wide v1, p2, Lcom/android/deskclock/provider/AlarmInstance;->mId:J

    invoke-static {p0, v0, v1, v2}, Lcom/android/deskclock/provider/AlarmInstance;->createIntent(Landroid/content/Context;Ljava/lang/Class;J)Landroid/content/Intent;

    move-result-object v0

    .line 198
    const-string v1, "change_state"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    const-string v1, "intent.extra.alarm.global.id"

    invoke-static {p0}, Lcom/android/deskclock/alarms/AlarmStateManager;->getGlobalIntentId(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 201
    if-eqz p3, :cond_0

    .line 202
    const-string v1, "intent.extra.alarm.state"

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 204
    :cond_0
    return-object v0
.end method

.method public static deleteAllInstances(Landroid/content/Context;J)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "alarmId"    # J

    .prologue
    .line 599
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 600
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-static {v0, p1, p2}, Lcom/android/deskclock/provider/AlarmInstance;->getInstancesByAlarmId(Landroid/content/ContentResolver;J)Ljava/util/List;

    move-result-object v3

    .line 601
    .local v3, "instances":Ljava/util/List;, "Ljava/util/List<Lcom/android/deskclock/provider/AlarmInstance;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/deskclock/provider/AlarmInstance;

    .line 602
    .local v2, "instance":Lcom/android/deskclock/provider/AlarmInstance;
    invoke-static {p0, v2}, Lcom/android/deskclock/alarms/AlarmStateManager;->unregisterInstance(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V

    .line 603
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-wide v5, v2, Lcom/android/deskclock/provider/AlarmInstance;->mId:J

    invoke-static {v4, v5, v6}, Lcom/android/deskclock/provider/AlarmInstance;->deleteInstance(Landroid/content/ContentResolver;J)Z

    goto :goto_0

    .line 605
    .end local v2    # "instance":Lcom/android/deskclock/provider/AlarmInstance;
    :cond_0
    invoke-static {p0}, Lcom/android/deskclock/alarms/AlarmStateManager;->updateNextAlarm(Landroid/content/Context;)V

    .line 606
    return-void
.end method

.method public static fixAlarmInstances(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 616
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 617
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const/4 v3, 0x0

    new-array v4, v5, [Ljava/lang/String;

    invoke-static {v0, v3, v4}, Lcom/android/deskclock/provider/AlarmInstance;->getInstances(Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/deskclock/provider/AlarmInstance;

    .line 618
    .local v2, "instance":Lcom/android/deskclock/provider/AlarmInstance;
    invoke-static {p0, v2, v5}, Lcom/android/deskclock/alarms/AlarmStateManager;->registerInstance(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;Z)V

    goto :goto_0

    .line 620
    .end local v2    # "instance":Lcom/android/deskclock/provider/AlarmInstance;
    :cond_0
    invoke-static {p0}, Lcom/android/deskclock/alarms/AlarmStateManager;->updateNextAlarm(Landroid/content/Context;)V

    .line 621
    return-void
.end method

.method public static getGlobalIntentId(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 118
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 119
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "intent.extra.alarm.global.id"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private handleIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v4, -0x1

    .line 677
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 678
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AlarmStateManager received intent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 679
    const-string v1, "change_state"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 680
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 681
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v0}, Lcom/android/deskclock/provider/AlarmInstance;->getId(Landroid/net/Uri;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/deskclock/provider/AlarmInstance;->getInstance(Landroid/content/ContentResolver;J)Lcom/android/deskclock/provider/AlarmInstance;

    move-result-object v1

    .line 683
    if-nez v1, :cond_1

    .line 685
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not change state for unknown instance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/deskclock/Log;->e(Ljava/lang/String;)V

    .line 716
    :cond_0
    :goto_0
    return-void

    .line 689
    :cond_1
    invoke-static {p1}, Lcom/android/deskclock/alarms/AlarmStateManager;->getGlobalIntentId(Landroid/content/Context;)I

    move-result v0

    .line 690
    const-string v2, "intent.extra.alarm.global.id"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 691
    const-string v3, "intent.extra.alarm.state"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 692
    if-eq v2, v0, :cond_2

    .line 693
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring old Intent. IntentId: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " GlobalId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AlarmState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/deskclock/Log;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 698
    :cond_2
    if-ltz v3, :cond_3

    .line 699
    invoke-virtual {p0, p1, v1, v3}, Lcom/android/deskclock/alarms/AlarmStateManager;->setAlarmState(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;I)V

    goto :goto_0

    .line 701
    :cond_3
    const/4 v0, 0x1

    invoke-static {p1, v1, v0}, Lcom/android/deskclock/alarms/AlarmStateManager;->registerInstance(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;Z)V

    goto :goto_0

    .line 703
    :cond_4
    const-string v1, "show_and_dismiss_alarm"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 704
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 705
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v0}, Lcom/android/deskclock/provider/AlarmInstance;->getId(Landroid/net/Uri;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/deskclock/provider/AlarmInstance;->getInstance(Landroid/content/ContentResolver;J)Lcom/android/deskclock/provider/AlarmInstance;

    move-result-object v2

    .line 708
    iget-object v0, v2, Lcom/android/deskclock/provider/AlarmInstance;->mAlarmId:Ljava/lang/Long;

    if-nez v0, :cond_5

    const-wide/16 v0, -0x1

    .line 709
    :goto_1
    const-class v3, Lcom/android/deskclock/DeskClock;

    invoke-static {p1, v3, v0, v1}, Lcom/android/deskclock/provider/Alarm;->createIntent(Landroid/content/Context;Ljava/lang/Class;J)Landroid/content/Intent;

    move-result-object v3

    .line 710
    const-string v4, "deskclock.select.tab"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 711
    const-string v4, "deskclock.scroll.to.alarm"

    invoke-virtual {v3, v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 712
    const/high16 v0, 0x10000000

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 713
    invoke-virtual {p1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 714
    invoke-static {p1, v2}, Lcom/android/deskclock/alarms/AlarmStateManager;->setDismissState(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V

    goto/16 :goto_0

    .line 708
    :cond_5
    iget-object v0, v2, Lcom/android/deskclock/provider/AlarmInstance;->mAlarmId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_1
.end method

.method public static registerInstance(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;Z)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "instance"    # Lcom/android/deskclock/provider/AlarmInstance;
    .param p2, "updateNextAlarm"    # Z

    .prologue
    const/4 v12, 0x5

    const/4 v5, 0x1

    .line 507
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 508
    .local v4, "currentTime":Ljava/util/Calendar;
    invoke-virtual {p1}, Lcom/android/deskclock/provider/AlarmInstance;->getAlarmTime()Ljava/util/Calendar;

    move-result-object v2

    .line 509
    .local v2, "alarmTime":Ljava/util/Calendar;
    invoke-virtual {p1, p0}, Lcom/android/deskclock/provider/AlarmInstance;->getTimeout(Landroid/content/Context;)Ljava/util/Calendar;

    move-result-object v9

    .line 510
    .local v9, "timeoutTime":Ljava/util/Calendar;
    invoke-virtual {p1}, Lcom/android/deskclock/provider/AlarmInstance;->getLowNotificationTime()Ljava/util/Calendar;

    move-result-object v7

    .line 511
    .local v7, "lowNotificationTime":Ljava/util/Calendar;
    invoke-virtual {p1}, Lcom/android/deskclock/provider/AlarmInstance;->getHighNotificationTime()Ljava/util/Calendar;

    move-result-object v6

    .line 512
    .local v6, "highNotificationTime":Ljava/util/Calendar;
    invoke-virtual {p1}, Lcom/android/deskclock/provider/AlarmInstance;->getMissedTimeToLive()Ljava/util/Calendar;

    move-result-object v8

    .line 515
    .local v8, "missedTTL":Ljava/util/Calendar;
    iget v10, p1, Lcom/android/deskclock/provider/AlarmInstance;->mAlarmState:I

    const/4 v11, 0x7

    if-ne v10, v11, :cond_1

    .line 517
    const-string v10, "Alarm Instance is dismissed, but never deleted"

    invoke-static {v10}, Lcom/android/deskclock/Log;->e(Ljava/lang/String;)V

    .line 518
    invoke-static {p0, p1}, Lcom/android/deskclock/alarms/AlarmStateManager;->setDismissState(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V

    .line 589
    :cond_0
    :goto_0
    return-void

    .line 520
    :cond_1
    iget v10, p1, Lcom/android/deskclock/provider/AlarmInstance;->mAlarmState:I

    if-ne v10, v12, :cond_3

    .line 522
    if-eqz v9, :cond_2

    invoke-virtual {v4, v9}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 523
    .local v5, "hasTimeout":Z
    :goto_1
    if-nez v5, :cond_5

    .line 524
    invoke-static {p0, p1}, Lcom/android/deskclock/alarms/AlarmStateManager;->setFiredState(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V

    goto :goto_0

    .line 522
    .end local v5    # "hasTimeout":Z
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 527
    :cond_3
    iget v10, p1, Lcom/android/deskclock/provider/AlarmInstance;->mAlarmState:I

    const/4 v11, 0x6

    if-ne v10, v11, :cond_5

    .line 528
    invoke-virtual {v4, v2}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 529
    iget-object v10, p1, Lcom/android/deskclock/provider/AlarmInstance;->mAlarmId:Ljava/lang/Long;

    if-nez v10, :cond_4

    .line 532
    invoke-static {p0, p1}, Lcom/android/deskclock/alarms/AlarmStateManager;->setDismissState(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V

    goto :goto_0

    .line 542
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 543
    .local v3, "cr":Landroid/content/ContentResolver;
    iget-object v10, p1, Lcom/android/deskclock/provider/AlarmInstance;->mAlarmId:Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v3, v10, v11}, Lcom/android/deskclock/provider/Alarm;->getAlarm(Landroid/content/ContentResolver;J)Lcom/android/deskclock/provider/Alarm;

    move-result-object v0

    .line 544
    .local v0, "alarm":Lcom/android/deskclock/provider/Alarm;
    iput-boolean v5, v0, Lcom/android/deskclock/provider/Alarm;->enabled:Z

    .line 545
    invoke-static {v3, v0}, Lcom/android/deskclock/provider/Alarm;->updateAlarm(Landroid/content/ContentResolver;Lcom/android/deskclock/provider/Alarm;)Z

    .line 550
    .end local v0    # "alarm":Lcom/android/deskclock/provider/Alarm;
    .end local v3    # "cr":Landroid/content/ContentResolver;
    :cond_5
    invoke-virtual {v4, v8}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 552
    invoke-static {p0, p1}, Lcom/android/deskclock/alarms/AlarmStateManager;->setDismissState(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V

    .line 586
    :goto_2
    if-eqz p2, :cond_0

    .line 587
    invoke-static {p0}, Lcom/android/deskclock/alarms/AlarmStateManager;->updateNextAlarm(Landroid/content/Context;)V

    goto :goto_0

    .line 553
    :cond_6
    invoke-virtual {v4, v2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 557
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 558
    .local v1, "alarmBuffer":Ljava/util/Calendar;
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 559
    const/16 v10, 0xd

    const/16 v11, 0xf

    invoke-virtual {v1, v10, v11}, Ljava/util/Calendar;->add(II)V

    .line 560
    invoke-virtual {v4, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 561
    invoke-static {p0, p1}, Lcom/android/deskclock/alarms/AlarmStateManager;->setFiredState(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V

    goto :goto_2

    .line 563
    :cond_7
    invoke-static {p0, p1}, Lcom/android/deskclock/alarms/AlarmStateManager;->setMissedState(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V

    goto :goto_2

    .line 565
    .end local v1    # "alarmBuffer":Ljava/util/Calendar;
    :cond_8
    iget v10, p1, Lcom/android/deskclock/provider/AlarmInstance;->mAlarmState:I

    const/4 v11, 0x4

    if-ne v10, v11, :cond_9

    .line 568
    invoke-static {p0, p1}, Lcom/android/deskclock/alarms/AlarmNotifications;->showSnoozeNotification(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V

    .line 569
    invoke-virtual {p1}, Lcom/android/deskclock/provider/AlarmInstance;->getAlarmTime()Ljava/util/Calendar;

    move-result-object v10

    invoke-static {p0, v10, p1, v12}, Lcom/android/deskclock/alarms/AlarmStateManager;->scheduleInstanceStateChange(Landroid/content/Context;Ljava/util/Calendar;Lcom/android/deskclock/provider/AlarmInstance;I)V

    goto :goto_2

    .line 571
    :cond_9
    invoke-virtual {v4, v6}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 572
    invoke-static {p0, p1}, Lcom/android/deskclock/alarms/AlarmStateManager;->setHighNotificationState(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V

    goto :goto_2

    .line 573
    :cond_a
    invoke-virtual {v4, v7}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 575
    iget v10, p1, Lcom/android/deskclock/provider/AlarmInstance;->mAlarmState:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_b

    .line 576
    invoke-static {p0, p1}, Lcom/android/deskclock/alarms/AlarmStateManager;->setHideNotificationState(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V

    goto :goto_2

    .line 578
    :cond_b
    invoke-static {p0, p1}, Lcom/android/deskclock/alarms/AlarmStateManager;->setLowNotificationState(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V

    goto :goto_2

    .line 582
    :cond_c
    invoke-static {p0, p1}, Lcom/android/deskclock/alarms/AlarmStateManager;->setSilentState(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V

    goto :goto_2
.end method

.method private static scheduleInstanceStateChange(Landroid/content/Context;Ljava/util/Calendar;Lcom/android/deskclock/provider/AlarmInstance;I)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "time"    # Ljava/util/Calendar;
    .param p2, "instance"    # Lcom/android/deskclock/provider/AlarmInstance;
    .param p3, "newState"    # I

    .prologue
    const/4 v8, 0x0

    .line 217
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    .line 218
    .local v3, "timeInMillis":J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Scheduling state change "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to instance "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p2, Lcom/android/deskclock/provider/AlarmInstance;->mId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p0, p1}, Lcom/android/deskclock/AlarmUtils;->getFormattedTime(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 220
    const-string v5, "ALARM_MANAGER"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p0, v5, p2, v6}, Lcom/android/deskclock/alarms/AlarmStateManager;->createStateChangeIntent(Landroid/content/Context;Ljava/lang/String;Lcom/android/deskclock/provider/AlarmInstance;Ljava/lang/Integer;)Landroid/content/Intent;

    move-result-object v2

    .line 222
    .local v2, "stateChangeIntent":Landroid/content/Intent;
    invoke-virtual {p2}, Lcom/android/deskclock/provider/AlarmInstance;->hashCode()I

    move-result v5

    const/high16 v6, 0x8000000

    invoke-static {p0, v5, v2, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 225
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    const-string v5, "alarm"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 226
    .local v0, "am":Landroid/app/AlarmManager;
    invoke-static {}, Lcom/android/deskclock/Utils;->isKitKatOrLater()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 227
    invoke-virtual {v0, v8, v3, v4, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 231
    :goto_0
    return-void

    .line 229
    :cond_0
    invoke-virtual {v0, v8, v3, v4, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public static setDismissState(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "instance"    # Lcom/android/deskclock/provider/AlarmInstance;

    .prologue
    .line 451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting dismissed state to instance "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p1, Lcom/android/deskclock/provider/AlarmInstance;->mId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 454
    invoke-static {p0, p1}, Lcom/android/deskclock/alarms/AlarmStateManager;->unregisterInstance(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V

    .line 457
    iget-object v0, p1, Lcom/android/deskclock/provider/AlarmInstance;->mAlarmId:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 458
    invoke-static {p0, p1}, Lcom/android/deskclock/alarms/AlarmStateManager;->updateParentAlarm(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V

    .line 462
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-wide v1, p1, Lcom/android/deskclock/provider/AlarmInstance;->mId:J

    invoke-static {v0, v1, v2}, Lcom/android/deskclock/provider/AlarmInstance;->deleteInstance(Landroid/content/ContentResolver;J)Z

    .line 465
    invoke-static {p0}, Lcom/android/deskclock/alarms/AlarmStateManager;->updateNextAlarm(Landroid/content/Context;)V

    .line 466
    return-void
.end method

.method public static setFiredState(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "instance"    # Lcom/android/deskclock/provider/AlarmInstance;

    .prologue
    .line 349
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting fire state to instance "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p1, Lcom/android/deskclock/provider/AlarmInstance;->mId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 352
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 353
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const/4 v2, 0x5

    iput v2, p1, Lcom/android/deskclock/provider/AlarmInstance;->mAlarmState:I

    .line 354
    invoke-static {v0, p1}, Lcom/android/deskclock/provider/AlarmInstance;->updateInstance(Landroid/content/ContentResolver;Lcom/android/deskclock/provider/AlarmInstance;)Z

    .line 357
    invoke-static {p0, p1}, Lcom/android/deskclock/alarms/AlarmService;->startAlarm(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V

    .line 359
    invoke-virtual {p1, p0}, Lcom/android/deskclock/provider/AlarmInstance;->getTimeout(Landroid/content/Context;)Ljava/util/Calendar;

    move-result-object v1

    .line 360
    .local v1, "timeout":Ljava/util/Calendar;
    if-eqz v1, :cond_0

    .line 361
    const/4 v2, 0x6

    invoke-static {p0, v1, p1, v2}, Lcom/android/deskclock/alarms/AlarmStateManager;->scheduleInstanceStateChange(Landroid/content/Context;Ljava/util/Calendar;Lcom/android/deskclock/provider/AlarmInstance;I)V

    .line 365
    :cond_0
    invoke-static {p0}, Lcom/android/deskclock/alarms/AlarmStateManager;->updateNextAlarm(Landroid/content/Context;)V

    .line 366
    return-void
.end method

.method public static setHideNotificationState(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "instance"    # Lcom/android/deskclock/provider/AlarmInstance;

    .prologue
    .line 305
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting hide notification state to instance "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/deskclock/provider/AlarmInstance;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 308
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 309
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const/4 v1, 0x2

    iput v1, p1, Lcom/android/deskclock/provider/AlarmInstance;->mAlarmState:I

    .line 310
    invoke-static {v0, p1}, Lcom/android/deskclock/provider/AlarmInstance;->updateInstance(Landroid/content/ContentResolver;Lcom/android/deskclock/provider/AlarmInstance;)Z

    .line 313
    invoke-static {p0, p1}, Lcom/android/deskclock/alarms/AlarmNotifications;->clearNotification(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V

    .line 314
    invoke-virtual {p1}, Lcom/android/deskclock/provider/AlarmInstance;->getHighNotificationTime()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {p0, v1, p1, v2}, Lcom/android/deskclock/alarms/AlarmStateManager;->scheduleInstanceStateChange(Landroid/content/Context;Ljava/util/Calendar;Lcom/android/deskclock/provider/AlarmInstance;I)V

    .line 316
    return-void
.end method

.method public static setHighNotificationState(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "instance"    # Lcom/android/deskclock/provider/AlarmInstance;

    .prologue
    .line 327
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting high notification state to instance "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/deskclock/provider/AlarmInstance;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 330
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 331
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const/4 v1, 0x3

    iput v1, p1, Lcom/android/deskclock/provider/AlarmInstance;->mAlarmState:I

    .line 332
    invoke-static {v0, p1}, Lcom/android/deskclock/provider/AlarmInstance;->updateInstance(Landroid/content/ContentResolver;Lcom/android/deskclock/provider/AlarmInstance;)Z

    .line 335
    invoke-static {p0, p1}, Lcom/android/deskclock/alarms/AlarmNotifications;->showHighPriorityNotification(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V

    .line 336
    invoke-virtual {p1}, Lcom/android/deskclock/provider/AlarmInstance;->getAlarmTime()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {p0, v1, p1, v2}, Lcom/android/deskclock/alarms/AlarmStateManager;->scheduleInstanceStateChange(Landroid/content/Context;Ljava/util/Calendar;Lcom/android/deskclock/provider/AlarmInstance;I)V

    .line 338
    return-void
.end method

.method public static setLowNotificationState(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "instance"    # Lcom/android/deskclock/provider/AlarmInstance;

    .prologue
    .line 283
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting low notification state to instance "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/deskclock/provider/AlarmInstance;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 286
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 287
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const/4 v1, 0x1

    iput v1, p1, Lcom/android/deskclock/provider/AlarmInstance;->mAlarmState:I

    .line 288
    invoke-static {v0, p1}, Lcom/android/deskclock/provider/AlarmInstance;->updateInstance(Landroid/content/ContentResolver;Lcom/android/deskclock/provider/AlarmInstance;)Z

    .line 291
    invoke-static {p0, p1}, Lcom/android/deskclock/alarms/AlarmNotifications;->showLowPriorityNotification(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V

    .line 292
    invoke-virtual {p1}, Lcom/android/deskclock/provider/AlarmInstance;->getHighNotificationTime()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {p0, v1, p1, v2}, Lcom/android/deskclock/alarms/AlarmStateManager;->scheduleInstanceStateChange(Landroid/content/Context;Ljava/util/Calendar;Lcom/android/deskclock/provider/AlarmInstance;I)V

    .line 294
    return-void
.end method

.method public static setMissedState(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "instance"    # Lcom/android/deskclock/provider/AlarmInstance;

    .prologue
    .line 418
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting missed state to instance "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/deskclock/provider/AlarmInstance;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 420
    invoke-static {p0, p1}, Lcom/android/deskclock/alarms/AlarmService;->stopAlarm(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V

    .line 423
    iget-object v1, p1, Lcom/android/deskclock/provider/AlarmInstance;->mAlarmId:Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 424
    invoke-static {p0, p1}, Lcom/android/deskclock/alarms/AlarmStateManager;->updateParentAlarm(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V

    .line 428
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 429
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const/4 v1, 0x6

    iput v1, p1, Lcom/android/deskclock/provider/AlarmInstance;->mAlarmState:I

    .line 430
    invoke-static {v0, p1}, Lcom/android/deskclock/provider/AlarmInstance;->updateInstance(Landroid/content/ContentResolver;Lcom/android/deskclock/provider/AlarmInstance;)Z

    .line 433
    invoke-static {p0, p1}, Lcom/android/deskclock/alarms/AlarmNotifications;->showMissedNotification(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V

    .line 434
    invoke-virtual {p1}, Lcom/android/deskclock/provider/AlarmInstance;->getMissedTimeToLive()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {p0, v1, p1, v2}, Lcom/android/deskclock/alarms/AlarmStateManager;->scheduleInstanceStateChange(Landroid/content/Context;Ljava/util/Calendar;Lcom/android/deskclock/provider/AlarmInstance;I)V

    .line 438
    invoke-static {p0}, Lcom/android/deskclock/alarms/AlarmStateManager;->updateNextAlarm(Landroid/content/Context;)V

    .line 440
    return-void
.end method

.method public static setSilentState(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "instance"    # Lcom/android/deskclock/provider/AlarmInstance;

    .prologue
    .line 261
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting silent state to instance "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/deskclock/provider/AlarmInstance;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 264
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 265
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const/4 v1, 0x0

    iput v1, p1, Lcom/android/deskclock/provider/AlarmInstance;->mAlarmState:I

    .line 266
    invoke-static {v0, p1}, Lcom/android/deskclock/provider/AlarmInstance;->updateInstance(Landroid/content/ContentResolver;Lcom/android/deskclock/provider/AlarmInstance;)Z

    .line 269
    invoke-static {p0, p1}, Lcom/android/deskclock/alarms/AlarmNotifications;->clearNotification(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V

    .line 270
    invoke-virtual {p1}, Lcom/android/deskclock/provider/AlarmInstance;->getLowNotificationTime()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v1, p1, v2}, Lcom/android/deskclock/alarms/AlarmStateManager;->scheduleInstanceStateChange(Landroid/content/Context;Ljava/util/Calendar;Lcom/android/deskclock/provider/AlarmInstance;I)V

    .line 272
    return-void
.end method

.method public static setSnoozeState(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "instance"    # Lcom/android/deskclock/provider/AlarmInstance;

    .prologue
    const/4 v8, 0x1

    .line 378
    invoke-static {p0, p1}, Lcom/android/deskclock/alarms/AlarmService;->stopAlarm(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V

    .line 381
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "snooze_duration"

    const-string v6, "10"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 383
    .local v3, "snoozeMinutesStr":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 384
    .local v2, "snoozeMinutes":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 385
    .local v1, "newAlarmTime":Ljava/util/Calendar;
    const/16 v4, 0xc

    invoke-virtual {v1, v4, v2}, Ljava/util/Calendar;->add(II)V

    .line 388
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Setting snoozed state to instance "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p1, Lcom/android/deskclock/provider/AlarmInstance;->mId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p0, v1}, Lcom/android/deskclock/AlarmUtils;->getFormattedTime(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 390
    invoke-virtual {p1, v1}, Lcom/android/deskclock/provider/AlarmInstance;->setAlarmTime(Ljava/util/Calendar;)V

    .line 391
    const/4 v4, 0x4

    iput v4, p1, Lcom/android/deskclock/provider/AlarmInstance;->mAlarmState:I

    .line 392
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/android/deskclock/provider/AlarmInstance;->updateInstance(Landroid/content/ContentResolver;Lcom/android/deskclock/provider/AlarmInstance;)Z

    .line 395
    invoke-static {p0, p1}, Lcom/android/deskclock/alarms/AlarmNotifications;->showSnoozeNotification(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V

    .line 396
    invoke-virtual {p1}, Lcom/android/deskclock/provider/AlarmInstance;->getAlarmTime()Ljava/util/Calendar;

    move-result-object v4

    const/4 v5, 0x5

    invoke-static {p0, v4, p1, v5}, Lcom/android/deskclock/alarms/AlarmStateManager;->scheduleInstanceStateChange(Landroid/content/Context;Ljava/util/Calendar;Lcom/android/deskclock/provider/AlarmInstance;I)V

    .line 400
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f0f0000

    invoke-virtual {v4, v5, v2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 402
    .local v0, "displayTime":Ljava/lang/String;
    invoke-static {p0, v0, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 405
    invoke-static {p0}, Lcom/android/deskclock/alarms/AlarmStateManager;->updateNextAlarm(Landroid/content/Context;)V

    .line 407
    return-void
.end method

.method public static unregisterInstance(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "instance"    # Lcom/android/deskclock/provider/AlarmInstance;

    .prologue
    .line 477
    invoke-static {p0, p1}, Lcom/android/deskclock/alarms/AlarmService;->stopAlarm(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V

    .line 478
    invoke-static {p0, p1}, Lcom/android/deskclock/alarms/AlarmNotifications;->clearNotification(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V

    .line 479
    invoke-static {p0, p1}, Lcom/android/deskclock/alarms/AlarmStateManager;->cancelScheduledInstance(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V

    .line 480
    return-void
.end method

.method public static updateGloablIntentId(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 123
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 124
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "intent.extra.alarm.global.id"

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    .line 125
    .local v0, "globalId":I
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "intent.extra.alarm.global.id"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 126
    return-void
.end method

.method public static updateNextAlarm(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 135
    const/4 v4, 0x0

    .line 136
    .local v4, "nextAlarm":Lcom/android/deskclock/provider/AlarmInstance;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 137
    .local v1, "cr":Landroid/content/ContentResolver;
    const-string v0, "alarm_state<5"

    .line 138
    .local v0, "activeAlarmQuery":Ljava/lang/String;
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-static {v1, v0, v5}, Lcom/android/deskclock/provider/AlarmInstance;->getInstances(Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/deskclock/provider/AlarmInstance;

    .line 139
    .local v3, "instance":Lcom/android/deskclock/provider/AlarmInstance;
    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/android/deskclock/provider/AlarmInstance;->getAlarmTime()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v4}, Lcom/android/deskclock/provider/AlarmInstance;->getAlarmTime()Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 140
    :cond_1
    move-object v4, v3

    goto :goto_0

    .line 143
    .end local v3    # "instance":Lcom/android/deskclock/provider/AlarmInstance;
    :cond_2
    invoke-static {p0, v4}, Lcom/android/deskclock/alarms/AlarmNotifications;->broadcastNextAlarm(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V

    .line 144
    return-void
.end method

.method private static updateParentAlarm(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "instance"    # Lcom/android/deskclock/provider/AlarmInstance;

    .prologue
    .line 154
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 155
    .local v2, "cr":Landroid/content/ContentResolver;
    iget-object v5, p1, Lcom/android/deskclock/provider/AlarmInstance;->mAlarmId:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v2, v5, v6}, Lcom/android/deskclock/provider/Alarm;->getAlarm(Landroid/content/ContentResolver;J)Lcom/android/deskclock/provider/Alarm;

    move-result-object v0

    .line 156
    .local v0, "alarm":Lcom/android/deskclock/provider/Alarm;
    if-nez v0, :cond_0

    .line 157
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Parent has been deleted with instance: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/deskclock/provider/AlarmInstance;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/deskclock/Log;->e(Ljava/lang/String;)V

    .line 184
    :goto_0
    return-void

    .line 161
    :cond_0
    iget-object v5, v0, Lcom/android/deskclock/provider/Alarm;->daysOfWeek:Lcom/android/deskclock/provider/DaysOfWeek;

    invoke-virtual {v5}, Lcom/android/deskclock/provider/DaysOfWeek;->isRepeating()Z

    move-result v5

    if-nez v5, :cond_2

    .line 162
    iget-boolean v5, v0, Lcom/android/deskclock/provider/Alarm;->deleteAfterUse:Z

    if-eqz v5, :cond_1

    .line 163
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Deleting parent alarm: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v0, Lcom/android/deskclock/provider/Alarm;->id:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/deskclock/Log;->i(Ljava/lang/String;)V

    .line 164
    iget-wide v5, v0, Lcom/android/deskclock/provider/Alarm;->id:J

    invoke-static {v2, v5, v6}, Lcom/android/deskclock/provider/Alarm;->deleteAlarm(Landroid/content/ContentResolver;J)Z

    goto :goto_0

    .line 166
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Disabling parent alarm: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v0, Lcom/android/deskclock/provider/Alarm;->id:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/deskclock/Log;->i(Ljava/lang/String;)V

    .line 167
    const/4 v5, 0x0

    iput-boolean v5, v0, Lcom/android/deskclock/provider/Alarm;->enabled:Z

    .line 168
    invoke-static {v2, v0}, Lcom/android/deskclock/provider/Alarm;->updateAlarm(Landroid/content/ContentResolver;Lcom/android/deskclock/provider/Alarm;)Z

    goto :goto_0

    .line 173
    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 174
    .local v3, "currentTime":Ljava/util/Calendar;
    invoke-virtual {p1}, Lcom/android/deskclock/provider/AlarmInstance;->getAlarmTime()Ljava/util/Calendar;

    move-result-object v1

    .line 175
    .local v1, "alarmTime":Ljava/util/Calendar;
    invoke-virtual {v3, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 176
    move-object v1, v3

    .line 178
    :cond_3
    invoke-virtual {v0, v1}, Lcom/android/deskclock/provider/Alarm;->createInstanceAfter(Ljava/util/Calendar;)Lcom/android/deskclock/provider/AlarmInstance;

    move-result-object v4

    .line 179
    .local v4, "nextRepeatedInstance":Lcom/android/deskclock/provider/AlarmInstance;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Creating new instance for repeating alarm "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v0, Lcom/android/deskclock/provider/Alarm;->id:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/android/deskclock/provider/AlarmInstance;->getAlarmTime()Ljava/util/Calendar;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/deskclock/AlarmUtils;->getFormattedTime(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/deskclock/Log;->i(Ljava/lang/String;)V

    .line 181
    invoke-static {v2, v4}, Lcom/android/deskclock/provider/AlarmInstance;->addInstance(Landroid/content/ContentResolver;Lcom/android/deskclock/provider/AlarmInstance;)Lcom/android/deskclock/provider/AlarmInstance;

    .line 182
    const/4 v5, 0x1

    invoke-static {p0, v4, v5}, Lcom/android/deskclock/alarms/AlarmStateManager;->registerInstance(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;Z)V

    goto/16 :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 663
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v4

    .line 664
    .local v4, "result":Landroid/content/BroadcastReceiver$PendingResult;
    invoke-static {p1}, Lcom/android/deskclock/AlarmAlertWakeLock;->createPartialWakeLock(Landroid/content/Context;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    .line 665
    .local v5, "wl":Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 666
    new-instance v0, Lcom/android/deskclock/alarms/AlarmStateManager$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/deskclock/alarms/AlarmStateManager$1;-><init>(Lcom/android/deskclock/alarms/AlarmStateManager;Landroid/content/Context;Landroid/content/Intent;Landroid/content/BroadcastReceiver$PendingResult;Landroid/os/PowerManager$WakeLock;)V

    invoke-static {v0}, Lcom/android/deskclock/AsyncHandler;->post(Ljava/lang/Runnable;)V

    .line 674
    return-void
.end method

.method public setAlarmState(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "instance"    # Lcom/android/deskclock/provider/AlarmInstance;
    .param p3, "state"    # I

    .prologue
    .line 631
    packed-switch p3, :pswitch_data_0

    .line 657
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trying to change to unknown alarm state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/deskclock/Log;->e(Ljava/lang/String;)V

    .line 659
    :goto_0
    return-void

    .line 633
    :pswitch_0
    invoke-static {p1, p2}, Lcom/android/deskclock/alarms/AlarmStateManager;->setSilentState(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V

    goto :goto_0

    .line 636
    :pswitch_1
    invoke-static {p1, p2}, Lcom/android/deskclock/alarms/AlarmStateManager;->setLowNotificationState(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V

    goto :goto_0

    .line 639
    :pswitch_2
    invoke-static {p1, p2}, Lcom/android/deskclock/alarms/AlarmStateManager;->setHideNotificationState(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V

    goto :goto_0

    .line 642
    :pswitch_3
    invoke-static {p1, p2}, Lcom/android/deskclock/alarms/AlarmStateManager;->setHighNotificationState(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V

    goto :goto_0

    .line 645
    :pswitch_4
    invoke-static {p1, p2}, Lcom/android/deskclock/alarms/AlarmStateManager;->setFiredState(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V

    goto :goto_0

    .line 648
    :pswitch_5
    invoke-static {p1, p2}, Lcom/android/deskclock/alarms/AlarmStateManager;->setSnoozeState(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V

    goto :goto_0

    .line 651
    :pswitch_6
    invoke-static {p1, p2}, Lcom/android/deskclock/alarms/AlarmStateManager;->setMissedState(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V

    goto :goto_0

    .line 654
    :pswitch_7
    invoke-static {p1, p2}, Lcom/android/deskclock/alarms/AlarmStateManager;->setDismissState(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V

    goto :goto_0

    .line 631
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
