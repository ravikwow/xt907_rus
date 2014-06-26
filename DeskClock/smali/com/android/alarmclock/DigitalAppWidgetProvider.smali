.class public Lcom/android/alarmclock/DigitalAppWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "DigitalAppWidgetProvider.java"


# instance fields
.field private mComponentName:Landroid/content/ComponentName;

.field private mPendingIntent:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 60
    return-void
.end method

.method private getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/alarmclock/DigitalAppWidgetProvider;->mComponentName:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    .line 279
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/android/alarmclock/DigitalAppWidgetProvider;->mComponentName:Landroid/content/ComponentName;

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/android/alarmclock/DigitalAppWidgetProvider;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method private getOnQuarterHourPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/alarmclock/DigitalAppWidgetProvider;->mPendingIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    .line 265
    const/4 v0, 0x0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.deskclock.ON_QUARTER_HOUR"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    invoke-static {p1, v0, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/alarmclock/DigitalAppWidgetProvider;->mPendingIntent:Landroid/app/PendingIntent;

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/android/alarmclock/DigitalAppWidgetProvider;->mPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method private startAlarmOnQuarterHour(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    .line 224
    if-eqz p1, :cond_0

    .line 225
    invoke-static {}, Lcom/android/deskclock/Utils;->getAlarmOnQuarterHour()J

    move-result-wide v1

    .line 226
    .local v1, "onQuarterHour":J
    invoke-direct {p0, p1}, Lcom/android/alarmclock/DigitalAppWidgetProvider;->getOnQuarterHourPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v3

    .line 227
    .local v3, "quarterlyIntent":Landroid/app/PendingIntent;
    const-string v4, "alarm"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 229
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    invoke-static {}, Lcom/android/deskclock/Utils;->isKitKatOrLater()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 230
    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 238
    .end local v0    # "alarmManager":Landroid/app/AlarmManager;
    .end local v1    # "onQuarterHour":J
    .end local v3    # "quarterlyIntent":Landroid/app/PendingIntent;
    :cond_0
    :goto_0
    return-void

    .line 232
    .restart local v0    # "alarmManager":Landroid/app/AlarmManager;
    .restart local v1    # "onQuarterHour":J
    .restart local v3    # "quarterlyIntent":Landroid/app/PendingIntent;
    :cond_1
    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private updateClock(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;IF)V
    .locals 7

    .prologue
    const v6, 0x7f0e0041

    const v5, 0x7f0e0044

    const/4 v4, 0x0

    .line 158
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f040017

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 161
    invoke-virtual {p2, p3}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object v1

    .line 162
    if-eqz v1, :cond_0

    const-string v2, "appWidgetCategory"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 165
    const v1, 0x7f0e0043

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/deskclock/DeskClock;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p1, v4, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 170
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/android/alarmclock/DigitalAppWidgetProvider;->refreshAlarm(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 171
    const v1, 0x7f0e0045

    invoke-static {v0, v4, v1}, Lcom/android/alarmclock/WidgetUtils;->setTimeFormat(Landroid/widget/RemoteViews;II)V

    .line 172
    invoke-static {p1, v0, p4}, Lcom/android/alarmclock/WidgetUtils;->setClockSize(Landroid/content/Context;Landroid/widget/RemoteViews;F)V

    .line 175
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const/high16 v2, 0x7f0d0000

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 177
    const-string v2, "setFormat12Hour"

    invoke-virtual {v0, v6, v2, v1}, Landroid/widget/RemoteViews;->setCharSequence(ILjava/lang/String;Ljava/lang/CharSequence;)V

    .line 178
    const-string v2, "setFormat24Hour"

    invoke-virtual {v0, v6, v2, v1}, Landroid/widget/RemoteViews;->setCharSequence(ILjava/lang/String;Ljava/lang/CharSequence;)V

    .line 182
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/alarmclock/DigitalAppWidgetService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 183
    const-string v2, "appWidgetId"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 184
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 185
    invoke-virtual {v0, v5, v1}, Landroid/widget/RemoteViews;->setRemoteAdapter(ILandroid/content/Intent;)V

    .line 189
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/deskclock/worldclock/CitiesActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p1, v4, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/widget/RemoteViews;->setPendingIntentTemplate(ILandroid/app/PendingIntent;)V

    .line 194
    invoke-virtual {p2, p3, v5}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged(II)V

    .line 196
    invoke-virtual {p2, p3, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 197
    return-void
.end method


# virtual methods
.method public cancelAlarmOnQuarterHour(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 247
    if-eqz p1, :cond_0

    .line 248
    invoke-direct {p0, p1}, Lcom/android/alarmclock/DigitalAppWidgetProvider;->getOnQuarterHourPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 252
    .local v0, "quarterlyIntent":Landroid/app/PendingIntent;
    const-string v1, "alarm"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 255
    .end local v0    # "quarterlyIntent":Landroid/app/PendingIntent;
    :cond_0
    return-void
.end method

.method public onAppWidgetOptionsChanged(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetId"    # I
    .param p4, "newOptions"    # Landroid/os/Bundle;

    .prologue
    .line 151
    invoke-static {p1, p4, p3}, Lcom/android/alarmclock/WidgetUtils;->getScaleRatio(Landroid/content/Context;Landroid/os/Bundle;I)F

    move-result v0

    .line 152
    .local v0, "ratio":F
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 153
    .local v1, "widgetManager":Landroid/appwidget/AppWidgetManager;
    invoke-direct {p0, p1, v1, p3, v0}, Lcom/android/alarmclock/DigitalAppWidgetProvider;->updateClock(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;IF)V

    .line 154
    return-void
.end method

.method public onDisabled(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onDisabled(Landroid/content/Context;)V

    .line 71
    invoke-virtual {p0, p1}, Lcom/android/alarmclock/DigitalAppWidgetProvider;->cancelAlarmOnQuarterHour(Landroid/content/Context;)V

    .line 72
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onEnabled(Landroid/content/Context;)V

    .line 65
    invoke-direct {p0, p1}, Lcom/android/alarmclock/DigitalAppWidgetProvider;->startAlarmOnQuarterHour(Landroid/content/Context;)V

    .line 66
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const v12, 0x7f0e0044

    const v11, 0x7f040017

    .line 76
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "action":Ljava/lang/String;
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 82
    const-string v9, "com.android.deskclock.ON_QUARTER_HOUR"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "android.intent.action.TIME_SET"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 87
    :cond_0
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v3

    .line 88
    .local v3, "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    if-eqz v3, :cond_1

    .line 89
    invoke-direct {p0, p1}, Lcom/android/alarmclock/DigitalAppWidgetProvider;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v2

    .line 90
    .local v2, "appWidgetIds":[I
    move-object v4, v2

    .local v4, "arr$":[I
    array-length v6, v4

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_1

    aget v1, v4, v5

    .line 91
    .local v1, "appWidgetId":I
    invoke-virtual {v3, v1, v12}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged(II)V

    .line 94
    new-instance v8, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v11}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 96
    .local v8, "widget":Landroid/widget/RemoteViews;
    const/4 v9, 0x0

    invoke-static {p1, v9, v1}, Lcom/android/alarmclock/WidgetUtils;->getScaleRatio(Landroid/content/Context;Landroid/os/Bundle;I)F

    move-result v7

    .line 97
    .local v7, "ratio":F
    const/4 v9, 0x0

    const v10, 0x7f0e0045

    invoke-static {v8, v9, v10}, Lcom/android/alarmclock/WidgetUtils;->setTimeFormat(Landroid/widget/RemoteViews;II)V

    .line 98
    invoke-static {p1, v8, v7}, Lcom/android/alarmclock/WidgetUtils;->setClockSize(Landroid/content/Context;Landroid/widget/RemoteViews;F)V

    .line 99
    invoke-virtual {p0, p1, v8}, Lcom/android/alarmclock/DigitalAppWidgetProvider;->refreshAlarm(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 100
    invoke-virtual {v3, v1, v8}, Landroid/appwidget/AppWidgetManager;->partiallyUpdateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 90
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 103
    .end local v1    # "appWidgetId":I
    .end local v2    # "appWidgetIds":[I
    .end local v4    # "arr$":[I
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .end local v7    # "ratio":F
    .end local v8    # "widget":Landroid/widget/RemoteViews;
    :cond_1
    const-string v9, "com.android.deskclock.ON_QUARTER_HOUR"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 104
    invoke-virtual {p0, p1}, Lcom/android/alarmclock/DigitalAppWidgetProvider;->cancelAlarmOnQuarterHour(Landroid/content/Context;)V

    .line 106
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/alarmclock/DigitalAppWidgetProvider;->startAlarmOnQuarterHour(Landroid/content/Context;)V

    .line 132
    .end local v3    # "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    :cond_3
    return-void

    .line 107
    :cond_4
    const-string v9, "android.intent.action.ALARM_CHANGED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "android.intent.action.SCREEN_ON"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 110
    :cond_5
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v3

    .line 111
    .restart local v3    # "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    if-eqz v3, :cond_3

    .line 112
    invoke-direct {p0, p1}, Lcom/android/alarmclock/DigitalAppWidgetProvider;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v2

    .line 113
    .restart local v2    # "appWidgetIds":[I
    move-object v4, v2

    .restart local v4    # "arr$":[I
    array-length v6, v4

    .restart local v6    # "len$":I
    const/4 v5, 0x0

    .restart local v5    # "i$":I
    :goto_1
    if-ge v5, v6, :cond_3

    aget v1, v4, v5

    .line 114
    .restart local v1    # "appWidgetId":I
    new-instance v8, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v11}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 116
    .restart local v8    # "widget":Landroid/widget/RemoteViews;
    invoke-virtual {p0, p1, v8}, Lcom/android/alarmclock/DigitalAppWidgetProvider;->refreshAlarm(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 117
    invoke-virtual {v3, v1, v8}, Landroid/appwidget/AppWidgetManager;->partiallyUpdateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 113
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 120
    .end local v1    # "appWidgetId":I
    .end local v2    # "appWidgetIds":[I
    .end local v3    # "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    .end local v4    # "arr$":[I
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .end local v8    # "widget":Landroid/widget/RemoteViews;
    :cond_6
    const-string v9, "com.android.deskclock.worldclock.update"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 122
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v3

    .line 123
    .restart local v3    # "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    if-eqz v3, :cond_3

    .line 124
    invoke-direct {p0, p1}, Lcom/android/alarmclock/DigitalAppWidgetProvider;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v2

    .line 125
    .restart local v2    # "appWidgetIds":[I
    move-object v4, v2

    .restart local v4    # "arr$":[I
    array-length v6, v4

    .restart local v6    # "len$":I
    const/4 v5, 0x0

    .restart local v5    # "i$":I
    :goto_2
    if-ge v5, v6, :cond_3

    aget v1, v4, v5

    .line 126
    .restart local v1    # "appWidgetId":I
    invoke-virtual {v3, v1, v12}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged(II)V

    .line 125
    add-int/lit8 v5, v5, 0x1

    goto :goto_2
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetIds"    # [I

    .prologue
    .line 139
    move-object v1, p3

    .local v1, "arr$":[I
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget v0, v1, v2

    .line 140
    .local v0, "appWidgetId":I
    const/4 v5, 0x0

    invoke-static {p1, v5, v0}, Lcom/android/alarmclock/WidgetUtils;->getScaleRatio(Landroid/content/Context;Landroid/os/Bundle;I)F

    move-result v4

    .line 141
    .local v4, "ratio":F
    invoke-direct {p0, p1, p2, v0, v4}, Lcom/android/alarmclock/DigitalAppWidgetProvider;->updateClock(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;IF)V

    .line 139
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 143
    .end local v0    # "appWidgetId":I
    .end local v4    # "ratio":F
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/alarmclock/DigitalAppWidgetProvider;->startAlarmOnQuarterHour(Landroid/content/Context;)V

    .line 144
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 145
    return-void
.end method

.method protected refreshAlarm(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "widget"    # Landroid/widget/RemoteViews;

    .prologue
    const/4 v4, 0x0

    const v3, 0x7f0e0042

    .line 200
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "next_alarm_formatted"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, "nextAlarm":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 203
    const v1, 0x7f0d0049

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v3, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 205
    invoke-virtual {p2, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 215
    :goto_0
    return-void

    .line 210
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {p2, v3, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_0
.end method
