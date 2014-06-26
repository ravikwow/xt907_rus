.class Lcom/android/deskclock/AlarmTimelineView$GetAlarmsTask;
.super Landroid/os/AsyncTask;
.source "AlarmTimelineView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/AlarmTimelineView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetAlarmsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/AlarmTimelineView;


# direct methods
.method private constructor <init>(Lcom/android/deskclock/AlarmTimelineView;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/deskclock/AlarmTimelineView$GetAlarmsTask;->this$0:Lcom/android/deskclock/AlarmTimelineView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/deskclock/AlarmTimelineView;Lcom/android/deskclock/AlarmTimelineView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/deskclock/AlarmTimelineView;
    .param p2, "x1"    # Lcom/android/deskclock/AlarmTimelineView$1;

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/android/deskclock/AlarmTimelineView$GetAlarmsTask;-><init>(Lcom/android/deskclock/AlarmTimelineView;)V

    return-void
.end method

.method private getDaysFromNow(II)I
    .locals 3
    .param p1, "hour"    # I
    .param p2, "minutes"    # I

    .prologue
    .line 176
    iget-object v1, p0, Lcom/android/deskclock/AlarmTimelineView$GetAlarmsTask;->this$0:Lcom/android/deskclock/AlarmTimelineView;

    # getter for: Lcom/android/deskclock/AlarmTimelineView;->mCalendar:Ljava/util/Calendar;
    invoke-static {v1}, Lcom/android/deskclock/AlarmTimelineView;->access$300(Lcom/android/deskclock/AlarmTimelineView;)Ljava/util/Calendar;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 177
    .local v0, "currentHour":I
    if-gt p1, v0, :cond_0

    if-ne p1, v0, :cond_1

    iget-object v1, p0, Lcom/android/deskclock/AlarmTimelineView$GetAlarmsTask;->this$0:Lcom/android/deskclock/AlarmTimelineView;

    # getter for: Lcom/android/deskclock/AlarmTimelineView;->mCalendar:Ljava/util/Calendar;
    invoke-static {v1}, Lcom/android/deskclock/AlarmTimelineView;->access$300(Lcom/android/deskclock/AlarmTimelineView;)Ljava/util/Calendar;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-lt p2, v1, :cond_1

    .line 179
    :cond_0
    const/4 v1, 0x0

    .line 181
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private getDaysFromNow(III)I
    .locals 7
    .param p1, "day"    # I
    .param p2, "hour"    # I
    .param p3, "minute"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x7

    .line 186
    iget-object v5, p0, Lcom/android/deskclock/AlarmTimelineView$GetAlarmsTask;->this$0:Lcom/android/deskclock/AlarmTimelineView;

    # getter for: Lcom/android/deskclock/AlarmTimelineView;->mCalendar:Ljava/util/Calendar;
    invoke-static {v5}, Lcom/android/deskclock/AlarmTimelineView;->access$300(Lcom/android/deskclock/AlarmTimelineView;)Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 187
    .local v0, "currentDay":I
    if-eq p1, v0, :cond_2

    .line 188
    if-ge p1, v0, :cond_0

    .line 189
    add-int/lit8 p1, p1, 0x7

    .line 191
    :cond_0
    sub-int v3, p1, v0

    .line 200
    :cond_1
    :goto_0
    return v3

    .line 194
    :cond_2
    iget-object v5, p0, Lcom/android/deskclock/AlarmTimelineView$GetAlarmsTask;->this$0:Lcom/android/deskclock/AlarmTimelineView;

    # getter for: Lcom/android/deskclock/AlarmTimelineView;->mCalendar:Ljava/util/Calendar;
    invoke-static {v5}, Lcom/android/deskclock/AlarmTimelineView;->access$300(Lcom/android/deskclock/AlarmTimelineView;)Ljava/util/Calendar;

    move-result-object v5

    const/16 v6, 0xb

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 195
    .local v1, "currentHour":I
    if-eq p2, v1, :cond_3

    .line 196
    if-lt p2, v1, :cond_1

    move v3, v4

    goto :goto_0

    .line 199
    :cond_3
    iget-object v5, p0, Lcom/android/deskclock/AlarmTimelineView$GetAlarmsTask;->this$0:Lcom/android/deskclock/AlarmTimelineView;

    # getter for: Lcom/android/deskclock/AlarmTimelineView;->mCalendar:Ljava/util/Calendar;
    invoke-static {v5}, Lcom/android/deskclock/AlarmTimelineView;->access$300(Lcom/android/deskclock/AlarmTimelineView;)Ljava/util/Calendar;

    move-result-object v5

    const/16 v6, 0xc

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 200
    .local v2, "currentMinute":I
    if-lt p3, v2, :cond_1

    move v3, v4

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 120
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/deskclock/AlarmTimelineView$GetAlarmsTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs declared-synchronized doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 15
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 124
    monitor-enter p0

    :try_start_0
    iget-object v10, p0, Lcom/android/deskclock/AlarmTimelineView$GetAlarmsTask;->this$0:Lcom/android/deskclock/AlarmTimelineView;

    # getter for: Lcom/android/deskclock/AlarmTimelineView;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v10}, Lcom/android/deskclock/AlarmTimelineView;->access$200(Lcom/android/deskclock/AlarmTimelineView;)Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "enabled=1"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/String;

    invoke-static {v10, v11, v12}, Lcom/android/deskclock/provider/Alarm;->getAlarms(Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 125
    .local v4, "enabledAlarmList":Ljava/util/List;, "Ljava/util/List<Lcom/android/deskclock/provider/Alarm;>;"
    iget-object v10, p0, Lcom/android/deskclock/AlarmTimelineView$GetAlarmsTask;->this$0:Lcom/android/deskclock/AlarmTimelineView;

    # getter for: Lcom/android/deskclock/AlarmTimelineView;->mCalendar:Ljava/util/Calendar;
    invoke-static {v10}, Lcom/android/deskclock/AlarmTimelineView;->access$300(Lcom/android/deskclock/AlarmTimelineView;)Ljava/util/Calendar;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 126
    .local v1, "currentTime":Ljava/util/Date;
    iget-object v10, p0, Lcom/android/deskclock/AlarmTimelineView$GetAlarmsTask;->this$0:Lcom/android/deskclock/AlarmTimelineView;

    # getter for: Lcom/android/deskclock/AlarmTimelineView;->mAlarmTimes:Ljava/util/TreeMap;
    invoke-static {v10}, Lcom/android/deskclock/AlarmTimelineView;->access$400(Lcom/android/deskclock/AlarmTimelineView;)Ljava/util/TreeMap;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/TreeMap;->clear()V

    .line 127
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/provider/Alarm;

    .line 128
    .local v0, "alarm":Lcom/android/deskclock/provider/Alarm;
    iget v5, v0, Lcom/android/deskclock/provider/Alarm;->hour:I

    .line 129
    .local v5, "hour":I
    iget v8, v0, Lcom/android/deskclock/provider/Alarm;->minutes:I

    .line 130
    .local v8, "minutes":I
    iget-object v10, v0, Lcom/android/deskclock/provider/Alarm;->daysOfWeek:Lcom/android/deskclock/provider/DaysOfWeek;

    invoke-virtual {v10}, Lcom/android/deskclock/provider/DaysOfWeek;->getSetDays()Ljava/util/HashSet;

    move-result-object v9

    .line 133
    .local v9, "repeatingDays":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual {v9}, Ljava/util/HashSet;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 134
    iget-object v10, p0, Lcom/android/deskclock/AlarmTimelineView$GetAlarmsTask;->this$0:Lcom/android/deskclock/AlarmTimelineView;

    # getter for: Lcom/android/deskclock/AlarmTimelineView;->mCalendar:Ljava/util/Calendar;
    invoke-static {v10}, Lcom/android/deskclock/AlarmTimelineView;->access$300(Lcom/android/deskclock/AlarmTimelineView;)Ljava/util/Calendar;

    move-result-object v10

    const/4 v11, 0x5

    invoke-direct {p0, v5, v8}, Lcom/android/deskclock/AlarmTimelineView$GetAlarmsTask;->getDaysFromNow(II)I

    move-result v12

    invoke-virtual {v10, v11, v12}, Ljava/util/Calendar;->add(II)V

    .line 135
    iget-object v10, p0, Lcom/android/deskclock/AlarmTimelineView$GetAlarmsTask;->this$0:Lcom/android/deskclock/AlarmTimelineView;

    # getter for: Lcom/android/deskclock/AlarmTimelineView;->mCalendar:Ljava/util/Calendar;
    invoke-static {v10}, Lcom/android/deskclock/AlarmTimelineView;->access$300(Lcom/android/deskclock/AlarmTimelineView;)Ljava/util/Calendar;

    move-result-object v10

    const/16 v11, 0xb

    iget v12, v0, Lcom/android/deskclock/provider/Alarm;->hour:I

    invoke-virtual {v10, v11, v12}, Ljava/util/Calendar;->set(II)V

    .line 136
    iget-object v10, p0, Lcom/android/deskclock/AlarmTimelineView$GetAlarmsTask;->this$0:Lcom/android/deskclock/AlarmTimelineView;

    # getter for: Lcom/android/deskclock/AlarmTimelineView;->mCalendar:Ljava/util/Calendar;
    invoke-static {v10}, Lcom/android/deskclock/AlarmTimelineView;->access$300(Lcom/android/deskclock/AlarmTimelineView;)Ljava/util/Calendar;

    move-result-object v10

    const/16 v11, 0xc

    iget v12, v0, Lcom/android/deskclock/provider/Alarm;->minutes:I

    invoke-virtual {v10, v11, v12}, Ljava/util/Calendar;->set(II)V

    .line 137
    iget-object v10, p0, Lcom/android/deskclock/AlarmTimelineView$GetAlarmsTask;->this$0:Lcom/android/deskclock/AlarmTimelineView;

    # getter for: Lcom/android/deskclock/AlarmTimelineView;->mCalendar:Ljava/util/Calendar;
    invoke-static {v10}, Lcom/android/deskclock/AlarmTimelineView;->access$300(Lcom/android/deskclock/AlarmTimelineView;)Ljava/util/Calendar;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    .line 139
    .local v2, "date":Ljava/util/Date;
    iget-object v10, p0, Lcom/android/deskclock/AlarmTimelineView$GetAlarmsTask;->this$0:Lcom/android/deskclock/AlarmTimelineView;

    # getter for: Lcom/android/deskclock/AlarmTimelineView;->mAlarmTimes:Ljava/util/TreeMap;
    invoke-static {v10}, Lcom/android/deskclock/AlarmTimelineView;->access$400(Lcom/android/deskclock/AlarmTimelineView;)Ljava/util/TreeMap;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 141
    iget-object v10, p0, Lcom/android/deskclock/AlarmTimelineView$GetAlarmsTask;->this$0:Lcom/android/deskclock/AlarmTimelineView;

    # getter for: Lcom/android/deskclock/AlarmTimelineView;->mAlarmTimes:Ljava/util/TreeMap;
    invoke-static {v10}, Lcom/android/deskclock/AlarmTimelineView;->access$400(Lcom/android/deskclock/AlarmTimelineView;)Ljava/util/TreeMap;

    move-result-object v10

    new-instance v11, Lcom/android/deskclock/AlarmTimelineView$AlarmTimeNode;

    iget-object v12, p0, Lcom/android/deskclock/AlarmTimelineView$GetAlarmsTask;->this$0:Lcom/android/deskclock/AlarmTimelineView;

    const/4 v13, 0x0

    invoke-direct {v11, v12, v2, v13}, Lcom/android/deskclock/AlarmTimelineView$AlarmTimeNode;-><init>(Lcom/android/deskclock/AlarmTimelineView;Ljava/util/Date;Z)V

    invoke-virtual {v10, v2, v11}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    :cond_1
    iget-object v10, p0, Lcom/android/deskclock/AlarmTimelineView$GetAlarmsTask;->this$0:Lcom/android/deskclock/AlarmTimelineView;

    # getter for: Lcom/android/deskclock/AlarmTimelineView;->mCalendar:Ljava/util/Calendar;
    invoke-static {v10}, Lcom/android/deskclock/AlarmTimelineView;->access$300(Lcom/android/deskclock/AlarmTimelineView;)Ljava/util/Calendar;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 124
    .end local v0    # "alarm":Lcom/android/deskclock/provider/Alarm;
    .end local v1    # "currentTime":Ljava/util/Date;
    .end local v2    # "date":Ljava/util/Date;
    .end local v4    # "enabledAlarmList":Ljava/util/List;, "Ljava/util/List<Lcom/android/deskclock/provider/Alarm;>;"
    .end local v5    # "hour":I
    .end local v8    # "minutes":I
    .end local v9    # "repeatingDays":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10

    .line 148
    .restart local v0    # "alarm":Lcom/android/deskclock/provider/Alarm;
    .restart local v1    # "currentTime":Ljava/util/Date;
    .restart local v4    # "enabledAlarmList":Ljava/util/List;, "Ljava/util/List<Lcom/android/deskclock/provider/Alarm;>;"
    .restart local v5    # "hour":I
    .restart local v8    # "minutes":I
    .restart local v9    # "repeatingDays":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :cond_2
    :try_start_1
    iget-object v10, v0, Lcom/android/deskclock/provider/Alarm;->daysOfWeek:Lcom/android/deskclock/provider/DaysOfWeek;

    invoke-virtual {v10}, Lcom/android/deskclock/provider/DaysOfWeek;->getSetDays()Ljava/util/HashSet;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 149
    .local v3, "day":I
    iget-object v10, p0, Lcom/android/deskclock/AlarmTimelineView$GetAlarmsTask;->this$0:Lcom/android/deskclock/AlarmTimelineView;

    # getter for: Lcom/android/deskclock/AlarmTimelineView;->mCalendar:Ljava/util/Calendar;
    invoke-static {v10}, Lcom/android/deskclock/AlarmTimelineView;->access$300(Lcom/android/deskclock/AlarmTimelineView;)Ljava/util/Calendar;

    move-result-object v10

    const/4 v11, 0x5

    invoke-direct {p0, v3, v5, v8}, Lcom/android/deskclock/AlarmTimelineView$GetAlarmsTask;->getDaysFromNow(III)I

    move-result v12

    invoke-virtual {v10, v11, v12}, Ljava/util/Calendar;->add(II)V

    .line 150
    iget-object v10, p0, Lcom/android/deskclock/AlarmTimelineView$GetAlarmsTask;->this$0:Lcom/android/deskclock/AlarmTimelineView;

    # getter for: Lcom/android/deskclock/AlarmTimelineView;->mCalendar:Ljava/util/Calendar;
    invoke-static {v10}, Lcom/android/deskclock/AlarmTimelineView;->access$300(Lcom/android/deskclock/AlarmTimelineView;)Ljava/util/Calendar;

    move-result-object v10

    const/16 v11, 0xb

    iget v12, v0, Lcom/android/deskclock/provider/Alarm;->hour:I

    invoke-virtual {v10, v11, v12}, Ljava/util/Calendar;->set(II)V

    .line 151
    iget-object v10, p0, Lcom/android/deskclock/AlarmTimelineView$GetAlarmsTask;->this$0:Lcom/android/deskclock/AlarmTimelineView;

    # getter for: Lcom/android/deskclock/AlarmTimelineView;->mCalendar:Ljava/util/Calendar;
    invoke-static {v10}, Lcom/android/deskclock/AlarmTimelineView;->access$300(Lcom/android/deskclock/AlarmTimelineView;)Ljava/util/Calendar;

    move-result-object v10

    const/16 v11, 0xc

    iget v12, v0, Lcom/android/deskclock/provider/Alarm;->minutes:I

    invoke-virtual {v10, v11, v12}, Ljava/util/Calendar;->set(II)V

    .line 152
    iget-object v10, p0, Lcom/android/deskclock/AlarmTimelineView$GetAlarmsTask;->this$0:Lcom/android/deskclock/AlarmTimelineView;

    # getter for: Lcom/android/deskclock/AlarmTimelineView;->mCalendar:Ljava/util/Calendar;
    invoke-static {v10}, Lcom/android/deskclock/AlarmTimelineView;->access$300(Lcom/android/deskclock/AlarmTimelineView;)Ljava/util/Calendar;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    .line 154
    .restart local v2    # "date":Ljava/util/Date;
    iget-object v10, p0, Lcom/android/deskclock/AlarmTimelineView$GetAlarmsTask;->this$0:Lcom/android/deskclock/AlarmTimelineView;

    # getter for: Lcom/android/deskclock/AlarmTimelineView;->mAlarmTimes:Ljava/util/TreeMap;
    invoke-static {v10}, Lcom/android/deskclock/AlarmTimelineView;->access$400(Lcom/android/deskclock/AlarmTimelineView;)Ljava/util/TreeMap;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 156
    iget-object v10, p0, Lcom/android/deskclock/AlarmTimelineView$GetAlarmsTask;->this$0:Lcom/android/deskclock/AlarmTimelineView;

    # getter for: Lcom/android/deskclock/AlarmTimelineView;->mAlarmTimes:Ljava/util/TreeMap;
    invoke-static {v10}, Lcom/android/deskclock/AlarmTimelineView;->access$400(Lcom/android/deskclock/AlarmTimelineView;)Ljava/util/TreeMap;

    move-result-object v10

    new-instance v11, Lcom/android/deskclock/AlarmTimelineView$AlarmTimeNode;

    iget-object v12, p0, Lcom/android/deskclock/AlarmTimelineView$GetAlarmsTask;->this$0:Lcom/android/deskclock/AlarmTimelineView;

    iget-object v13, p0, Lcom/android/deskclock/AlarmTimelineView$GetAlarmsTask;->this$0:Lcom/android/deskclock/AlarmTimelineView;

    # getter for: Lcom/android/deskclock/AlarmTimelineView;->mCalendar:Ljava/util/Calendar;
    invoke-static {v13}, Lcom/android/deskclock/AlarmTimelineView;->access$300(Lcom/android/deskclock/AlarmTimelineView;)Ljava/util/Calendar;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v13

    const/4 v14, 0x1

    invoke-direct {v11, v12, v13, v14}, Lcom/android/deskclock/AlarmTimelineView$AlarmTimeNode;-><init>(Lcom/android/deskclock/AlarmTimelineView;Ljava/util/Date;Z)V

    invoke-virtual {v10, v2, v11}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    :goto_2
    iget-object v10, p0, Lcom/android/deskclock/AlarmTimelineView$GetAlarmsTask;->this$0:Lcom/android/deskclock/AlarmTimelineView;

    # getter for: Lcom/android/deskclock/AlarmTimelineView;->mCalendar:Ljava/util/Calendar;
    invoke-static {v10}, Lcom/android/deskclock/AlarmTimelineView;->access$300(Lcom/android/deskclock/AlarmTimelineView;)Ljava/util/Calendar;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    goto :goto_1

    .line 160
    :cond_3
    iget-object v10, p0, Lcom/android/deskclock/AlarmTimelineView$GetAlarmsTask;->this$0:Lcom/android/deskclock/AlarmTimelineView;

    # getter for: Lcom/android/deskclock/AlarmTimelineView;->mAlarmTimes:Ljava/util/TreeMap;
    invoke-static {v10}, Lcom/android/deskclock/AlarmTimelineView;->access$400(Lcom/android/deskclock/AlarmTimelineView;)Ljava/util/TreeMap;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/deskclock/AlarmTimelineView$AlarmTimeNode;

    const/4 v11, 0x1

    iput-boolean v11, v10, Lcom/android/deskclock/AlarmTimelineView$AlarmTimeNode;->isRepeating:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 165
    .end local v0    # "alarm":Lcom/android/deskclock/provider/Alarm;
    .end local v2    # "date":Ljava/util/Date;
    .end local v3    # "day":I
    .end local v5    # "hour":I
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "minutes":I
    .end local v9    # "repeatingDays":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :cond_4
    const/4 v10, 0x0

    monitor-exit p0

    return-object v10
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 120
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/deskclock/AlarmTimelineView$GetAlarmsTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/deskclock/AlarmTimelineView$GetAlarmsTask;->this$0:Lcom/android/deskclock/AlarmTimelineView;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 171
    iget-object v0, p0, Lcom/android/deskclock/AlarmTimelineView$GetAlarmsTask;->this$0:Lcom/android/deskclock/AlarmTimelineView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 172
    return-void
.end method
