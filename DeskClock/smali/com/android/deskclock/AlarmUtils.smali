.class public Lcom/android/deskclock/AlarmUtils;
.super Ljava/lang/Object;
.source "AlarmUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static formatToast(Landroid/content/Context;J)Ljava/lang/String;
    .locals 23
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "timeInMillis"    # J

    .prologue
    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    sub-long v6, p1, v19

    .line 85
    .local v6, "delta":J
    const-wide/32 v19, 0x36ee80

    div-long v13, v6, v19

    .line 86
    .local v13, "hours":J
    const-wide/32 v19, 0xea60

    div-long v19, v6, v19

    const-wide/16 v21, 0x3c

    rem-long v17, v19, v21

    .line 87
    .local v17, "minutes":J
    const-wide/16 v19, 0x18

    div-long v4, v13, v19

    .line 88
    .local v4, "days":J
    const-wide/16 v19, 0x18

    rem-long v13, v13, v19

    .line 90
    const-wide/16 v19, 0x0

    cmp-long v19, v4, v19

    if-nez v19, :cond_0

    const-string v3, ""

    .line 94
    .local v3, "daySeq":Ljava/lang/String;
    :goto_0
    const-wide/16 v19, 0x0

    cmp-long v19, v17, v19

    if-nez v19, :cond_2

    const-string v16, ""

    .line 98
    .local v16, "minSeq":Ljava/lang/String;
    :goto_1
    const-wide/16 v19, 0x0

    cmp-long v19, v13, v19

    if-nez v19, :cond_4

    const-string v12, ""

    .line 102
    .local v12, "hourSeq":Ljava/lang/String;
    :goto_2
    const-wide/16 v19, 0x0

    cmp-long v19, v4, v19

    if-lez v19, :cond_6

    const/4 v8, 0x1

    .line 103
    .local v8, "dispDays":Z
    :goto_3
    const-wide/16 v19, 0x0

    cmp-long v19, v13, v19

    if-lez v19, :cond_7

    const/4 v9, 0x1

    .line 104
    .local v9, "dispHour":Z
    :goto_4
    const-wide/16 v19, 0x0

    cmp-long v19, v17, v19

    if-lez v19, :cond_8

    const/4 v10, 0x1

    .line 106
    .local v10, "dispMinute":Z
    :goto_5
    if-eqz v8, :cond_9

    const/16 v19, 0x1

    move/from16 v20, v19

    :goto_6
    if-eqz v9, :cond_a

    const/16 v19, 0x2

    :goto_7
    or-int v20, v20, v19

    if-eqz v10, :cond_b

    const/16 v19, 0x4

    :goto_8
    or-int v15, v20, v19

    .line 110
    .local v15, "index":I
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0a000a

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v11

    .line 111
    .local v11, "formats":[Ljava/lang/String;
    aget-object v19, v11, v15

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v3, v20, v21

    const/16 v21, 0x1

    aput-object v12, v20, v21

    const/16 v21, 0x2

    aput-object v16, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    return-object v19

    .line 90
    .end local v3    # "daySeq":Ljava/lang/String;
    .end local v8    # "dispDays":Z
    .end local v9    # "dispHour":Z
    .end local v10    # "dispMinute":Z
    .end local v11    # "formats":[Ljava/lang/String;
    .end local v12    # "hourSeq":Ljava/lang/String;
    .end local v15    # "index":I
    .end local v16    # "minSeq":Ljava/lang/String;
    :cond_0
    const-wide/16 v19, 0x1

    cmp-long v19, v4, v19

    if-nez v19, :cond_1

    const v19, 0x7f0d001f

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    const v19, 0x7f0d0020

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 94
    .restart local v3    # "daySeq":Ljava/lang/String;
    :cond_2
    const-wide/16 v19, 0x1

    cmp-long v19, v17, v19

    if-nez v19, :cond_3

    const v19, 0x7f0d0023

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_1

    :cond_3
    const v19, 0x7f0d0024

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_1

    .line 98
    .restart local v16    # "minSeq":Ljava/lang/String;
    :cond_4
    const-wide/16 v19, 0x1

    cmp-long v19, v13, v19

    if-nez v19, :cond_5

    const v19, 0x7f0d0021

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_2

    :cond_5
    const v19, 0x7f0d0022

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_2

    .line 102
    .restart local v12    # "hourSeq":Ljava/lang/String;
    :cond_6
    const/4 v8, 0x0

    goto/16 :goto_3

    .line 103
    .restart local v8    # "dispDays":Z
    :cond_7
    const/4 v9, 0x0

    goto/16 :goto_4

    .line 104
    .restart local v9    # "dispHour":Z
    :cond_8
    const/4 v10, 0x0

    goto/16 :goto_5

    .line 106
    .restart local v10    # "dispMinute":Z
    :cond_9
    const/16 v19, 0x0

    move/from16 v20, v19

    goto/16 :goto_6

    :cond_a
    const/16 v19, 0x0

    goto/16 :goto_7

    :cond_b
    const/16 v19, 0x0

    goto/16 :goto_8
.end method

.method public static getAlarmText(Landroid/content/Context;Lcom/android/deskclock/provider/AlarmInstance;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "instance"    # Lcom/android/deskclock/provider/AlarmInstance;

    .prologue
    .line 46
    invoke-virtual {p1}, Lcom/android/deskclock/provider/AlarmInstance;->getAlarmTime()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/deskclock/AlarmUtils;->getFormattedTime(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "alarmTimeStr":Ljava/lang/String;
    iget-object v1, p1, Lcom/android/deskclock/provider/AlarmInstance;->mLabel:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/deskclock/provider/AlarmInstance;->mLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "alarmTimeStr":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public static getFormattedTime(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "time"    # Ljava/util/Calendar;

    .prologue
    .line 40
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "EHm"

    .line 41
    .local v1, "skeleton":Ljava/lang/String;
    :goto_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "pattern":Ljava/lang/String;
    invoke-static {v0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    return-object v2

    .line 40
    .end local v0    # "pattern":Ljava/lang/String;
    .end local v1    # "skeleton":Ljava/lang/String;
    :cond_0
    const-string v1, "Ehma"

    goto :goto_0
.end method

.method public static popAlarmSetToast(Landroid/content/Context;J)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "timeInMillis"    # J

    .prologue
    .line 115
    invoke-static {p0, p1, p2}, Lcom/android/deskclock/AlarmUtils;->formatToast(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, "toastText":Ljava/lang/String;
    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 117
    .local v0, "toast":Landroid/widget/Toast;
    invoke-static {v0}, Lcom/android/deskclock/ToastMaster;->setToast(Landroid/widget/Toast;)V

    .line 118
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 119
    return-void
.end method

.method public static showTimeEditDialog(Landroid/app/FragmentManager;Lcom/android/deskclock/provider/Alarm;Lcom/android/datetimepicker/time/TimePickerDialog$OnTimeSetListener;Z)V
    .locals 6
    .param p0, "manager"    # Landroid/app/FragmentManager;
    .param p1, "alarm"    # Lcom/android/deskclock/provider/Alarm;
    .param p2, "listener"    # Lcom/android/datetimepicker/time/TimePickerDialog$OnTimeSetListener;
    .param p3, "is24HourMode"    # Z

    .prologue
    .line 55
    if-nez p1, :cond_2

    .line 56
    const/4 v2, 0x0

    .local v2, "hour":I
    const/4 v3, 0x0

    .line 61
    .local v3, "minutes":I
    :goto_0
    invoke-static {p2, v2, v3, p3}, Lcom/android/datetimepicker/time/TimePickerDialog;->newInstance(Lcom/android/datetimepicker/time/TimePickerDialog$OnTimeSetListener;IIZ)Lcom/android/datetimepicker/time/TimePickerDialog;

    move-result-object v0

    .line 63
    .local v0, "dialog":Lcom/android/datetimepicker/time/TimePickerDialog;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/android/datetimepicker/time/TimePickerDialog;->setThemeDark(Z)V

    .line 66
    invoke-virtual {p0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 67
    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 68
    .local v1, "ft":Landroid/app/FragmentTransaction;
    const-string v5, "time_dialog"

    invoke-virtual {p0, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v4

    .line 69
    .local v4, "prev":Landroid/app/Fragment;
    if-eqz v4, :cond_0

    .line 70
    invoke-virtual {v1, v4}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 72
    :cond_0
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 74
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Fragment;->isAdded()Z

    move-result v5

    if-nez v5, :cond_1

    .line 75
    const-string v5, "time_dialog"

    invoke-virtual {v0, p0, v5}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 77
    :cond_1
    return-void

    .line 58
    .end local v0    # "dialog":Lcom/android/datetimepicker/time/TimePickerDialog;
    .end local v1    # "ft":Landroid/app/FragmentTransaction;
    .end local v2    # "hour":I
    .end local v3    # "minutes":I
    .end local v4    # "prev":Landroid/app/Fragment;
    :cond_2
    iget v2, p1, Lcom/android/deskclock/provider/Alarm;->hour:I

    .line 59
    .restart local v2    # "hour":I
    iget v3, p1, Lcom/android/deskclock/provider/Alarm;->minutes:I

    .restart local v3    # "minutes":I
    goto :goto_0
.end method
