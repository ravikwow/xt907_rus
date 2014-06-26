.class public Lcom/android/deskclock/HandleApiCalls;
.super Landroid/app/Activity;
.source "HandleApiCalls.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private getDaysFromIntent(Landroid/content/Intent;)Lcom/android/deskclock/provider/DaysOfWeek;
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    .line 230
    new-instance v2, Lcom/android/deskclock/provider/DaysOfWeek;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Lcom/android/deskclock/provider/DaysOfWeek;-><init>(I)V

    .line 231
    .local v2, "daysOfWeek":Lcom/android/deskclock/provider/DaysOfWeek;
    const-string v4, "android.intent.extra.alarm.DAYS"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 232
    .local v0, "days":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_2

    .line 233
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v1, v4, [I

    .line 234
    .local v1, "daysArray":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 235
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v1, v3

    .line 234
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 237
    :cond_0
    invoke-virtual {v2, v5, v1}, Lcom/android/deskclock/provider/DaysOfWeek;->setDaysOfWeek(Z[I)V

    .line 245
    .end local v3    # "i":I
    :cond_1
    :goto_1
    return-object v2

    .line 240
    .end local v1    # "daysArray":[I
    :cond_2
    const-string v4, "android.intent.extra.alarm.DAYS"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v1

    .line 241
    .restart local v1    # "daysArray":[I
    if-eqz v1, :cond_1

    .line 242
    invoke-virtual {v2, v5, v1}, Lcom/android/deskclock/provider/DaysOfWeek;->setDaysOfWeek(Z[I)V

    goto :goto_1
.end method

.method private getMessageFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 225
    const-string v1, "android.intent.extra.alarm.MESSAGE"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 226
    .local v0, "message":Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v0, ""

    .end local v0    # "message":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private handleSetAlarm(Landroid/content/Intent;)V
    .locals 11

    .prologue
    const/4 v1, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 84
    const-string v0, "android.intent.extra.alarm.HOUR"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 88
    const-string v0, "android.intent.extra.alarm.MINUTES"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    const-string v0, "android.intent.extra.alarm.MINUTES"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 93
    :goto_0
    if-ltz v2, :cond_0

    const/16 v0, 0x17

    if-gt v2, v0, :cond_0

    if-ltz v3, :cond_0

    const/16 v0, 0x3b

    if-le v3, v0, :cond_2

    .line 95
    :cond_0
    const-class v0, Lcom/android/deskclock/DeskClock;

    const-wide/16 v1, -0x1

    invoke-static {p0, v0, v1, v2}, Lcom/android/deskclock/provider/Alarm;->createIntent(Landroid/content/Context;Ljava/lang/Class;J)Landroid/content/Intent;

    move-result-object v0

    .line 96
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 97
    const-string v1, "deskclock.create.new"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 98
    const-string v1, "deskclock.select.tab"

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 99
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 100
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 151
    :goto_1
    return-void

    :cond_1
    move v3, v7

    .line 91
    goto :goto_0

    .line 104
    :cond_2
    const-string v0, "android.intent.extra.alarm.SKIP_UI"

    invoke-virtual {p1, v0, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .line 106
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p0

    move-object v1, p1

    .line 108
    invoke-direct/range {v0 .. v5}, Lcom/android/deskclock/HandleApiCalls;->setSelectionFromIntent(Landroid/content/Intent;IILjava/lang/StringBuilder;Ljava/util/List;)V

    .line 111
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 112
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v5, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {v1, v4, v0}, Lcom/android/deskclock/provider/Alarm;->getAlarms(Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 115
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 116
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/provider/Alarm;

    .line 117
    iput-boolean v6, v0, Lcom/android/deskclock/provider/Alarm;->enabled:Z

    .line 118
    invoke-static {v1, v0}, Lcom/android/deskclock/provider/Alarm;->updateAlarm(Landroid/content/ContentResolver;Lcom/android/deskclock/provider/Alarm;)Z

    .line 121
    iget-wide v1, v0, Lcom/android/deskclock/provider/Alarm;->id:J

    invoke-static {p0, v1, v2}, Lcom/android/deskclock/alarms/AlarmStateManager;->deleteAllInstances(Landroid/content/Context;J)V

    .line 122
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/deskclock/provider/Alarm;->createInstanceAfter(Ljava/util/Calendar;)Lcom/android/deskclock/provider/AlarmInstance;

    move-result-object v0

    invoke-direct {p0, v0, v8}, Lcom/android/deskclock/HandleApiCalls;->setupInstance(Lcom/android/deskclock/provider/AlarmInstance;Z)V

    .line 123
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 128
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/deskclock/HandleApiCalls;->getMessageFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 129
    invoke-direct {p0, p1}, Lcom/android/deskclock/HandleApiCalls;->getDaysFromIntent(Landroid/content/Intent;)Lcom/android/deskclock/provider/DaysOfWeek;

    move-result-object v4

    .line 130
    const-string v5, "android.intent.extra.alarm.VIBRATE"

    invoke-virtual {p1, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 131
    const-string v9, "android.intent.extra.alarm.RINGTONE"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 133
    new-instance v10, Lcom/android/deskclock/provider/Alarm;

    invoke-direct {v10, v2, v3}, Lcom/android/deskclock/provider/Alarm;-><init>(II)V

    .line 134
    iput-boolean v6, v10, Lcom/android/deskclock/provider/Alarm;->enabled:Z

    .line 135
    iput-object v0, v10, Lcom/android/deskclock/provider/Alarm;->label:Ljava/lang/String;

    .line 136
    iput-object v4, v10, Lcom/android/deskclock/provider/Alarm;->daysOfWeek:Lcom/android/deskclock/provider/DaysOfWeek;

    .line 137
    iput-boolean v5, v10, Lcom/android/deskclock/provider/Alarm;->vibrate:Z

    .line 139
    if-nez v9, :cond_4

    .line 140
    const/4 v0, 0x4

    invoke-static {v0}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v10, Lcom/android/deskclock/provider/Alarm;->alert:Landroid/net/Uri;

    .line 146
    :goto_2
    invoke-virtual {v4}, Lcom/android/deskclock/provider/DaysOfWeek;->isRepeating()Z

    move-result v0

    if-nez v0, :cond_7

    if-eqz v8, :cond_7

    move v0, v6

    :goto_3
    iput-boolean v0, v10, Lcom/android/deskclock/provider/Alarm;->deleteAfterUse:Z

    .line 148
    invoke-static {v1, v10}, Lcom/android/deskclock/provider/Alarm;->addAlarm(Landroid/content/ContentResolver;Lcom/android/deskclock/provider/Alarm;)Lcom/android/deskclock/provider/Alarm;

    move-result-object v0

    .line 149
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/deskclock/provider/Alarm;->createInstanceAfter(Ljava/util/Calendar;)Lcom/android/deskclock/provider/AlarmInstance;

    move-result-object v0

    invoke-direct {p0, v0, v8}, Lcom/android/deskclock/HandleApiCalls;->setupInstance(Lcom/android/deskclock/provider/AlarmInstance;Z)V

    .line 150
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_1

    .line 141
    :cond_4
    const-string v0, "silent"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 142
    :cond_5
    sget-object v0, Lcom/android/deskclock/provider/Alarm;->NO_RINGTONE_URI:Landroid/net/Uri;

    iput-object v0, v10, Lcom/android/deskclock/provider/Alarm;->alert:Landroid/net/Uri;

    goto :goto_2

    .line 144
    :cond_6
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v10, Lcom/android/deskclock/provider/Alarm;->alert:Landroid/net/Uri;

    goto :goto_2

    :cond_7
    move v0, v7

    .line 146
    goto :goto_3
.end method

.method private handleSetTimer(Landroid/content/Intent;)V
    .locals 12

    .prologue
    const-wide/16 v5, 0x3e8

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 159
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 161
    const-string v0, "android.intent.extra.alarm.LENGTH"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 162
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/deskclock/DeskClock;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "deskclock.select.tab"

    invoke-virtual {v0, v1, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "deskclock.timers.gotosetup"

    invoke-virtual {v0, v1, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 209
    :goto_0
    return-void

    .line 168
    :cond_0
    const-string v0, "android.intent.extra.alarm.LENGTH"

    invoke-virtual {p1, v0, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    mul-long v3, v5, v0

    .line 169
    cmp-long v0, v3, v5

    if-ltz v0, :cond_1

    const-wide/32 v0, 0x5265c00

    cmp-long v0, v3, v0

    if-lez v0, :cond_2

    .line 170
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid timer length requested: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/deskclock/Log;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 173
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/deskclock/HandleApiCalls;->getMessageFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v5

    .line 175
    const/4 v1, 0x0

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 178
    invoke-static {v2, v0}, Lcom/android/deskclock/timer/TimerObj;->getTimersFromSharedPrefs(Landroid/content/SharedPreferences;Ljava/util/ArrayList;)V

    .line 179
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/timer/TimerObj;

    .line 180
    iget-wide v7, v0, Lcom/android/deskclock/timer/TimerObj;->mSetupLength:J

    cmp-long v7, v7, v3

    if-nez v7, :cond_3

    iget-object v7, v0, Lcom/android/deskclock/timer/TimerObj;->mLabel:Ljava/lang/String;

    invoke-static {v5, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget v7, v0, Lcom/android/deskclock/timer/TimerObj;->mState:I

    const/4 v8, 0x5

    if-ne v7, v8, :cond_3

    .line 187
    :goto_1
    const-string v1, "android.intent.extra.alarm.SKIP_UI"

    invoke-virtual {p1, v1, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 188
    if-nez v0, :cond_4

    .line 190
    new-instance v0, Lcom/android/deskclock/timer/TimerObj;

    invoke-direct {v0, v3, v4, v5}, Lcom/android/deskclock/timer/TimerObj;-><init>(JLjava/lang/String;)V

    .line 192
    iput-boolean v1, v0, Lcom/android/deskclock/timer/TimerObj;->mDeleteAfterUse:Z

    .line 195
    :cond_4
    iput v10, v0, Lcom/android/deskclock/timer/TimerObj;->mState:I

    .line 196
    invoke-static {}, Lcom/android/deskclock/Utils;->getTimeNow()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/deskclock/timer/TimerObj;->mStartTime:J

    .line 197
    invoke-virtual {v0, v2}, Lcom/android/deskclock/timer/TimerObj;->writeToSharedPref(Landroid/content/SharedPreferences;)V

    .line 200
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "start_timer"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "timer.intent.extra"

    iget v0, v0, Lcom/android/deskclock/timer/TimerObj;->mTimerId:I

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 203
    if-eqz v1, :cond_5

    .line 204
    invoke-static {p0}, Lcom/android/deskclock/Utils;->showInUseNotifications(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 206
    :cond_5
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/deskclock/DeskClock;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "deskclock.select.tab"

    invoke-virtual {v0, v1, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_6
    move-object v0, v1

    goto :goto_1
.end method

.method private handleShowAlarms()V
    .locals 3

    .prologue
    .line 154
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/deskclock/DeskClock;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "deskclock.select.tab"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 156
    return-void
.end method

.method private setSelectionFromIntent(Landroid/content/Intent;IILjava/lang/StringBuilder;Ljava/util/List;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "hour"    # I
    .param p3, "minutes"    # I
    .param p4, "selection"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "II",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p5, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 254
    const-string v1, "hour"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "=?"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    const-string v1, " AND "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "minutes"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "=?"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    const-string v1, "android.intent.extra.alarm.MESSAGE"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 260
    const-string v1, " AND "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "label"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "=?"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    invoke-direct {p0, p1}, Lcom/android/deskclock/HandleApiCalls;->getMessageFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    :cond_0
    const-string v1, " AND "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "daysofweek"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "=?"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    const-string v1, "android.intent.extra.alarm.DAYS"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0, p1}, Lcom/android/deskclock/HandleApiCalls;->getDaysFromIntent(Landroid/content/Intent;)Lcom/android/deskclock/provider/DaysOfWeek;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/deskclock/provider/DaysOfWeek;->getBitSet()I

    move-result v1

    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    const-string v1, "android.intent.extra.alarm.VIBRATE"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 271
    const-string v1, " AND "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "vibrate"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "=?"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    const-string v1, "android.intent.extra.alarm.VIBRATE"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "1"

    :goto_1
    invoke-interface {p5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    :cond_1
    const-string v1, "android.intent.extra.alarm.RINGTONE"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 276
    const-string v1, " AND "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ringtone"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    const-string v1, "android.intent.extra.alarm.RINGTONE"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, "ringTone":Ljava/lang/String;
    if-nez v0, :cond_6

    .line 282
    const/4 v1, 0x4

    invoke-static {v1}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 286
    :cond_2
    :goto_2
    invoke-interface {p5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    .end local v0    # "ringTone":Ljava/lang/String;
    :cond_3
    return-void

    :cond_4
    move v1, v2

    .line 267
    goto :goto_0

    .line 272
    :cond_5
    const-string v1, "0"

    goto :goto_1

    .line 283
    .restart local v0    # "ringTone":Ljava/lang/String;
    :cond_6
    const-string v1, "silent"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 284
    :cond_7
    sget-object v0, Lcom/android/deskclock/provider/Alarm;->NO_RINGTONE:Ljava/lang/String;

    goto :goto_2
.end method

.method private setupInstance(Lcom/android/deskclock/provider/AlarmInstance;Z)V
    .locals 4

    .prologue
    .line 212
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/deskclock/provider/AlarmInstance;->addInstance(Landroid/content/ContentResolver;Lcom/android/deskclock/provider/AlarmInstance;)Lcom/android/deskclock/provider/AlarmInstance;

    move-result-object v0

    .line 213
    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/deskclock/alarms/AlarmStateManager;->registerInstance(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;Z)V

    .line 214
    invoke-virtual {v0}, Lcom/android/deskclock/provider/AlarmInstance;->getAlarmTime()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-static {p0, v1, v2}, Lcom/android/deskclock/AlarmUtils;->popAlarmSetToast(Landroid/content/Context;J)V

    .line 215
    if-nez p2, :cond_0

    .line 216
    const-class v1, Lcom/android/deskclock/DeskClock;

    iget-object v2, v0, Lcom/android/deskclock/provider/AlarmInstance;->mAlarmId:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {p0, v1, v2, v3}, Lcom/android/deskclock/provider/Alarm;->createIntent(Landroid/content/Context;Ljava/lang/Class;J)Landroid/content/Intent;

    move-result-object v1

    .line 217
    const-string v2, "deskclock.select.tab"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 218
    const-string v2, "deskclock.scroll.to.alarm"

    iget-object v0, v0, Lcom/android/deskclock/provider/AlarmInstance;->mAlarmId:Ljava/lang/Long;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 219
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 220
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 222
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 62
    :try_start_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 64
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 65
    const-string v1, "android.intent.action.SET_ALARM"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 66
    invoke-direct {p0, v0}, Lcom/android/deskclock/HandleApiCalls;->handleSetAlarm(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 76
    return-void

    .line 67
    :cond_1
    :try_start_1
    const-string v1, "android.intent.action.SHOW_ALARMS"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 68
    invoke-direct {p0}, Lcom/android/deskclock/HandleApiCalls;->handleShowAlarms()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 74
    .end local v0    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    throw v1

    .line 69
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_2
    :try_start_2
    const-string v1, "android.intent.action.SET_TIMER"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    invoke-direct {p0, v0}, Lcom/android/deskclock/HandleApiCalls;->handleSetTimer(Landroid/content/Intent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
