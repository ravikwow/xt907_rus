.class public final Lcom/android/deskclock/alarms/AlarmNotifications;
.super Ljava/lang/Object;
.source "AlarmNotifications.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static broadcastNextAlarm(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "instance"    # Lcom/android/deskclock/provider/AlarmInstance;

    .prologue
    .line 41
    const-string v2, ""

    .line 42
    .local v2, "timeString":Ljava/lang/String;
    const/4 v1, 0x0

    .line 43
    .local v1, "showStatusIcon":Z
    if-eqz p1, :cond_0

    .line 44
    invoke-virtual {p1}, Lcom/android/deskclock/provider/AlarmInstance;->getAlarmTime()Ljava/util/Calendar;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/deskclock/AlarmUtils;->getFormattedTime(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v2

    .line 45
    const/4 v1, 0x1

    .line 49
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Displaying next alarm time: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x27

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/deskclock/Log;->i(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "next_alarm_formatted"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 53
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.ALARM_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 54
    .local v0, "alarmChanged":Landroid/content/Intent;
    const-string v3, "alarmSet"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 55
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 56
    return-void
.end method

.method public static clearNotification(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "instance"    # Lcom/android/deskclock/provider/AlarmInstance;

    .prologue
    .line 259
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Clearing notifications for alarm instance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/deskclock/provider/AlarmInstance;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 260
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 262
    .local v0, "nm":Landroid/app/NotificationManager;
    invoke-virtual {p1}, Lcom/android/deskclock/provider/AlarmInstance;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 263
    return-void
.end method

.method public static showAlarmNotification(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V
    .locals 9

    .prologue
    const v8, 0x7f0200b9

    const/4 v5, 0x4

    const/4 v7, 0x1

    const/high16 v6, 0x8000000

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Displaying alarm notification for alarm instance: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p1, Lcom/android/deskclock/provider/AlarmInstance;->mId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 203
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 207
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 209
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 210
    new-instance v2, Landroid/app/Notification$Builder;

    invoke-direct {v2, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p0}, Lcom/android/deskclock/provider/AlarmInstance;->getLabelOrDefault(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/deskclock/provider/AlarmInstance;->getAlarmTime()Ljava/util/Calendar;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/deskclock/AlarmUtils;->getFormattedTime(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 220
    const-string v3, "SNOOZE_TAG"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p0, v3, p1, v4}, Lcom/android/deskclock/alarms/AlarmStateManager;->createStateChangeIntent(Landroid/content/Context;Ljava/lang/String;Lcom/android/deskclock/provider/AlarmInstance;Ljava/lang/Integer;)Landroid/content/Intent;

    move-result-object v3

    .line 222
    invoke-virtual {p1}, Lcom/android/deskclock/provider/AlarmInstance;->hashCode()I

    move-result v4

    invoke-static {p0, v4, v3, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 225
    const v4, 0x7f0d001b

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v8, v4, v3}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 229
    const-string v3, "DISMISS_TAG"

    const/4 v4, 0x7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p0, v3, p1, v4}, Lcom/android/deskclock/alarms/AlarmStateManager;->createStateChangeIntent(Landroid/content/Context;Ljava/lang/String;Lcom/android/deskclock/provider/AlarmInstance;Ljava/lang/Integer;)Landroid/content/Intent;

    move-result-object v3

    .line 231
    invoke-virtual {p1}, Lcom/android/deskclock/provider/AlarmInstance;->hashCode()I

    move-result v4

    invoke-static {p0, v4, v3, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 233
    const v4, 0x1080038

    const v5, 0x7f0d0017

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v4, v1, v3}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 238
    const-class v1, Lcom/android/deskclock/alarms/AlarmActivity;

    iget-wide v3, p1, Lcom/android/deskclock/provider/AlarmInstance;->mId:J

    invoke-static {p0, v1, v3, v4}, Lcom/android/deskclock/provider/AlarmInstance;->createIntent(Landroid/content/Context;Ljava/lang/Class;J)Landroid/content/Intent;

    move-result-object v1

    .line 240
    invoke-virtual {p1}, Lcom/android/deskclock/provider/AlarmInstance;->hashCode()I

    move-result v3

    invoke-static {p0, v3, v1, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 244
    const-class v1, Lcom/android/deskclock/alarms/AlarmActivity;

    iget-wide v3, p1, Lcom/android/deskclock/provider/AlarmInstance;->mId:J

    invoke-static {p0, v1, v3, v4}, Lcom/android/deskclock/provider/AlarmInstance;->createIntent(Landroid/content/Context;Ljava/lang/Class;J)Landroid/content/Intent;

    move-result-object v1

    .line 247
    const-string v3, "fullscreen_activity"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 248
    const/high16 v3, 0x10040000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 250
    invoke-virtual {p1}, Lcom/android/deskclock/provider/AlarmInstance;->hashCode()I

    move-result v3

    invoke-static {p0, v3, v1, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v2, v1, v7}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    .line 252
    const/4 v1, 0x2

    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 254
    invoke-virtual {p1}, Lcom/android/deskclock/provider/AlarmInstance;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 255
    invoke-virtual {p1}, Lcom/android/deskclock/provider/AlarmInstance;->hashCode()I

    move-result v1

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 256
    return-void
.end method

.method public static showHighPriorityNotification(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V
    .locals 8

    .prologue
    const/high16 v7, 0x8000000

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Displaying high priority notification for alarm instance: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p1, Lcom/android/deskclock/provider/AlarmInstance;->mId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 101
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 104
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 105
    new-instance v2, Landroid/app/Notification$Builder;

    invoke-direct {v2, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0d001d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-static {p0, p1}, Lcom/android/deskclock/AlarmUtils;->getAlarmText(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    const v3, 0x7f0200b9

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 114
    const-string v2, "DISMISS_TAG"

    const/4 v4, 0x7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p0, v2, p1, v4}, Lcom/android/deskclock/alarms/AlarmStateManager;->createStateChangeIntent(Landroid/content/Context;Ljava/lang/String;Lcom/android/deskclock/provider/AlarmInstance;Ljava/lang/Integer;)Landroid/content/Intent;

    move-result-object v2

    .line 116
    const v4, 0x1080038

    const v5, 0x7f0d0018

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/deskclock/provider/AlarmInstance;->hashCode()I

    move-result v5

    invoke-static {p0, v5, v2, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v3, v4, v1, v2}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 122
    iget-object v1, p1, Lcom/android/deskclock/provider/AlarmInstance;->mAlarmId:Ljava/lang/Long;

    if-nez v1, :cond_0

    const-wide/16 v1, -0x1

    .line 123
    :goto_0
    const-class v4, Lcom/android/deskclock/DeskClock;

    invoke-static {p0, v4, v1, v2}, Lcom/android/deskclock/provider/Alarm;->createIntent(Landroid/content/Context;Ljava/lang/Class;J)Landroid/content/Intent;

    move-result-object v4

    .line 124
    const-string v5, "deskclock.select.tab"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 125
    const-string v5, "deskclock.scroll.to.alarm"

    invoke-virtual {v4, v5, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 126
    const/high16 v1, 0x10000000

    invoke-virtual {v4, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 127
    invoke-virtual {p1}, Lcom/android/deskclock/provider/AlarmInstance;->hashCode()I

    move-result v1

    invoke-static {p0, v1, v4, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 130
    invoke-virtual {p1}, Lcom/android/deskclock/provider/AlarmInstance;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 131
    invoke-virtual {p1}, Lcom/android/deskclock/provider/AlarmInstance;->hashCode()I

    move-result v1

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 132
    return-void

    .line 122
    :cond_0
    iget-object v1, p1, Lcom/android/deskclock/provider/AlarmInstance;->mAlarmId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_0
.end method

.method public static showLowPriorityNotification(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V
    .locals 8

    .prologue
    const/high16 v7, 0x8000000

    const/4 v6, 0x0

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Displaying low priority notification for alarm instance: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p1, Lcom/android/deskclock/provider/AlarmInstance;->mId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 60
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 63
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 64
    new-instance v2, Landroid/app/Notification$Builder;

    invoke-direct {v2, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0d001d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-static {p0, p1}, Lcom/android/deskclock/AlarmUtils;->getAlarmText(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    const v3, 0x7f0200b9

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 73
    const-string v2, "DELETE_TAG"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p0, v2, p1, v4}, Lcom/android/deskclock/alarms/AlarmStateManager;->createStateChangeIntent(Landroid/content/Context;Ljava/lang/String;Lcom/android/deskclock/provider/AlarmInstance;Ljava/lang/Integer;)Landroid/content/Intent;

    move-result-object v2

    .line 75
    invoke-virtual {p1}, Lcom/android/deskclock/provider/AlarmInstance;->hashCode()I

    move-result v4

    invoke-static {p0, v4, v2, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 79
    const-string v2, "DISMISS_TAG"

    const/4 v4, 0x7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p0, v2, p1, v4}, Lcom/android/deskclock/alarms/AlarmStateManager;->createStateChangeIntent(Landroid/content/Context;Ljava/lang/String;Lcom/android/deskclock/provider/AlarmInstance;Ljava/lang/Integer;)Landroid/content/Intent;

    move-result-object v2

    .line 81
    const v4, 0x1080038

    const v5, 0x7f0d0018

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/deskclock/provider/AlarmInstance;->hashCode()I

    move-result v5

    invoke-static {p0, v5, v2, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v3, v4, v1, v2}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 87
    iget-object v1, p1, Lcom/android/deskclock/provider/AlarmInstance;->mAlarmId:Ljava/lang/Long;

    if-nez v1, :cond_0

    const-wide/16 v1, -0x1

    .line 88
    :goto_0
    const-class v4, Lcom/android/deskclock/DeskClock;

    invoke-static {p0, v4, v1, v2}, Lcom/android/deskclock/provider/Alarm;->createIntent(Landroid/content/Context;Ljava/lang/Class;J)Landroid/content/Intent;

    move-result-object v4

    .line 89
    const-string v5, "deskclock.select.tab"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 90
    const-string v5, "deskclock.scroll.to.alarm"

    invoke-virtual {v4, v5, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 91
    const/high16 v1, 0x10000000

    invoke-virtual {v4, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 92
    invoke-virtual {p1}, Lcom/android/deskclock/provider/AlarmInstance;->hashCode()I

    move-result v1

    invoke-static {p0, v1, v4, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 95
    invoke-virtual {p1}, Lcom/android/deskclock/provider/AlarmInstance;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 96
    invoke-virtual {p1}, Lcom/android/deskclock/provider/AlarmInstance;->hashCode()I

    move-result v1

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 97
    return-void

    .line 87
    :cond_0
    iget-object v1, p1, Lcom/android/deskclock/provider/AlarmInstance;->mAlarmId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_0
.end method

.method public static showMissedNotification(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V
    .locals 8

    .prologue
    const/high16 v7, 0x8000000

    const/4 v6, 0x1

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Displaying missed notification for alarm instance: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p1, Lcom/android/deskclock/provider/AlarmInstance;->mId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 171
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 174
    iget-object v2, p1, Lcom/android/deskclock/provider/AlarmInstance;->mLabel:Ljava/lang/String;

    .line 175
    invoke-virtual {p1}, Lcom/android/deskclock/provider/AlarmInstance;->getAlarmTime()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/deskclock/AlarmUtils;->getFormattedTime(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    .line 176
    iget-object v3, p1, Lcom/android/deskclock/provider/AlarmInstance;->mLabel:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 178
    :goto_0
    new-instance v2, Landroid/app/Notification$Builder;

    invoke-direct {v2, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0d0019

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    const v2, 0x7f0200b9

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 185
    const-string v2, "DISMISS_TAG"

    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p0, v2, p1, v3}, Lcom/android/deskclock/alarms/AlarmStateManager;->createStateChangeIntent(Landroid/content/Context;Ljava/lang/String;Lcom/android/deskclock/provider/AlarmInstance;Ljava/lang/Integer;)Landroid/content/Intent;

    move-result-object v2

    .line 187
    invoke-virtual {p1}, Lcom/android/deskclock/provider/AlarmInstance;->hashCode()I

    move-result v3

    invoke-static {p0, v3, v2, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 191
    const-class v2, Lcom/android/deskclock/alarms/AlarmStateManager;

    iget-wide v3, p1, Lcom/android/deskclock/provider/AlarmInstance;->mId:J

    invoke-static {p0, v2, v3, v4}, Lcom/android/deskclock/provider/AlarmInstance;->createIntent(Landroid/content/Context;Ljava/lang/Class;J)Landroid/content/Intent;

    move-result-object v2

    .line 193
    const-string v3, "show_and_dismiss_alarm"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 194
    invoke-virtual {p1}, Lcom/android/deskclock/provider/AlarmInstance;->hashCode()I

    move-result v3

    invoke-static {p0, v3, v2, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 197
    invoke-virtual {p1}, Lcom/android/deskclock/provider/AlarmInstance;->hashCode()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 198
    invoke-virtual {p1}, Lcom/android/deskclock/provider/AlarmInstance;->hashCode()I

    move-result v2

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 199
    return-void

    .line 176
    :cond_0
    const v3, 0x7f0d001a

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    aput-object v2, v4, v6

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static showSnoozeNotification(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)V
    .locals 9

    .prologue
    const/high16 v8, 0x8000000

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Displaying snoozed notification for alarm instance: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p1, Lcom/android/deskclock/provider/AlarmInstance;->mId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 136
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 139
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 140
    new-instance v2, Landroid/app/Notification$Builder;

    invoke-direct {v2, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p0}, Lcom/android/deskclock/provider/AlarmInstance;->getLabelOrDefault(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    const v3, 0x7f0d001c

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/deskclock/provider/AlarmInstance;->getAlarmTime()Ljava/util/Calendar;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/deskclock/AlarmUtils;->getFormattedTime(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    const v3, 0x7f0200b9

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 150
    const-string v2, "DISMISS_TAG"

    const/4 v4, 0x7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p0, v2, p1, v4}, Lcom/android/deskclock/alarms/AlarmStateManager;->createStateChangeIntent(Landroid/content/Context;Ljava/lang/String;Lcom/android/deskclock/provider/AlarmInstance;Ljava/lang/Integer;)Landroid/content/Intent;

    move-result-object v2

    .line 152
    const v4, 0x1080038

    const v5, 0x7f0d0017

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/deskclock/provider/AlarmInstance;->hashCode()I

    move-result v5

    invoke-static {p0, v5, v2, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v3, v4, v1, v2}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 158
    iget-object v1, p1, Lcom/android/deskclock/provider/AlarmInstance;->mAlarmId:Ljava/lang/Long;

    if-nez v1, :cond_0

    const-wide/16 v1, -0x1

    .line 159
    :goto_0
    const-class v4, Lcom/android/deskclock/DeskClock;

    invoke-static {p0, v4, v1, v2}, Lcom/android/deskclock/provider/Alarm;->createIntent(Landroid/content/Context;Ljava/lang/Class;J)Landroid/content/Intent;

    move-result-object v4

    .line 160
    const-string v5, "deskclock.select.tab"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 161
    const-string v5, "deskclock.scroll.to.alarm"

    invoke-virtual {v4, v5, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 162
    const/high16 v1, 0x10000000

    invoke-virtual {v4, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 163
    invoke-virtual {p1}, Lcom/android/deskclock/provider/AlarmInstance;->hashCode()I

    move-result v1

    invoke-static {p0, v1, v4, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 165
    invoke-virtual {p1}, Lcom/android/deskclock/provider/AlarmInstance;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 166
    invoke-virtual {p1}, Lcom/android/deskclock/provider/AlarmInstance;->hashCode()I

    move-result v1

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 167
    return-void

    .line 158
    :cond_0
    iget-object v1, p1, Lcom/android/deskclock/provider/AlarmInstance;->mAlarmId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_0
.end method
